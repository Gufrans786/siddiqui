package com.transistorsoft.locationmanager.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsStates;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.config.TSBackgroundPermissionRationale;
import com.transistorsoft.locationmanager.lifecycle.LifecycleManager;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;

public class TSLocationManagerActivity extends AppCompatActivity {
    public static final String ACCESS_BACKGROUND_LOCATION = "android.permission.ACCESS_BACKGROUND_LOCATION";
    public static final String ACTION_ACTIVITY_IS_ACTIVE = "ACTIVITY_IS_ACTIVE";
    public static final String ACTION_LOCATION_SETTINGS = "locationsettings";
    public static final int LOCATION_SETTINGS_REQUEST_CODE = 101;
    private static final AtomicInteger a = new AtomicInteger(0);
    private static final Set<String> b = new CopyOnWriteArraySet();

    public interface CompletionHandler {
        void onComplete();
    }

    class a implements CompletionHandler {
        a() {
        }

        @Override
        public void onComplete() {
            TSLocationManagerActivity.this.c();
        }
    }

    private void b() {
        TSBackgroundPermissionRationale backgroundPermissionRationale = TSConfig.getInstance(getApplicationContext()).getBackgroundPermissionRationale();
        LifecycleManager.getInstance().pause();
        backgroundPermissionRationale.onStartActivity(this, new a());
    }

    public void c() {
        LifecycleManager.getInstance().resume();
        finish();
    }

    public static boolean isActive() {
        return a.get() > 0;
    }

    public static void start(Context context, String str) {
        if (str.equalsIgnoreCase(ACTION_LOCATION_SETTINGS) && TSConfig.getInstance(context).getDisableLocationAuthorizationAlert().booleanValue()) {
            return;
        }
        final Activity activity = BackgroundGeolocation.getInstance(context).getActivity();
        if (activity == null || activity.isDestroyed()) {
            TSLog.logger.warn(TSLog.warn("Failed to initiate TSLocationManagerActivity action: " + str + " (MainActivity is null)"));
            Set<String> set = b;
            synchronized (set) {
                set.clear();
            }
            return;
        }
        Set<String> set2 = b;
        synchronized (set2) {
            if (set2.contains(str)) {
                TSLog.logger.debug("Action '" + str + "' already pending <IGNORED>");
                return;
            }
            set2.add(str);
            final Intent intent = new Intent(context, (Class<?>) TSLocationManagerActivity.class);
            intent.setAction(str);
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public final void run() {
                    TSLocationManagerActivity.a(intent, activity);
                }
            }, 200L);
        }
    }

    public static void startIfEnabled(Context context, String str) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        if (!str.equalsIgnoreCase(ACTION_LOCATION_SETTINGS) || tSConfig.getEnabled().booleanValue()) {
            start(context, str);
        }
    }

    @Override
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        try {
            LocationSettingsStates.fromIntent(intent);
            if (i == 101) {
                if (i2 == -1) {
                    TSLog.logger.debug(TSLog.ok("Location settings resolution: ACCEPTED"));
                } else if (i2 == 0) {
                    TSLog.logger.debug(TSLog.cancel("Location settings resolution: DENIED"));
                }
            }
            c();
        } catch (NullPointerException unused) {
            TSLog.logger.debug(TSLog.ok("Location settings resolution: ACCEPTED"));
            c();
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LifecycleManager.getInstance().pause();
        a(getIntent());
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        TSLog.logger.debug("" + getIntent().getAction());
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        a(intent);
    }

    public static void a(Intent intent, Activity activity) {
        Set<String> set = b;
        synchronized (set) {
            set.remove(intent.getAction());
        }
        try {
            activity.startActivityForResult(intent, 0);
        } catch (ActivityNotFoundException e) {
            TSLog.logger.error(TSLog.error(e.getMessage()), (Throwable) e);
        }
    }

    private void a(Intent intent) {
        a.incrementAndGet();
        String action = intent.getAction();
        if (action == null) {
            TSLog.logger.warn(TSLog.warn("Unknown action sent to TSLocationManagerActivity -- stopping"));
            c();
            return;
        }
        TSLog.logger.debug(action);
        if (action.equalsIgnoreCase(ACTION_LOCATION_SETTINGS)) {
            a();
        } else if (action.equalsIgnoreCase(ACCESS_BACKGROUND_LOCATION)) {
            b();
        }
    }

    private void a() {
        LocationServices.getSettingsClient((Activity) this).checkLocationSettings(new LocationSettingsRequest.Builder().addLocationRequest(TSLocationManager.getInstance(getApplicationContext()).buildLocationRequest()).build()).addOnCompleteListener(new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                this.f$0.a(task);
            }
        });
    }

    public void a(Task task) {
        try {
            c();
        } catch (ApiException e) {
            int statusCode = e.getStatusCode();
            if (statusCode != 6) {
                if (statusCode == 8502) {
                    c();
                    return;
                }
                return;
            }
            TSLog.logger.debug(TSLog.info("Location Settings Resolution: START"));
            try {
                ((ResolvableApiException) e).startResolutionForResult(this, 101);
            } catch (IntentSender.SendIntentException e2) {
                TSLog.logger.warn(TSLog.warn(e2.getMessage()));
                c();
            } catch (ClassCastException e3) {
                TSLog.logger.warn(TSLog.warn(e3.getMessage()));
                c();
            }
        }
    }
}
