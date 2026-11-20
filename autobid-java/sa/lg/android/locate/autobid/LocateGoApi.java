package sa.lg.android.locate.autobid;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class LocateGoApi {
    static final String DEFAULT_BASE_URL = "https://go.locate.sa";
    private static final String[] ORDER_ARRAYS = {"orders", "data", "liveData", "currentOrders"};
    private final String baseUrl;
    private final String token;
    private final String driverId;

    public LocateGoApi(String token, String driverId) {
        this(DEFAULT_BASE_URL, token, driverId);
    }

    LocateGoApi(String baseUrl, String token, String driverId) {
        this.baseUrl = baseUrl.replaceAll("/+$", "");
        String normalized = token == null ? "" : token.trim();
        this.token = normalized.regionMatches(true, 0, "Bearer ", 0, 7) ? normalized.substring(7).trim() : normalized;
        this.driverId = driverId == null ? "" : driverId.trim();
    }

    public List<JSONObject> fetchOrders() throws IOException, JSONException {
        Response response = request("GET", "/api/v2/orders/driver", null);
        if (response.status < 200 || response.status >= 300) {
            throw new ApiException(response.status, "Could not fetch orders (HTTP " + response.status + ")");
        }
        return extractOrders(new JSONTokener(response.body).nextValue());
    }

    public static List<JSONObject> parseOrders(String payload) throws JSONException {
        if (payload == null || payload.trim().isEmpty()) {
            return new ArrayList<>();
        }
        String json = payload.trim();
        if (json.startsWith("42")) {
            json = json.substring(2);
        }
        if (!json.startsWith("{") && !json.startsWith("[")) {
            int object = json.indexOf('{');
            int array = json.indexOf('[');
            int start = object < 0 ? array : array < 0 ? object : Math.min(object, array);
            if (start >= 0) {
                json = json.substring(start);
            }
        }
        return extractOrders(new JSONTokener(json).nextValue());
    }

    public static String describePayload(String payload) {
        if (payload == null) {
            return "null";
        }
        try {
            String json = payload.trim();
            if (json.startsWith("42")) {
                json = json.substring(2);
            }
            if (!json.startsWith("{") && !json.startsWith("[")) {
                int object = json.indexOf('{');
                int array = json.indexOf('[');
                int start = object < 0 ? array : array < 0 ? object : Math.min(object, array);
                if (start >= 0) {
                    json = json.substring(start);
                }
            }
            return describeValue(new JSONTokener(json).nextValue(), 0);
        } catch (Exception error) {
            return "unparsed length=" + payload.length();
        }
    }

    private static String describeValue(Object value, int depth) throws JSONException {
        if (value == null || value == JSONObject.NULL) {
            return "null";
        }
        if (depth >= 5) {
            return "...";
        }
        if (value instanceof String) {
            String text = ((String) value).trim();
            if (text.startsWith("{") || text.startsWith("[")) {
                return describeValue(new JSONTokener(text).nextValue(), depth + 1);
            }
            return text.matches("[A-Za-z_]+") ? text : "string";
        }
        if (value instanceof JSONArray) {
            JSONArray array = (JSONArray) value;
            return "[" + array.length() + (array.length() == 0 ? "" : "," + describeValue(array.get(0), depth + 1)) + "]";
        }
        if (value instanceof JSONObject) {
            JSONObject object = (JSONObject) value;
            StringBuilder result = new StringBuilder("{");
            java.util.Iterator<String> keys = object.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                if (result.length() > 1) {
                    result.append(',');
                }
                result.append(key).append('=').append(describeValue(object.get(key), depth + 1));
            }
            return result.append('}').toString();
        }
        return value instanceof Number ? "number" : "boolean";
    }

    public void acceptOrder(JSONObject order) throws IOException, JSONException {
        String orderNumber = order.optString("order_number").trim();
        String orderDriverId = order.optString("driver_id").trim();
        String requestTime = order.optString("request_time").trim();
        if (orderNumber.isEmpty()) {
            throw new IOException("Order number is required");
        }
        if (requestTime.isEmpty() || "null".equalsIgnoreCase(requestTime)) {
            requestTime = new java.util.Date().toString();
        }
        if (orderDriverId.isEmpty() || "null".equalsIgnoreCase(orderDriverId)) {
            orderDriverId = driverId;
        }
        android.util.Log.i("AUTOBID", "Accept driver for " + orderNumber
                + " • transaction " + orderDriverId + " • session " + driverId);
        Map<String, String> headers = new LinkedHashMap<>();
        headers.put("x-ca-transaction-key", orderNumber + "::" + orderDriverId + "::AssignOrder::" + requestTime);
        Response response = request("PATCH", "/api/v2/orders/assign/" + orderNumber, headers);
        String body = response.body == null ? "" : response.body;
        android.util.Log.i("AUTOBID", "Accept API response " + response.status + " for " + orderNumber
                + " • " + body.substring(0, Math.min(body.length(), 2000)));
        if (response.status < 200 || response.status >= 300) {
            throw new ApiException(response.status, "Accept failed for " + orderNumber + " (HTTP " + response.status + ")");
        }
        if (body.trim().startsWith("{")) {
            JSONObject result = new JSONObject(body);
            int resultStatus = result.optInt("status", response.status);
            if (resultStatus >= 400 || !result.optBoolean("success", true)) {
                throw new ApiException(resultStatus, result.optString("message", "Accept rejected by server"));
            }
        }
    }

    public void rejectOrder(String orderNumber) throws IOException {
        Response response = request("PATCH", "/api/v2/orders/" + orderNumber + "/reject-socket", null);
        if (response.status < 200 || response.status >= 300) {
            throw new ApiException(response.status, "Reject failed for " + orderNumber + " (HTTP " + response.status + ")");
        }
    }

    private Response request(String method, String path, Map<String, String> extraHeaders) throws IOException {
        if (token.isEmpty() || driverId.isEmpty()) {
            throw new IOException("Bearer token and driver ID are required");
        }
        HttpURLConnection connection = (HttpURLConnection) new URL(baseUrl + path).openConnection();
        try {
            connection.setRequestMethod(method);
            connection.setConnectTimeout(10000);
            connection.setReadTimeout(12000);
            connection.setUseCaches(false);
            connection.setRequestProperty("Authorization", "Bearer " + token);
            connection.setRequestProperty("Accept", "application/json, text/plain, */*");
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setRequestProperty("x-from-application", "EXPRESS");
            connection.setRequestProperty("x-from-version", "4.1.0");
            connection.setRequestProperty("x-from-language", "en");
            if (extraHeaders != null) {
                for (Map.Entry<String, String> entry : extraHeaders.entrySet()) {
                    connection.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            if ("PATCH".equals(method)) {
                connection.setDoOutput(true);
                connection.setFixedLengthStreamingMode(0);
                connection.getOutputStream().close();
            }
            int status = connection.getResponseCode();
            InputStream stream = status >= 400 ? connection.getErrorStream() : connection.getInputStream();
            String body = stream == null ? "" : readLimited(stream);
            return new Response(status, body);
        } finally {
            connection.disconnect();
        }
    }

    private static List<JSONObject> extractOrders(Object value) throws JSONException {
        Map<String, JSONObject> unique = new LinkedHashMap<>();
        collectOrders(value, unique, 0);
        return new ArrayList<>(unique.values());
    }

    private static void collectOrders(Object value, Map<String, JSONObject> output, int depth) throws JSONException {
        if (value == null || value == JSONObject.NULL || depth > 10) {
            return;
        }
        if (value instanceof String) {
            String nested = ((String) value).trim();
            if (nested.startsWith("{") || nested.startsWith("[")) {
                try {
                    collectOrders(new JSONTokener(nested).nextValue(), output, depth + 1);
                } catch (JSONException ignored) {
                }
            }
            return;
        }
        if (value instanceof JSONArray) {
            JSONArray array = (JSONArray) value;
            for (int i = 0; i < array.length(); i++) {
                collectOrders(array.get(i), output, depth + 1);
            }
            return;
        }
        if (!(value instanceof JSONObject)) {
            return;
        }
        JSONObject object = (JSONObject) value;
        if (object.has("order_number")) {
            String id = object.optString("order_number");
            if (!id.isEmpty()) {
                output.put(id, object);
            }
        }
        java.util.Iterator<String> keys = object.keys();
        while (keys.hasNext()) {
            collectOrders(object.get(keys.next()), output, depth + 1);
        }
    }

    private static String readLimited(InputStream stream) throws IOException {
        try (InputStream input = stream; ByteArrayOutputStream output = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[8192];
            int total = 0;
            int count;
            while ((count = input.read(buffer)) != -1) {
                total += count;
                if (total > 4 * 1024 * 1024) {
                    throw new IOException("Server response is too large");
                }
                output.write(buffer, 0, count);
            }
            return new String(output.toByteArray(), StandardCharsets.UTF_8);
        }
    }

    public static final class ApiException extends IOException {
        public final int status;

        ApiException(int status, String message) {
            super(message);
            this.status = status;
        }
    }

    private static final class Response {
        final int status;
        final String body;

        Response(int status, String body) {
            this.status = status;
            this.body = body;
        }
    }
}
