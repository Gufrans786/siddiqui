package sa.lg.android.locate.autobid;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.os.IBinder;
import android.os.SystemClock;
import android.speech.tts.TextToSpeech;

import org.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class AutoBidService extends Service {
    public static final String ACTION_START = "sa.lg.android.locate.autobid.START";
    public static final String ACTION_STOP = "sa.lg.android.locate.autobid.STOP";
    private static final String CHANNEL_ID = "autobid_status";
    private static final int NOTIFICATION_ID = 41;
    private static final long DUPLICATE_WINDOW_MS = 45000;
    private static final java.util.concurrent.LinkedBlockingQueue<String> INCOMING = new java.util.concurrent.LinkedBlockingQueue<>();
    private final Map<String, Long> seen = new HashMap<>();
    private final Map<String, Long> retryAfter = new HashMap<>();
    private final Map<String, JSONObject> pendingAccept = new HashMap<>();
    private final Map<String, Location> retryLocations = new HashMap<>();
    private final java.util.Set<String> historyLogged = new java.util.HashSet<>();
    private long nextLocationRequest;
    private volatile boolean running;
    private volatile boolean speechReady;
    private volatile boolean acceptedCuePending;
    private Thread worker;
    private AutoBidPreferences preferences;
    private TextToSpeech speech;

    public static void onOrderPayload(Context context, String payload) {
        if (payload == null || payload.trim().isEmpty()) {
            return;
        }
        INCOMING.offer(payload);
        android.util.Log.i("AUTOBID", "Real-time order event received");
        if (OfflineLicense.hasValidSession(context) && new AutoBidPreferences(context).anyModeEnabled()) {
            start(context);
        }
    }

    public static void start(Context context) {
        try {
            Intent intent = new Intent(context, AutoBidService.class).setAction(ACTION_START);
            if (android.os.Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
            } else {
                context.startService(intent);
            }
        } catch (RuntimeException error) {
            new AutoBidPreferences(context).report("Open app to enable automation", time() + "  " + error.getClass().getSimpleName());
            android.util.Log.w("AUTOBID", "Background service start blocked: " + error.getClass().getSimpleName());
        }
    }

    public static void stop(Context context) {
        context.stopService(new Intent(context, AutoBidService.class));
    }

    @Override
    public void onCreate() {
        super.onCreate();
        AutoBidRuntime.initialize(this);
        preferences = new AutoBidPreferences(this);
        createNotificationChannel();
        initializeSpeech();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (!OfflineLicense.hasValidSession(this)) {
            preferences.report("Accept failed • Login required", time() + "  Valid login session required");
            android.util.Log.w("AUTOBID", "Accept failed: valid login session required");
            stopSelf();
            return START_NOT_STICKY;
        }
        if (intent != null && ACTION_STOP.equals(intent.getAction())) {
            preferences.report("AutoBid is off", time() + "  Stopped by user");
            stopSelf();
            return START_NOT_STICKY;
        }
        try {
            if (android.os.Build.VERSION.SDK_INT >= 29) {
                int type = preferences.distanceEnabled() || preferences.rejectFar()
                        ? android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_LOCATION
                        : android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE;
                startForeground(NOTIFICATION_ID, notification("Watching for matching orders"), type);
            } else {
                startForeground(NOTIFICATION_ID, notification("Watching for matching orders"));
            }
        } catch (RuntimeException error) {
            preferences.report("Background permission required", time() + "  " + safeMessage(error));
            android.util.Log.w("AUTOBID", "Foreground start failed: " + safeMessage(error));
            stopSelf();
            return START_NOT_STICKY;
        }
        if (!running) {
            running = true;
            worker = new Thread(this::runLoop, "AutobidWorker");
            worker.start();
        }
        return START_STICKY;
    }

    private void runLoop() {
        preferences.report("AutoBid is active", time() + "  AutoBid armed");
        android.util.Log.i("AUTOBID", "Worker armed");
        int failures = 0;
        long nextPoll = 0;
        while (running && preferences.anyModeEnabled()) {
            try {
                if (preferences.token().isEmpty() || preferences.driverId().isEmpty()) {
                    preferences.report("Setup required", "Enter bearer token and driver ID");
                    android.util.Log.w("AUTOBID", "Missing token or driver ID");
                    break;
                }
                cleanupSeen();
                LocateGoApi api = new LocateGoApi(preferences.token(), preferences.driverId());
                processIncoming(api);
                processDueRetries(api);
                if (SystemClock.elapsedRealtime() >= nextPoll) {
                    List<JSONObject> orders = api.fetchOrders();
                    nextPoll = SystemClock.elapsedRealtime() + 1500;
                    failures = 0;
                    preferences.report("Watching • " + orders.size() + " live orders", time() + "  Polled " + orders.size() + " orders");
                    updateNotification("Watching • " + orders.size() + " live orders");
                    android.util.Log.i("AUTOBID", "Polled orders: " + orders.size());
                    Location location = preferences.distanceEnabled() || preferences.rejectFar() ? lastLocation() : null;
                    for (JSONObject order : orders) {
                        if (!running || !preferences.anyModeEnabled()) {
                            break;
                        }
                        processOrder(api, order, location);
                    }
                    processIncoming(api);
                }
                String payload = INCOMING.poll(250, java.util.concurrent.TimeUnit.MILLISECONDS);
                if (payload != null) {
                    INCOMING.offer(payload);
                }
            } catch (InterruptedException interrupted) {
                Thread.currentThread().interrupt();
                break;
            } catch (LocateGoApi.ApiException error) {
                if (error.status == 401) {
                    preferences.report("Session expired", time() + "  Sign in to Locate Go to refresh the bearer token");
                    android.util.Log.w("AUTOBID", "Session expired while polling orders");
                    running = false;
                    break;
                }
                failures++;
                preferences.report("Server issue • HTTP " + error.status, time() + "  " + safeMessage(error));
                android.util.Log.e("AUTOBID", "Poll failed: " + safeMessage(error));
                try {
                    sleep(Math.min(10000, 1000L * failures));
                } catch (InterruptedException interrupted) {
                    Thread.currentThread().interrupt();
                    break;
                }
            } catch (Exception error) {
                failures++;
                preferences.report("Connection issue • " + safeMessage(error), time() + "  " + safeMessage(error));
                android.util.Log.e("AUTOBID", "Poll failed: " + safeMessage(error));
                try {
                    sleep(Math.min(10000, 1000L * failures));
                } catch (InterruptedException interrupted) {
                    Thread.currentThread().interrupt();
                    break;
                }
            }
        }
        running = false;
        android.util.Log.i("AUTOBID", "Worker stopped");
        stopSelf();
    }

    private void processIncoming(LocateGoApi api) {
        Location location = preferences.distanceEnabled() || preferences.rejectFar() ? lastLocation() : null;
        String payload;
        while ((payload = INCOMING.poll()) != null) {
            try {
                List<JSONObject> orders = LocateGoApi.parseOrders(payload);
                android.util.Log.i("AUTOBID", "Real-time event orders: " + orders.size());
                if (orders.isEmpty()) {
                    android.util.Log.i("AUTOBID", "Event payload schema " + LocateGoApi.describePayload(payload));
                }
                for (JSONObject order : orders) {
                    if (!running || !preferences.anyModeEnabled()) {
                        return;
                    }
                    processOrder(api, order, location);
                }
            } catch (Exception error) {
                android.util.Log.i("AUTOBID", "Non-JSON event schema " + LocateGoApi.describePayload(payload));
            }
        }
    }

    private void processOrder(LocateGoApi api, JSONObject order, Location location) {
        String orderNumber = order.optString("order_number").trim();
        if (!OfflineLicense.hasValidSession(this)) {
            preferences.report("Accept failed • Login required", time() + "  " + orderNumber + " blocked");
            android.util.Log.w("AUTOBID", "Accept failed for " + orderNumber + ": valid login session required");
            updateNotification("Accept failed • Login required");
            running = false;
            stopSelf();
            return;
        }
        Long nextRetry = retryAfter.get(orderNumber);
        if (orderNumber.isEmpty() || seen.containsKey(orderNumber)
                || (nextRetry != null && SystemClock.elapsedRealtime() < nextRetry)) {
            return;
        }
        android.util.Log.i("AUTOBID", "Order metadata " + orderNumber
                + " • pickup " + order.optString("restaurant_coordinates")
                + " • dropoff " + order.optString("customer_coordinates")
                + " • request_time " + !order.optString("request_time").trim().isEmpty());
        location = bestLocationForOrder(order, location);
        android.util.Log.i("AUTOBID", "Filter settings " + orderNumber
                + " • pickup range " + preferences.pickupMinDistance() + "-" + preferences.pickupMaxDistance()
                + " • dropoff range " + preferences.dropoffMinDistance() + "-" + preferences.dropoffMaxDistance()
                + " • targets " + preferences.pickupEnabled() + "/" + preferences.dropoffEnabled()
                + " • modes " + preferences.allOrders() + "/" + preferences.priceEnabled() + "/" + preferences.distanceEnabled()
                + " • rejected " + OrderFilter.wasRejectedByDriver(order, preferences.driverId()));
        if (preferences.rejectFar() && OrderFilter.isFarOrder(order, preferences, location)) {
            seen.put(orderNumber, SystemClock.elapsedRealtime());
            android.util.Log.i("AUTOBID", "Far order; rejecting " + orderNumber);
            preferences.report("Rejecting far order " + orderNumber, time() + "  FAR " + orderNumber);
            try {
                api.rejectOrder(orderNumber);
                double distance = OrderFilter.distanceKm(order, preferences, location);
                String distanceLabel = Double.isNaN(distance) ? "outside range" : String.format(Locale.US, "%.1f km", distance);
                String details = OrderFilter.distanceSummary(order, location);
                preferences.report("Rejected far order " + orderNumber, time() + "  REJECTED " + orderNumber + " • " + details);
                android.util.Log.i("AUTOBID", "Rejected far order " + orderNumber + " • " + distanceLabel + " • " + details);
                showFarOrderRejected(orderNumber, distance, details);
            } catch (LocateGoApi.ApiException error) {
                preferences.report("Reject failed • HTTP " + error.status, time() + "  " + safeMessage(error));
                android.util.Log.e("AUTOBID", "Reject HTTP " + error.status + " for " + orderNumber);
                if (error.status == 401) {
                    running = false;
                }
            } catch (Exception error) {
                preferences.report("Reject failed • will retry", time() + "  " + safeMessage(error));
                android.util.Log.e("AUTOBID", "Reject failed for " + orderNumber + ": " + safeMessage(error));
            }
            return;
        }
        if (!OrderFilter.shouldAccept(order, preferences, location)) {
            double distance = OrderFilter.distanceKm(order, preferences, location);
            String distanceLabel = Double.isNaN(distance) ? "unavailable" : String.format(Locale.US, "%.2f km", distance);
            android.util.Log.i("AUTOBID", "Skip order " + orderNumber + " • status " + order.optString("status") + " • price " + OrderFilter.price(order) + " • distance " + distanceLabel);
            if (historyLogged.add(orderNumber)) {
                preferences.recordHistory(time() + "  SKIPPED " + orderNumber
                        + " • " + OrderFilter.distanceSummary(order, location)
                        + " • status " + order.optString("status")
                        + " • pickup range " + preferences.pickupMinDistance() + "-" + preferences.pickupMaxDistance() + " km"
                        + " • dropoff range " + preferences.dropoffMinDistance() + "-" + preferences.dropoffMaxDistance() + " km");
            }
            return;
        }
        android.util.Log.i("AUTOBID", "Match; accepting order " + orderNumber);
        preferences.report("Accepting order " + orderNumber, time() + "  MATCH " + orderNumber + " • price " + OrderFilter.price(order));
        String details = OrderFilter.distanceSummary(order, location);
        try {
            api.acceptOrder(order);
            seen.put(orderNumber, SystemClock.elapsedRealtime());
            clearAcceptRetry(orderNumber);
            preferences.report("Accepted order " + orderNumber, time() + "  ACCEPTED " + orderNumber + " • " + details);
            android.util.Log.i("AUTOBID", "Accepted order " + orderNumber);
            updateNotification("Accepted order " + orderNumber);
            showOrderAccepted(orderNumber, details);
        } catch (LocateGoApi.ApiException error) {
            clearAcceptRetry(orderNumber);
            if (error.status == 401) {
                preferences.report("Session expired", time() + "  " + orderNumber + " • " + details + " • Update the bearer token");
                running = false;
            } else if (error.status == 408 || error.status == 429 || error.status >= 500) {
                long retryDelay = error.status >= 500 ? 500 : 2000;
                scheduleAcceptRetry(orderNumber, order, location, retryDelay);
                preferences.report("Accept failed • retrying", time() + "  HTTP " + error.status + " • retry in " + retryDelay + " ms • " + details);
            } else {
                seen.put(orderNumber, SystemClock.elapsedRealtime());
                preferences.report("Accept unavailable • HTTP " + error.status, time() + "  " + safeMessage(error) + " • " + details);
            }
            android.util.Log.e("AUTOBID", "Accept HTTP " + error.status + " for " + orderNumber);
        } catch (Exception error) {
            scheduleAcceptRetry(orderNumber, order, location, 2000);
            preferences.report("Accept failed • retrying", time() + "  " + safeMessage(error) + " • " + details);
            android.util.Log.e("AUTOBID", "Accept failed for " + orderNumber + ": " + safeMessage(error));
        }
    }

    private void scheduleAcceptRetry(String orderNumber, JSONObject order, Location location, long delay) {
        retryAfter.put(orderNumber, SystemClock.elapsedRealtime() + delay);
        pendingAccept.put(orderNumber, order);
        if (location != null) {
            retryLocations.put(orderNumber, location);
        }
    }

    private void clearAcceptRetry(String orderNumber) {
        retryAfter.remove(orderNumber);
        pendingAccept.remove(orderNumber);
        retryLocations.remove(orderNumber);
    }

    private void processDueRetries(LocateGoApi api) {
        long now = SystemClock.elapsedRealtime();
        for (Map.Entry<String, JSONObject> entry : new HashMap<>(pendingAccept).entrySet()) {
            Long nextRetry = retryAfter.get(entry.getKey());
            if (nextRetry != null && now >= nextRetry) {
                processOrder(api, entry.getValue(), retryLocations.get(entry.getKey()));
            }
        }
    }

    private Location bestLocationForOrder(JSONObject order, Location fallback) {
        Location selected = AppLocationOverride.selectedLocation();
        if (selected != null) return selected;
        if (!preferences.distanceEnabled() && !preferences.rejectFar()) {
            return fallback;
        }
        Location best = fallback != null ? fallback : lastLocation();
        if (best != null) {
            android.util.Log.i("AUTOBID", "Order location " + best.getProvider()
                    + " • " + OrderFilter.distanceSummary(order, best)
                    + " • odm " + order.optBoolean("isOrderODM", false));
        }
        return best;
    }

    private Location lastLocation() {
        Location selected = AppLocationOverride.selectedLocation();
        if (selected != null) return selected;
        LocationManager manager = (LocationManager) getSystemService(LOCATION_SERVICE);
        if (checkSelfPermission(android.Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED
                && checkSelfPermission(android.Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            preferences.report("Location permission required", "Allow location access for distance filtering");
            return null;
        }
        Location fused = providerLocation(manager, "fused");
        if (isFreshAccurate(fused)) {
            logLocation(fused);
            return fused;
        }
        Location best = null;
        for (String provider : new String[]{"fused", LocationManager.NETWORK_PROVIDER, LocationManager.PASSIVE_PROVIDER, LocationManager.GPS_PROVIDER}) {
            Location candidate = providerLocation(manager, provider);
            if (candidate != null && (best == null || candidate.getTime() > best.getTime())) {
                best = candidate;
            }
        }
        if (isFreshAccurate(best)) {
            logLocation(best);
            return best;
        }
        if (SystemClock.elapsedRealtime() >= nextLocationRequest) {
            nextLocationRequest = SystemClock.elapsedRealtime() + 10000;
            android.util.Log.i("AUTOBID", "Requesting current location");
            Location current = requestCurrentLocation(manager);
            if (current != null) {
                logLocation(current);
                return current;
            }
        }
        logLocation(best);
        return best;
    }

    private Location requestCurrentLocation(LocationManager manager) {
        for (String provider : new String[]{"fused", LocationManager.GPS_PROVIDER, LocationManager.NETWORK_PROVIDER}) {
            Location location = android.os.Build.VERSION.SDK_INT >= 30
                    ? requestModernLocation(manager, provider)
                    : requestLegacyLocation(manager, provider);
            if (location != null) {
                return location;
            }
        }
        return null;
    }

    private Location requestModernLocation(LocationManager manager, String provider) {
        java.util.concurrent.CountDownLatch latch = new java.util.concurrent.CountDownLatch(1);
        java.util.concurrent.atomic.AtomicReference<Location> result = new java.util.concurrent.atomic.AtomicReference<>();
        android.os.CancellationSignal cancellation = new android.os.CancellationSignal();
        try {
            manager.getCurrentLocation(provider, cancellation, getMainExecutor(), location -> {
                result.set(location);
                latch.countDown();
            });
            if (latch.await(3, java.util.concurrent.TimeUnit.SECONDS)) {
                return result.get();
            }
        } catch (IllegalArgumentException | SecurityException ignored) {
        } catch (InterruptedException error) {
            Thread.currentThread().interrupt();
            return null;
        } finally {
            cancellation.cancel();
        }
        return null;
    }

    private Location requestLegacyLocation(LocationManager manager, String provider) {
        java.util.concurrent.CountDownLatch latch = new java.util.concurrent.CountDownLatch(1);
        java.util.concurrent.atomic.AtomicReference<Location> result = new java.util.concurrent.atomic.AtomicReference<>();
        android.location.LocationListener listener = new android.location.LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                result.set(location);
                latch.countDown();
            }

            @Override
            public void onStatusChanged(String name, int status, android.os.Bundle extras) {
            }

            @Override
            public void onProviderEnabled(String name) {
            }

            @Override
            public void onProviderDisabled(String name) {
            }
        };
        try {
            manager.requestSingleUpdate(provider, listener, android.os.Looper.getMainLooper());
            if (latch.await(3, java.util.concurrent.TimeUnit.SECONDS)) {
                return result.get();
            }
        } catch (IllegalArgumentException | SecurityException ignored) {
        } catch (InterruptedException error) {
            Thread.currentThread().interrupt();
            return null;
        } finally {
            manager.removeUpdates(listener);
        }
        return null;
    }

    private static Location providerLocation(LocationManager manager, String provider) {
        try {
            return manager.getLastKnownLocation(provider);
        } catch (IllegalArgumentException | SecurityException ignored) {
            return null;
        }
    }

    private static boolean isFreshAccurate(Location location) {
        if (location == null || (location.hasAccuracy() && location.getAccuracy() > 100)) {
            return false;
        }
        long age = SystemClock.elapsedRealtimeNanos() - location.getElapsedRealtimeNanos();
        return age >= 0 && age <= 120000000000L;
    }

    private static void logLocation(Location location) {
        if (location != null) {
            android.util.Log.i("AUTOBID", "Using " + location.getProvider() + " location "
                    + String.format(Locale.US, "%.6f,%.6f", location.getLatitude(), location.getLongitude())
                    + " • accuracy " + location.getAccuracy() + " m");
        }
    }

    private void cleanupSeen() {
        long cutoff = SystemClock.elapsedRealtime() - DUPLICATE_WINDOW_MS;
        Iterator<Map.Entry<String, Long>> iterator = seen.entrySet().iterator();
        while (iterator.hasNext()) {
            if (iterator.next().getValue() < cutoff) {
                iterator.remove();
            }
        }
        iterator = retryAfter.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<String, Long> entry = iterator.next();
            if (entry.getValue() < cutoff) {
                String orderNumber = entry.getKey();
                iterator.remove();
                pendingAccept.remove(orderNumber);
                retryLocations.remove(orderNumber);
            }
        }
    }

    private void createNotificationChannel() {
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            NotificationManager manager = getSystemService(NotificationManager.class);
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID, "AutoBid status", NotificationManager.IMPORTANCE_LOW);
            manager.createNotificationChannel(channel);
            NotificationChannel alerts = new NotificationChannel("autobid_alerts", "AutoBid order alerts", NotificationManager.IMPORTANCE_HIGH);
            alerts.setDescription("Automatic order acceptance and distance rejection results");
            alerts.enableVibration(true);
            alerts.setShowBadge(true);
            manager.createNotificationChannel(alerts);
        }
    }

    private Notification notification(String text) {
        Intent openIntent = getPackageManager().getLaunchIntentForPackage(getPackageName());
        PendingIntent open = PendingIntent.getActivity(this, 0, openIntent, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Intent stopIntent = new Intent(this, AutoBidService.class).setAction(ACTION_STOP);
        PendingIntent stop = PendingIntent.getService(this, 1, stopIntent, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder builder = android.os.Build.VERSION.SDK_INT >= 26
                ? new Notification.Builder(this, CHANNEL_ID)
                : new Notification.Builder(this);
        return builder
                .setSmallIcon(getApplicationInfo().icon)
                .setContentTitle("Locate Go AutoBid")
                .setContentText(text)
                .setContentIntent(open)
                .addAction(new Notification.Action.Builder(null, "Stop", stop).build())
                .setOngoing(true)
                .build();
    }

    private void updateNotification(String text) {
        try {
            getSystemService(NotificationManager.class).notify(NOTIFICATION_ID, notification(text));
        } catch (SecurityException error) {
            android.util.Log.w("AUTOBID", "Notification permission is limited");
        }
    }

    private void showFarOrderRejected(String orderNumber, double distance, String details) {
        String actualDistance = Double.isNaN(distance) ? "Outside delivery range" : String.format(Locale.US, "%.1f km", distance);
        showOrderAlert("Auto accept • Far order rejected", orderNumber, details, "Nearest: " + actualDistance + " • Outside selected ranges", false);
    }

    private void showOrderAccepted(String orderNumber, String details) {
        showOrderAlert("Your order is accepted", orderNumber, details, "Continue to pickup", true);
        speakAcceptedCue();
    }

    private void initializeSpeech() {
        try {
            speech = new TextToSpeech(getApplicationContext(), status -> {
                if (status != TextToSpeech.SUCCESS || speech == null) {
                    android.util.Log.w("AUTOBID", "Accepted-order voice unavailable; notification sound remains active");
                    return;
                }
                int language = speech.setLanguage(Locale.US);
                if (language == TextToSpeech.LANG_MISSING_DATA || language == TextToSpeech.LANG_NOT_SUPPORTED) {
                    android.util.Log.w("AUTOBID", "English voice unavailable; notification sound remains active");
                    return;
                }
                speech.setAudioAttributes(new android.media.AudioAttributes.Builder()
                        .setUsage(android.media.AudioAttributes.USAGE_NOTIFICATION_EVENT)
                        .setContentType(android.media.AudioAttributes.CONTENT_TYPE_SPEECH)
                        .build());
                speechReady = true;
                if (acceptedCuePending) {
                    acceptedCuePending = false;
                    speakAcceptedCue();
                }
            });
        } catch (RuntimeException error) {
            android.util.Log.w("AUTOBID", "Voice initialization failed: " + safeMessage(error));
        }
    }

    private void speakAcceptedCue() {
        if (!speechReady || speech == null) {
            acceptedCuePending = true;
            return;
        }
        try {
            int result = speech.speak("Your order is accepted", TextToSpeech.QUEUE_ADD, null,
                    "autobid-accepted-" + SystemClock.elapsedRealtime());
            if (result == TextToSpeech.ERROR) {
                android.util.Log.w("AUTOBID", "Accepted-order voice cue could not be queued");
            } else {
                android.util.Log.i("AUTOBID", "Accepted-order voice cue queued");
            }
        } catch (RuntimeException error) {
            android.util.Log.w("AUTOBID", "Voice cue failed: " + safeMessage(error));
        }
    }

    private void showOrderAlert(String title, String orderNumber, String details, String extra, boolean accepted) {
        Intent openIntent = getPackageManager().getLaunchIntentForPackage(getPackageName());
        PendingIntent open = PendingIntent.getActivity(this, 2, openIntent, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder builder = android.os.Build.VERSION.SDK_INT >= 26
                ? new Notification.Builder(this, "autobid_alerts")
                : new Notification.Builder(this);
        Notification alert = builder
                .setSmallIcon(getApplicationInfo().icon)
                .setColor(android.graphics.Color.rgb(accepted ? 22 : 209, accepted ? 139 : 32, accepted ? 87 : 73))
                .setContentTitle(title)
                .setContentText("Order #" + orderNumber + " • " + details)
                .setSubText("AutoBid order automation")
                .setStyle(new Notification.BigTextStyle()
                        .setBigContentTitle(title)
                        .bigText("Order #" + orderNumber + " was " + (accepted ? "accepted" : "rejected") + " automatically.\n\n" + details + "\n" + extra))
                .setContentIntent(open)
                .setAutoCancel(true)
                .setCategory(Notification.CATEGORY_STATUS)
                .setVisibility(Notification.VISIBILITY_PRIVATE)
                .setPriority(Notification.PRIORITY_HIGH)
                .setDefaults(Notification.DEFAULT_SOUND | Notification.DEFAULT_VIBRATE)
                .build();
        int notificationId = 1000 + Math.abs(orderNumber.hashCode() % 100000);
        try {
            getSystemService(NotificationManager.class).notify(notificationId, alert);
        } catch (SecurityException error) {
            android.util.Log.w("AUTOBID", "Order alert permission is limited");
        }
    }

    private static void sleep(long milliseconds) throws InterruptedException {
        Thread.sleep(milliseconds);
    }

    private static String safeMessage(Exception error) {
        String message = error.getMessage();
        return message == null || message.trim().isEmpty() ? error.getClass().getSimpleName() : message;
    }

    private static String time() {
        return new SimpleDateFormat("HH:mm:ss", Locale.US).format(new Date());
    }

    @Override
    public void onDestroy() {
        running = false;
        acceptedCuePending = false;
        speechReady = false;
        if (speech != null) {
            speech.stop();
            speech.shutdown();
            speech = null;
        }
        if (worker != null) {
            worker.interrupt();
        }
        super.onDestroy();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
