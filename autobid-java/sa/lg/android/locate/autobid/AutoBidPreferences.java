package sa.lg.android.locate.autobid;

import android.content.Context;
import android.content.SharedPreferences;

public final class AutoBidPreferences {
    private static final String FILE = "autobid_settings";
    private final SharedPreferences preferences;

    public AutoBidPreferences(Context context) {
        preferences = context.getApplicationContext().getSharedPreferences(FILE, Context.MODE_PRIVATE);
    }

    public String token() {
        return preferences.getString("token", "").trim();
    }

    public String driverId() {
        return preferences.getString("driver_id", "").trim();
    }

    public boolean allOrders() {
        return preferences.getBoolean("autobid_all", false);
    }

    public boolean priceEnabled() {
        return preferences.getBoolean("autobid_price", false);
    }

    public boolean distanceEnabled() {
        return preferences.getBoolean("autobid_distance", false);
    }

    public double minPrice() {
        return preferences.getFloat("price_min", 0f);
    }

    public double maxPrice() {
        return preferences.getFloat("price_max", 1000f);
    }

    public double minDistance() {
        return distanceNumber("distance_min_text", "distance_min", 0f);
    }

    public double maxDistance() {
        return distanceNumber("distance_max_text", "distance_max", 5f);
    }

    public String minDistanceText() {
        return distanceText("distance_min_text", "distance_min", 0f);
    }

    public String maxDistanceText() {
        return distanceText("distance_max_text", "distance_max", 5f);
    }

    public double pickupMinDistance() {
        return customDistance("pickup_min_text", minDistance());
    }

    public double pickupMaxDistance() {
        return customDistance("pickup_max_text", maxDistance());
    }

    public double dropoffMinDistance() {
        return customDistance("dropoff_min_text", minDistance());
    }

    public double dropoffMaxDistance() {
        return customDistance("dropoff_max_text", maxDistance());
    }

    public String pickupMinDistanceText() {
        return preferences.getString("pickup_min_text", minDistanceText());
    }

    public String pickupMaxDistanceText() {
        return preferences.getString("pickup_max_text", maxDistanceText());
    }

    public String dropoffMinDistanceText() {
        return preferences.getString("dropoff_min_text", minDistanceText());
    }

    public String dropoffMaxDistanceText() {
        return preferences.getString("dropoff_max_text", maxDistanceText());
    }

    private double customDistance(String key, double fallback) {
        String value = preferences.getString(key, null);
        if (value != null) {
            try {
                return Double.parseDouble(value.trim());
            } catch (NumberFormatException ignored) {
            }
        }
        return fallback;
    }

    private double distanceNumber(String textKey, String numberKey, float fallback) {
        String value = preferences.getString(textKey, null);
        if (value != null) {
            try {
                return Double.parseDouble(value.trim());
            } catch (NumberFormatException ignored) {
            }
        }
        return preferences.getFloat(numberKey, fallback);
    }

    private String distanceText(String textKey, String numberKey, float fallback) {
        String value = preferences.getString(textKey, null);
        if (value != null && !value.trim().isEmpty()) {
            return value;
        }
        String formatted = String.format(java.util.Locale.US, "%.2f", preferences.getFloat(numberKey, fallback));
        return formatted.endsWith("0") ? formatted.substring(0, formatted.length() - 1) : formatted;
    }

    public boolean pickupEnabled() {
        return preferences.getBoolean("distance_pickup", true);
    }

    public boolean dropoffEnabled() {
        return preferences.getBoolean("distance_dropoff", false);
    }

    public boolean rejectFar() {
        return preferences.getBoolean("autobid_reject_far", false);
    }

    public boolean anyModeEnabled() {
        return allOrders() || priceEnabled() || distanceEnabled() || rejectFar();
    }

    public boolean hasPickedLocation() {
        return validPickedLocation(pickedLatitude(), pickedLongitude());
    }

    public double pickedLatitude() {
        return pickedCoordinate("picked_latitude");
    }

    public double pickedLongitude() {
        return pickedCoordinate("picked_longitude");
    }

    public int pickedZoom() {
        return Math.max(1, Math.min(19, preferences.getInt("picked_zoom", 13)));
    }

    private double pickedCoordinate(String key) {
        try {
            return Double.parseDouble(preferences.getString(key, ""));
        } catch (NumberFormatException ignored) {
            return Double.NaN;
        }
    }

    public static boolean validPickedLocation(double latitude, double longitude) {
        return !Double.isNaN(latitude) && !Double.isInfinite(latitude)
                && !Double.isNaN(longitude) && !Double.isInfinite(longitude)
                && latitude >= -90 && latitude <= 90 && longitude >= -180 && longitude <= 180;
    }

    public boolean savePickedLocation(double latitude, double longitude, double zoom) {
        if (!validPickedLocation(latitude, longitude)) {
            return false;
        }
        int mapZoom = Double.isNaN(zoom) || Double.isInfinite(zoom) ? 13
                : (int) Math.round(Math.max(1, Math.min(19, zoom)));
        preferences.edit()
                .putString("picked_latitude", Double.toString(latitude))
                .putString("picked_longitude", Double.toString(longitude))
                .putInt("picked_zoom", mapZoom)
                .apply();
        return true;
    }

    public void clearPickedLocation() {
        preferences.edit().remove("picked_latitude").remove("picked_longitude").remove("picked_zoom").apply();
    }

    public void saveCredentials(String token, String driverId) {
        preferences.edit().putString("token", token.trim()).putString("driver_id", driverId.trim()).apply();
    }

    public void saveModes(boolean all, boolean price, boolean distance) {
        preferences.edit().putBoolean("autobid_all", all).putBoolean("autobid_price", price).putBoolean("autobid_distance", distance).apply();
    }

    public void saveRejectFar(boolean enabled) {
        preferences.edit().putBoolean("autobid_reject_far", enabled).apply();
    }

    public void savePrice(double min, double max) {
        preferences.edit().putFloat("price_min", (float) min).putFloat("price_max", (float) max).apply();
    }

    public void saveDistance(String min, String max) {
        SharedPreferences.Editor editor = preferences.edit().putString("distance_min_text", min).putString("distance_max_text", max);
        try {
            editor.putFloat("distance_min", Float.parseFloat(min)).putFloat("distance_max", Float.parseFloat(max));
        } catch (NumberFormatException ignored) {
        }
        editor.apply();
    }

    public void saveDistanceRanges(String pickupMin, String pickupMax, String dropoffMin, String dropoffMax) {
        saveDistance(pickupMin, pickupMax);
        preferences.edit()
                .putString("pickup_min_text", pickupMin)
                .putString("pickup_max_text", pickupMax)
                .putString("dropoff_min_text", dropoffMin)
                .putString("dropoff_max_text", dropoffMax)
                .apply();
    }

    public void saveDistanceTargets(boolean pickup, boolean dropoff) {
        preferences.edit().putBoolean("distance_pickup", pickup).putBoolean("distance_dropoff", dropoff).apply();
    }

    public String status() {
        return preferences.getString("status", "AutoBid is off");
    }

    public String activityLog() {
        return preferences.getString("activity_log", "No activity yet");
    }

    public void clearHistory() {
        preferences.edit().putString("activity_log", "No activity yet").apply();
    }

    public void recordHistory(String logLine) {
        String old = preferences.getString("activity_log", "");
        String updated = logLine + (old.isEmpty() ? "" : "\n" + old);
        if (updated.length() > 12000) {
            updated = updated.substring(0, 12000);
        }
        preferences.edit().putString("activity_log", updated).apply();
    }

    public void report(String status, String logLine) {
        String old = preferences.getString("activity_log", "");
        String updated = logLine + (old.isEmpty() ? "" : "\n" + old);
        if (updated.length() > 12000) {
            updated = updated.substring(0, 12000);
        }
        preferences.edit().putString("status", status).putString("activity_log", updated).apply();
    }
}
