package sa.lg.android.locate.autobid;

import android.content.Context;
import android.util.Base64;

import org.json.JSONObject;

import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;

public final class AutoBidRuntime {
    private static Context applicationContext;

    private AutoBidRuntime() {
    }

    public static synchronized void initialize(Context context) {
        if (context != null) {
            applicationContext = context.getApplicationContext();
            AppLocationOverride.initialize(context);
        }
    }

    public static void onOrderBinary(Object payload) {
        try {
            if (applicationContext == null || payload == null) {
                return;
            }
            Method toByteArray = payload.getClass().getMethod("toByteArray");
            byte[] bytes = (byte[]) toByteArray.invoke(payload);
            String decoded = LzString.decompress(bytes);
            if (decoded == null || decoded.isEmpty()) {
                android.util.Log.i("AUTOBID", "Binary order event could not be decompressed");
                return;
            }
            AutoBidService.onOrderPayload(applicationContext, decoded);
        } catch (Throwable error) {
            android.util.Log.w("AUTOBID", "Binary order event ignored: " + error.getClass().getSimpleName());
        }
    }

    public static void onOrderPayload(Object payload) {
        try {
            if (applicationContext == null || payload == null) {
                return;
            }
            if (payload instanceof String) {
                AutoBidService.onOrderPayload(applicationContext, (String) payload);
                return;
            }
            Method getData = payload.getClass().getMethod("getData");
            Object data = getData.invoke(payload);
            if (data instanceof java.util.Map) {
                for (Object value : ((java.util.Map<?, ?>) data).values()) {
                    if (value instanceof String) {
                        AutoBidService.onOrderPayload(applicationContext, (String) value);
                    }
                }
            }
        } catch (Throwable error) {
            android.util.Log.w("AUTOBID", "Order event ignored: " + error.getClass().getSimpleName());
        }
    }

    public static void capture(Object headers, Object url) {
        try {
            if (applicationContext == null || headers == null) {
                return;
            }
            Method sizeMethod = headers.getClass().getMethod("size");
            Method arrayMethod = headers.getClass().getMethod("getArray", int.class);
            int size = (Integer) sizeMethod.invoke(headers);
            for (int i = 0; i < size; i++) {
                Object pair = arrayMethod.invoke(headers, i);
                if (pair == null) {
                    continue;
                }
                Method stringMethod = pair.getClass().getMethod("getString", int.class);
                String name = (String) stringMethod.invoke(pair, 0);
                if (!"Authorization".equalsIgnoreCase(name)) {
                    continue;
                }
                String value = (String) stringMethod.invoke(pair, 1);
                if (value == null) {
                    return;
                }
                String token = value.trim();
                if (token.regionMatches(true, 0, "Bearer ", 0, 7)) {
                    token = token.substring(7).trim();
                }
                if (token.isEmpty()) {
                    return;
                }
                AutoBidPreferences preferences = new AutoBidPreferences(applicationContext);
                if (token.equals(preferences.token())) {
                    return;
                }
                String driverId = driverFromJwt(token);
                preferences.saveCredentials(token, driverId.isEmpty() ? preferences.driverId() : driverId);
                preferences.report("Driver session ready", "Bearer token captured from Locate Go");
                if (OfflineLicense.hasValidSession(applicationContext) && preferences.anyModeEnabled()) {
                    AutoBidService.start(applicationContext);
                }
                return;
            }
        } catch (Throwable ignored) {
        }
    }

    private static String driverFromJwt(String token) {
        try {
            String[] pieces = token.split("\\.");
            if (pieces.length < 2) {
                return "";
            }
            byte[] decoded = Base64.decode(pieces[1], Base64.URL_SAFE | Base64.NO_PADDING | Base64.NO_WRAP);
            JSONObject payload = new JSONObject(new String(decoded, StandardCharsets.UTF_8));
            for (String key : new String[]{"driver_id", "driverId", "sub", "id"}) {
                String value = payload.optString(key).trim();
                if (!value.isEmpty()) {
                    return value;
                }
            }
        } catch (Throwable ignored) {
        }
        return "";
    }
}
