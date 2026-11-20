package com.oppwa.mobile.connect.provider;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.browser.trusted.sharing.ShareTarget;
import com.bumptech.glide.load.Key;
import com.google.common.net.HttpHeaders;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.utils.Logger;
import com.oppwa.mobile.connect.utils.StringUtils;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLEncoder;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import org.json.JSONException;
import org.json.JSONObject;

public class HttpUtils {
    static InputStream a(Context context, String str, Map<String, String> map) throws Exception {
        return b(a(context, str), map);
    }

    static InputStream b(HttpsURLConnection httpsURLConnection, Map<String, String> map) throws Exception {
        String string;
        httpsURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=UTF-8");
        httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT, "application/json");
        if (map == null) {
            a(httpsURLConnection);
        } else {
            a(httpsURLConnection, map);
        }
        int responseCode = httpsURLConnection.getResponseCode();
        if (responseCode == 200) {
            return httpsURLConnection.getInputStream();
        }
        try {
            string = new JSONObject(StringUtils.inputStreamToString(httpsURLConnection.getErrorStream())).getString("result");
        } catch (JSONException unused) {
            string = "response code " + responseCode;
        }
        throw new Exception(string);
    }

    public static Bitmap downloadBitmap(Context context, String str) throws Exception {
        HttpsURLConnection httpsURLConnectionA;
        try {
            httpsURLConnectionA = a(context, str);
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpsURLConnectionA.getInputStream());
                httpsURLConnectionA.disconnect();
                return bitmapDecodeStream;
            } catch (Throwable th) {
                th = th;
                if (httpsURLConnectionA != null) {
                    httpsURLConnectionA.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            httpsURLConnectionA = null;
        }
    }

    public static InputStream makeRequest(Context context, Connect.ProviderMode providerMode, String str, Map<String, String> map, String str2) throws Exception {
        return makeRequest(context, providerMode, Connect.ProviderDomain.DEFAULT, str, map, str2);
    }

    public static Boolean sendCallbackRequestToPaypipe(Context context, String str, String str2) {
        try {
            HttpsURLConnection httpsURLConnectionA = a(context, str);
            a(httpsURLConnectionA);
            return a(httpsURLConnectionA, str2);
        } catch (Exception unused) {
            return Boolean.FALSE;
        }
    }

    public static InputStream makeRequest(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, String str, Map<String, String> map, String str2) throws Exception {
        HttpsURLConnection httpsURLConnectionA = a(context, providerMode, providerDomain, str);
        InputStream inputStreamB = b(httpsURLConnectionA, map);
        a(str2, httpsURLConnectionA);
        return inputStreamB;
    }

    static StringBuilder a(Map<String, String> map) throws Exception {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(str);
            sb.append("=");
            sb.append(URLEncoder.encode(map.get(str), Key.STRING_CHARSET_NAME));
        }
        return sb;
    }

    private static HttpsURLConnection a(Context context, String str) throws Exception {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
        httpsURLConnection.setConnectTimeout(10000);
        httpsURLConnection.setReadTimeout(10000);
        return httpsURLConnection;
    }

    private static HttpsURLConnection a(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, String str) throws Exception {
        return a(context, a(providerMode, providerDomain) + a() + str);
    }

    private static SSLSocketFactory a(Context context) throws Exception {
        Certificate certificateA = a(context, R.raw.comodo_ca);
        Certificate certificateA2 = a(context, R.raw.sectigo_ca);
        Certificate certificateA3 = a(context, R.raw.isrg_root_x1_ca);
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        keyStore.load(null, null);
        keyStore.setCertificateEntry("comodo", certificateA);
        keyStore.setCertificateEntry("sectigo", certificateA2);
        keyStore.setCertificateEntry("isrgRootX1", certificateA3);
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStore);
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
        return sSLContext.getSocketFactory();
    }

    private static Certificate a(Context context, int i) throws Exception {
        CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
        try {
            Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(inputStreamOpenRawResource);
            if (inputStreamOpenRawResource != null) {
                inputStreamOpenRawResource.close();
            }
            return certificateGenerateCertificate;
        } catch (Throwable th) {
            if (inputStreamOpenRawResource != null) {
                try {
                    inputStreamOpenRawResource.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private static void a(HttpsURLConnection httpsURLConnection) throws Exception {
        httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
    }

    private static void a(HttpsURLConnection httpsURLConnection, Map<String, String> map) throws Exception {
        httpsURLConnection.setRequestMethod("POST");
        httpsURLConnection.setDoOutput(true);
        OutputStream outputStream = httpsURLConnection.getOutputStream();
        outputStream.write(StringUtils.getBytes(a(map)));
        outputStream.flush();
        outputStream.close();
    }

    protected static String a(Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain) {
        return b.a(providerMode, providerDomain);
    }

    private static String a() {
        return ":443";
    }

    private static void a(String str, HttpsURLConnection httpsURLConnection) throws Exception {
        if (str != null) {
            Logger.info("Response: [_" + httpsURLConnection.getResponseCode() + "] " + httpsURLConnection.getURL() + "\n");
        }
    }

    private static Boolean a(HttpsURLConnection httpsURLConnection, String str) {
        String headerField;
        boolean z = false;
        try {
            httpsURLConnection.setInstanceFollowRedirects(false);
            int responseCode = httpsURLConnection.getResponseCode();
            if ((responseCode == 302 || responseCode == 301 || responseCode == 303) && (headerField = httpsURLConnection.getHeaderField(HttpHeaders.LOCATION)) != null && headerField.contains(str)) {
                z = true;
            }
            return Boolean.valueOf(z);
        } catch (Exception unused) {
            return Boolean.FALSE;
        }
    }
}
