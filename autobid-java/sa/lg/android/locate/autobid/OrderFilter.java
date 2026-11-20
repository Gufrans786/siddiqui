package sa.lg.android.locate.autobid;

import android.location.Location;

import org.json.JSONObject;

public final class OrderFilter {
    private OrderFilter() {
    }

    public static boolean shouldAccept(JSONObject order, AutoBidPreferences settings, Location location) {
        if (!"received".equalsIgnoreCase(order.optString("status"))
                || wasRejectedByDriver(order, settings.driverId())) {
            return false;
        }
        if (settings.distanceEnabled() && !allSelectedPointsInRange(order, settings, location)) {
            return false;
        }
        if (settings.allOrders()) {
            return true;
        }
        if (settings.priceEnabled()) {
            double price = firstNumber(order, "final_delivery_cost", "original_delivery_cost", "delivery_cost");
            if (!Double.isNaN(price) && price >= settings.minPrice() && price <= settings.maxPrice()) {
                return true;
            }
        }
        return settings.distanceEnabled();
    }

    private static boolean allSelectedPointsInRange(JSONObject order, AutoBidPreferences settings, Location location) {
        if (location == null) {
            return false;
        }
        boolean hasSelectedPoint = false;
        if (settings.pickupEnabled()) {
            hasSelectedPoint = true;
            double[] pickup = coordinates(order.optString("restaurant_coordinates"));
            if (pickup == null) {
                return false;
            }
            double distance = haversine(location.getLatitude(), location.getLongitude(), pickup[0], pickup[1]);
            if (!(distance >= settings.pickupMinDistance() && distance <= settings.pickupMaxDistance())) {
                return false;
            }
        }
        if (settings.dropoffEnabled()) {
            hasSelectedPoint = true;
            double[] dropoff = coordinates(order.optString("customer_coordinates"));
            if (dropoff == null) {
                return false;
            }
            double distance = haversine(location.getLatitude(), location.getLongitude(), dropoff[0], dropoff[1]);
            if (!(distance >= settings.dropoffMinDistance() && distance <= settings.dropoffMaxDistance())) {
                return false;
            }
        }
        return hasSelectedPoint;
    }

    public static boolean wasRejectedByDriver(JSONObject order, String driverId) {
        Object rejected = order.opt("list_drivers_reject");
        if (rejected instanceof org.json.JSONArray) {
            org.json.JSONArray drivers = (org.json.JSONArray) rejected;
            for (int i = 0; i < drivers.length(); i++) {
                if (driverId.equals(drivers.optString(i).trim())) {
                    return true;
                }
            }
        } else if (rejected instanceof String) {
            for (String id : ((String) rejected).split(",")) {
                if (driverId.equals(id.trim())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isFarOrder(JSONObject order, AutoBidPreferences settings, Location location) {
        if (location == null || !"received".equalsIgnoreCase(order.optString("status"))) {
            return false;
        }
        boolean hasSelectedPoint = false;
        if (settings.pickupEnabled()) {
            double[] pickup = coordinates(order.optString("restaurant_coordinates"));
            if (pickup == null) {
                return false;
            }
            hasSelectedPoint = true;
            if (haversine(location.getLatitude(), location.getLongitude(), pickup[0], pickup[1]) <= settings.pickupMaxDistance()) {
                return false;
            }
        }
        if (settings.dropoffEnabled()) {
            double[] dropoff = coordinates(order.optString("customer_coordinates"));
            if (dropoff == null) {
                return false;
            }
            hasSelectedPoint = true;
            if (haversine(location.getLatitude(), location.getLongitude(), dropoff[0], dropoff[1]) <= settings.dropoffMaxDistance()) {
                return false;
            }
        }
        return hasSelectedPoint;
    }

    public static double distanceKm(JSONObject order, AutoBidPreferences settings, Location location) {
        double nearest = Double.NaN;
        for (double distance : selectedDistances(order, settings, location)) {
            if (Double.isNaN(nearest) || distance < nearest) {
                nearest = distance;
            }
        }
        return nearest;
    }

    public static String distanceSummary(JSONObject order, Location location) {
        if (location == null) {
            return "Distance unavailable";
        }
        double[] pickup = coordinates(order.optString("restaurant_coordinates"));
        double[] dropoff = coordinates(order.optString("customer_coordinates"));
        String pickupText = "n/a";
        String dropoffText = "n/a";
        if (pickup != null) {
            pickupText = String.format(java.util.Locale.US, "%.2f km", haversine(location.getLatitude(), location.getLongitude(), pickup[0], pickup[1]));
        }
        if (dropoff != null) {
            dropoffText = String.format(java.util.Locale.US, "%.2f km", haversine(location.getLatitude(), location.getLongitude(), dropoff[0], dropoff[1]));
        }
        return "Pickup: " + pickupText + " • Dropoff: " + dropoffText;
    }

    private static double[] selectedDistances(JSONObject order, AutoBidPreferences settings, Location location) {
        if (location == null || !"received".equalsIgnoreCase(order.optString("status"))) {
            return new double[0];
        }
        double[] pickup = coordinates(order.optString("restaurant_coordinates"));
        double[] dropoff = coordinates(order.optString("customer_coordinates"));
        double[] values = new double[2];
        int count = 0;
        if (settings.pickupEnabled()) {
            if (pickup != null) {
                values[count++] = haversine(location.getLatitude(), location.getLongitude(), pickup[0], pickup[1]);
            } else if (!settings.dropoffEnabled() && dropoff != null) {
                values[count++] = haversine(location.getLatitude(), location.getLongitude(), dropoff[0], dropoff[1]);
            }
        }
        if (settings.dropoffEnabled() && dropoff != null) {
            values[count++] = haversine(location.getLatitude(), location.getLongitude(), dropoff[0], dropoff[1]);
        }
        double[] result = new double[count];
        System.arraycopy(values, 0, result, 0, count);
        return result;
    }

    public static double price(JSONObject order) {
        return firstNumber(order, "final_delivery_cost", "original_delivery_cost", "delivery_cost");
    }

    public static double[] coordinates(String value) {
        if (value == null) {
            return null;
        }
        String[] parts = value.trim().split(",");
        if (parts.length != 2) {
            return null;
        }
        try {
            double latitude = Double.parseDouble(parts[0].trim());
            double longitude = Double.parseDouble(parts[1].trim());
            if (Math.abs(latitude) > 90 || Math.abs(longitude) > 180) {
                return null;
            }
            return new double[]{latitude, longitude};
        } catch (NumberFormatException ignored) {
            return null;
        }
    }

    public static double haversine(double lat1, double lon1, double lat2, double lon2) {
        double latDistance = Math.toRadians(lat2 - lat1);
        double lonDistance = Math.toRadians(lon2 - lon1);
        double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
                + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
                * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);
        return 6371.0 * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    }

    private static double firstNumber(JSONObject object, String... names) {
        for (String name : names) {
            if (!object.has(name) || object.isNull(name)) {
                continue;
            }
            double value = object.optDouble(name, Double.NaN);
            if (!Double.isNaN(value)) {
                return value;
            }
        }
        return Double.NaN;
    }
}
