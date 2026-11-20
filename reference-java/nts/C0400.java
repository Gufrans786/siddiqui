package nts;

import ch.qos.logback.core.net.SyslogConstants;
import com.caverock.androidsvg.SVGParser;
import com.nsoftware.ipworks3ds.sdk.ConfigParameters;
import java.util.List;
import java.util.Map;
import org.bouncycastle.crypto.tls.CipherSuite;
import sa.lg.android.locate.BuildConfig;

public class C0400 {

    public final boolean f2076;

    public final List<String> f2077;

    public final boolean f2078;

    public final Map<String, String> f2079;

    public final List<String> f2080;

    public final List<String> f2081;

    public final String f2082;

    public final List<String> f2083;

    public final boolean f2084;

    public final boolean f2085;

    public final String f2086;

    public final String f2087;

    public final Map<String, String> f2088;

    public final boolean f2089;

    public static final String f2072 = C0558.m5471(0, 41, 38);

    public static final String f2074 = C0558.m5471(41, 30, 68);

    public static final String f2070 = C0558.m5471(71, 22, 45);

    public static final String f2075 = C0558.m5471(93, 26, 79);

    public static final String f2073 = C0558.m5471(119, 29, 112);

    public static final String f2071 = C0558.m5471(CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA, 16, 100);

    public C0400(ConfigParameters configParameters) {
        this.f2078 = m4635(configParameters.getParamValue(null, f2072), false);
        this.f2089 = m4635(configParameters.getParamValue(null, f2074), false);
        this.f2085 = m4635(configParameters.getParamValue(null, f2070), true);
        this.f2084 = m4635(configParameters.getParamValue(null, f2075), false);
        this.f2076 = m4635(configParameters.getParamValue(null, f2073), true);
        this.f2077 = configParameters.getParamNamesInGroup(ConfigParameters.Builder.GROUP_CLIENT_CONFIG);
        this.f2088 = configParameters.getGroup(ConfigParameters.Builder.GROUP_DIRECTORY_SERVER_KEY);
        this.f2079 = configParameters.getGroup(ConfigParameters.Builder.GROUP_DIRECTORY_SERVER_CA);
        this.f2081 = configParameters.getParamNamesInGroup(ConfigParameters.Builder.GROUP_DEVICE_PARAMETER_BLACK_LIST);
        this.f2080 = configParameters.getParamNamesInGroup(ConfigParameters.Builder.GROUP_TRUSTED_APP_STORES);
        this.f2083 = configParameters.getParamNamesInGroup(ConfigParameters.Builder.GROUP_MALICIOUS_APPS);
        this.f2082 = configParameters.getParamValue(null, ConfigParameters.Builder.RUNTIME_LICENSE);
        this.f2086 = configParameters.getParamValue(null, ConfigParameters.Builder.APP_SIGNATURE);
        this.f2087 = configParameters.getParamValue(null, f2071);
        configParameters.getParamValue(null, ConfigParameters.Builder.APP_SHA256_HASH_VALUE);
    }

    public final boolean m4635(String str, boolean z) {
        if (str != null && str.length() != 0) {
            String strTrim = str.toLowerCase().trim();
            if (strTrim.equals(C0558.m5471(164, 4, 6)) || strTrim.equals(BuildConfig.IOS_VERSION_CODE) || strTrim.equals(C0558.m5471(SyslogConstants.LOG_LOCAL5, 3, 43))) {
                return true;
            }
            if (strTrim.equals(C0558.m5471(171, 5, 83)) || strTrim.equals("0") || strTrim.equals(SVGParser.XML_STYLESHEET_ATTR_ALTERNATE_NO)) {
                return false;
            }
        }
        return z;
    }
}
