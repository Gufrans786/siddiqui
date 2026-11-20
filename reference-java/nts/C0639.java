package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.classic.spi.CallerData;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imageutils.JfifUtil;
import com.google.android.material.internal.ViewUtils;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import io.grpc.internal.GrpcUtil;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.security.KeyStore;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.text.Typography;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;
import sa.lg.android.locate.BuildConfig;

public class C0639 extends C0343 {

    public static final String f3513;

    public static final String f3517;

    public static final String f3518;

    public static final String f3520;

    public static final String f3522;

    public static final String f3524;

    public boolean f3525;

    public boolean f3526;

    public String f3527;

    public boolean f3528;

    public String f3529;

    public boolean f3530;

    public String f3531;

    public boolean f3532;

    public boolean f3533;

    public C0279 f3534;

    public boolean f3535;

    public boolean f3536;

    public String f3537;

    public String f3538;

    public Vector f3539;

    public int f3540;

    public String f3541;

    public String f3542;

    public String f3543;

    public C0301 f3544;

    public C0301 f3545;

    public C0619 f3546;

    public String f3547;

    public C0138 f3548;

    public boolean f3549;

    public Vector f3550;

    public String f3551;

    public byte[] f3552;

    public String f3553;

    public boolean f3554;

    public String f3555;

    public boolean f3556;

    public boolean f3557;

    public boolean f3558;

    public boolean f3559;

    public int f3560;

    public byte[] f3561;

    public int f3562;

    public String f3563;

    public String f3564;

    public C0307 f3565;

    public String f3566;

    public boolean f3567;

    public boolean f3568;

    public boolean f3569;

    public String f3570;

    public boolean f3571;

    public boolean f3572;

    public long f3573;

    public String f3574;

    public String f3575;

    public int f3576;

    public int f3577;

    public String f3578;

    public boolean f3579;

    public InterfaceC0314 f3580;

    public int f3581;

    public C0138 f3582;

    public boolean f3583;

    public String f3584;

    public C0615 f3585;

    public String f3586;

    public C0638 f3587;

    public int f3588;

    public boolean f3589;

    public String f3590;

    public boolean f3591;

    public int f3592;

    public long f3593;

    public String f3594;

    public C0301 f3595;

    public int f3596;

    public String f3597;

    public String f3598;

    public boolean f3599;

    public String f3600;

    public String f3601;

    public int f3602;

    public String f3603;

    public String f3604;

    public long f3605;

    public boolean f3606;

    public String f3607;

    public boolean f3608;

    public String f3609;

    public C0570 f3610;

    public boolean f3611;

    public long f3612;

    public String f3613;

    public String f3614;

    public String f3615;

    public int f3616;

    public boolean f3617;

    public String f3618;

    public byte[] f3619;

    public int f3620;

    public boolean f3621;

    public boolean f3622;

    public int f3623;

    public static final String f3521 = C0164.m3497(64, 42, 76);

    public static final String f3523 = C0164.m3497(106, 4, 116);

    public static final String f3515 = C0164.m3497(110, 14, 29);

    public static final String f3519 = C0164.m3497(124, 15, 33);

    public static final String f3512 = C0164.m3497(CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 11, 48);

    public static final String f3514 = C0164.m3497(150, 12, 7);

    public static final String f3516 = C0164.m3497(162, 12, 92);

    public class C0640 implements X509TrustManager {
        public C0640() {
        }

        @Override
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            C0335 c0335;
            X509TrustManager x509TrustManagerM5766;
            boolean[] zArr = {C0639.this.f360};
            C0335 c0336 = new C0335();
            c0336.m4381(x509CertificateArr[0]);
            if (!zArr[0] && (x509TrustManagerM5766 = C0639.this.m5766()) != null) {
                try {
                    x509TrustManagerM5766.checkServerTrusted(x509CertificateArr, str);
                    zArr[0] = true;
                } catch (Exception unused) {
                }
            }
            if (!zArr[0] && (c0335 = C0639.this.f346) != null) {
                PublicKey publicKeyM4361 = c0335.m4361();
                for (int i = 0; i < x509CertificateArr.length; i++) {
                    c0336.m4381(x509CertificateArr[0]);
                    if (publicKeyM4361.equals(c0336.m4361())) {
                        zArr[0] = true;
                        break;
                    }
                }
            }
            if (!zArr[0]) {
                c0336.m4381(x509CertificateArr[0]);
            }
            C0639.this.fireSSLServerAuthentication(c0336.m4377(), c0336.m4368(), c0336.m4363(), "", zArr);
            if (!zArr[0]) {
                throw new CertificateException(C0164.m3497(911, 32, 54));
            }
        }

        @Override
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public class C0641 implements HostnameVerifier {
        public C0641(C0639 c0639) {
        }

        @Override
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    static {
        C0164.m3497(174, 13, 89);
        f3518 = C0164.m3497(187, 15, 6);
        f3520 = C0164.m3497(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, 16, 2);
        f3517 = C0164.m3497(JfifUtil.MARKER_SOS, 3, 18);
        f3513 = C0164.m3497(221, 3, 4);
        f3522 = C0164.m3497(224, 3, 36);
        C0164.m3497(227, 10, 26);
        f3524 = C0164.m3497(237, 26, 43);
    }

    public C0639(Object obj, Object obj2) {
        super(obj, obj2);
        this.f3623 = 0;
        this.f3581 = 0;
        this.f3588 = 0;
        this.f3602 = 0;
        this.f3612 = 0L;
        this.f3573 = 0L;
        this.f3605 = 0L;
        this.f3568 = false;
        this.f3526 = false;
        this.f3608 = true;
        this.f3622 = false;
        this.f3533 = false;
        this.f3549 = false;
        this.f3611 = false;
        this.f3572 = false;
        this.f3536 = true;
        this.f3547 = "";
        this.f3538 = "";
        this.f3531 = "";
        this.f3614 = "";
        this.f3546 = null;
        this.f3559 = false;
        this.f3606 = true;
        this.f3571 = false;
        this.f3621 = false;
        this.f3592 = 0;
        this.f3584 = "";
        this.f3527 = "";
        this.f3594 = "";
        this.f3607 = "";
        this.f3575 = "";
        this.f3601 = C0164.m3497(263, 13, 114);
        this.f3553 = "";
        this.f3574 = "";
        this.f3578 = "";
        this.f3590 = "";
        this.f3563 = "";
        this.f3618 = "";
        String str = f3513;
        this.f3597 = str;
        String str2 = f3521;
        this.f3615 = str2;
        this.f3609 = "";
        this.f3617 = false;
        this.f3530 = false;
        this.f3579 = false;
        this.f3610 = new C0570();
        this.f3577 = 0;
        this.f3543 = "";
        this.f3537 = "";
        this.f3604 = C0164.m3497(276, 4, WebSocketProtocol.PAYLOAD_SHORT);
        this.f3586 = "";
        this.f3558 = false;
        this.f3532 = true;
        this.f3528 = false;
        this.f3535 = false;
        this.f3557 = false;
        this.f3548 = new C0138();
        this.f3582 = new C0138();
        this.f3587 = null;
        this.f3562 = 80;
        this.f3576 = 80;
        this.f3541 = C0164.m3497(280, 4, 8);
        this.f3552 = C0320.f1706;
        this.f3598 = "";
        this.f3564 = "";
        this.f3603 = "";
        this.f3555 = "";
        this.f3613 = "";
        this.f3529 = "";
        this.f3593 = 0L;
        this.f3619 = null;
        this.f3545 = null;
        this.f3550 = new Vector();
        this.f3542 = "";
        this.f3595 = new C0301();
        this.f3544 = new C0301();
        this.f3561 = new byte[2];
        this.f3565 = new C0307();
        this.f3569 = false;
        this.f3580 = null;
        this.f3616 = -1;
        this.f3540 = -1;
        this.f3539 = new Vector();
        this.f3534 = new C0279();
        this.f3556 = false;
        this.f3620 = 20;
        this.f3560 = 16384;
        this.f3600 = C0164.m3497(284, 4, 49);
        this.f3551 = C0164.m3497(288, 5, 43);
        this.f3589 = false;
        this.f3525 = false;
        this.f3570 = "";
        this.f3554 = false;
        this.f3599 = true;
        this.f3591 = false;
        this.f3583 = false;
        this.f3585 = null;
        this.f3566 = "";
        this.f3596 = 1;
        this.f3567 = true;
        if (obj instanceof InterfaceC0314) {
            this.f3580 = (InterfaceC0314) obj;
        }
        this.f3623 = 0;
        this.f3581 = 0;
        this.f3588 = 0;
        this.f3602 = 0;
        this.f3612 = 0L;
        this.f3573 = 0L;
        this.f3605 = 0L;
        this.f3568 = false;
        this.f3526 = false;
        this.f3608 = true;
        this.f3622 = false;
        this.f3533 = false;
        this.f3549 = false;
        this.f3572 = false;
        this.f3547 = "";
        this.f3538 = "";
        this.f3531 = "";
        this.f3614 = "";
        this.f3546 = null;
        this.f3559 = false;
        this.f3606 = true;
        this.f3571 = false;
        this.f3621 = false;
        this.f3592 = 0;
        this.f3584 = "";
        this.f3527 = "";
        this.f3594 = "";
        this.f3607 = "";
        this.f3575 = "";
        this.f3601 = C0164.m3497(293, 13, 100);
        this.f3553 = "";
        this.f3574 = "";
        this.f3578 = "";
        this.f3590 = "";
        this.f3563 = "";
        this.f3618 = "";
        this.f3597 = str;
        this.f3615 = str2;
        this.f3617 = false;
        this.f3530 = false;
        this.f3579 = false;
        this.f3610 = new C0570();
        this.f3577 = 0;
        this.f3543 = "";
        this.f3537 = "";
        this.f3604 = C0164.m3497(306, 4, 97);
        this.f3586 = "";
        this.f3558 = false;
        this.f3532 = true;
        this.f3528 = false;
        this.f3535 = false;
        this.f3557 = false;
        this.f3548 = new C0138();
        this.f3582 = new C0138();
        this.f3562 = 80;
        this.f3576 = 80;
        this.f3541 = C0164.m3497(310, 4, 114);
        this.f3552 = C0320.f1706;
        this.f3598 = "";
        this.f3564 = "";
        this.f3603 = "";
        this.f3555 = "";
        this.f3613 = "";
        this.f3529 = "";
        this.f3593 = 0L;
        this.f3619 = null;
        this.f3545 = null;
        this.f3550 = new Vector();
        this.f3542 = "";
        this.f3595 = new C0301();
        this.f3544 = new C0301();
        this.f3565 = new C0307();
        this.f3616 = -1;
        this.f3540 = -1;
        this.f3539 = new Vector();
        this.f3534.m3998();
        this.f3556 = false;
        this.f3620 = 20;
        this.f3560 = 16384;
        m3363(16384);
        this.f3600 = C0164.m3497(314, 4, 59);
        this.f3551 = C0164.m3497(TypedValues.AttributesType.TYPE_PIVOT_TARGET, 5, 11);
        this.f3589 = false;
        this.f3525 = false;
        this.f3570 = "";
        C0619 c0619 = new C0619(null, this.f1721);
        this.f3546 = c0619;
        c0619.f3413 = 3;
        c0619.m5701(Typography.amp, true);
        if (this.f3587 == null) {
            this.f3587 = new C0638(this);
        }
        m3301(false);
        this.f1848 = 80;
        m5770();
        this.f3585 = new C0615(this.f3580, this.f1721, this);
        this.f3596 = 1;
    }

    public final boolean m5760() {
        if (!this.f3532 || this.f3617) {
            return true;
        }
        int i = this.f1845;
        if (i == 1) {
            return this.f3577 > 0 || (this.f3557 && this.f3607.length() > 0);
        }
        if (i != 4 && i != 5) {
            return true;
        }
        if (this.f1845 == 5 && this.f3525) {
            return true;
        }
        String str = this.f3586;
        return str != null && str.length() > 0;
    }

    public void m5761(String str) {
        this.f3607 = C0259.m3843(str);
        int i = this.f1845;
        if (i == 2 || i == 6) {
            return;
        }
        this.f1845 = 2;
    }

    public final String m5762(String str, String str2) {
        String strSubstring;
        String strSubstring2;
        if (C0259.m3856(str2)) {
            return str;
        }
        try {
            String[] strArrM3907 = C0259.m3907(str2, ",", true);
            if (strArrM3907.length == 0) {
                return str;
            }
            int iIndexOf = str.indexOf("\r\n");
            if (iIndexOf < str.indexOf(":")) {
                int i = iIndexOf + 2;
                strSubstring = str.substring(0, i);
                strSubstring2 = str.substring(i);
            } else {
                strSubstring = "";
                strSubstring2 = str;
            }
            Vector vector = new Vector();
            C0558.m5466(vector, strSubstring2);
            boolean z = false;
            for (int i2 = 0; i2 < vector.size(); i2++) {
                C0626 c0626 = (C0626) vector.get(i2);
                for (String str3 : strArrM3907) {
                    if (str3.equalsIgnoreCase(c0626.f3461)) {
                        c0626.f3460 = C0164.m3497(869, 6, 13);
                        z = true;
                        break;
                    }
                }
            }
            if (!z) {
                return str;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(strSubstring);
            for (int i3 = 0; i3 < vector.size(); i3++) {
                C0626 c0627 = (C0626) vector.get(i3);
                stringBuffer.append(c0627.f3461);
                stringBuffer.append(": ");
                stringBuffer.append(c0627.f3460);
                stringBuffer.append("\r\n");
            }
            stringBuffer.append("\r\n");
            return stringBuffer.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public final String m5764(String str) {
        C0387 c0387 = new C0387();
        for (int length = str.length(); length > 0; length--) {
            c0387.f1991.append('x');
        }
        return c0387.m4571();
    }

    public boolean m5765() {
        return this.f3617;
    }

    public final X509TrustManager m5766() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            for (int i = 0; trustManagers != null && i < trustManagers.length; i++) {
                TrustManager trustManager = trustManagers[i];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final String m5767() {
        C0282 c0282 = new C0282(null, this.f1721);
        c0282.m4022(true);
        this.f3564 = C0164.m3497(4138, 36, 33);
        C0239 c0239 = new C0239(null, new Object());
        String str = this.f377;
        if (C0259.m3856(str)) {
            str = C0164.m3497(4174, 5, 71) + this.f3531;
        }
        c0239.m3765(str);
        if (C0259.m3856(this.f349)) {
            c0239.m3772(this.f3531);
        } else {
            c0239.m3772(this.f349);
        }
        c0239.m3779(this.f3527);
        c0239.m3755(this.f3594);
        if (!C0259.m3856(this.f3585.m3743())) {
            c0239.m3776(this.f3585.m3743());
        }
        if (!C0259.m3856(this.f3585.m3760())) {
            c0239.m3757(this.f3585.m3760());
        }
        if (!C0259.m3856(this.f3585.m3778())) {
            c0239.m3777(this.f3585.m3778());
        }
        int i = this.f3585.f860;
        if (i != 0) {
            if (c0239.f861 && i != c0239.f860) {
                c0239.f856.m4541();
            }
            c0239.f860 = i;
        }
        if (!C0259.m3856(this.f3585.m3747())) {
            c0239.m3753(this.f3585.m3747());
        }
        if (!C0259.m3856(this.f3585.m4304(C0164.m3497(4179, 11, 0)))) {
            c0239.m4304(C0164.m3497(4190, 12, 127) + this.f3585.m4304(C0164.m3497(4202, 11, 102)));
        }
        c0239.m4304(C0164.m3497(4213, 24, 76) + this.f3585.m4304(C0164.m3497(4237, 23, 99)));
        c0239.m3758(this.f3585.f852);
        c0239.m3775(this.f3585.f2990);
        byte[] bArr = new byte[24];
        C0259.m3871(16L, bArr, 0, 4);
        C0259.m3871(62, bArr, 20, 4);
        c0239.m4304(C0164.m3497(4260, 12, 4) + C0259.m3841(bArr));
        c0239.m3761();
        byte[] bArrM3766 = c0239.m3766();
        C0530 c0530 = new C0530();
        c0530.m5383(96);
        c0530.m5396(C0164.m3497(4105, 13, 0));
        c0530.m5383(SyslogConstants.LOG_LOCAL4);
        c0530.m5393();
        c0530.m5383(SyslogConstants.LOG_LOCAL4);
        c0530.m5393();
        c0530.m5396(C0164.m3497(4118, 20, 85));
        c0530.m5363();
        c0530.m5362();
        c0530.m5383(162);
        c0530.m5379(bArrM3766, 4);
        c0530.m5362();
        c0530.m5363();
        c0530.m5362();
        c0530.m5362();
        String strM3882 = C0259.m3882(C0259.m3906(c0530.m5376(), false));
        m5780(this.f1725.m5718(C0164.m3497(4272, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 98) + C0164.m3497(4381, 12, 83) + C0164.m3497(4393, 99, 69) + C0164.m3497(4492, 26, 40) + C0259.m3867() + C0164.m3497(4518, 14, 50) + C0164.m3497(4532, 15, 5) + C0164.m3497(4547, 75, 78) + C0164.m3497(4622, 16, 30) + C0164.m3497(4638, 31, 76) + this.f3547 + C0164.m3497(4669, 7, WebSocketProtocol.PAYLOAD_SHORT) + C0164.m3497(4676, 13, 49) + C0164.m3497(4689, 10, 62) + C0164.m3497(4699, 42, 81) + C0259.m3867() + C0164.m3497(4741, 58, 60) + C0164.m3497(4799, 77, 122) + C0164.m3497(4876, 86, 123) + C0164.m3497(4962, 32, 71) + C0164.m3497(4994, 197, 98) + strM3882 + C0164.m3497(5191, 19, 79) + C0164.m3497(5210, 29, 121) + C0164.m3497(5239, 11, 48) + C0164.m3497(5250, 13, 85)));
        m5796(2);
        c0282.m4027(this.f1725.m5716(m5768()));
        c0282.m4033(C0164.m3497(5263, 97, 35));
        byte[] bArrM3876 = C0259.m3876(c0282.m4039());
        StringBuilder sbAppend = new StringBuilder().append(C0164.m3497(5360, 11, 113));
        C0530 c0531 = new C0530(bArrM3876);
        c0531.m5378();
        if (c0531.m5365(0).m5365(0).m5365(0).m5389() != 0) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3497(4046, 59, SyslogConstants.LOG_CLOCK));
        }
        C0530 c0530M5390 = c0531.m5365(0).m5365(2).m5365(0).m5390();
        c0530M5390.m5378();
        c0239.m4304(sbAppend.append(C0259.m3882(C0259.m3906(c0530M5390.m5365(2).f3099, false))).toString());
        c0282.m4033(C0164.m3497(5371, CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 69));
        String strM4304 = c0239.m4304(C0164.m3497(5509, 17, 30) + c0282.m4039());
        c0282.m4033(C0164.m3497(5526, WebSocketProtocol.PAYLOAD_SHORT, 125));
        String str2 = strM4304 + ";" + ((C0124) c0282.f1458.get(0)).f247;
        c0282.m4033(C0164.m3497(5652, 137, 6));
        String str3 = str2 + ";" + c0282.m4039();
        c0282.m4033(C0164.m3497(5789, 99, 27));
        String str4 = str3 + ";" + c0282.m4039();
        c0282.m4033(C0164.m3497(5888, 82, 96));
        return str4 + ";" + ((C0124) c0282.f1458.get(0)).f247;
    }

    public byte[] m5768() {
        return this.f3544.m4182();
    }

    @Override
    public boolean mo3299() {
        return (this.f3565.f1640.equals(this.f382) && this.f3565.f1637 == this.f357) || super.mo3299();
    }

    public final void m5769() {
        String strM4200;
        if (this.f3536) {
            C0307 c0307 = this.f3565;
            int i = c0307.f1639;
            String strM4201 = "";
            if (i == 0) {
                c0307.f1643 = "";
                if (c0307.f1638.length() != 0 || this.f3565.f1636.length() != 0) {
                    strM4201 = this.f3565.m4200();
                    mo5044(C0164.m3497(3563, 18, 11) + strM4201, f3523);
                    this.f3565.f1643 = C0164.m3497(3581, 6, 57) + C0259.m3869(1, this.f3565.f1638 + ":" + this.f3565.f1636);
                }
            } else if (i == 1) {
                c0307.f1643 = "";
                if ((c0307.f1638.length() != 0 || this.f3565.f1636.length() != 0) && this.f3537.length() > 0) {
                    strM4201 = this.f3565.m4200();
                    mo5044(C0164.m3497(3587, 18, 15) + strM4201, f3523);
                    C0138 c0138 = this.f3582;
                    C0307 c0308 = this.f3565;
                    c0138.m3281(c0308.f1638, c0308.f1636);
                    this.f3582.m3282(this.f3529, this.f3614, this.f3552);
                    this.f3565.f1643 = this.f3582.m3279();
                }
            } else if (i == 4) {
                c0307.f1643 = "";
                if ((this.f3535 && this.f3586.length() == 0) || this.f3537.length() != 0) {
                    strM4200 = this.f3565.m4200();
                    mo5044(C0164.m3497(3605, 18, 54) + strM4200, f3523);
                    C0307 c0309 = this.f3565;
                    StringBuilder sbAppend = new StringBuilder().append(this.f3604).append(" ");
                    String str = this.f3604;
                    C0307 c03010 = this.f3565;
                    c0309.f1643 = sbAppend.append(m3383(str, c03010.f1638, c03010.f1636, this.f3531, this.f3586)).toString();
                    mo5044(m3335(), f3516);
                    strM4201 = strM4200;
                }
            } else if (i == 5) {
                c0307.f1643 = "";
                if (this.f3535 || this.f3537.length() != 0) {
                    strM4200 = this.f3565.m4200();
                    mo5044(C0164.m3497(3623, 18, 127) + strM4200, f3523);
                    String str2 = this.f3565.f1642;
                    if (C0259.m3856(str2)) {
                        str2 = C0164.m3497(3641, 5, 40) + this.f3531;
                    }
                    String str3 = str2;
                    String str4 = this.f400;
                    String str5 = this.f359;
                    String str6 = this.f349;
                    boolean z = this.f358;
                    try {
                        this.f400 = this.f3565.f1646;
                        this.f359 = this.f3565.f1641;
                        this.f349 = this.f3565.f1644;
                        this.f358 = this.f3565.f1647;
                        this.f3565.f1643 = C0164.m3497(3646, 10, 58) + m3383(C0164.m3497(3656, 9, 125), this.f3565.f1638, this.f3565.f1636, str3, this.f3586);
                        this.f400 = str4;
                        this.f359 = str5;
                        this.f349 = str6;
                        this.f358 = z;
                        mo5044(m3335(), f3516);
                        strM4201 = strM4200;
                    } catch (Throwable th) {
                        this.f400 = str4;
                        this.f359 = str5;
                        this.f349 = str6;
                        this.f358 = z;
                        throw th;
                    }
                }
            }
            if (C0259.m3856(strM4201)) {
                return;
            }
            String str7 = C0164.m3497(3665, 21, 66) + this.f3565.f1643;
            String str8 = f3523;
            mo5044(str7, str8);
            mo5044(C0164.m3497(3686, 33, 19) + this.f3565.f1640 + C0164.m3497(3719, 10, 9) + this.f3565.f1637 + C0164.m3497(3729, 17, 100) + strM4201 + C0164.m3497(3746, 8, 41) + this.f3565.f1638 + C0164.m3497(3754, 13, 67) + m5764(this.f3565.f1636) + "'", str8);
        }
    }

    public void mo4875(String str, String str2) {
        throw null;
    }

    @Override
    public void mo3302(byte[] bArr) {
        this.f388.m5312(bArr);
        try {
            if (this.f3596 >= 1) {
                mo4950(m5827(bArr), f3518);
            }
        } catch (Exception unused) {
        }
    }

    public final void m5770() {
        if (!this.f3549) {
            this.f3562 = this.f3576;
            this.f3538 = this.f3541;
            this.f3531 = "";
        }
        this.f3552 = C0320.f1706;
        this.f3529 = "";
        this.f3598 = "";
        this.f3584 = "";
        this.f3613 = "";
        this.f1846 = "";
        this.f1844 = "";
        this.f3618 = "";
        this.f3563 = "";
        this.f3590 = "";
        this.f3578 = "";
        this.f3574 = "";
        this.f3553 = "";
        this.f3575 = "";
        this.f3603 = "";
        this.f3564 = "";
        this.f3614 = "";
        this.f3547 = "";
        this.f3548.m3278();
        this.f3582.m3278();
        int i = this.f1845;
        this.f3526 = i == 4 || i == 5;
        this.f3537 = "";
        this.f3543 = "";
        this.f3586 = "";
        this.f3577 = 0;
        this.f3565.m4210("");
        this.f3565.m4189("");
        this.f3565.f1643 = "";
        C0615 c0615 = this.f3585;
        if (c0615 == null || !c0615.f861 || !this.f3558) {
            this.f3594 = "";
            this.f3527 = "";
        }
        this.f3607 = "";
        this.f3550.clear();
        this.f3539.clear();
        if (!this.f3549) {
            this.f3587.m5749();
        }
        this.f3534.m3998();
    }

    public void m5771(String str) {
        mo4950(str, f3523);
    }

    public String m5772(String str) throws C0414 {
        try {
            StringTokenizer stringTokenizer = new StringTokenizer(str);
            stringTokenizer.nextToken();
            return stringTokenizer.nextToken();
        } catch (Exception unused) {
            String strM3497 = C0164.m3497(2036, 45, 33);
            if (str != null) {
                strM3497 = strM3497 + " \"" + str + "\"";
            }
            throw new C0414(163, C0663.m5880(strM3497, "."));
        }
    }

    public final long m5774() {
        if (this.f3579) {
            try {
                File file = new File(this.f1846);
                if (file.exists()) {
                    return file.length();
                }
            } catch (Exception unused) {
            }
        }
        return 0L;
    }

    public String m5775() {
        return this.f3607;
    }

    public void m5776(String str) {
        String strSubstring;
        if (str == null || str.length() == 0) {
            strSubstring = "";
        } else {
            String string = C0663.m5891(str).append(str.endsWith("\r") ? C0164.m3510(0, 3, RNMBXStyleValue.InterpolationModeIdentity) : C0164.m3510(3, 4, 23)).toString();
            strSubstring = string.substring(0, string.indexOf(C0164.m3510(7, 4, 39)) + 2);
        }
        this.f3563 = strSubstring;
    }

    public final void m5778(java.lang.String r19, boolean r20) throws nts.C0414 {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0639.m5778(java.lang.String, boolean):void");
    }

    public final void m5779() {
        int i = this.f3588;
        if (i == 1) {
            long j = this.f3612;
            if (j == 0) {
                this.f3581 = 3;
                m5836(true, 0L);
                return;
            } else {
                if (j < this.f407) {
                    m5836(false, j);
                    return;
                }
                return;
            }
        }
        if (i == 3) {
            long j2 = this.f3612;
            if (j2 != 0) {
                if (j2 < this.f407) {
                    m5836(false, j2);
                    return;
                }
                return;
            } else {
                this.f3588 = 5;
                this.f3612 = 2L;
                this.f3561 = new byte[2];
                m5836(false, 2L);
                return;
            }
        }
        if (i != 5) {
            return;
        }
        long j3 = this.f3612;
        if (j3 != 0) {
            if (j3 < this.f407) {
                m5836(false, j3);
            }
        } else {
            if (!C0301.m4164(this.f3561, C0320.f1716)) {
                C0414 c0414 = new C0414(164, C0164.m3497(2989, 45, 32));
                mo3152(c0414.f2136, c0414.getMessage());
                m4312((Exception) c0414);
            }
            this.f3588 = 2;
            m5836(true, 0L);
        }
    }

    public void m5780(byte[] bArr) {
        this.f3552 = C0259.m3845(bArr);
    }

    @Override
    public void mo3319(boolean z) {
        this.f3568 = z;
        if (z || !m3355()) {
            return;
        }
        mo5260();
    }

    public int m5781() {
        return this.f3592;
    }

    public String m5782() {
        return this.f3574;
    }

    public final void m5783() throws C0414 {
        InputStream inputStream;
        String strM5772 = m5772(this.f3618);
        if (this.f3543.length() > 0 && this.f1845 == 3) {
            throw new C0414(SyslogConstants.LOG_LOCAL4, C0164.m3497(2380, 66, 104));
        }
        if (this.f3537.length() > 0 && this.f3565.f1639 == 3) {
            throw new C0414(SyslogConstants.LOG_LOCAL4, C0164.m3497(2446, 78, 115));
        }
        if (this.f3598.length() > 0 && !strM5772.equals(C0164.m3497(2524, 3, 94))) {
            throw new C0414(151, C0164.m3497(2527, 21, 83) + strM5772 + " " + m5792(this.f3618));
        }
        if (strM5772.startsWith(ExifInterface.GPS_MEASUREMENT_2D) || strM5772.equals(C0164.m3497(2548, 3, 44))) {
            return;
        }
        int i = this.f3623;
        if ((i == 1 || i == 3) && (strM5772.equals(C0164.m3497(2551, 3, 20)) || strM5772.equals(C0164.m3497(2554, 3, 7)))) {
            this.f3584 = "";
        }
        if (strM5772.equals(C0164.m3497(2557, 3, 82)) || (strM5772.equals(C0164.m3497(2560, 3, 117)) && this.f3621)) {
            this.f3623 = 1;
            this.f3552 = C0320.f1706;
            if (this.f410 && (inputStream = this.f1843) != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            this.f1843 = null;
        }
        StringBuilder sbAppend = new StringBuilder().append(C0164.m3497(2563, 21, 84));
        String str = this.f3618;
        String string = sbAppend.append(str.substring(str.indexOf(32) + 1)).append(".").toString();
        if (!strM5772.equals(C0164.m3497(2584, 3, 39))) {
            throw new C0414(151, string);
        }
        throw new C0414(157, C0164.m3497(2587, 13, 51) + string);
    }

    public String m5784() {
        C0301 c0301 = this.f3545;
        return c0301 == null ? "" : C0259.m3882(c0301.m4182());
    }

    @Override
    public void mo5626() {
        C0638 c0638 = this.f3587;
        if (c0638.f3495 && c0638.f3509 > 0 && System.currentTimeMillis() > c0638.f3501) {
            c0638.f3504.m5250();
        }
        super.mo5626();
    }

    public void mo4950(String str, String str2) {
        throw null;
    }

    public void m5785(String str) {
        if (str == null) {
            str = "";
        }
        this.f3574 = str;
    }

    public boolean m5786() {
        return this.f3559;
    }

    public final String m5787(String str) {
        if (!C0307.m4184(this.f353)) {
            return "";
        }
        StringTokenizer stringTokenizer = new StringTokenizer(C0307.m4183(this.f353), ";");
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            int iIndexOf = strNextToken.indexOf("=");
            if (iIndexOf < 0 && (iIndexOf = strNextToken.indexOf(C0164.m3497(346, 3, 23))) >= 0) {
                iIndexOf += 2;
            }
            int iLastIndexOf = strNextToken.lastIndexOf(":");
            if (iIndexOf < 0 && iLastIndexOf > -1 && !str.equals(C0164.m3497(349, 5, 13))) {
                return C0259.m3889(strNextToken, 0, iLastIndexOf);
            }
            if (iLastIndexOf > -1 && strNextToken.startsWith(str + "=")) {
                return C0259.m3889(strNextToken, iIndexOf + 1, iLastIndexOf);
            }
            if (iLastIndexOf > 0 && strNextToken.startsWith(C0663.m5891(str).append(C0164.m3497(354, 3, 36)).toString())) {
                return C0259.m3889(strNextToken, iIndexOf + 1, iLastIndexOf);
            }
        }
        return "";
    }

    public final void m5789(String str) {
        if (str.length() == 0) {
            return;
        }
        this.f3526 = true;
        String lowerCase = str.toLowerCase();
        if (lowerCase.startsWith(C0164.m3497(2638, 4, 41)) || lowerCase.startsWith(C0164.m3497(2642, 9, 61))) {
            StringTokenizer stringTokenizer = new StringTokenizer(str);
            this.f3604 = stringTokenizer.nextToken();
            if (stringTokenizer.hasMoreTokens()) {
                this.f3586 = stringTokenizer.nextToken();
            } else {
                this.f3586 = "";
            }
        }
    }

    public String m5790() {
        return this.f3595.toString();
    }

    public String m5791() {
        return this.f3563;
    }

    public String m5792(String str) throws C0414 {
        try {
            StringTokenizer stringTokenizer = new StringTokenizer(str);
            stringTokenizer.nextToken();
            String strNextToken = stringTokenizer.nextToken();
            return str.substring(str.indexOf(strNextToken) + strNextToken.length() + 1);
        } catch (Exception unused) {
            return "";
        }
    }

    public String m5794() {
        return this.f3618;
    }

    public final Vector m5795(String str) {
        Vector vector = new Vector();
        vector.add(C0164.m3497(875, 7, 86));
        vector.add(str.toUpperCase());
        vector.add(C0164.m3497(882, 7, 82));
        vector.add(this.f3538);
        vector.add(C0164.m3497(889, 5, 50));
        if (this.f3556) {
            vector.add(this.f3547);
        } else {
            vector.add(this.f3614);
        }
        vector.add(C0164.m3497(894, 10, 60));
        if (this.f3562 == 80) {
            vector.add(this.f3531);
        } else {
            vector.add(this.f3531 + ":" + this.f3562);
        }
        this.f3619 = this.f1725.m5718(m5831(str, true));
        for (String str2 : C0259.m3852(m5831(str, false), "\r\n")) {
            int iIndexOf = str2.indexOf(":");
            if (iIndexOf >= 0) {
                String strTrim = str2.substring(0, iIndexOf).trim();
                String strTrim2 = str2.substring(iIndexOf + 1).trim();
                if (!strTrim.equalsIgnoreCase(C0164.m3497(TypedValues.Custom.TYPE_BOOLEAN, 4, 94))) {
                    vector.add(strTrim);
                    vector.add(strTrim2);
                }
            }
        }
        String strM5888 = "";
        for (int i = 0; i < vector.size(); i += 2) {
            strM5888 = C0663.m5888(C0663.m5891(strM5888).append((String) vector.get(i)).append(": "), (String) vector.get(i + 1), "\r\n");
        }
        this.f3619 = this.f1725.m5718(strM5888);
        return vector;
    }

    public void m5799(java.lang.String r14, boolean r15) throws nts.C0414 {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0639.m5799(java.lang.String, boolean):void");
    }

    public void m5800(String str) {
        if (str == null) {
            str = "";
        }
        this.f3615 = str;
    }

    public boolean m5801() {
        return this.f3622;
    }

    public String m5802() {
        return this.f3597;
    }

    public void m5803() {
        if (this.f361) {
            this.f3544.m4170();
        } else {
            this.f3544.m4169();
        }
    }

    public String m5804(String str) throws C0414 {
        return m5831(str, true);
    }

    public void m5807(String str) {
        this.f3607 = str;
    }

    public final void m5808(String str) throws C0414 {
        if (this.f3531.length() == 0) {
            throw new C0414(SyslogConstants.LOG_LOCAL3, C0164.m3497(376, 27, 17));
        }
        if (!this.f3538.equalsIgnoreCase(this.f3600) && !this.f3538.equalsIgnoreCase(this.f3551)) {
            throw new C0414(153, C0164.m3497(TypedValues.CycleType.TYPE_ALPHA, 21, 43) + this.f3538 + C0164.m3497(TypedValues.CycleType.TYPE_WAVE_OFFSET, 13, 51));
        }
        String str2 = C0164.m3497(437, 17, 8) + str + C0164.m3497(454, 7, 90) + this.f3597 + C0164.m3497(461, 5, 19) + this.f3547;
        String str3 = "";
        if (this.f3565.f1645) {
            Proxy proxy = Proxy.NO_PROXY;
            try {
                proxy = ProxySelector.getDefault().select(new URI(this.f3538, this.f3531, null, null)).get(0);
            } catch (Exception unused) {
            }
            if (proxy.type() != Proxy.Type.DIRECT) {
                if (proxy.type() == Proxy.Type.HTTP) {
                    this.f3565.m4197(((InetSocketAddress) proxy.address()).getHostName());
                    this.f3565.f1637 = ((InetSocketAddress) proxy.address()).getPort();
                    this.f395.m4819(0);
                } else if (proxy.type() == Proxy.Type.SOCKS) {
                    this.f395.m4818(((InetSocketAddress) proxy.address()).getHostName());
                    this.f395.m4817(((InetSocketAddress) proxy.address()).getPort());
                    this.f395.m4819(3);
                }
            } else if (C0307.m4185(this.f3531, this.f3562, this.f3538)) {
                C0443 c0443 = this.f395;
                if (c0443 != null) {
                    c0443.m4819(0);
                }
                if (this.f3565.f1640.length() > 0) {
                    this.f3565.f1640 = "";
                }
            } else {
                String str4 = this.f3538;
                m5825(str4);
                if (this.f395.f2278 == 0) {
                    m5825(C0164.m3497(362, 5, 9));
                } else if (str4.equals(C0164.m3497(367, 4, 26)) || str4.equals(C0164.m3497(371, 5, 22))) {
                    this.f3565.m4197(this.f395.f2277);
                    C0307 c0307 = this.f3565;
                    C0443 c0444 = this.f395;
                    c0307.f1637 = c0444.f2286;
                    c0444.m4819(0);
                }
            }
        }
        boolean zM4186 = C0307.m4186(this.f399, this.f3531, this.f3562, this.f3538);
        C0443 c0445 = this.f395;
        if (c0445 != null) {
            c0445.f2281 = !zM4186;
        }
        if (this.f3565.f1640.length() <= 0 || this.f3565.m4211(this.f3538.equalsIgnoreCase(this.f3551)) == 3 || zM4186) {
            m3338(this.f3531);
            m3330(this.f3562);
        } else {
            this.f395.m4819(0);
            m3338(this.f3565.f1640);
            m3330(this.f3565.f1637);
            str3 = C0164.m3497(466, 19, 55) + this.f3565.f1640 + ":" + this.f3565.f1637 + C0164.m3497(485, 20, 4) + this.f3565.f1638 + "\\" + m5764(this.f3565.f1636) + C0164.m3497(TypedValues.PositionType.TYPE_SIZE_PERCENT, 3, 33) + this.f3565.m4200() + ")";
        }
        if (!C0259.m3856(this.f3615)) {
            this.f395.f2285 = this.f3615;
        }
        if (this.f3538.equalsIgnoreCase(this.f3600)) {
            m3329(3);
        } else {
            if (!this.f3538.equalsIgnoreCase(this.f3551)) {
                throw new C0414(153, C0164.m3497(TypedValues.PositionType.TYPE_CURVE_FIT, 31, 117));
            }
            m3329(1);
        }
        if (this.f3565.f1640.length() > 0 && !zM4186) {
            int iM4211 = this.f3565.m4211(this.f3538.equalsIgnoreCase(this.f3551));
            if (iM4211 == 1) {
                m3329(1);
            } else if (iM4211 == 2) {
                m3329(3);
            } else if (iM4211 == 3) {
                int i = this.f3565.f1639;
                if (i == 0) {
                    this.f395.m4819(1);
                } else if (i == 1) {
                    this.f395.m4819(8);
                    this.f395.f2284 = this.f3614;
                } else if (i == 3) {
                    this.f395.m4819(1);
                } else if (i == 4) {
                    this.f395.m4819(4);
                } else if (i == 5) {
                    this.f395.m4819(5);
                }
                this.f395.m4818(this.f3565.f1640);
                this.f395.m4817(this.f3565.f1637);
                this.f395.m4815(this.f3565.f1638);
                this.f395.m4814(this.f3565.f1636);
            }
        }
        if (this.f395.f2278 != 0 && !zM4186) {
            str3 = C0164.m3497(539, 19, 57) + this.f395.f2277 + ":" + this.f395.f2286 + C0164.m3497(558, 20, 37) + this.f395.f2279 + "\\" + m5764(this.f395.f2280) + C0164.m3497(578, 3, 49) + this.f3565.m4200() + ")";
        }
        m5771(str2 + str3);
    }

    public void mo5012(int i, String str, String str2) {
        throw null;
    }

    public void m5813(String str, boolean z) throws C0414 {
        String str2;
        long jM4399;
        int iAvailable;
        this.f1840[1].f2567 = 0L;
        this.f3618 = "";
        this.f3543 = "";
        this.f3537 = "";
        this.f3539.clear();
        this.f3595.m4170();
        if (m3355()) {
            str2 = str;
            m5771(C0164.m3497(1423, 36, 59) + str2 + C0164.m3497(1459, 7, 77) + this.f3597 + C0164.m3497(1466, 5, 59) + this.f3547);
        } else {
            m5808(str);
            str2 = str;
        }
        String str3 = this.f3613.length() > 0 ? this.f3613 : str2;
        if (this.f3617) {
            m5778(str3, z);
            return;
        }
        if (!m3355()) {
            m4400();
            mo4875(C0164.m3497(1471, 16, 33) + m3340(), f3523);
        }
        String strM5804 = m5804(str3);
        this.f3619 = this.f1725.m5718(strM5804);
        mo4875(C0164.m3497(1487, 15, 58), f3523);
        if (this.f3596 >= 3) {
            mo4875(strM5804, f3515);
        }
        Exception exc = null;
        try {
            try {
                m4407(this.f3619, 1);
                if (this.f3622) {
                    this.f404 = true;
                }
                if (!z || !m5760()) {
                    jM4399 = 0;
                } else if (this.f3534.f1408) {
                    try {
                        InputStream inputStreamM5838 = m5838();
                        iAvailable = inputStreamM5838 == null ? 0 : inputStreamM5838.available();
                    } catch (Exception unused) {
                    }
                    jM4399 = iAvailable;
                } else {
                    jM4399 = m4399() + ((long) this.f3552.length);
                }
                if (jM4399 > 0 || (this.f3622 && strM5804.contains(f3524))) {
                    String str4 = C0164.m3497(1502, 13, 81) + jM4399;
                    String str5 = f3523;
                    mo5044(str4, str5);
                    this.f1840[0].f2567 = jM4399;
                    this.f1838 = 0L;
                    if (this.f3584.length() == 0 || this.f3611) {
                        m5809(0);
                    }
                    if (this.f3534.f1408) {
                        m5810(m5838(), C0164.m3497(1515, 13, 5), true);
                    } else {
                        if (this.f3552.length != 0) {
                            mo5044(C0164.m3497(1528, 18, 38), str5);
                            m5810((InputStream) new ByteArrayInputStream(this.f3552), C0164.m3497(1546, 8, 18), true);
                        }
                        if (this.f1843 != null) {
                            m5810(this.f1843, C0164.m3497(1554, 12, 77), this.f410);
                            if (this.f410) {
                                this.f1843 = null;
                            }
                        } else if (this.f1844 != null && this.f1844.length() > 0) {
                            try {
                                m5810((InputStream) new BufferedInputStream(new FileInputStream(this.f1844)), C0164.m3497(1566, 12, 113), true);
                            } catch (IOException e) {
                                throw new C0414(e, 151, C0164.m3497(1578, 26, 93) + C0414.m4672(e));
                            }
                        }
                    }
                    if (this.f3622) {
                        byte[] bArrM5718 = this.f1725.m5718("0\r\n\r\n");
                        m4408(bArrM5718, 0, bArrM5718.length, 1, (OutputStream) null);
                        mo5044(C0164.m3497(1604, 15, 79) + "0\r\n\r\n", str5);
                    }
                    if (this.f3584.length() == 0 || this.f3611) {
                        m5832(0);
                    }
                } else if (this.f3611) {
                    m5809(0);
                    m5832(0);
                }
                mo5044(C0164.m3497(1619, 12, 6), f3523);
                m5811((Exception) null);
                this.f404 = false;
            } catch (Exception e2) {
                exc = e2;
                m5811(exc);
                this.f404 = false;
            }
            if (exc != null) {
                throw new C0414(exc);
            }
        } catch (Throwable th) {
            m5811((Exception) null);
            this.f404 = false;
            throw th;
        }
    }

    public String m5814() {
        return this.f3615;
    }

    public final Proxy m5815() {
        try {
            if (!C0259.m3856(this.f3565.f1640)) {
                return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f3565.f1640, this.f3565.f1637));
            }
            if (C0259.m3856(this.f395.f2277)) {
                return null;
            }
            int i = this.f395.f2278;
            if (i == 1) {
                return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f395.f2277, this.f395.f2286));
            }
            if (i != 2 && i != 3) {
                if (i == 7) {
                    return new Proxy(Proxy.Type.DIRECT, new InetSocketAddress(this.f395.f2277, this.f395.f2286));
                }
                if (i != 10) {
                    return null;
                }
            }
            return new Proxy(Proxy.Type.SOCKS, new InetSocketAddress(this.f395.f2277, this.f395.f2286));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public boolean mo3368() {
        return this.f3568;
    }

    public void m5820(boolean z) {
        if (z) {
            this.f3545 = new C0301();
        } else {
            this.f3545 = null;
        }
    }

    @Override
    public void mo3370() {
        super.mo3370();
        this.f3612 = 0L;
        this.f3573 = 0L;
        this.f3605 = 0L;
        this.f3588 = 0;
        this.f3602 = 0;
        C0301 c0301 = this.f3545;
        if (c0301 != null) {
            c0301.m4169();
        }
    }

    public final void m5821(boolean z) {
        C0639 c0639;
        C0639 c06310;
        if (this.f3536) {
            this.f3525 = false;
            int i = this.f1845;
            if (this.f3554 && i == 5 && this.f3543.toLowerCase().indexOf(C0164.m3497(3767, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR)) > -1) {
                i = 4;
            }
            if (i == 0) {
                c0639 = this;
                c0639.f3607 = "";
                if (c0639.f3527.length() != 0 || c0639.f3594.length() != 0) {
                    if (z) {
                        mo5044(C0164.m3497(3771, 17, 16), f3523);
                    }
                    c0639.f3607 = C0164.m3497(3788, 6, 38) + C0259.m3869(1, c0639.f3527 + ":" + c0639.f3594);
                }
            } else if (i == 1) {
                c0639 = this;
                c0639.f3607 = "";
                if ((c0639.f3527.length() != 0 || c0639.f3594.length() != 0) && (c0639.f3543.length() > 0 || c0639.f3557)) {
                    if (z) {
                        mo5044(C0164.m3497(3794, 18, 79), f3523);
                    }
                    c0639.f3548.m3281(c0639.f3527, c0639.f3594);
                    c0639.f3548.m3282(c0639.f3529, c0639.f3614, c0639.f3552);
                    c0639.f3607 = c0639.f3548.m3279();
                }
            } else if (i != 4) {
                if (i == 5) {
                    this.f3607 = "";
                    if (this.f3558 || this.f3543.length() > 0) {
                        if (z) {
                            mo5044(C0164.m3497(3828, 21, 58), f3523);
                        }
                        String str = this.f377;
                        if (str == null || str.length() == 0) {
                            str = C0164.m3497(3849, 5, 5) + this.f3531;
                        }
                        String str2 = str;
                        if (this.f3583 || !C0259.m3856(this.f3585.m3743())) {
                            c06310 = this;
                            if (C0259.m3856(c06310.f3585.m3743()) && C0259.m3856(c06310.f3585.m3760())) {
                                c06310.f3585.m3755(c06310.f3594);
                            }
                            c06310.f3585.m3765(str2);
                            c06310.f3585.m3779(c06310.f3527);
                            if (C0259.m3856(c06310.f349)) {
                                c06310.f3585.m3772(c06310.f3531);
                            } else {
                                c06310.f3585.m3772(c06310.f349);
                            }
                            C0615 c0615 = c06310.f3585;
                            c0615.f863 = true;
                            c0615.m3761();
                            c06310.f3607 = C0259.m3892(c06310.f3585.m3766());
                        } else {
                            c06310 = this;
                            c06310.f3607 = m3383(C0164.m3497(3854, 9, 67), this.f3527, this.f3594, str2, this.f3586);
                            if (z) {
                                mo5044(m3335(), f3523);
                            }
                        }
                        c06310.f3525 = C0266.m3961(c06310.f3607);
                        c06310.f3607 = C0164.m3497(3863, 10, 94) + c06310.f3607;
                        c0639 = c06310;
                    }
                }
                c0639 = this;
            } else {
                c06310 = this;
                c06310.f3607 = "";
                if (!(c06310.f3558 && c06310.f3586.length() == 0) && c06310.f3543.length() <= 0) {
                    c0639 = c06310;
                } else {
                    if (z) {
                        mo5044(C0164.m3497(3812, 16, 47), f3523);
                    }
                    c0639 = c06310;
                    c0639.f3607 = c06310.f3604 + " " + c06310.m3383(c06310.f3604, c06310.f3527, c06310.f3594, c06310.f3531, c06310.f3586);
                    if (z) {
                        mo5044(m3335(), f3523);
                    }
                }
            }
            if (z) {
                mo5044(C0164.m3497(3873, 15, 43) + c0639.f3607, f3523);
            }
        }
    }

    public String m5822() {
        m5821(false);
        return this.f3607;
    }

    public void m5823(String str) {
        this.f3597 = str != null ? str : "";
        m5819(str);
        if (this.f3597.equals(f3522)) {
            super.m4304(C0164.m3497(3962, 16, 119));
        }
    }

    public String m5824() {
        return this.f3603;
    }

    public final void m5825(String str) {
        int i;
        if (this.f3555.length() != 0 && str.length() == 0) {
            m5770();
        }
        this.f3555 = str;
        if (this.f395 == null) {
            this.f395 = new C0443();
        }
        String strM5787 = m5787(str);
        if (this.f3569 && C0259.m3856(strM5787) && str.equals(C0164.m3497(323, 5, 51))) {
            str = C0164.m3497(328, 4, 13);
            strM5787 = m5787(str);
        }
        this.f395.m4818(strM5787);
        C0443 c0443 = this.f395;
        if (C0307.m4184(this.f353)) {
            StringTokenizer stringTokenizer = new StringTokenizer(C0307.m4183(this.f353), ";");
            while (true) {
                if (stringTokenizer.hasMoreTokens()) {
                    String strNextToken = stringTokenizer.nextToken();
                    int iIndexOf = strNextToken.indexOf("=");
                    int iLastIndexOf = strNextToken.lastIndexOf(":");
                    if (iLastIndexOf > -1 && ((iIndexOf < 0 && !str.equals(C0164.m3497(357, 5, 13))) || strNextToken.startsWith(str + "="))) {
                        i = Integer.parseInt(C0259.m3888(strNextToken, iLastIndexOf + 1).trim());
                    }
                } else {
                    i = 0;
                }
            }
        } else {
            i = 0;
        }
        c0443.m4817(i);
        C0443 c0444 = this.f395;
        String str2 = c0444.f2277;
        int i2 = c0444.f2286;
        if (str2.length() == 0 || i2 == 0) {
            this.f395.m4819(0);
            return;
        }
        if (str.equals(C0164.m3497(332, 4, 78))) {
            this.f395.m4819(7);
            return;
        }
        if (str.equals(C0164.m3497(336, 5, 28))) {
            this.f395.m4819(1);
        } else if (str.equals(C0164.m3497(341, 5, 9))) {
            this.f395.m4819(3);
        } else {
            this.f395.m4819(0);
        }
    }

    public final String m5827(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            if (b >= 32 || b == 13 || b == 10) {
                sb.append((char) b);
            } else {
                sb.append(C0663.m5891("0x").append(C0259.m3886(b, 1)).toString());
            }
        }
        return sb.toString();
    }

    public void mo5044(String str, String str2) {
        throw null;
    }

    public final String m5828() {
        InterfaceC0126 interfaceC0126;
        int i;
        C0266 c0266 = new C0266(false, false, false);
        c0266.f1295 = this.f415;
        c0266.f1308 = true;
        C0282 c0282 = new C0282(null, this.f1721);
        c0282.m4022(true);
        String strM3847 = C0259.m3847(c0266.m3968(C0164.m3497(5970, 4, 80), this.f3527, "", this.f3594, "", C0320.f1706));
        String strM3867 = C0259.m3867();
        String strM3868 = C0259.m3867();
        m5780(this.f1725.m5718(C0164.m3497(5974, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 57) + C0164.m3497(6083, 12, 35) + C0164.m3497(6095, 99, 117) + C0164.m3497(6194, 26, 84) + strM3867 + C0164.m3497(6220, 14, 38) + C0164.m3497(6234, 15, 98) + C0164.m3497(6249, 75, 113) + C0164.m3497(6324, 16, 7) + C0164.m3497(6340, 31, 92) + this.f3547 + C0164.m3497(6371, 7, 65) + C0164.m3497(6378, 13, 59) + C0164.m3497(6391, 10, 28) + C0164.m3497(6401, 42, 98) + strM3868 + C0164.m3497(6443, 58, 32) + C0164.m3497(6501, 77, 27) + C0164.m3497(6578, 86, 70) + C0164.m3497(6664, 32, 88) + C0164.m3497(6696, 197, 0) + strM3847 + C0164.m3497(6893, 19, 9) + C0164.m3497(6912, 29, 6) + C0164.m3497(6941, 11, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY) + C0164.m3497(6952, 13, 97)));
        m5796(2);
        c0282.m4027(this.f1725.m5716(m5768()));
        c0282.m4033(C0164.m3497(6965, 58, 92));
        m5780(this.f1725.m5718(C0164.m3497(7027, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 73) + C0164.m3497(7136, 12, 76) + C0164.m3497(7148, 100, 91) + C0164.m3497(7248, 26, 76) + C0259.m3867() + C0164.m3497(7274, 14, 73) + C0164.m3497(7288, 15, 79) + C0164.m3497(7303, 75, 5) + C0164.m3497(7378, 16, 78) + C0164.m3497(7394, 31, 66) + this.f3547 + C0164.m3497(7425, 7, 100) + C0164.m3497(7432, 13, 56) + C0164.m3497(7445, 10, 86) + C0164.m3497(7455, 50, 83) + strM3868 + C0164.m3497(7505, SyslogConstants.LOG_LOCAL3, 83) + C0164.m3497(7657, 197, 86) + C0259.m3847(c0266.m3968(C0164.m3497(7023, 4, 54), this.f3527, "", this.f3594, "", C0259.m3876(c0282.m4039()))) + C0164.m3497(7854, 19, 96) + C0164.m3497(7873, 37, 127) + C0164.m3497(7910, 11, 117) + C0164.m3497(7921, 13, 104)));
        m5796(2);
        String strM5716 = this.f1725.m5716(m5768());
        if (c0282.f1469 >= c0282.f1428 && ((i = c0282.f1459) == 8 || i == 0 || i == 14)) {
            c0282.f1428 = c0282.f1425;
        }
        c0282.m4023(0);
        c0282.m4042();
        c0282.f1431 = "";
        c0282.f1470 = null;
        c0282.m4312((Exception) null);
        c0282.m4027(strM5716);
        this.f3538.equalsIgnoreCase(this.f3551);
        c0282.m4033(C0164.m3497(7934, CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 100));
        byte[] bArrM3876 = C0259.m3876(c0282.m4039());
        byte[] bArrM3865 = C0259.m3865(bArrM3876, 0, 16);
        int length = bArrM3876.length - bArrM3865.length;
        byte[] bArr = new byte[length];
        if (c0266.f1289) {
            if (c0266.f1290 == null && c0266.f1309 != null) {
                try {
                    AbstractC0313 abstractC0313M4220 = C0308.m4220(C0128.m3228(512, 3, 98));
                    C0308.m4225(abstractC0313M4220, c0266.f1309);
                    c0266.f1290 = abstractC0313M4220.mo4287();
                } catch (C0537 e) {
                    throw new C0414(e);
                }
            }
            interfaceC0126 = c0266.f1290;
        } else {
            if (c0266.f1294 == null && c0266.f1292 != null) {
                try {
                    AbstractC0313 abstractC0313M4221 = C0308.m4220(C0128.m3228(509, 3, 65));
                    C0308.m4225(abstractC0313M4221, c0266.f1292);
                    c0266.f1294 = abstractC0313M4221.mo4287();
                } catch (C0537 e2) {
                    throw new C0414(e2);
                }
            }
            interfaceC0126 = c0266.f1294;
        }
        InterfaceC0126 interfaceC0127 = interfaceC0126;
        if (interfaceC0127 != null) {
            try {
                interfaceC0127.mo3121(bArrM3876, bArrM3865.length, length, bArr, 0);
            } catch (Exception e3) {
                throw new C0414(e3);
            }
        }
        String strM3848 = C0259.m3847(bArr);
        c0282.m4033(C0164.m3497(8072, WebSocketProtocol.PAYLOAD_SHORT, 23));
        String str = strM3848 + ";" + ((C0124) c0282.f1458.get(0)).f247;
        c0282.m4033(C0164.m3497(8198, 137, 70));
        String str2 = str + ";" + c0282.m4039();
        c0282.m4033(C0164.m3497(8335, 99, 125));
        String str3 = str2 + ";" + c0282.m4039();
        c0282.m4033(C0164.m3497(8434, 82, 105));
        return str3 + ";" + ((C0124) c0282.f1458.get(0)).f247;
    }

    public boolean m5829() {
        return this.f3608;
    }

    @Override
    public void mo4406(int i, long j, byte[] bArr) {
        throw null;
    }

    @Override
    public void mo3152(int i, String str) {
        throw null;
    }

    public final InputStream m5838() {
        if (this.f3534.f1413 == null) {
            try {
                InputStream bufferedInputStream = this.f1843;
                boolean z = this.f410;
                if (bufferedInputStream == null && !C0259.m3856(this.f1844)) {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(this.f1844));
                    z = true;
                }
                try {
                    this.f3534.m4001(this.f3552, bufferedInputStream);
                    if (z) {
                        try {
                            bufferedInputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                } catch (Throwable th) {
                    if (z) {
                        try {
                            bufferedInputStream.close();
                        } catch (Exception unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e) {
                mo3152(305, C0164.m3497(3034, 34, 41) + C0414.m4672(e));
                return null;
            }
        }
        return this.f3534.f1413;
    }

    @Override
    public int mo5257() {
        return this.f3596;
    }

    public void m5805(int i) throws C0414 {
        if (this.f1845 != i) {
            this.f1845 = i;
            this.f3607 = "";
            this.f3594 = "";
            this.f3527 = "";
        }
        int i2 = this.f1845;
        this.f3526 = i2 == 4 || i2 == 5;
    }

    public final boolean m5817(int i) throws C0414 {
        String strM5772;
        int i2;
        C0639 c0639;
        boolean zEqualsIgnoreCase;
        if (this.f3584.length() != 0) {
            int i3 = this.f3592;
            if (i3 == 1) {
                c0639 = this;
                zEqualsIgnoreCase = true;
            } else if (i3 != 2) {
                c0639 = this;
                zEqualsIgnoreCase = false;
            } else {
                String[] strArr = {this.f3538};
                c0639 = this;
                c0639.m5835(this.f3584, strArr, new String[]{this.f3531}, new String[]{this.f3614}, new String[]{this.f3527}, new String[]{this.f3594}, new int[]{this.f3562}, true);
                zEqualsIgnoreCase = c0639.f3538.equalsIgnoreCase(strArr[0]);
            }
            if (zEqualsIgnoreCase) {
                if (i <= 0) {
                    m4312((Exception) null);
                    m4312((Exception) new C0414(310, C0164.m3497(3068, 30, 125)));
                    return false;
                }
                boolean[] zArr = {true};
                String str = c0639.f3584;
                InterfaceC0314 interfaceC0314 = c0639.f3580;
                if (interfaceC0314 != null) {
                    interfaceC0314.m4297(str, zArr);
                }
                if (zArr[0]) {
                    m4312((Exception) null);
                    m5763(c0639.f3584, true);
                    mo5626();
                }
                return zArr[0];
            }
        } else {
            try {
                strM5772 = m5772(this.f3618);
            } catch (Exception unused) {
                strM5772 = "";
            }
            if (this.f3592 != 0 && (((i2 = this.f3623) == 1 || i2 == 3 || i2 == 2) && strM5772.startsWith(ExifInterface.GPS_MEASUREMENT_3D) && !strM5772.equals(C0164.m3497(3098, 3, 67)) && !strM5772.equals(C0164.m3497(3101, 3, 127)))) {
                m4312((Exception) null);
                m4312((Exception) new C0414(151, C0164.m3497(3104, 70, 95)));
            }
        }
        return false;
    }

    @Override
    public void mo3392(boolean z) {
        C0619 c0619 = this.f3546;
        if (c0619 != null) {
            c0619.m4308();
        }
        C0615 c0615 = this.f3585;
        if (c0615 != null) {
            c0615.f3375 = null;
            c0615.m4308();
        }
        C0638 c0638 = this.f3587;
        if (c0638 != null) {
            c0638.f3511 = null;
        }
        super.mo3392(z);
    }

    public void m5819(String str) {
        if (C0259.m3856(str) || !(f3517.equals(str) || f3513.equals(str) || f3522.equals(str))) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3497(3888, 74, 68));
        }
    }

    public void m5793(int i) throws C0414 {
        boolean z;
        boolean z2;
        if (i == 0) {
            mo5260();
            return;
        }
        if (this.f3623 == 0) {
            String str = C0164.m3497(3243, 5, 6) + this.f3547;
            String str2 = f3523;
            mo5044(str, str2);
            mo4875(C0164.m3497(3248, 21, 110) + C0320.f1718, str2);
            this.f3623 = i;
            int i2 = this.f3620;
            boolean z3 = false;
            do {
                try {
                    mo3370();
                    this.f3539.clear();
                    this.f3534.m3998();
                    this.f3618 = "";
                    this.f3584 = "";
                    this.f3603 = "";
                    this.f3581 = 0;
                    this.f3595.m4170();
                    m5803();
                    try {
                        if (this.f3623 != 4) {
                            m5821(true);
                            m5769();
                        }
                        if (this.f3623 != 4 && this.f3543.length() > 0 && this.f3607.length() == 0) {
                            m4312((Exception) new C0414(SyslogConstants.LOG_LOCAL4, C0164.m3497(3269, 86, 65)));
                        } else if (this.f3623 != 4 && this.f3537.length() > 0 && this.f3565.f1643.length() == 0) {
                            m4312((Exception) new C0414(SyslogConstants.LOG_LOCAL4, C0164.m3497(3355, 98, 51)));
                        } else {
                            switch (this.f3623) {
                                case 1:
                                    m5799(C0164.m3497(3453, 3, 101), false);
                                    break;
                                case 2:
                                    m5799(C0164.m3497(3456, 4, 116), true);
                                    break;
                                case 3:
                                    m5799(C0164.m3497(3463, 4, 7), false);
                                    break;
                                case 4:
                                    m5770();
                                    if (z3) {
                                        m3367();
                                    }
                                    this.f3623 = 0;
                                    m3321();
                                    this.f3584 = "";
                                    this.f3543 = "";
                                    this.f3537 = "";
                                    this.f3534.m3998();
                                    m4402();
                                    return;
                                case 5:
                                    m5799(C0164.m3497(3460, 3, 88), true);
                                    break;
                                case 6:
                                    m5799(C0164.m3497(3467, 6, 81), false);
                                    break;
                                default:
                                    break;
                            }
                        }
                    } catch (C0414 e) {
                        m4312((Exception) new C0414(e));
                    }
                    if (this.f3566.length() > 0 && this.f3566.contains(m5772(this.f3618)) && this.f3599 && this.f1845 == 5) {
                        if (this.f3607.toLowerCase().startsWith(C0164.m3497(3473, 9, 110))) {
                            this.f3607 = "";
                        }
                        this.f3543 = C0164.m3497(3482, 4, 95);
                    }
                    boolean z4 = this.f3568;
                    if (z4) {
                        C0626 c0626M5485 = C0558.m5485(this.f3539, C0164.m3497(3486, 10, 10));
                        z4 = c0626M5485 == null || !c0626M5485.f3460.equalsIgnoreCase(C0164.m3497(3496, 5, 8));
                    }
                    boolean[] zArr = {!z4};
                    if (this.f1722 == null) {
                        z = false;
                        z2 = z;
                    } else {
                        int i3 = this.f1722.f2136;
                        if (i3 != 151 && i3 != 157) {
                            if (i3 == 201) {
                                zArr[0] = true;
                            } else if (i3 == 32000) {
                                if (m5817(i2)) {
                                    i2--;
                                    this.f3577 = 0;
                                    z = false;
                                    z2 = true;
                                } else {
                                    if (m5837(zArr)) {
                                        this.f3577++;
                                        z = true;
                                    }
                                    z2 = z;
                                }
                            }
                            z = false;
                            z2 = z;
                        } else if (m5817(i2)) {
                            i2--;
                            this.f3577 = 0;
                            z = false;
                            z2 = true;
                        } else {
                            if (m5837(zArr)) {
                                this.f3577++;
                                z = true;
                            } else {
                                z = false;
                            }
                            z2 = z;
                        }
                    }
                    z3 = (z4 || zArr[0] || z) ? false : true;
                    if (zArr[0]) {
                        m3395(false, false);
                        z3 = true;
                    }
                    if (z3) {
                        while (true) {
                            if (m3355() || (this.f395 != null && this.f395.f2283)) {
                                mo5626();
                            }
                        }
                    }
                } catch (Throwable th) {
                    if (z3) {
                        m3367();
                    }
                    this.f3623 = 0;
                    m3321();
                    this.f3584 = "";
                    this.f3543 = "";
                    this.f3537 = "";
                    this.f3534.m3998();
                    m4402();
                    throw th;
                }
            } while (z2);
            if (z3) {
                m3367();
            }
            this.f3623 = 0;
            m3321();
            this.f3584 = "";
            this.f3543 = "";
            this.f3537 = "";
            this.f3534.m3998();
            m4402();
            m4306();
            return;
        }
        throw new C0414(CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, C0164.m3497(3214, 29, 63));
    }

    public C0363 m5818(int i) throws C0414 {
        if (i >= 0 && i < this.f3550.size()) {
            if (this.f3550.elementAt(i) == null) {
                this.f3550.setElementAt(new C0363("", "", "", "", "", false, true), i);
            }
            return (C0363) this.f3550.elementAt(i);
        }
        throw new C0414(156, C0164.m3497(3978, 21, 34));
    }

    public void m5806(boolean z) {
        this.f3617 = z;
    }

    public void m5773(int i) {
        this.f3592 = i;
    }

    public String m5831(String str, boolean z) throws C0414 {
        String str2;
        int i;
        int i2;
        this.f3529 = str;
        int iAvailable = 0;
        boolean z2 = this.f3562 == 80;
        if (this.f433 != 3) {
            z2 = this.f3562 == 443;
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append(str + " ");
            boolean zM4186 = C0307.m4186(this.f399, this.f3531, this.f3562, this.f3538);
            if (this.f3565.f1640.length() > 0 && this.f3565.m4211(this.f3538.equalsIgnoreCase(this.f3551)) != 3 && !zM4186) {
                stringBuffer.append(this.f3538 + C0164.m3497(581, 3, 14) + this.f3531);
                if (!z2) {
                    stringBuffer.append(C0663.m5891(":").append(this.f3562).toString());
                }
            }
            if (this.f3556) {
                stringBuffer.append(this.f3547);
            } else {
                stringBuffer.append(this.f3614);
            }
            stringBuffer.append(C0164.m3497(584, 6, 83) + (C0259.m3856(this.f3609) ? this.f3597 : this.f3609) + "\r\n");
        }
        if (!(this.f3563.length() > 4 ? this.f3563.substring(0, 5) : "").equalsIgnoreCase(C0164.m3497(590, 5, 83)) && !this.f3556) {
            stringBuffer.append(C0164.m3497(595, 6, 47) + this.f3531);
            if (!z2) {
                stringBuffer.append(C0663.m5891(":").append(this.f3562).toString());
            }
            stringBuffer.append("\r\n");
        }
        if (this.f3607.length() > 0) {
            stringBuffer.append(C0164.m3497(601, 15, 18) + this.f3607 + "\r\n");
        }
        if (this.f3565.f1643.length() > 0) {
            stringBuffer.append(C0164.m3497(616, 21, 82) + this.f3565.f1643 + "\r\n");
        }
        if (this.f3575.length() > 0) {
            stringBuffer.append(C0164.m3497(637, 8, 56) + this.f3575 + "\r\n");
        }
        if (this.f3608 && this.f3601.length() > 0) {
            stringBuffer.append(C0164.m3497(645, 17, 73) + this.f3601 + "\r\n");
        }
        if (this.f3553.length() > 0) {
            stringBuffer.append(C0164.m3497(662, 6, 50) + this.f3553 + "\r\n");
        }
        if (this.f3615.length() > 0) {
            stringBuffer.append(C0164.m3497(668, 12, 68) + this.f3615 + "\r\n");
        }
        if (this.f3574.length() > 0) {
            stringBuffer.append(C0164.m3497(680, 19, 92) + this.f3574 + "\r\n");
        }
        if (this.f3578.length() > 0) {
            stringBuffer.append(C0164.m3497(699, 9, 114) + this.f3578 + "\r\n");
        }
        if (this.f3590.length() > 0) {
            stringBuffer.append(C0164.m3497(708, 8, 90) + this.f3590 + "\r\n");
        }
        if (!this.f3597.equals(f3513) && !this.f3597.equals(f3522)) {
            if (this.f3597.equals(f3517) && this.f3568) {
                stringBuffer.append(C0164.m3497(746, 22, 27) + "\r\n");
            }
        } else {
            if (this.f3598.length() > 0) {
                stringBuffer.append(C0164.m3497(716, 13, 63) + this.f3598 + "\r\n");
            }
            if (!this.f3568 && !this.f3526 && this.f3565.f1640.length() == 0) {
                stringBuffer.append(C0164.m3497(729, 17, 84) + "\r\n");
            }
        }
        if (this.f3542.length() > 0) {
            stringBuffer.append(C0164.m3497(ViewUtils.EDGE_TO_EDGE_FLAGS, 8, 46)).append(this.f3542).append("\r\n");
            this.f3542 = "";
        } else if (this.f3550.size() > 0) {
            stringBuffer.append(C0164.m3497(776, 8, 51)).append(m5818(0).toString());
            int size = this.f3550.size();
            for (int i3 = 1; i3 < size; i3++) {
                stringBuffer.append("; ").append(m5818(i3).toString());
            }
            stringBuffer.append("\r\n");
        }
        byte[] bArr = this.f3552;
        if (((bArr != null && bArr.length > 0) || this.f1843 != null || (((str2 = this.f1844) != null && str2.length() > 0) || (i = this.f3623) == 2 || i == 5)) && (i2 = this.f3623) != 1 && i2 != 3 && i2 != 6) {
            if (!m5760()) {
                stringBuffer.append(C0164.m3497(784, 17, 32) + "\r\n");
            } else {
                if (this.f3564.length() > 0) {
                    stringBuffer.append(C0164.m3497(801, 14, 24) + this.f3564 + "\r\n");
                }
                if (this.f3622) {
                    stringBuffer.append(f3524 + "\r\n");
                } else if (this.f3534.f1408) {
                    stringBuffer.append(C0164.m3497(815, 22, 62) + "\r\n");
                    StringBuilder sbAppend = new StringBuilder().append(C0164.m3497(837, 16, 11));
                    try {
                        InputStream inputStreamM5838 = m5838();
                        if (inputStreamM5838 != null) {
                            iAvailable = inputStreamM5838.available();
                        }
                    } catch (Exception unused) {
                    }
                    stringBuffer.append(sbAppend.append(iAvailable).append("\r\n").toString());
                } else {
                    stringBuffer.append(C0164.m3497(853, 16, 83) + (m4399() + ((long) this.f3552.length)) + "\r\n");
                }
            }
        }
        if (this.f3563.length() > 0) {
            stringBuffer.append(this.f3563);
        }
        stringBuffer.append("\r\n");
        return stringBuffer.toString();
    }

    public void m5788(boolean z) {
        this.f3608 = z;
    }

    public final void m5763(String str, boolean z) {
        boolean z2;
        int[] iArr = {0};
        String[] strArr = {""};
        String[] strArr2 = {""};
        String[] strArr3 = {""};
        String[] strArr4 = {""};
        String[] strArr5 = {""};
        String str2 = this.f3531;
        int i = this.f3562;
        if (str.length() == 0) {
            this.f3547 = "";
            this.f3538 = this.f3541;
            this.f3531 = "";
            this.f3562 = this.f3576;
            this.f3614 = "";
            this.f3527 = "";
            this.f3594 = "";
            return;
        }
        if (z) {
            if (!this.f3589 && str.equals(this.f3547)) {
                m3395(false, false);
                throw new C0414(151, C0164.m3497(3501, 62, 37));
            }
            strArr[0] = this.f3538;
            strArr2[0] = this.f3531;
            iArr[0] = this.f3562;
            strArr3[0] = this.f3614;
        } else {
            String upperCase = str.toUpperCase();
            if (upperCase.startsWith(this.f3600 + ":")) {
                this.f3576 = 80;
            } else if (upperCase.startsWith(this.f3551 + ":")) {
                this.f3576 = GrpcUtil.DEFAULT_PORT_SSL;
            }
            iArr[0] = this.f3576;
            strArr[0] = this.f3541;
        }
        this.f3547 = str;
        m5835(str, strArr, strArr2, strArr3, strArr4, strArr5, iArr, z);
        this.f3614 = strArr3[0];
        if (this.f3538.equalsIgnoreCase(strArr[0]) && this.f3531.equalsIgnoreCase(strArr2[0]) && this.f3562 == iArr[0]) {
            z2 = false;
        } else {
            m3395(false, false);
            z2 = true;
        }
        if (strArr[0].length() > 0) {
            this.f3538 = strArr[0];
        }
        if (strArr2[0].length() > 0) {
            m5816(strArr2[0]);
        }
        int i2 = iArr[0];
        if (i2 != 0) {
            this.f3562 = i2;
        }
        if (z2 || !this.f3557) {
            this.f3548.m3278();
        }
        this.f3582.m3278();
        this.f3538 = strArr[0];
        m5816(strArr2[0]);
        this.f3562 = iArr[0];
        if ((z && this.f3592 != 1) || strArr4[0].length() > 0 || strArr5[0].length() > 0) {
            this.f3527 = strArr4[0];
            this.f3594 = strArr5[0];
        }
        if (!z && ((this.f3562 != i || !this.f3531.equalsIgnoreCase(str2)) && !this.f3528 && this.f3550.size() != 0)) {
            Vector vector = new Vector();
            for (int i3 = 0; i3 < this.f3550.size(); i3++) {
                C0363 c0363 = (C0363) this.f3550.get(i3);
                if (c0363.f1907) {
                    vector.addElement(c0363);
                }
            }
            this.f3550 = vector;
        }
        if (this.f3562 != i || !this.f3531.equalsIgnoreCase(str2)) {
            this.f3537 = "";
            this.f3543 = "";
            this.f3586 = "";
        }
        m5821(false);
        this.f3577 = 0;
    }

    public void m5796(int i) throws C0414 {
        try {
            m5793(i);
        } finally {
            this.f3577 = 0;
        }
    }

    public void m5797(boolean z) {
        this.f3622 = z;
    }

    public final void m5816(String str) {
        if (this.f3533 && !C0259.m3854(str)) {
            String string = "";
            if (!C0259.m3856(str)) {
                String strM5852 = C0642.m5852(345, 4, 24);
                char[] cArr = {CoreConstants.DOT, 12290, 65294, 65377};
                for (int i = 1; i < 4; i++) {
                    str = str.replace(cArr[i], cArr[0]);
                }
                String[] strArrM3907 = C0259.m3907(str, cArr[0] + "", true);
                for (int i2 = 0; i2 < strArrM3907.length; i2++) {
                    if (!C0259.m3854(strArrM3907[i2])) {
                        string = C0663.m5892(string, strM5852).append(C0619.m5657(strArrM3907[i2])).toString();
                    } else {
                        string = C0663.m5891(string).append(strArrM3907[i2]).toString();
                    }
                    if (i2 != strArrM3907.length - 1) {
                        string = C0663.m5891(string).append(cArr[0]).toString();
                    }
                }
            }
            this.f3531 = string;
            return;
        }
        this.f3531 = str;
    }

    public void m5826(boolean z) {
        this.f3559 = z;
    }

    @Override
    public void mo5266(int i) {
        this.f3596 = i;
        if (i >= 2) {
            this.f3585.m4304(C0164.m3497(3999, 23, 68));
        } else {
            this.f3585.m4304(C0164.m3497(4022, 24, 20));
        }
    }

    public void m5798(String str, String str2) {
        if (str.length() == 0 && (this.f3540 == -1 || this.f3539.size() <= this.f3540)) {
            ((C0626) this.f3539.lastElement()).m5719(str2);
        } else if (this.f3540 == -1 || this.f3539.size() < this.f3540) {
            this.f3539.addElement(new C0626(str, str2));
        }
        InterfaceC0314 interfaceC0314 = this.f3580;
        if (interfaceC0314 == null || this.f1722 != null) {
            return;
        }
        interfaceC0314.m4295(str, str2);
    }

    public final void m5810(InputStream inputStream, String str, boolean z) {
        byte[] bArr;
        int i;
        try {
            try {
                if (this.f3622 && (i = this.f3560) > 0) {
                    bArr = new byte[i];
                } else {
                    bArr = new byte[8192];
                }
                mo5044(C0164.m3497(1984, 12, 59), f3523);
                while (true) {
                    int i2 = inputStream.read(bArr, 0, bArr.length);
                    if (i2 <= 0) {
                        break;
                    }
                    if (this.f3622) {
                        if (this.f3596 >= 3) {
                            mo4875(C0259.m3862(i2) + "\r\n", f3512);
                        }
                        byte[] bArrM5718 = this.f1725.m5718(C0259.m3862(i2) + "\r\n");
                        m4408(bArrM5718, 0, bArrM5718.length, 1, (OutputStream) null);
                    }
                    if (this.f3596 >= 3) {
                        mo4875(C0259.m3844(bArr, 0, i2), f3512);
                    }
                    byte[] bArr2 = bArr;
                    m3397(bArr2, 0, i2, 2, 65536);
                    if (this.f3622) {
                        if (this.f3596 >= 3) {
                            mo4875("\r\n", f3512);
                        }
                        m4407(C0320.f1716, 1);
                    }
                    bArr = bArr2;
                }
                if (z) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (Throwable th) {
                if (z) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            throw new C0414(e, 151, C0164.m3497(1996, 14, 21) + str + ": " + C0414.m4672(e));
        }
    }

    public void m5836(boolean z, long j) {
        boolean z2 = this.f422;
        m3301(false);
        m3373(z);
        m3326(z ? C0320.f1716 : C0320.f1706);
        this.f388.m5284((int) j);
        m3301(z2);
    }

    public final void m5834(java.io.InputStream r7, java.lang.String r8, boolean r9) {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0639.m5834(java.io.InputStream, java.lang.String, boolean):void");
    }

    public final long m5830(String str, int i) throws C0414 {
        try {
            long j = Long.parseLong(str, i);
            if (j >= 0) {
                return j;
            }
        } catch (Exception unused) {
        }
        throw new C0414(151, C0164.m3497(2600, 27, 106) + str + C0164.m3497(2627, 11, 92));
    }

    public final void m5811(Exception exc) throws C0414 {
        int i;
        int i2 = -1;
        try {
            this.f3581 = 0;
            m5836(true, 0L);
            while (m3355() && this.f3581 == 0) {
                String strM3497 = C0164.m3497(2081, 17, 64);
                String str = f3523;
                mo5044(strM3497, str);
                String strM3346 = m3346(0, this.f375);
                this.f3618 = strM3346;
                try {
                    m5812(this.f3597, Integer.parseInt(m5772(strM3346).trim()), m5792(this.f3618));
                    mo5044(C0164.m3497(2098, 13, 37) + this.f3618, str);
                    this.f3618 = this.f429;
                    this.f3595.m4170();
                    this.f3539.clear();
                    this.f3581 = 1;
                    m3301(true);
                    while (m3355() && this.f3581 == 1) {
                        mo5626();
                    }
                } catch (Exception unused) {
                    this.f3581 = 2;
                    this.f3602 = 1;
                    m3373(false);
                    mo3399(C0259.m3903(this.f3618 + "\r\n", this.f375), false);
                    m3326(C0320.f1706);
                    m3301(true);
                    while (m3355() && this.f3581 == 2) {
                        mo5626();
                    }
                    throw new C0414(163, C0164.m3497(2111, 52, 119) + this.f429 + "\".");
                }
            }
            if (exc == null && this.f1722 != null) {
                throw this.f1722;
            }
            while (m3355() && (i = this.f3581) != 3 && (this.f3623 != 3 || i != 2)) {
                mo5626();
            }
            int i3 = this.f3581;
            if (i3 != 3 && (this.f3623 != 3 || i3 != 2)) {
                int i4 = this.f3588;
                if (i4 == 3 || i4 == 2) {
                    throw new C0414(164, C0164.m3497(2163, 87, 104));
                }
                if (i4 == 1 && this.f3612 > 0) {
                    throw new C0414(165, C0164.m3497(2250, 85, 5));
                }
            }
            mo5044(C0164.m3497(2335, 17, 91), f3523);
            m5771(C0164.m3497(2352, 10, 99) + this.f3618 + ", " + this.f3573 + C0164.m3497(2362, 18, 21));
            if (exc != null && C0259.m3856(this.f3618)) {
                throw new C0414(exc);
            }
            m5783();
            m3301(false);
            try {
                i2 = Integer.parseInt(m5772(this.f3618).trim());
            } catch (Exception unused2) {
            }
            if ((i2 == 401 || i2 == 407) && this.f3584.length() == 0) {
                m5832(1);
            }
            if (this.f3584.length() == 0) {
                m5832(1);
            }
        } catch (Throwable th) {
            m3301(false);
            try {
                i2 = Integer.parseInt(m5772(this.f3618).trim());
            } catch (Exception unused3) {
            }
            if ((i2 == 401 || i2 == 407) && this.f3584.length() == 0) {
                m5832(1);
                throw th;
            }
            throw th;
        }
    }

    @Override
    public void mo3399(byte[] bArr, boolean z) {
        int iMin;
        int length = this.f361 ? this.f440 : bArr.length;
        String str = this.f3597;
        String str2 = f3522;
        if (str.equals(str2) && this.f3609.equals(str2)) {
            C0638 c0638 = this.f3587;
            if (c0638.f3509 > 0) {
                c0638.f3501 = System.currentTimeMillis() + ((long) (c0638.f3509 * 1000));
            }
            C0517 c0517 = c0638.f3504;
            if (c0517 == null || c0517.f2977 == null) {
                return;
            }
            c0517.m5254(bArr, length);
            return;
        }
        int i = this.f3581;
        if (i == 1) {
            if (length > 0) {
                C0301 c0301 = this.f3595;
                (c0301.f1615 == 0 ? c0301.m4174(bArr, 0, length) : c0301.m4181(bArr, 0, length)).m4180(C0320.f1716);
                String strM3870 = C0259.m3870(bArr, 0, length);
                String strM5444 = C0558.m5444(strM3870);
                String strM5446 = C0558.m5446(strM3870);
                mo4875(strM3870, f3519);
                m5777(strM5444, strM5446);
                return;
            }
            try {
                if (this.f3618.length() == 0 || (m5772(this.f3618).startsWith(BuildConfig.IOS_VERSION_CODE) && !m5772(this.f3618).startsWith(C0164.m3497(2864, 3, 88)))) {
                    this.f3588 = 0;
                    this.f3581 = 0;
                    m3301(false);
                    return;
                }
            } catch (C0414 e) {
                mo3406(e);
            }
            int i2 = Integer.parseInt(m5772(this.f3618).trim());
            this.f3530 = (i2 == 401 || i2 == 407) && !this.f3572;
            int i3 = this.f3588;
            if ((i3 != 1 || this.f3612 != 0) && i2 != 204 && i2 != 304 && i2 != 101) {
                this.f3581 = 2;
                if (this.f3584.length() == 0) {
                    boolean zM4403 = m4403();
                    if (i2 != 200 && i2 != 201 && i2 != 206 && this.f3598.length() == 0) {
                        zM4403 = false;
                    }
                    if (zM4403) {
                        this.f3602 = 2;
                        if (this.f1846.length() != 0) {
                            try {
                                m4404(m5774());
                            } catch (C0414 e2) {
                                m4312((Exception) e2);
                                mo3406(e2);
                            }
                        }
                    } else {
                        this.f3602 = 1;
                    }
                    m5809(1);
                }
                int i4 = this.f3588;
                if (i4 != 2) {
                    if (i4 == 1) {
                        long j = this.f3612;
                        if (j < this.f407) {
                            m5836(false, j);
                            return;
                        }
                    }
                    m5836(false, this.f407);
                    return;
                }
                return;
            }
            if (i3 == 1 && this.f3612 == 0 && this.f3611) {
                m5809(1);
            }
            this.f3581 = 3;
            m5836(true, 0L);
            return;
        }
        if (i != 2) {
            return;
        }
        int i5 = this.f3588;
        if (i5 == 2 && z) {
            if (length > 0) {
                try {
                    String strTrim = C0259.m3870(bArr, 0, length).trim();
                    if (this.f3596 >= 3) {
                        mo4875(strTrim, f3514);
                    }
                    int iIndexOf = strTrim.indexOf(";");
                    if (iIndexOf > 0) {
                        strTrim = strTrim.substring(0, iIndexOf);
                    }
                    long jM5830 = m5830(strTrim, 16);
                    this.f3612 = jM5830;
                    if (jM5830 == 0) {
                        this.f3588 = 4;
                        return;
                    } else {
                        this.f3588 = 3;
                        m5836(false, jM5830);
                        return;
                    }
                } catch (C0414 e3) {
                    try {
                        m3395(false, false);
                    } catch (C0414 unused) {
                    }
                    m4312(e3);
                    return;
                }
            }
            C0414 c0414 = new C0414(164, C0164.m3497(2867, 60, 118));
            mo3152(c0414.f2136, c0414.getMessage());
            m4312((Exception) c0414);
            return;
        }
        if (i5 == 4) {
            if (length > 0) {
                C0301 c0302 = this.f3595;
                (c0302.f1615 == 0 ? c0302.m4174(bArr, 0, length) : c0302.m4181(bArr, 0, length)).m4180(C0320.f1716);
                String strM3871 = C0259.m3870(bArr, 0, length);
                String strM5445 = C0558.m5444(strM3871);
                String strM5447 = C0558.m5446(strM3871);
                mo4875(C0164.m3497(2927, 8, 16) + strM3871, f3519);
                if (this.f3584.length() == 0) {
                    m5798(strM5445, strM5447);
                    return;
                }
                return;
            }
            this.f3581 = 3;
            return;
        }
        if (i5 == 5) {
            long j2 = this.f3612;
            long jMin = j2 - ((long) ((int) Math.min(length, j2)));
            this.f3612 = jMin;
            if (length == 1) {
                this.f3561[1 - ((int) jMin)] = bArr[0];
            }
            if (length > 1) {
                byte[] bArr2 = this.f3561;
                bArr2[0] = bArr[0];
                bArr2[1] = bArr[1];
            }
            m5779();
            return;
        }
        if (this.f3584.length() == 0) {
            int i6 = this.f3588;
            if (i6 == 3 || i6 == 1) {
                iMin = (int) Math.min(length, this.f3612);
                this.f3612 -= (long) iMin;
            } else {
                iMin = length;
            }
            C0279 c0279 = this.f3534;
            if (c0279.f1410 != null) {
                if (!c0279.m4005(bArr, 0, length)) {
                    m5779();
                    return;
                }
                C0301 c0303 = this.f3534.f1405;
                byte[] bArr3 = c0303.f1616;
                int i7 = c0303.f1615;
                bArr = (this.f361 || bArr3.length == i7) ? bArr3 : c0303.m4182();
                length = i7;
            }
            this.f3573 += (long) iMin;
            this.f3605 += (long) bArr.length;
            if (this.f3596 >= 3) {
                mo4875(C0259.m3893(bArr, length), f3514);
            }
            int i8 = this.f3602;
            if (i8 == 1) {
                long j3 = this.f3593;
                int iMin2 = j3 > 0 ? Math.min(length, (int) (j3 - ((long) this.f3544.f1615))) : length;
                if (iMin2 > 0) {
                    C0301 c0304 = this.f3544;
                    if (c0304.f1615 == 0) {
                        c0304.m4174(bArr, 0, iMin2);
                    } else {
                        c0304.m4181(bArr, 0, iMin2);
                    }
                }
                if (!this.f3530 && length > 0) {
                    mo4406(1, this.f3573, bArr);
                }
            } else if (i8 == 2) {
                try {
                    m4409(bArr, 0, length, C0320.f1706);
                    if (!this.f3530 && length > 0) {
                        mo4406(1, this.f3573, C0320.f1706);
                    }
                } catch (C0414 e4) {
                    this.f3602 = 0;
                    m4312((Exception) e4);
                    mo3406(e4);
                }
            }
        } else {
            int i9 = this.f3588;
            if (i9 == 3 || i9 == 1) {
                long j4 = this.f3612;
                this.f3612 = j4 - ((long) ((int) Math.min(length, j4)));
            }
            long j5 = length;
            this.f3573 += j5;
            this.f3605 += j5;
            if (this.f3596 >= 3) {
                mo4875(C0259.m3893(bArr, length), f3514);
            }
        }
        m5779();
    }

    @Override
    public void mo3358(int i, String str) {
        InterfaceC0314 interfaceC0314 = this.f3580;
        if (interfaceC0314 != null) {
            interfaceC0314.m4291(i, str);
        }
    }

    public void m5809(int i) {
        InterfaceC0314 interfaceC0314 = this.f3580;
        if (interfaceC0314 != null) {
            interfaceC0314.m4290(i);
        }
    }

    public void m5812(String str, int i, String str2) {
        InterfaceC0314 interfaceC0314 = this.f3580;
        if (interfaceC0314 != null) {
            interfaceC0314.m4292(str, i, str2);
        }
    }

    public final void m5777(String str, String str2) {
        C0363 c0363M4427;
        m5798(str, str2);
        String lowerCase = str.toLowerCase();
        if (lowerCase.equals(C0164.m3497(2651, 7, WebSocketProtocol.PAYLOAD_SHORT))) {
            int i = Integer.parseInt(str2.trim());
            String strM5245 = C0517.m5245(i);
            this.f3618 = C0164.m3497(2658, 5, 20) + this.f3597 + " " + str2 + " " + strM5245;
            m5812(this.f3597, i, strM5245);
            return;
        }
        if (lowerCase.startsWith(C0164.m3497(2663, 8, 21)) && this.f3592 != 0) {
            try {
                if (m5772(this.f3618).startsWith(ExifInterface.GPS_MEASUREMENT_3D)) {
                    this.f3584 = str2;
                    return;
                }
                return;
            } catch (C0414 unused) {
                return;
            }
        }
        int i2 = 0;
        if (lowerCase.startsWith(C0164.m3497(2671, 16, 34))) {
            String lowerCase2 = str2.toLowerCase();
            int i3 = this.f1845;
            if ((i3 == 7 || i3 == 0) && lowerCase2.indexOf(C0164.m3497(2687, 5, 61)) > -1) {
                this.f3543 = str2;
                m5789(str2);
                return;
            }
            int i4 = this.f1845;
            if ((i4 == 7 || i4 == 1) && lowerCase2.indexOf(C0164.m3497(2692, 6, 98)) > -1) {
                this.f3543 = str2;
                this.f3548.m3280(str2);
                return;
            }
            int i5 = this.f1845;
            if ((i5 == 7 || i5 == 4) && lowerCase2.indexOf(C0164.m3497(2698, 4, 35)) > -1) {
                this.f3543 = str2;
                m5789(str2);
                return;
            }
            int i6 = this.f1845;
            if ((i6 == 7 || i6 == 5) && lowerCase2.indexOf(C0164.m3497(2702, 9, 0)) > -1) {
                this.f3543 = str2;
                m5789(str2);
                return;
            } else {
                if (this.f3554 && this.f1845 == 5 && C0259.m3856(this.f3543) && lowerCase2.indexOf(C0164.m3497(2711, 4, 11)) > -1) {
                    this.f3543 = str2;
                    if (this.f3607.toLowerCase().startsWith(C0164.m3497(2715, 9, 73))) {
                        this.f3607 = "";
                    }
                    m5789(this.f3543);
                    return;
                }
                return;
            }
        }
        if (lowerCase.startsWith(C0164.m3497(2724, 18, 62))) {
            int i7 = this.f3565.f1639;
            String lowerCase3 = str2.toLowerCase();
            if ((i7 == 6 || i7 == 0) && lowerCase3.indexOf(C0164.m3497(2742, 5, 110)) > -1) {
                this.f3537 = str2;
                m5789(str2);
                return;
            }
            if ((i7 == 6 || i7 == 1) && lowerCase3.indexOf(C0164.m3497(2747, 6, 113)) > -1) {
                this.f3537 = str2;
                this.f3582.m3280(str2);
                return;
            } else {
                if (i7 == 6 || i7 == 4) {
                    if (lowerCase3.indexOf(C0164.m3497(2753, 4, 82)) > -1 || lowerCase3.indexOf(C0164.m3497(2757, 9, 33)) > -1) {
                        this.f3537 = str2;
                        m5789(str2);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (this.f3608 && lowerCase.startsWith(C0164.m3497(2766, 16, 75))) {
            String lowerCase4 = str2.toLowerCase();
            if (lowerCase4.indexOf(C0164.m3497(2782, 4, 48)) > -1) {
                this.f3534.m4002(C0164.m3497(2786, 4, 93));
                return;
            } else {
                if (lowerCase4.indexOf(C0164.m3497(2790, 7, 41)) > -1) {
                    this.f3534.m4002(C0164.m3497(2797, 7, 8));
                    return;
                }
                return;
            }
        }
        if (lowerCase.startsWith(C0164.m3497(2804, 14, 19)) && this.f3588 == 0) {
            try {
                this.f3612 = m5830(str2.trim(), 10);
                this.f1840[1].f2567 = this.f3612;
                this.f3588 = 1;
                return;
            } catch (C0414 e) {
                mo3406(e);
                try {
                    m3380(false);
                } catch (C0414 unused2) {
                }
                m4312((Exception) e);
                return;
            }
        }
        if (lowerCase.startsWith(C0164.m3497(2818, 17, 50))) {
            if (C0259.m3872(str2.trim(), C0164.m3497(2835, 7, 24))) {
                this.f3588 = 2;
                return;
            }
            return;
        }
        if (lowerCase.startsWith(C0164.m3497(2842, 12, 33))) {
            int iIndexOf = str2.indexOf(";");
            if (iIndexOf == -1) {
                iIndexOf = str2.length();
            }
            this.f3603 = str2.substring(0, iIndexOf);
            return;
        }
        if (!lowerCase.startsWith(C0164.m3497(2854, 10, 2)) || (c0363M4427 = C0363.m4427(str2)) == null) {
            return;
        }
        while (true) {
            if (i2 >= this.f3550.size()) {
                i2 = -1;
                break;
            } else if (c0363M4427.equals(this.f3550.elementAt(i2))) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1) {
            this.f3550.setElementAt(c0363M4427, i2);
        } else if (this.f3616 == -1 || this.f3550.size() < this.f3616) {
            this.f3550.addElement(c0363M4427);
        }
        String str3 = c0363M4427.f1905;
        String str4 = c0363M4427.f1906;
        String str5 = c0363M4427.f1904;
        String str6 = c0363M4427.f1909;
        String str7 = c0363M4427.f1908;
        boolean z = c0363M4427.f1910;
        InterfaceC0314 interfaceC0314 = this.f3580;
        if (interfaceC0314 == null || this.f1722 != null) {
            return;
        }
        interfaceC0314.m4296(str3, str4, str5, str6, str7, z);
    }

    public void m5833(int i, Object obj) {
        if (i == 0) {
            Vector vector = (Vector) obj;
            String str = (String) vector.get(0);
            String str2 = (String) vector.get(1);
            byte[] bArrM3883 = C0259.m3883(str + ":" + str2);
            this.f3595.m4167(bArrM3883).m4180(C0320.f1716);
            if (this.f3596 >= 3) {
                mo4875(C0259.m3853(bArrM3883), f3519);
            }
            m5777(str, str2);
            return;
        }
        if (i == 1) {
            mo5044(C0164.m3497(2935, 10, 20) + this.f3618, f3523);
            int i2 = Integer.parseInt(m5772(this.f3618).trim());
            this.f3530 = (i2 == 401 || i2 == 407) && !this.f3572;
            int i3 = this.f3588;
            if ((i3 == 1 && this.f3612 == 0) || i2 == 204 || i2 == 304 || i2 == 101) {
                if (i3 == 1 && this.f3612 == 0 && this.f3611) {
                    m5809(1);
                }
                this.f3581 = 3;
            }
            if (this.f3584.length() == 0) {
                if ((i2 == 200 || i2 == 206 || this.f3598.length() != 0) ? m4403() : false) {
                    this.f3602 = 2;
                    if (this.f1846.length() != 0) {
                        try {
                            m4404(m5774());
                        } catch (C0414 e) {
                            m4312((Exception) e);
                            mo3406(e);
                        }
                    }
                } else {
                    this.f3602 = 1;
                }
                m5809(1);
                return;
            }
            return;
        }
        if (i != 2) {
            if (i == 3) {
                this.f3581 = 4;
                mo5044(C0164.m3497(2945, 17, 118), f3523);
                m5771(C0164.m3497(2962, 9, 72) + this.f3618 + ", " + m5768().length + C0164.m3497(2971, 18, 41));
                m5832(1);
                return;
            }
            return;
        }
        byte[] bArrM4182 = (byte[]) obj;
        if (this.f3584.length() == 0) {
            int length = bArrM4182.length;
            int length2 = bArrM4182.length;
            C0279 c0279 = this.f3534;
            if (c0279.f1410 != null) {
                c0279.m4005(bArrM4182, 0, bArrM4182.length);
                C0301 c0301 = this.f3534.f1405;
                byte[] bArr = c0301.f1616;
                int i4 = c0301.f1615;
                bArrM4182 = (this.f361 || bArr.length == i4) ? bArr : c0301.m4182();
                length2 = i4;
            }
            if (this.f3596 >= 3) {
                mo4875(C0259.m3893(bArrM4182, length2), f3514);
            }
            this.f3573 += (long) length;
            long j = this.f3605;
            if (this.f3534.f1410 != null && length2 > 0) {
                length = length2;
            }
            this.f3605 = j + ((long) length);
            int i5 = this.f3602;
            if (i5 == 1) {
                long j2 = this.f3593;
                int iMin = j2 > 0 ? Math.min(length2, (int) (j2 - ((long) this.f3544.f1615))) : length2;
                if (iMin > 0) {
                    this.f3544.m4168(bArrM4182, 0, iMin);
                }
                if (this.f3530 || length2 <= 0) {
                    return;
                }
                mo4406(1, this.f3573, bArrM4182);
                return;
            }
            if (i5 == 2) {
                try {
                    m4409(bArrM4182, 0, length2, C0320.f1706);
                    if (this.f3530 || length2 <= 0) {
                        return;
                    }
                    mo4406(1, this.f3573, C0320.f1706);
                    return;
                } catch (C0414 e2) {
                    this.f3602 = 0;
                    m4312((Exception) e2);
                    mo3406(e2);
                    return;
                }
            }
            return;
        }
        this.f3573 += (long) bArrM4182.length;
        this.f3605 += (long) bArrM4182.length;
    }

    @Override
    public void mo3311(byte[] bArr) {
        try {
            if (this.f3596 >= 1) {
                mo4950(m5827(bArr), f3520);
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public void mo3309(int i, String str) {
        InterfaceC0314 interfaceC0314 = this.f3580;
        if (interfaceC0314 != null) {
            interfaceC0314.m4289(i, str);
        }
    }

    public final boolean m5837(boolean[] zArr) throws C0414 {
        int i;
        boolean z;
        if (this.f3543.length() != 0 || this.f3537.length() != 0) {
            boolean z2 = this.f3543.length() == 0;
            String lowerCase = (z2 ? this.f3537 : this.f3543).toLowerCase();
            if (z2) {
                i = this.f3565.f1639;
            } else {
                i = this.f1845;
            }
            if (i != 1) {
                if ((i == 4 || i == 5) && (lowerCase.startsWith(C0164.m3497(3180, 4, 76)) || lowerCase.startsWith(C0164.m3497(3184, 9, 36)))) {
                    if (z2) {
                        if (this.f3565.f1643.length() == 0 || this.f3586.length() != 0) {
                            m4312((Exception) null);
                            z = true;
                        } else {
                            z = false;
                        }
                        C0626 c0626M5485 = C0558.m5485(this.f3539, C0164.m3497(3193, 16, 70));
                        zArr[0] = c0626M5485 != null && C0259.m3872(c0626M5485.f3460, C0164.m3497(3209, 5, 78));
                        return z;
                    }
                    if (this.f3607.length() == 0 || this.f3586.length() != 0) {
                        m4312((Exception) null);
                        zArr[0] = false;
                        return true;
                    }
                }
            } else if (lowerCase.startsWith(C0164.m3497(3174, 6, 16)) && this.f3577 == 0) {
                m4312((Exception) null);
                return true;
            }
        }
        return false;
    }

    public final void m5835(String str, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, int[] iArr, boolean z) {
        boolean[] zArr;
        String[] strArr6;
        String strSubstring;
        int iIndexOf;
        int iIndexOf2;
        int iIndexOf3;
        int iIndexOf4;
        boolean z2;
        int iIndexOf5;
        String strSubstring2;
        int iIndexOf6;
        boolean z3;
        String strSubstring3;
        String strSubstring4 = str;
        boolean[] zArr2 = {false};
        String[] strArr7 = {""};
        boolean z4 = this.f3606;
        boolean z5 = this.f3571;
        boolean z6 = this.f3559;
        String str2 = this.f3600;
        String str3 = this.f3551;
        String strM4309 = m4309();
        C0619 c0619 = this.f3546;
        int iIndexOf7 = strSubstring4.indexOf("[");
        if (iIndexOf7 > -1) {
            String strTrim = strSubstring4.substring(0, iIndexOf7).trim();
            zArr = zArr2;
            strArr6 = strArr7;
            if (strTrim.endsWith(C0642.m5852(349, 3, 37)) || strTrim.length() == 0 || strTrim.endsWith("@")) {
                int iIndexOf8 = strSubstring4.indexOf("]", iIndexOf7) + 1;
                strSubstring = strSubstring4.substring(iIndexOf7, iIndexOf8);
                strSubstring4 = strSubstring4.substring(0, iIndexOf7) + strSubstring4.substring(iIndexOf8);
            }
            iIndexOf = strSubstring4.indexOf(CallerData.NA);
            if (iIndexOf > -1) {
                strArr6[0] = strSubstring4.substring(iIndexOf + 1);
                strSubstring4 = strSubstring4.substring(0, iIndexOf);
            }
            iIndexOf2 = strSubstring4.indexOf(C0642.m5852(352, 3, 74));
            z2 = false;
            if (iIndexOf2 > -1) {
                strSubstring3 = strSubstring4.substring(0, iIndexOf2);
                strArr[0] = strSubstring3;
                if (strSubstring3.equalsIgnoreCase(str2)) {
                    iArr[0] = 80;
                } else if (strSubstring3.equalsIgnoreCase(str3)) {
                    iArr[0] = 443;
                }
                strSubstring4 = strSubstring4.substring(iIndexOf2 + 3);
                strArr3[0] = "";
            }
            if (iIndexOf2 >= 0 && z) {
                if (strSubstring4.charAt(0) == '/') {
                    strArr3[0] = strSubstring4;
                } else {
                    if (strSubstring4.charAt(0) == '.' && strSubstring4.charAt(1) == '/') {
                        strSubstring4 = strSubstring4.substring(2);
                    }
                    int length = strArr3[0].length();
                    for (char c = 0; length > 0 && strArr3[c].charAt(length - 1) != '/'; c = 0) {
                        length--;
                    }
                    if (length == 0) {
                        z2 = false;
                        strArr3[0] = C0663.m5880("/", strSubstring4);
                    } else {
                        z2 = false;
                        strArr3[0] = strArr3[0].substring(0, length) + strSubstring4;
                    }
                }
            } else {
                iIndexOf3 = strSubstring4.indexOf("/");
                if (iIndexOf3 > -1) {
                    strArr3[0] = strSubstring4.substring(iIndexOf3);
                    strSubstring4 = strSubstring4.substring(0, iIndexOf3);
                }
                iIndexOf4 = strSubstring4.indexOf(":");
                if (iIndexOf4 > -1 && strSubstring4.indexOf("@", iIndexOf4) > -1) {
                    iIndexOf4 = strSubstring4.indexOf(":", iIndexOf4 + 1);
                }
                if (iIndexOf4 > -1) {
                    z2 = false;
                    iArr[0] = Integer.parseInt(strSubstring4.substring(iIndexOf4 + 1).trim());
                    strSubstring4 = strSubstring4.substring(0, iIndexOf4);
                } else {
                    z2 = false;
                }
                strArr2[z2 ? 1 : 0] = strSubstring4;
                iIndexOf5 = strSubstring4.indexOf("@");
                if (iIndexOf5 > -1) {
                    strArr2[z2 ? 1 : 0] = strSubstring4.substring(iIndexOf5 + 1);
                    strSubstring2 = strSubstring4.substring(z2 ? 1 : 0, iIndexOf5);
                    iIndexOf6 = strSubstring2.indexOf(":");
                    if (iIndexOf6 > -1) {
                        strArr5[z2 ? 1 : 0] = strSubstring2.substring(iIndexOf6 + 1);
                        strSubstring2 = strSubstring2.substring(z2 ? 1 : 0, iIndexOf6);
                    }
                    strArr4[z2 ? 1 : 0] = strSubstring2;
                }
            }
            if (strSubstring != null) {
                strArr2[z2 ? 1 : 0] = strSubstring;
                zArr[z2 ? 1 : 0] = true;
            } else {
                zArr[z2 ? 1 : 0] = z2;
            }
            if (!z) {
                z5 = z6;
            }
            if (strArr3[z2 ? 1 : 0].length() == 0) {
                strArr3[z2 ? 1 : 0] = "/";
            }
            if (z5) {
                if (strArr3[z2 ? 1 : 0].length() > 0) {
                    strArr3[z2 ? 1 : 0] = C0259.m3891(c0619, strArr3[z2 ? 1 : 0], z2, strM4309);
                }
                if (strArr6[z2 ? 1 : 0].length() > 0 || !z4) {
                    z3 = true;
                } else {
                    z3 = true;
                    strArr6[z2 ? 1 : 0] = C0259.m3891(c0619, strArr6[z2 ? 1 : 0], true, strM4309);
                }
            } else {
                z3 = true;
            }
            if (zArr[z2 ? 1 : 0]) {
                this.f388.f3014 = z3;
            }
            if (strArr6[z2 ? 1 : 0].length() > 0) {
                strArr3[z2 ? 1 : 0] = strArr3[z2 ? 1 : 0] + CallerData.NA + strArr6[z2 ? 1 : 0];
            }
        }
        zArr = zArr2;
        strArr6 = strArr7;
        strSubstring = null;
        iIndexOf = strSubstring4.indexOf(CallerData.NA);
        if (iIndexOf > -1) {
            strArr6[0] = strSubstring4.substring(iIndexOf + 1);
            strSubstring4 = strSubstring4.substring(0, iIndexOf);
        }
        iIndexOf2 = strSubstring4.indexOf(C0642.m5852(352, 3, 74));
        z2 = false;
        if (iIndexOf2 > -1) {
            strSubstring3 = strSubstring4.substring(0, iIndexOf2);
            strArr[0] = strSubstring3;
            if (strSubstring3.equalsIgnoreCase(str2)) {
                iArr[0] = 80;
            } else if (strSubstring3.equalsIgnoreCase(str3)) {
                iArr[0] = 443;
            }
            strSubstring4 = strSubstring4.substring(iIndexOf2 + 3);
            strArr3[0] = "";
        }
        if (iIndexOf2 >= 0) {
            iIndexOf3 = strSubstring4.indexOf("/");
            if (iIndexOf3 > -1) {
                strArr3[0] = strSubstring4.substring(iIndexOf3);
                strSubstring4 = strSubstring4.substring(0, iIndexOf3);
            }
            iIndexOf4 = strSubstring4.indexOf(":");
            if (iIndexOf4 > -1) {
                iIndexOf4 = strSubstring4.indexOf(":", iIndexOf4 + 1);
            }
            if (iIndexOf4 > -1) {
                z2 = false;
                iArr[0] = Integer.parseInt(strSubstring4.substring(iIndexOf4 + 1).trim());
                strSubstring4 = strSubstring4.substring(0, iIndexOf4);
            } else {
                z2 = false;
            }
            strArr2[z2 ? 1 : 0] = strSubstring4;
            iIndexOf5 = strSubstring4.indexOf("@");
            if (iIndexOf5 > -1) {
                strArr2[z2 ? 1 : 0] = strSubstring4.substring(iIndexOf5 + 1);
                strSubstring2 = strSubstring4.substring(z2 ? 1 : 0, iIndexOf5);
                iIndexOf6 = strSubstring2.indexOf(":");
                if (iIndexOf6 > -1) {
                    strArr5[z2 ? 1 : 0] = strSubstring2.substring(iIndexOf6 + 1);
                    strSubstring2 = strSubstring2.substring(z2 ? 1 : 0, iIndexOf6);
                }
                strArr4[z2 ? 1 : 0] = strSubstring2;
            }
        } else {
            iIndexOf3 = strSubstring4.indexOf("/");
            if (iIndexOf3 > -1) {
                strArr3[0] = strSubstring4.substring(iIndexOf3);
                strSubstring4 = strSubstring4.substring(0, iIndexOf3);
            }
            iIndexOf4 = strSubstring4.indexOf(":");
            if (iIndexOf4 > -1) {
                iIndexOf4 = strSubstring4.indexOf(":", iIndexOf4 + 1);
            }
            if (iIndexOf4 > -1) {
                z2 = false;
                iArr[0] = Integer.parseInt(strSubstring4.substring(iIndexOf4 + 1).trim());
                strSubstring4 = strSubstring4.substring(0, iIndexOf4);
            } else {
                z2 = false;
            }
            strArr2[z2 ? 1 : 0] = strSubstring4;
            iIndexOf5 = strSubstring4.indexOf("@");
            if (iIndexOf5 > -1) {
                strArr2[z2 ? 1 : 0] = strSubstring4.substring(iIndexOf5 + 1);
                strSubstring2 = strSubstring4.substring(z2 ? 1 : 0, iIndexOf5);
                iIndexOf6 = strSubstring2.indexOf(":");
                if (iIndexOf6 > -1) {
                    strArr5[z2 ? 1 : 0] = strSubstring2.substring(iIndexOf6 + 1);
                    strSubstring2 = strSubstring2.substring(z2 ? 1 : 0, iIndexOf6);
                }
                strArr4[z2 ? 1 : 0] = strSubstring2;
            }
        }
        if (strSubstring != null) {
            strArr2[z2 ? 1 : 0] = strSubstring;
            zArr[z2 ? 1 : 0] = true;
        } else {
            zArr[z2 ? 1 : 0] = z2;
        }
        if (!z) {
            z5 = z6;
        }
        if (strArr3[z2 ? 1 : 0].length() == 0) {
            strArr3[z2 ? 1 : 0] = "/";
        }
        if (z5) {
            z3 = true;
        } else {
            if (strArr3[z2 ? 1 : 0].length() > 0) {
                strArr3[z2 ? 1 : 0] = C0259.m3891(c0619, strArr3[z2 ? 1 : 0], z2, strM4309);
            }
            if (strArr6[z2 ? 1 : 0].length() > 0) {
                z3 = true;
            } else {
                z3 = true;
            }
        }
        if (zArr[z2 ? 1 : 0]) {
            this.f388.f3014 = z3;
        }
        if (strArr6[z2 ? 1 : 0].length() > 0) {
            strArr3[z2 ? 1 : 0] = strArr3[z2 ? 1 : 0] + CallerData.NA + strArr6[z2 ? 1 : 0];
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        if (c0440.m4813(C0164.m3497(8516, 21, 98))) {
            if (c0440.m4811()) {
                return C0663.m5891("").append(m5765()).toString();
            }
            m5806(c0440.m4809());
        } else if (c0440.m4813(C0164.m3497(8537, 11, 70))) {
            if (c0440.m4811()) {
                return m5802();
            }
            m5823(c0440.m4808());
        } else if (c0440.m4813(C0164.m3497(8548, 18, 88))) {
            if (c0440.m4811()) {
                return C0663.m5891("").append(m5801()).toString();
            }
            m5797(c0440.m4809());
        } else if (!c0440.m4813(C0164.m3497(8566, 25, 121))) {
            if (c0440.m4813(C0164.m3497(8591, 20, 60))) {
                if (c0440.m4811()) {
                    return C0663.m5891("").append(m5829()).toString();
                }
                m5788(c0440.m4809());
            } else if (c0440.m4813(C0164.m3497(8611, 9, 22))) {
                if (c0440.m4811()) {
                    return m5814();
                }
                m5800(c0440.m4808());
            } else if (c0440.m4813(C0164.m3497(8620, 13, 123))) {
                if (c0440.m4811()) {
                    return m5822();
                }
                m5761(c0440.m4808());
            } else if (c0440.m4813(C0164.m3497(8633, 19, 63))) {
                if (c0440.m4811()) {
                    return m5775();
                }
                m5807(c0440.m4808());
            } else if (!c0440.m4813(C0164.m3497(8652, 20, 8)) && !c0440.m4813(C0164.m3497(8672, 18, 127))) {
                if (c0440.m4813(C0164.m3497(8690, 15, 80)) && c0440.m4811()) {
                    return C0259.m3882(m5768());
                }
                if (c0440.m4813(C0164.m3497(8705, 20, 29)) && c0440.m4811()) {
                    m5803();
                } else {
                    if (c0440.m4813(C0164.m3497(8725, 18, 64)) && c0440.m4811()) {
                        return m5790();
                    }
                    if (c0440.m4813(C0164.m3497(8743, 10, 88)) && c0440.m4811()) {
                        return m5794();
                    }
                    if (c0440.m4813(C0164.m3497(8753, 18, 4))) {
                        if (c0440.m4811()) {
                            return C0663.m5891("").append(m5784()).toString();
                        }
                        m5820(C0259.m3872(c0440.m4807(), "On"));
                    } else {
                        if (c0440.m4813(C0164.m3497(8771, 11, 32)) && c0440.m4811()) {
                            byte[] bArr = this.f3619;
                            return bArr == null ? "" : m5762(C0259.m3882(bArr), this.f3570);
                        }
                        if (c0440.m4813(C0164.m3497(8782, 18, 50))) {
                            if (c0440.m4811()) {
                                return this.f3570;
                            }
                            this.f3570 = c0440.m4807();
                        } else {
                            if (c0440.m4813(C0164.m3497(8800, 19, 58)) && c0440.m4811()) {
                                return m5824();
                            }
                            if (c0440.m4813(C0164.m3497(8819, 9, 37))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(mo3368()).toString();
                                }
                                mo3319(c0440.m4809());
                            } else if (c0440.m4813(C0164.m3497(8828, 15, 44))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3565.m4191()).toString();
                                }
                                this.f3565.m4212(c0440.m4805());
                            } else if (c0440.m4813(C0164.m3497(8843, 18, 48))) {
                                if (c0440.m4811()) {
                                    return this.f3565.m4187();
                                }
                                this.f3565.m4213(c0440.m4808());
                            } else if (c0440.m4813(C0164.m3497(8861, 13, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY))) {
                                if (c0440.m4811()) {
                                    return this.f3565.m4199();
                                }
                                this.f3565.m4189(c0440.m4808());
                            } else if (c0440.m4813(C0164.m3497(8874, 9, 70))) {
                                if (c0440.m4811()) {
                                    return this.f3565.m4202();
                                }
                                this.f3565.m4210(c0440.m4808());
                            } else if (c0440.m4813(C0164.m3497(8883, 11, 78))) {
                                if (c0440.m4811()) {
                                    return this.f3565.m4198();
                                }
                                this.f3565.m4197(c0440.m4808());
                            } else if (c0440.m4813(C0164.m3497(8894, 9, 65))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3565.m4207()).toString();
                                }
                                this.f3565.m4204(c0440.m4805());
                            } else if (c0440.m4813(C0164.m3497(8903, 8, 85))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3565.m4208()).toString();
                                }
                                this.f3565.m4192(c0440.m4805());
                            } else if (c0440.m4813(C0164.m3497(8911, 16, 13))) {
                                if (c0440.m4811()) {
                                    return this.f3565.m4195();
                                }
                                this.f3565.m4188(c0440.m4808());
                            } else if (c0440.m4813(C0164.m3497(8927, 26, 60))) {
                                if (c0440.m4811()) {
                                    return this.f3565.m4209();
                                }
                                this.f3565.m4193(c0440.m4807());
                            } else if (c0440.m4813(C0164.m3497(8953, 18, 85))) {
                                if (c0440.m4811()) {
                                    return this.f3565.m4194();
                                }
                                this.f3565.m4201(c0440.m4807());
                            } else if (c0440.m4813(C0164.m3497(8971, 16, 40))) {
                                if (c0440.m4811()) {
                                    return this.f3565.m4196();
                                }
                                this.f3565.m4205(c0440.m4807());
                            } else if (c0440.m4813(C0164.m3497(8987, 25, 61))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3565.m4190()).toString();
                                }
                                this.f3565.m4206(c0440.m4809());
                            } else if (c0440.m4813(C0164.m3497(9012, 15, 59))) {
                                if (c0440.m4811()) {
                                    return m5782();
                                }
                                m5785(c0440.m4807());
                            } else if (c0440.m4813(C0164.m3497(9027, 9, 66))) {
                                if (c0440.m4811()) {
                                    return m4401();
                                }
                                m4405(c0440.m4807());
                            } else if (c0440.m4813(C0164.m3497(9036, 14, 62))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3616).toString();
                                }
                                this.f3616 = c0440.m4805();
                            } else if (c0440.m4813(C0164.m3497(9050, 10, 88))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3540).toString();
                                }
                                this.f3540 = c0440.m4805();
                            } else if (c0440.m4813(C0164.m3497(9060, 14, 51))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3601).toString();
                                }
                                this.f3601 = c0440.m4808();
                            } else if (c0440.m4813(C0164.m3497(9074, 9, 24))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(m5786()).toString();
                                }
                                m5826(c0440.m4809());
                            } else if (c0440.m4813(C0164.m3497(9083, 17, 6))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3606).toString();
                                }
                                this.f3606 = c0440.m4809();
                            } else if (c0440.m4813(C0164.m3497(9100, 22, 78))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3571).toString();
                                }
                                this.f3571 = c0440.m4809();
                            } else if (c0440.m4813(C0164.m3497(9122, 16, 35))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3621).toString();
                                }
                                this.f3621 = c0440.m4809();
                            } else if (c0440.m4813(C0164.m3497(9138, 11, 40))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3556).toString();
                                }
                                this.f3556 = c0440.m4809();
                            } else if (c0440.m4813(C0164.m3497(9149, 23, 81))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(!this.f3558).toString();
                                }
                                this.f3558 = !c0440.m4809();
                            } else if (c0440.m4813(C0164.m3497(9172, 15, 119))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3558).toString();
                                }
                                this.f3558 = c0440.m4809();
                            } else if (c0440.m4813(C0164.m3497(9187, 6, 99))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3579).toString();
                                }
                                this.f3579 = c0440.m4809();
                            } else if (c0440.m4813(C0164.m3497(9193, 22, 24))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3532).toString();
                                }
                                this.f3532 = c0440.m4809();
                            } else if (c0440.m4813(C0164.m3497(9215, 27, 93))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3528).toString();
                                }
                                this.f3528 = c0440.m4809();
                            } else if (c0440.m4813(C0164.m3497(9242, 15, 28))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(m5781()).toString();
                                }
                                m5773(c0440.m4805());
                            } else if (c0440.m4813(C0164.m3497(9257, 19, 99))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3620).toString();
                                }
                                this.f3620 = c0440.m4805();
                            } else if (c0440.m4813(C0164.m3497(9276, 11, 123))) {
                                if (c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3542).toString();
                                }
                                this.f3542 = c0440.m4808();
                            } else {
                                if (c0440.m4813(C0164.m3497(9287, 16, 123)) && c0440.m4811()) {
                                    return C0663.m5891("").append(this.f3573).toString();
                                }
                                if (c0440.m4813(C0164.m3497(9303, 9, 99))) {
                                    if (c0440.m4811()) {
                                        return C0663.m5891("").append(this.f3560).toString();
                                    }
                                    int iM4805 = c0440.m4805();
                                    this.f3560 = iM4805;
                                    this.f3587.m5742(iM4805);
                                } else if (c0440.m4813(C0164.m3497(9312, 25, 92))) {
                                    if (c0440.m4811()) {
                                        return C0663.m5891("").append(this.f3589).toString();
                                    }
                                    this.f3589 = c0440.m4809();
                                } else if (c0440.m4813(C0164.m3497(9337, 28, 8))) {
                                    if (c0440.m4811()) {
                                        return C0663.m5891("").append(!this.f3535).toString();
                                    }
                                    this.f3535 = !c0440.m4809();
                                } else {
                                    if (c0440.m4813(C0164.m3497(9365, 18, 7))) {
                                        return (c0440.m4811() || !C0259.m3872(c0440.m4808(), C0164.m3497(9383, 8, 99))) ? m5828() : m5767();
                                    }
                                    if (c0440.m4813(C0164.m3497(9391, 12, 2))) {
                                        if (c0440.m4811()) {
                                            return C0663.m5891("").append(m5791()).toString();
                                        }
                                        m5776(c0440.m4808());
                                    } else if (c0440.m4813(C0164.m3497(9403, 14, 37))) {
                                        if (c0440.m4811()) {
                                            return C0663.m5891("").append(this.f3567).toString();
                                        }
                                        this.f3567 = c0440.m4809();
                                    } else if (c0440.m4813(C0164.m3497(9417, 13, 30)) && !c0440.m4811()) {
                                        m5805(2);
                                        m5761(C0164.m3497(9430, 10, 37) + c0440.m4807());
                                    } else {
                                        if (c0440.m4813(C0164.m3497(9440, 21, 76)) && c0440.m4811()) {
                                            return this.f3609;
                                        }
                                        if (c0440.m4813(C0164.m3497(9461, 8, 7))) {
                                            if (c0440.m4811()) {
                                                return C0663.m5891("").append(mo5257()).toString();
                                            }
                                            mo5266(c0440.m4805());
                                        } else if (c0440.m4813(C0164.m3497(9469, 17, 74))) {
                                            if (c0440.m4811()) {
                                                return C0663.m5891("").append(this.f3554).toString();
                                            }
                                            this.f3554 = c0440.m4809();
                                        } else if (c0440.m4813(C0164.m3497(9486, 17, 56))) {
                                            if (c0440.m4811()) {
                                                return C0663.m5891("").append(this.f3599).toString();
                                            }
                                            this.f3599 = c0440.m4809();
                                        } else if (c0440.m4813(C0164.m3497(9503, 27, 51))) {
                                            if (c0440.m4811()) {
                                                return this.f3587.m5741();
                                            }
                                            this.f3587.m5753(c0440.m4808());
                                        } else if (c0440.m4813(C0164.m3497(9530, 19, 77))) {
                                            if (c0440.m4811()) {
                                                return C0663.m5891("").append(this.f3583).toString();
                                            }
                                            this.f3583 = c0440.m4809();
                                        } else {
                                            if (c0440.m4813(C0164.m3497(9549, 18, 105))) {
                                                return this.f3585.mo3151(c0440);
                                            }
                                            if (c0440.m4813(C0164.m3497(9567, 23, 11))) {
                                                return this.f3585.mo3151(c0440);
                                            }
                                            if (c0440.m4813(C0164.m3497(9590, 14, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY))) {
                                                if (c0440.m4811()) {
                                                    return C0663.m5891("").append(this.f3585.m3763()).toString();
                                                }
                                                this.f3585.m3758(c0440.m4809());
                                            } else if (c0440.m4813(C0164.m3497(9604, 28, 113))) {
                                                if (c0440.m4811()) {
                                                    return this.f3585.m3760();
                                                }
                                                this.f3585.m3757(c0440.m4808());
                                            } else if (c0440.m4813(C0164.m3497(9632, 18, 75))) {
                                                if (c0440.m4811()) {
                                                    return this.f3585.m3778();
                                                }
                                                this.f3585.m3777(c0440.m4808());
                                            } else if (c0440.m4813(C0164.m3497(9650, 18, 80))) {
                                                if (c0440.m4811()) {
                                                    return this.f3585.m3752() + "";
                                                }
                                                this.f3585.m3764(c0440.m4805());
                                            } else if (!c0440.m4813(C0164.m3497(9668, 16, 3)) && !c0440.m4813(C0164.m3497(9684, 20, 116))) {
                                                if (c0440.m4813(C0164.m3497(9704, 15, 12))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3585.m3756() + "";
                                                    }
                                                    this.f3585.m3775(c0440.m4805());
                                                } else if (c0440.m4813(C0164.m3497(9719, 24, 57))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3585.m3746() + "";
                                                    }
                                                    this.f3585.m3751(c0440.m4809());
                                                } else if (c0440.m4813(C0164.m3497(9743, 25, 2))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3585.m3767() + "";
                                                    }
                                                    this.f3585.m3754(c0440.m4805());
                                                } else if (c0440.m4813(C0164.m3497(9768, 19, 84))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3585.m4304(C0164.m3497(9787, 11, 40));
                                                    }
                                                    this.f3585.m4304(C0164.m3497(9798, 12, 28) + c0440.m4808());
                                                } else if (c0440.m4813(C0164.m3497(9810, 18, 61))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3585.m4304(C0164.m3497(9828, 10, 22));
                                                    }
                                                    this.f3583 = true;
                                                    this.f3585.m3758(true);
                                                    this.f3585.m4304(C0164.m3497(9838, 11, 63) + c0440.m4809());
                                                } else if (c0440.m4813(C0164.m3497(9849, 28, 69))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3585.m4304(C0164.m3497(9877, 20, 121));
                                                    }
                                                    this.f3585.m4304(C0164.m3497(9897, 21, 16) + c0440.m4805());
                                                } else if (c0440.m4813(C0164.m3497(9918, 31, 21))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3585.m4304(C0164.m3497(9949, 23, WebSocketProtocol.PAYLOAD_SHORT));
                                                    }
                                                    this.f3585.m4304(C0164.m3497(9972, 24, 36) + c0440.m4808());
                                                } else if (c0440.m4813(C0164.m3497(9996, 31, 53))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3585.m4304(C0164.m3497(10027, 23, WebSocketProtocol.PAYLOAD_SHORT));
                                                    }
                                                    this.f3585.m4304(C0164.m3497(10050, 24, 28) + c0440.m4805());
                                                } else if (c0440.m4813(C0164.m3497(10074, 29, 71))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3585.m4304(C0164.m3497(10103, 21, 6));
                                                    }
                                                    this.f3585.m4304(C0164.m3497(10124, 22, 17) + c0440.m4808());
                                                } else if (c0440.m4813(C0164.m3497(10146, 15, WebSocketProtocol.PAYLOAD_SHORT))) {
                                                    if (c0440.m4811()) {
                                                        return this.f3566;
                                                    }
                                                    this.f3566 = c0440.m4807();
                                                } else if (c0440.m4813(C0164.m3497(10161, 7, 65))) {
                                                    if (c0440.m4811()) {
                                                        return C0663.m5891("").append(this.f3533).toString();
                                                    }
                                                    this.f3533 = c0440.m4809();
                                                } else if (c0440.m4813(C0164.m3497(10168, 18, 84))) {
                                                    if (c0440.m4811()) {
                                                        return C0663.m5891("").append(this.f3549).toString();
                                                    }
                                                    this.f3549 = c0440.m4809();
                                                } else if (c0440.m4813(C0164.m3497(10186, 30, 23))) {
                                                    if (c0440.m4811()) {
                                                        return C0663.m5891("").append(this.f3572).toString();
                                                    }
                                                    this.f3572 = c0440.m4809();
                                                } else if (c0440.m4813(C0164.m3497(10216, 23, 79))) {
                                                    if (c0440.m4811()) {
                                                        return C0663.m5891("").append(this.f3611).toString();
                                                    }
                                                    this.f3611 = c0440.m4809();
                                                } else if (c0440.m4813(C0164.m3497(10239, 18, 60))) {
                                                    if (c0440.m4811()) {
                                                        return C0663.m5891("").append(this.f3534.m4000()).toString();
                                                    }
                                                    this.f3534.m3999(c0440.m4809());
                                                } else if (c0440.m4813(C0164.m3497(10257, 19, 70))) {
                                                    if (c0440.m4811()) {
                                                        return C0663.m5891("").append(this.f3534.m4004()).toString();
                                                    }
                                                    this.f3534.m4003(c0440.m4809());
                                                } else if (c0440.m4813(C0164.m3497(10276, 22, 9))) {
                                                    if (c0440.m4811()) {
                                                        return C0663.m5891("").append(this.f3536).toString();
                                                    }
                                                    this.f3536 = c0440.m4809();
                                                } else {
                                                    if (c0440.m4813(C0164.m3497(10298, 12, 65))) {
                                                        if (!c0440.m4811()) {
                                                            this.f3544.m4165(c0440.m4805());
                                                        }
                                                        return super.mo3151(c0440);
                                                    }
                                                    if (c0440.m4813(C0164.m3497(10310, 20, 97))) {
                                                        if (c0440.m4811()) {
                                                            return C0663.m5891("").append(this.f3587.m5739()).toString();
                                                        }
                                                        this.f3587.m5747(c0440.m4805());
                                                    } else if (c0440.m4813(C0164.m3497(10330, 11, 101))) {
                                                        if (c0440.m4811()) {
                                                            return C0663.m5891("").append(this.f3557).toString();
                                                        }
                                                        this.f3557 = c0440.m4809();
                                                    } else if (c0440.m4813(C0164.m3497(10341, 22, 54))) {
                                                        if (c0440.m4811()) {
                                                            return C0663.m5891("").append(this.f3587.m5744()).toString();
                                                        }
                                                        this.f3587.m5751(c0440.m4805());
                                                    } else if (c0440.m4813(C0164.m3497(10363, 19, 75))) {
                                                        if (c0440.m4811()) {
                                                            return C0663.m5891("").append(this.f3569).toString();
                                                        }
                                                        this.f3569 = c0440.m4809();
                                                    } else {
                                                        return super.mo3151(c0440);
                                                    }
                                                }
                                            } else {
                                                if (c0440.m4811()) {
                                                    return this.f3585.m3747();
                                                }
                                                this.f3585.m3753(c0440.m4808());
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                if (c0440.m4811()) {
                    return C0663.m5891("").append(this.f3593).toString();
                }
                this.f3593 = c0440.m4806();
            }
        }
        return "";
    }

    @Override
    public void mo3388(String str, int i, String str2, String str3) {
        InterfaceC0314 interfaceC0314 = this.f3580;
        if (interfaceC0314 != null) {
            interfaceC0314.m4294(str, i, str2);
        }
    }

    @Override
    public void mo3385(int i, byte[] bArr) {
        C0301 c0301 = this.f3545;
        if (c0301 != null) {
            int length = bArr.length;
            if (c0301.f1615 == 0) {
                c0301.m4174(bArr, 0, length);
            } else {
                c0301.m4181(bArr, 0, length);
            }
        }
        this.f3605 += (long) i;
        super.mo3385(i, bArr);
    }

    public void m5832(int i) {
        InterfaceC0314 interfaceC0314 = this.f3580;
        if (interfaceC0314 != null) {
            interfaceC0314.m4293(i);
        }
    }
}
