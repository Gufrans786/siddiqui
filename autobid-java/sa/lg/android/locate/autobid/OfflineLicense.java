package sa.lg.android.locate.autobid;

import android.content.Context;
import android.provider.Settings;

import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

final class OfflineLicense {
    private static final String GENERATOR_KEY = "MGS-AUTO-Gufran3729-device-license-v1";
    private static final String ALPHABET = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";

    private OfflineLicense() {
    }

    static String userId(Context context) {
        String androidId = Settings.Secure.getString(context.getContentResolver(), Settings.Secure.ANDROID_ID);
        String seed;
        if (androidId == null || androidId.trim().isEmpty()) {
            android.content.SharedPreferences preferences = context.getSharedPreferences("mgs_offline_login", Context.MODE_PRIVATE);
            String installationId = preferences.getString("installation_id", "");
            if (installationId.isEmpty()) {
                installationId = UUID.randomUUID().toString();
                preferences.edit().putString("installation_id", installationId).apply();
            }
            seed = "installation:" + installationId;
        } else {
            seed = "android:" + androidId.trim();
        }
        String encoded = base32(digest("SHA-256", seed.getBytes(StandardCharsets.UTF_8), null), 8);
        return "MGS-" + encoded.substring(0, 4) + "-" + encoded.substring(4);
    }

    static boolean hasValidSession(Context context) {
        android.content.SharedPreferences preferences = context.getSharedPreferences("mgs_offline_login", Context.MODE_PRIVATE);
        long expiry = preferences.getLong("authenticated_expiry", 0);
        if (expiry > System.currentTimeMillis()) {
            return true;
        }
        if (expiry > 0) {
            preferences.edit().remove("authenticated_expiry").apply();
        }
        return false;
    }

    static long validExpiry(String userId, String password) {
        if (password == null) {
            return -1;
        }
        String compact = password.trim().toUpperCase(Locale.US).replace("-", "").replace(" ", "");
        if (compact.length() != 23 || (!compact.startsWith("MGS30") && !compact.startsWith("MGS60"))) {
            return -1;
        }
        int days = compact.startsWith("MGS30") ? 30 : 60;
        String date = compact.substring(5, 13);
        String actual = compact.substring(13);
        String signedValue = userId + ":" + days + ":" + date;
        String expected = base32(digest("HmacSHA256", signedValue.getBytes(StandardCharsets.UTF_8),
                GENERATOR_KEY.getBytes(StandardCharsets.UTF_8)), 10);
        if (!MessageDigest.isEqual(expected.getBytes(StandardCharsets.UTF_8), actual.getBytes(StandardCharsets.UTF_8))) {
            return -1;
        }
        try {
            SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd", Locale.US);
            format.setLenient(false);
            format.setTimeZone(TimeZone.getTimeZone("UTC"));
            long expiry = format.parse(date).getTime() + 86400000L - 1;
            return expiry <= System.currentTimeMillis() ? 0 : expiry;
        } catch (Exception error) {
            return -1;
        }
    }

    private static byte[] digest(String algorithm, byte[] data, byte[] key) {
        try {
            if (key == null) {
                return MessageDigest.getInstance(algorithm).digest(data);
            }
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key, algorithm));
            return mac.doFinal(data);
        } catch (GeneralSecurityException error) {
            throw new IllegalStateException(error);
        }
    }

    private static String base32(byte[] data, int length) {
        StringBuilder result = new StringBuilder(length);
        int buffer = 0;
        int bits = 0;
        int index = 0;
        while (result.length() < length) {
            if (bits < 5) {
                buffer = (buffer << 8) | (data[index++] & 0xff);
                bits += 8;
            }
            result.append(ALPHABET.charAt((buffer >> (bits - 5)) & 31));
            bits -= 5;
        }
        return result.toString();
    }
}
