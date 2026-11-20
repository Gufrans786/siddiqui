package com.oppwa.mobile.connect.threeds;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.common.net.HttpHeaders;
import com.oppwa.mobile.connect.R;
import java.io.InputStream;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;

class d {
    static InputStream a(Context context, Set<String> set) throws Exception {
        return a(context, new URL("https://oppwa.com:443/v1/threeDSecure2/mobile?brands=" + a(set)));
    }

    private static InputStream a(Context context, URL url) throws Exception {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
        httpsURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=UTF-8");
        httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT, "application/json");
        httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
        return httpsURLConnection.getInputStream();
    }

    private static String a(Set<String> set) {
        StringBuilder sb = new StringBuilder();
        for (String str : set) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(str);
        }
        return sb.toString();
    }

    private static SSLSocketFactory a(Context context) {
        try {
            Certificate certificateA = a(context, R.raw.comodo_ca);
            Certificate certificateA2 = a(context, R.raw.sectigo_ca);
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            keyStore.setCertificateEntry("comodo", certificateA);
            keyStore.setCertificateEntry("sectigo", certificateA2);
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
            return sSLContext.getSocketFactory();
        } catch (Exception unused) {
            return null;
        }
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
}
