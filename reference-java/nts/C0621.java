package nts;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import ch.qos.logback.core.net.SyslogConstants;
import com.nsoftware.ipworks3ds.sdk.core.ClientWebChallengeListener;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.io.ByteArrayInputStream;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0621 extends WebViewClient {

    public ClientWebChallengeListener f3437;

    public C0621(ClientWebChallengeListener clientWebChallengeListener) {
        this.f3437 = clientWebChallengeListener;
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (str == null) {
            return null;
        }
        return m5708(Uri.parse(str));
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str == null || str.length() == 0) {
            return true;
        }
        Uri uri = Uri.parse(str);
        if (!m5710(uri)) {
            C0273.f1383.m3987(C0558.m5470(SyslogConstants.LOG_LOCAL4, 34, 36) + str);
            return true;
        }
        String query = uri.getQuery();
        if (query == null || query.length() <= 0) {
            return true;
        }
        this.f3437.m1177(query);
        return true;
    }

    public final WebResourceResponse m5708(Uri uri) {
        if (!m5710(uri) && !m5709(uri)) {
            C0273.f1383.m3987(C0558.m5470(69, 34, 16) + uri.toString());
        }
        return new WebResourceResponse(C0558.m5470(RNMBXStyleValue.InterpolationModeIdentity, 24, 44), C0273.f1385.toString(), new ByteArrayInputStream(new byte[0]));
    }

    public final boolean m5709(Uri uri) {
        return uri.getPath() == null || uri.getPath().equals(C0558.m5470(CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA, 12, 35));
    }

    public boolean m5710(Uri uri) {
        return C0558.m5470(127, 6, 67).equalsIgnoreCase(uri.getHost()) && C0558.m5470(133, 5, 116).equalsIgnoreCase(uri.getScheme()) && C0558.m5470(CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 10, 27).equalsIgnoreCase(uri.getPath());
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return m5708(webResourceRequest.getUrl());
    }
}
