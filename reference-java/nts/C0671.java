package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.classic.spi.CallerData;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.AbstractSocketAppender;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.android.gms.common.ConnectionResult;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyFactory;
import java.security.KeyStore;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Hashtable;
import java.util.Random;
import java.util.TimeZone;
import java.util.Vector;
import okhttp3.internal.ws.WebSocketProtocol;
import org.slf4j.Marker;

public class C0671 {

    public static final String f3689;

    public static final String f3690;

    public static final String f3691;

    public static final String f3692;

    public static final String f3693;

    public static final String f3694;

    public static final String f3695;

    public static final String f3696;

    public static final String f3697;

    public static final String f3698;

    public static Object f3699;

    public static Hashtable f3700;

    public static final String f3701;

    public static final String f3702;

    public static int f3703;

    public static final String f3705;

    public static C0571 f3706;

    public static final String f3707;

    public static final String f3708;

    public static C0571 f3709;

    public static final String f3710;

    public static final int[] f3711 = {128, 64, 32, 16, 8, 4, 2, 1};

    public static final String[] f3704 = {C0164.m3495(0, 18, 113), C0164.m3495(18, 18, 124), C0164.m3495(36, 14, 23), C0164.m3495(50, 15, 116), C0164.m3495(65, 13, 123), C0164.m3495(78, 19, 102), C0164.m3495(97, 11, 12), C0164.m3495(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 15, 19)};

    static {
        String strM3495 = C0164.m3495(123, 14, 90);
        f3692 = strM3495;
        String strM3496 = C0164.m3495(137, 17, 66);
        f3701 = strM3496;
        String strM3497 = C0164.m3495(154, 17, 46);
        f3689 = strM3497;
        String strM3498 = C0164.m3495(171, 5, 12);
        f3690 = strM3498;
        String strM3499 = C0164.m3495(SyslogConstants.LOG_LOCAL6, 20, 89);
        f3695 = strM3499;
        String string = C0663.m5891("(").append(C0164.m3495(196, 8, 48)).append(strM3498).append(C0164.m3495(204, 7, 71)).append(C0164.m3495(211, 48, 31)).append(strM3498).append("?\\").append(2).append(")").append(strM3496).append(C0164.m3495(259, 10, 119)).append(strM3498).append(C0164.m3495(269, 18, 57)).append(strM3495).append(C0164.m3495(287, 7, 35)).append(strM3495).append(C0164.m3495(294, 3, 84)).append(strM3496).append(C0164.m3495(297, 4, 50)).append(strM3499).append(strM3497).append(C0164.m3495(301, 3, 93)).append("(\\").append(2).append(strM3498).append(CallerData.NA).append(C0164.m3495(304, 5, 41)).append(3).append(strM3498).append("?\\").append(2).append(")").append(strM3496).toString();
        f3710 = string;
        String str = C0164.m3495(309, 69, 49) + strM3499 + C0164.m3495(378, 11, 66);
        f3693 = str;
        f3694 = C0164.m3495(389, 58, 73);
        f3698 = C0164.m3495(447, 19, 38);
        f3705 = C0164.m3495(466, 19, 80);
        f3707 = C0164.m3495(485, 19, 9);
        f3697 = C0164.m3495(TypedValues.PositionType.TYPE_PERCENT_HEIGHT, 7, 33);
        f3702 = C0164.m3495(FrameMetricsAggregator.EVERY_DURATION, 7, 113);
        f3708 = C0164.m3495(518, 11, 7);
        f3696 = C0164.m3495(529, 9, 99);
        f3709 = new C0571(string, 6);
        f3706 = new C0571(str, 6);
        f3700 = new Hashtable();
        f3703 = 0;
        f3691 = C0164.m3495(538, 114, 0);
        f3699 = new Object();
        f3700.put(C0458.f2611, ExifInterface.LONGITUDE_EAST);
        f3700.put(C0458.f2603, "CN");
        f3700.put(C0458.f2644, "C");
        f3700.put(C0458.f2667, "L");
        f3700.put(C0458.f2607, ExifInterface.LATITUDE_SOUTH);
        f3700.put(C0458.f2626, C0164.m3495(652, 6, 89));
        f3700.put(C0458.f2618, "O");
        f3700.put(C0458.f2630, "OU");
        f3700.put(C0458.f2657, ExifInterface.GPS_DIRECTION_TRUE);
        f3700.put(C0458.f2629, C0164.m3495(658, 10, 123));
        f3700.put(C0458.f2617, C0164.m3495(668, 5, 31));
        f3700.put(C0458.f2656, "SN");
        f3700.put(C0458.f2627, "G");
        f3700.put(C0458.f2622, "I");
        f3700.put(C0458.f2621, "DC");
        f3700.put(C0458.f2600, C0164.m3495(673, 3, 17));
        f3700.put(C0458.f2624, C0164.m3495(676, 12, 78));
    }

    public static String m5902(String str) throws C0537 {
        if (str.equals(C0458.f2661)) {
            return C0164.m3495(2122, 4, 112);
        }
        if (str.equals(C0458.f2664)) {
            return C0164.m3495(2126, 6, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
        }
        if (str.equals(C0458.f2659)) {
            return C0164.m3495(2132, 6, 106);
        }
        if (str.equals(C0458.f2647)) {
            return C0164.m3495(2138, 6, 7);
        }
        if (str.equals(C0458.f2634)) {
            return C0164.m3495(2144, 6, 24);
        }
        throw new C0537(C0164.m3495(2150, 17, 5));
    }

    public static KeyFactory m5905(String str) throws C0537 {
        try {
            return AbstractC0116.m3182() ? KeyFactory.getInstance(str, C0164.m3495(6794, 6, 57)) : KeyFactory.getInstance(str);
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }

    public static Object m5908(C0335 c0335) {
        int i;
        C0129 c0129 = (C0129) c0335.m4367();
        C0633 c0633 = (C0633) c0335.m4361();
        if (c0335.m4376().length() <= 0) {
            c0633 = null;
        }
        if (!c0335.m4374()) {
            c0129 = null;
        }
        if (c0129 == null && c0633 == null) {
            return null;
        }
        C0158 c0158 = new C0158();
        if (c0129 != null) {
            i = c0129.f252.f328;
            c0158.f486 = c0129.f254;
        } else {
            i = -1;
        }
        if (c0633 != null) {
            C0144 c0144 = c0633.f3480;
            if (i == -1) {
                i = c0144.f328;
            }
            c0158.f485 = c0633.f3481;
        }
        if (i == -1) {
            throw new C0414(280, C0164.m3495(917, 48, 62));
        }
        c0158.f488 = i;
        return c0158;
    }

    public static boolean m5914(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '/' && cCharAt != '+' && ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')))) {
                if (cCharAt == '=' && i + 1 == str.length()) {
                    return true;
                }
                return cCharAt == '=' && i + 2 == str.length() && str.charAt(i + 1) == '=';
            }
        }
        return true;
    }

    public static boolean m5915(String str) {
        int length = str.length();
        int iM5943 = m5943(str, 0);
        if (iM5943 >= length) {
            return false;
        }
        int i = 0;
        char cCharAt = ' ';
        while (true) {
            if (iM5943 < length) {
                cCharAt = str.charAt(iM5943);
                if (cCharAt == '/' || cCharAt == '+' || ((cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')))) {
                    iM5943++;
                    i++;
                }
            }
            if (iM5943 >= length) {
                break;
            }
            if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                if (cCharAt != '=') {
                    return false;
                }
                int i2 = iM5943 + 1;
                int i3 = i + 1;
                if (i2 < length && str.charAt(i2) == '=') {
                    iM5943 += 2;
                    i += 2;
                    break;
                }
                iM5943 = i2;
                i = i3;
                break;
            }
            boolean z = false;
            while (iM5943 < length && (cCharAt == ' ' || cCharAt == '\t' || cCharAt == '\r' || cCharAt == '\n')) {
                z = z || cCharAt == '\r' || cCharAt == '\n';
                iM5943++;
                cCharAt = str.charAt(iM5943);
            }
            if (iM5943 >= length) {
                break;
            }
            if (!z) {
                return false;
            }
        }
        return m5943(str, iM5943) >= length && i > 0 && i % 4 == 0;
    }

    public static byte[] m5917(byte[] bArr) {
        return !C0259.m3861(bArr) ? C0259.m3900(1, bArr, 0, bArr.length) : bArr;
    }

    public static String m5918(String str) {
        if (str.equals(C0458.f2636)) {
            return C0164.m3495(2673, 7, 100);
        }
        if (str.equals(C0458.f2612)) {
            return C0164.m3495(2680, 11, 51);
        }
        if (str.equals(C0458.f2654)) {
            return C0164.m3495(2691, 14, 1);
        }
        if (str.equals(C0458.f2604)) {
            return C0164.m3495(2705, 7, 118);
        }
        if (str.equals(C0458.f2661)) {
            return C0164.m3495(2712, 10, 3);
        }
        if (str.equals(C0458.f2634)) {
            return C0164.m3495(2722, 12, 48);
        }
        if (str.equals(C0458.f2664)) {
            return C0164.m3495(2734, 12, 112);
        }
        if (str.equals(C0458.f2659)) {
            return C0164.m3495(2746, 12, 125);
        }
        if (str.equals(C0458.f2647)) {
            return C0164.m3495(2758, 12, 75);
        }
        if (str.equals(C0458.f2646) || str.equals(C0458.f2658)) {
            return C0164.m3495(2770, 5, 48);
        }
        if (str.equals(C0164.m3495(2775, 21, 84))) {
            return C0164.m3495(2796, 10, 119);
        }
        if (str.equals(C0164.m3495(2806, 14, 104))) {
            return C0164.m3495(2820, 3, 106);
        }
        if (str.equals(C0164.m3495(2823, 16, 20))) {
            return C0164.m3495(2839, 4, 39);
        }
        if (str.equals(C0164.m3495(2843, 16, 90))) {
            return C0164.m3495(2859, 8, 14);
        }
        if (str.equals(C0164.m3495(2867, 16, 67))) {
            return C0164.m3495(2883, 11, 30);
        }
        if (str.equals(C0164.m3495(2894, 18, 30))) {
            return C0164.m3495(2912, 6, 123);
        }
        if (str.equals(C0164.m3495(2918, 18, 122))) {
            return C0164.m3495(2936, 6, 102);
        }
        if (str.equals(C0164.m3495(2942, 18, 44))) {
            return C0164.m3495(2960, 6, 54);
        }
        if (str.equals(C0164.m3495(2966, 18, 34))) {
            return C0164.m3495(2984, 6, 117);
        }
        if (str.equals(C0164.m3495(2990, 18, 18))) {
            return C0164.m3495(3008, 6, 94);
        }
        if (str.equals(C0164.m3495(3014, 18, 98))) {
            return C0164.m3495(3032, 6, SyslogConstants.LOG_CLOCK);
        }
        if (str.equals(C0164.m3495(3038, 18, 87))) {
            return C0164.m3495(3056, 6, 71);
        }
        if (str.equals(C0164.m3495(3062, 18, WebSocketProtocol.PAYLOAD_SHORT))) {
            return C0164.m3495(3080, 6, 71);
        }
        if (str.equals(C0164.m3495(3086, 18, 14))) {
            return C0164.m3495(3104, 6, 68);
        }
        if (str.equals(C0164.m3495(3110, 19, 55))) {
            return C0164.m3495(3129, 7, 15);
        }
        if (str.equals(C0164.m3495(3136, 19, 100))) {
            return C0164.m3495(3155, 7, 67);
        }
        if (str.equals(C0164.m3495(3162, 20, 98))) {
            return C0164.m3495(3182, 7, 31);
        }
        if (str.equals(C0164.m3495(3189, 20, 87))) {
            return C0164.m3495(3209, 7, 80);
        }
        if (str.equals(C0164.m3495(3216, 20, 118))) {
            return C0164.m3495(3236, 7, 2);
        }
        if (str.equals(C0164.m3495(3243, 20, 8))) {
            return C0164.m3495(3263, 7, 80);
        }
        if (str.equals(C0164.m3495(3270, 20, 10))) {
            return C0164.m3495(3290, 10, 52);
        }
        if (str.equals(C0164.m3495(3300, 20, 86))) {
            return C0164.m3495(3320, 10, 44);
        }
        if (str.equals(C0164.m3495(3330, 20, 0))) {
            return C0164.m3495(3350, 10, 0);
        }
        if (str.equals(C0164.m3495(3360, 20, 17))) {
            return C0164.m3495(3380, 11, 18);
        }
        if (str.equals(C0164.m3495(3391, 20, 86))) {
            return C0164.m3495(3411, 15, 62);
        }
        if (str.equals(C0164.m3495(3426, 21, 51))) {
            return C0164.m3495(3447, 13, SyslogConstants.LOG_CLOCK);
        }
        if (str.equals(C0164.m3495(3460, 21, WebSocketProtocol.PAYLOAD_SHORT))) {
            return C0164.m3495(3481, 13, 119);
        }
        if (str.equals(C0164.m3495(3494, 21, 85))) {
            return C0164.m3495(3515, 13, 62);
        }
        if (str.equals(C0164.m3495(3528, 21, 30))) {
            return C0164.m3495(3549, 13, 91);
        }
        if (str.equals(C0164.m3495(3562, 20, 28))) {
            return C0164.m3495(3582, 6, 36);
        }
        if (str.equals(C0164.m3495(3588, 20, 116))) {
            return C0164.m3495(3608, 8, 15);
        }
        if (str.equals(C0164.m3495(3616, 20, 56))) {
            return C0164.m3495(3636, 14, 92);
        }
        if (str.equals(C0164.m3495(3650, 20, 42))) {
            return C0164.m3495(3670, 17, 86);
        }
        if (str.equals(C0164.m3495(3687, 20, 9))) {
            return C0164.m3495(3707, 15, 97);
        }
        if (str.equals(C0164.m3495(3722, 20, 118))) {
            return C0164.m3495(3742, 16, 74);
        }
        if (str.equals(C0164.m3495(3758, 20, 10))) {
            return C0164.m3495(3778, 14, 118);
        }
        if (str.equals(C0164.m3495(3792, 20, 48))) {
            return C0164.m3495(3812, 17, 107);
        }
        if (str.equals(C0164.m3495(3829, 20, 8))) {
            return C0164.m3495(3849, 13, 61);
        }
        if (str.equals(C0164.m3495(3862, 20, 37))) {
            return C0164.m3495(3882, 16, 70);
        }
        if (str.equals(C0164.m3495(3898, 20, 39))) {
            return C0164.m3495(3918, 15, 106);
        }
        if (str.equals(C0164.m3495(3933, 20, 26))) {
            return C0164.m3495(3953, 17, 51);
        }
        if (str.equals(C0164.m3495(3970, 20, 38))) {
            return C0164.m3495(3990, 15, 53);
        }
        if (str.equals(C0164.m3495(4005, 20, 118))) {
            return C0164.m3495(4025, 15, 98);
        }
        if (str.equals(C0164.m3495(4040, 20, 51))) {
            return C0164.m3495(4060, 16, 69);
        }
        if (str.equals(C0164.m3495(4076, 20, 118))) {
            return C0164.m3495(4096, 16, 112);
        }
        if (str.equals(C0164.m3495(4112, 20, 92))) {
            return C0164.m3495(4132, 16, 105);
        }
        if (str.equals(C0164.m3495(4148, 21, 79))) {
            return C0164.m3495(4169, 21, 23);
        }
        if (str.equals(C0164.m3495(4190, 23, 42))) {
            return C0164.m3495(4213, 20, 38);
        }
        if (str.equals(C0164.m3495(4233, 18, 112))) {
            return C0164.m3495(4251, 10, 27);
        }
        if (str.equals(C0164.m3495(4261, 18, 27))) {
            return C0164.m3495(4279, 7, 63);
        }
        if (str.equals(C0164.m3495(4286, 18, 53))) {
            return C0164.m3495(4304, 16, 50);
        }
        if (str.equals(C0164.m3495(4320, 18, 51))) {
            return C0164.m3495(4338, 14, 51);
        }
        if (str.equals(C0164.m3495(4352, 13, 87))) {
            return C0164.m3495(4365, 9, 23);
        }
        if (str.equals(C0164.m3495(4374, 17, RNMBXStyleValue.InterpolationModeIdentity))) {
            return C0164.m3495(4391, 12, 34);
        }
        if (str.equals(C0164.m3495(4403, 13, RNMBXStyleValue.InterpolationModeIdentity))) {
            return C0164.m3495(4416, 4, 73);
        }
        if (str.equals(C0164.m3495(4420, 17, 85))) {
            return C0164.m3495(4437, 8, 74);
        }
        if (str.equals(C0164.m3495(4445, 17, 24))) {
            return C0164.m3495(4462, 14, 37);
        }
        if (str.equals(C0164.m3495(4476, 22, 54))) {
            return C0164.m3495(4498, 15, 122);
        }
        if (str.equals(C0164.m3495(4513, 3, 51))) {
            return "DS";
        }
        if (str.equals(C0164.m3495(4516, 5, 56))) {
            return C0164.m3495(4521, 5, 87);
        }
        if (str.equals(C0164.m3495(4526, 7, 78))) {
            return C0164.m3495(4533, 10, 13);
        }
        if (str.equals(C0164.m3495(4543, 7, 107))) {
            return C0164.m3495(4550, 10, 47);
        }
        if (str.equals(C0164.m3495(AbstractSocketAppender.DEFAULT_PORT, 7, 9))) {
            return C0164.m3495(4567, 10, 121);
        }
        if (str.equals(C0164.m3495(4577, 9, 127))) {
            return C0164.m3495(4586, 9, 106);
        }
        if (str.equals(C0164.m3495(4595, 6, 56))) {
            return C0164.m3495(4601, 3, 63);
        }
        if (str.equals(C0164.m3495(4604, 10, 37))) {
            return C0164.m3495(4614, 6, 123);
        }
        if (str.equals(C0164.m3495(4620, 12, 29))) {
            return C0164.m3495(4632, 13, 75);
        }
        if (str.equals(C0164.m3495(4645, 12, 62))) {
            return C0164.m3495(4657, 13, 10);
        }
        if (str.equals(C0164.m3495(4670, 12, 31))) {
            return C0164.m3495(4682, 14, 0);
        }
        if (str.equals(C0164.m3495(4696, 12, 125))) {
            return C0164.m3495(4708, 13, 100);
        }
        if (str.equals(C0164.m3495(4721, 12, 21))) {
            return C0164.m3495(4733, 13, 119);
        }
        if (str.equals(C0164.m3495(4746, 12, 55))) {
            return C0164.m3495(4758, 13, 100);
        }
        if (str.equals(C0164.m3495(4771, 12, 121))) {
            return C0164.m3495(4783, 13, 21);
        }
        if (str.equals(C0164.m3495(4796, 13, 118))) {
            return C0164.m3495(4809, 13, 106);
        }
        if (str.equals(C0164.m3495(4822, 13, 1))) {
            return C0164.m3495(4835, 14, 13);
        }
        if (str.equals(C0164.m3495(4849, 13, 22))) {
            return C0164.m3495(4862, 10, 62);
        }
        if (str.equals(C0164.m3495(4872, 13, 48))) {
            return C0164.m3495(4885, 13, 76);
        }
        if (str.equals(C0164.m3495(4898, 13, 9))) {
            return C0164.m3495(4911, 14, 15);
        }
        if (str.equals(C0164.m3495(4925, 13, 49))) {
            return C0164.m3495(4938, 13, 29);
        }
        if (str.equals(C0164.m3495(4951, 13, 11))) {
            return C0164.m3495(4964, 16, 101);
        }
        if (str.equals(C0164.m3495(4980, 13, 121))) {
            return C0164.m3495(4993, 13, RNMBXStyleValue.InterpolationModeIdentity);
        }
        if (str.equals(C0164.m3495(5006, 13, 36))) {
            return C0164.m3495(5019, 10, 80);
        }
        if (str.equals(C0164.m3495(5029, 13, 11))) {
            return C0164.m3495(5042, 11, 34);
        }
        if (str.equals(C0164.m3495(5053, 13, 36))) {
            return C0164.m3495(5066, 14, 2);
        }
        if (str.equals(C0164.m3495(5080, 13, 53))) {
            return C0164.m3495(5093, 17, 14);
        }
        if (str.equals(C0164.m3495(5110, 13, 101))) {
            return C0164.m3495(5123, 14, 57);
        }
        if (str.equals(C0164.m3495(5137, 13, 91))) {
            return C0164.m3495(5150, 18, 47);
        }
        if (str.equals(C0164.m3495(5168, 13, 102))) {
            return C0164.m3495(5181, 17, 49);
        }
        if (str.equals(C0164.m3495(5198, 13, WebSocketProtocol.PAYLOAD_SHORT))) {
            return C0164.m3495(5211, 17, 38);
        }
        if (str.equals(C0164.m3495(5228, 13, 52))) {
            return C0164.m3495(5241, 11, 105);
        }
        if (str.equals(C0164.m3495(5252, 13, 72))) {
            return C0164.m3495(5265, 14, 3);
        }
        if (str.equals(C0164.m3495(5279, 13, 81))) {
            return C0164.m3495(5292, 18, 110);
        }
        if (str.equals(C0164.m3495(5310, 13, 96))) {
            return C0164.m3495(5323, 18, 48);
        }
        if (str.equals(C0164.m3495(5341, 10, 32))) {
            return C0164.m3495(5351, 6, 76);
        }
        if (str.equals(C0164.m3495(5357, 12, 66))) {
            return C0164.m3495(5369, 11, 47);
        }
        if (str.equals(C0164.m3495(5380, 12, 28))) {
            return C0164.m3495(5392, 11, 19);
        }
        if (str.equals(C0164.m3495(5403, 12, 79))) {
            return C0164.m3495(5415, 11, 71);
        }
        if (str.equals(C0164.m3495(5426, 14, 115))) {
            return C0164.m3495(5440, 10, 101);
        }
        if (str.equals(C0164.m3495(5450, 14, 38))) {
            return C0164.m3495(5464, 13, 4);
        }
        if (str.equals(C0164.m3495(5477, 18, 55))) {
            return C0164.m3495(5495, 7, 76);
        }
        if (str.equals(C0164.m3495(5502, 22, 69))) {
            return C0164.m3495(5524, 21, 4);
        }
        if (str.equals(C0164.m3495(5545, 22, 127))) {
            return C0164.m3495(5567, 23, 70);
        }
        if (str.equals(C0164.m3495(5590, 22, 67))) {
            return C0164.m3495(5612, 27, 22);
        }
        if (str.equals(C0164.m3495(5639, 22, 96))) {
            return C0164.m3495(5661, 29, 31);
        }
        if (str.equals(C0164.m3495(5690, 22, 17))) {
            return C0164.m3495(5712, 21, 77);
        }
        if (str.equals(C0164.m3495(5733, 22, 64))) {
            return C0164.m3495(5755, 23, 80);
        }
        if (str.equals(C0164.m3495(5778, 22, 102))) {
            return C0164.m3495(5800, 27, 41);
        }
        if (str.equals(C0164.m3495(5827, 22, 12))) {
            return C0164.m3495(5849, 29, 41);
        }
        if (str.equals(C0164.m3495(5878, 22, 7))) {
            return C0164.m3495(5900, 25, 24);
        }
        if (str.equals(C0164.m3495(5925, 23, 104))) {
            return C0164.m3495(5948, 27, 66);
        }
        if (str.equals(C0164.m3495(5975, 23, 81))) {
            return C0164.m3495(5998, 20, 110);
        }
        if (str.equals(C0164.m3495(6018, 23, 56))) {
            return C0164.m3495(6041, 22, 24);
        }
        if (str.equals(C0164.m3495(6063, 23, 107))) {
            return C0164.m3495(6086, 23, 28);
        }
        if (str.equals(C0164.m3495(6109, 23, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR))) {
            return C0164.m3495(6132, 29, 29);
        }
        if (str.equals(C0164.m3495(6161, 23, 86))) {
            return C0164.m3495(6184, 23, 77);
        }
        if (str.equals(C0164.m3495(6207, 23, 101))) {
            return C0164.m3495(6230, 29, 50);
        }
        if (str.equals(C0164.m3495(6259, 23, 43))) {
            return C0164.m3495(6282, 27, 12);
        }
        if (str.equals(C0164.m3495(6309, 23, 55))) {
            return C0164.m3495(6332, 22, 39);
        }
        if (str.equals(C0164.m3495(6354, 23, 63))) {
            return C0164.m3495(6377, 24, 27);
        }
        if (str.equals(C0164.m3495(6401, 23, 38))) {
            return C0164.m3495(6424, 25, 7);
        }
        return str.equals(C0164.m3495(6449, 23, 114)) ? C0164.m3495(6472, 26, 53) : str;
    }

    public static byte[] m5919(String str) throws Throwable {
        File file = new File(str);
        if (!file.exists()) {
            return C0320.f1706;
        }
        C0301 c0301 = new C0301();
        byte[] bArr = new byte[65536];
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                while (true) {
                    try {
                        int i = fileInputStream2.read(bArr);
                        if (i <= 0) {
                            break;
                        }
                        c0301.m4181(bArr, 0, i);
                    } catch (Exception unused) {
                        fileInputStream = fileInputStream2;
                        throw new C0414(305, C0164.m3495(7211, 21, 10) + file.getName() + ").");
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        throw th;
                    }
                }
                fileInputStream2.close();
                try {
                    fileInputStream2.close();
                } catch (Exception unused3) {
                }
                return c0301.m4182();
            } catch (Exception unused4) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean m5920(String str) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt >= '0' && cCharAt <= '9') {
                i2++;
            } else {
                if (cCharAt != '.' || i2 == 0) {
                    return false;
                }
                i++;
                i2 = 0;
            }
        }
        return i > 0 && i2 > 0;
    }

    public static String m5922(String str) {
        return (String) f3700.get(str);
    }

    public static byte[] m5925(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            int length = (int) new File(str).length();
            byte[] bArr = new byte[length];
            int i = 0;
            while (true) {
                try {
                    try {
                        int i2 = fileInputStream.read(bArr, i, length - i);
                        if (i2 <= 0 || i >= length) {
                            break;
                        }
                        i += i2;
                    } catch (IOException unused) {
                        throw new C0414(305, C0164.m3495(1106, 30, 71) + str + ").");
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            }
            try {
                fileInputStream.close();
            } catch (IOException unused3) {
            }
            if (i >= length) {
                return bArr;
            }
            throw new C0414(305, C0164.m3495(1136, 54, 95) + str + ").");
        } catch (IOException unused4) {
            throw new C0414(303, C0164.m3495(1085, 21, 33) + str + ").");
        }
    }

    public static Date m5933(int i, String str) {
        if (i == 24) {
            return C0394.m4631(str, new String[]{C0164.m3495(688, 10, 9), C0164.m3495(698, 12, 65), C0164.m3495(710, 14, 48), C0164.m3495(724, 18, 124), C0164.m3495(742, 13, 47), C0164.m3495(755, 15, 4), C0164.m3495(770, 17, 5), C0164.m3495(787, 20, 3), C0164.m3495(807, 21, 78)});
        }
        if (C0259.m3840(str.substring(0, 2)) < 50) {
            str = C0663.m5880("20", str);
        }
        return C0394.m4629(str);
    }

    public static C0420 m5938(String str) {
        int i;
        C0420 c0420 = new C0420();
        for (String str2 : C0259.m3852(str, ",")) {
            int iIndexOf = str2.indexOf(58);
            if (iIndexOf <= 0 || iIndexOf >= str2.length()) {
                throw new C0414(C0164.m3495(6624, 29, 25));
            }
            String lowerCase = str2.substring(0, iIndexOf).toLowerCase();
            String strSubstring = str2.substring(iIndexOf + 1);
            C0152 c0152 = new C0152();
            c0152.f455 = strSubstring;
            if (lowerCase.startsWith(C0164.m3495(6653, 5, 71))) {
                i = 1;
            } else if (lowerCase.startsWith(C0164.m3495(6658, 3, 6))) {
                i = 6;
            } else if (lowerCase.startsWith(C0164.m3495(6661, 3, 15))) {
                i = 2;
            } else if (lowerCase.startsWith(C0164.m3495(6664, 3, 8))) {
                i = 8;
            } else {
                if (!lowerCase.startsWith("ip")) {
                    if (lowerCase.startsWith(C0164.m3495(6667, 7, 49))) {
                        throw new C0414(C0663.m5891(lowerCase).append(C0164.m3495(6674, 15, 66)).toString());
                    }
                    if (lowerCase.startsWith(C0164.m3495(6689, 9, 71))) {
                        throw new C0414(C0663.m5891(lowerCase).append(C0164.m3495(6698, 15, 37)).toString());
                    }
                    throw new C0414(C0663.m5891(lowerCase).append(C0164.m3495(6713, 15, 104)).toString());
                }
                i = 7;
            }
            c0152.f2150 = i | 128;
            c0420.f3176.add(c0152);
        }
        return c0420;
    }

    public static Hashtable m5939(String str) {
        int i;
        Hashtable hashtable = new Hashtable();
        if (str != null && str.length() > 0) {
            int i2 = 0;
            while (i2 < str.length() && str.indexOf(58, i2) > 0) {
                String string = "";
                String string2 = "";
                while (str.charAt(i2) != ':') {
                    string2 = C0663.m5891(string2).append(str.charAt(i2)).toString();
                    i2++;
                }
                do {
                    i2++;
                    if (i2 >= str.length()) {
                        break;
                    }
                } while (str.charAt(i2) == ' ');
                while (i2 < str.length() && str.charAt(i2) != '\r') {
                    if (str.charAt(i2) == '\\' && (i = i2 + 2) < str.length() && str.charAt(i2 + 1) == '\r' && str.charAt(i) == '\n') {
                        i2 += 3;
                    } else {
                        string = C0663.m5891(string).append(str.charAt(i2)).toString();
                        i2++;
                    }
                }
                i2 += 2;
                string2.trim();
                string.trim();
                hashtable.put(string2, string);
            }
        }
        if (hashtable.size() > 0) {
            return hashtable;
        }
        return null;
    }

    public static String[] m5940(String str) {
        Vector vector = new Vector();
        int i = 0;
        int i2 = 0;
        while (true) {
            int iIndexOf = str.indexOf(C0164.m3495(16353, 27, 89), i);
            if (iIndexOf > i2) {
                vector.addElement(str.substring(i2, iIndexOf));
                i2 = iIndexOf;
            } else if (iIndexOf < 0) {
                break;
            }
            i = iIndexOf + 1;
        }
        if (i2 >= 0) {
            vector.addElement(str.substring(i2));
        }
        return (String[]) vector.toArray(new String[0]);
    }

    public static X509Certificate m5942(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            throw new C0414(280, C0164.m3495(2566, 64, 36));
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance(C0164.m3495(2630, 5, 52)).generateCertificate(byteArrayInputStream);
                try {
                    byteArrayInputStream.close();
                } catch (IOException unused) {
                }
                return x509Certificate;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (Exception e) {
            throw new C0414(280, C0164.m3495(2635, 38, 85) + C0414.m4672(e));
        }
    }

    public static String m5958(C0460 c0460) {
        return m5959(c0460, false);
    }

    public static String m5959(C0460 c0460, boolean z) {
        boolean z2;
        Vector vector = c0460.f3176;
        String strM5888 = "";
        for (int i = 0; i < vector.size(); i++) {
            Vector vector2 = ((C0182) vector.get(i)).f3176;
            String string = "";
            for (int i2 = 0; i2 < vector2.size(); i2++) {
                C0405 c0405 = (C0405) vector2.get(i2);
                String strM5922 = c0405.f2104.f2701;
                if (m5922(strM5922) != null) {
                    strM5922 = m5922(strM5922);
                    z2 = true;
                } else {
                    z2 = false;
                }
                String strM5957 = (z2 || !z) ? m5957(c0405.f2105) : C0663.m5891("#").append(C0259.m3841(c0405.f2105.m4676().f1974)).toString();
                if (strM5957.indexOf(",") >= 0 && !strM5957.startsWith("\"") && !strM5957.endsWith("\"")) {
                    strM5957 = "\"" + strM5957 + "\"";
                }
                string = C0663.m5891(string).append(string.length() > 0 ? " " : "").append(strM5922).append("=").append(strM5957).toString();
            }
            strM5888 = C0663.m5888(C0663.m5891(strM5888), strM5888.length() > 0 ? ", " : "", string);
        }
        return strM5888;
    }

    public static String m5916(String str) throws C0537 {
        if (str.equals(C0458.f2648)) {
            return C0164.m3495(2071, 3, 75);
        }
        if (str.equals(C0458.f2604)) {
            return C0164.m3495(2074, 3, 12);
        }
        if (!str.equals(C0458.f2612) && !str.equals(C0458.f2636)) {
            if (str.equals(C0458.f2625)) {
                return C0164.m3495(2081, 6, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
            }
            if (str.equals(C0458.f2641)) {
                return C0164.m3495(2087, 6, 31);
            }
            if (str.equals(C0458.f2655)) {
                return C0164.m3495(2093, 6, 94);
            }
            if (str.equals(C0458.f2660)) {
                return C0164.m3495(2099, 6, 79);
            }
            throw new C0537(C0164.m3495(2105, 17, 39));
        }
        return C0164.m3495(2077, 4, 84);
    }

    public static int m5921(C0511 c0511) {
        C0418 c0418 = c0511.f2963;
        if (c0418 instanceof C0319) {
            return m5926(((C0319) c0418).f1704.f2148);
        }
        if (c0418 instanceof C0211) {
            return m5926(((C0211) c0418).f2148);
        }
        if (c0418 instanceof C0446) {
            return m5926(((C0446) c0418).f2148);
        }
        return 0;
    }

    public static void m5907(C0538 c0538, String str) {
        AbstractC0410 abstractC0410M5967;
        byte[] bArrM3905;
        if (str.contains(C0164.m3495(10217, 11, 11))) {
            C0538 c0539 = new C0538();
            boolean z = true;
            if (str.contains(C0164.m3495(12158, 11, 32))) {
                bArrM3905 = C0259.m3905(C0259.m3902(str), C0164.m3495(12169, 15, 25));
                c0539.f3116 = 1;
            } else if (str.contains(C0164.m3495(12184, 11, 39))) {
                bArrM3905 = C0259.m3905(C0259.m3902(str), C0164.m3495(12195, 15, 80));
                c0539.f3116 = 2;
            } else {
                if (str.contains(C0164.m3495(12210, 10, 19))) {
                    bArrM3905 = C0259.m3905(C0259.m3902(str), C0164.m3495(12220, 14, 77));
                    c0539.f3116 = 3;
                } else if (str.contains(C0164.m3495(12234, 11, 87))) {
                    bArrM3905 = C0259.m3905(C0259.m3902(str), C0164.m3495(12245, 11, 8));
                    String strM5911 = m5911(bArrM3905);
                    if (strM5911.equals(C0458.f2620)) {
                        c0539.f3116 = 1;
                    } else if (strM5911.equals(C0458.f2668)) {
                        c0539.f3116 = 2;
                    } else if (strM5911.equals(C0458.f2650)) {
                        c0539.f3116 = 3;
                    } else {
                        if (!strM5911.equals(C0458.f2646) && !strM5911.equals(C0458.f2658) && !strM5911.equals(C0158.f478) && !strM5911.equals(C0158.f482)) {
                            throw new C0414(271, C0164.m3495(12256, 23, 96) + strM5911);
                        }
                        c0539.f3116 = 4;
                    }
                } else {
                    throw new C0414(271, C0164.m3495(12279, 19, 68));
                }
                m5979(c0539, bArrM3905, z);
                abstractC0410M5967 = m5967(c0539, "");
            }
            z = false;
            m5979(c0539, bArrM3905, z);
            abstractC0410M5967 = m5967(c0539, "");
        } else {
            C0538 c05310 = new C0538();
            m5913(c05310, str);
            abstractC0410M5967 = m5967(c05310, "");
        }
        m5975(c0538, abstractC0410M5967);
    }

    public static void m5924(C0538 c0538, String str) {
        Vector vectorM3605;
        int i;
        C0117 c0117 = new C0117(null, new Object());
        c0117.m3197(1);
        c0117.f222 = true;
        c0117.f215 = true;
        c0117.m3214(str);
        if (c0117.m3206(C0164.m3495(9973, 9, 35))) {
            String strM3207 = c0117.m3207();
            if (strM3207.equals(C0164.m3495(9982, 3, 84))) {
                c0538.f3116 = 1;
            } else if (strM3207.equals("EC")) {
                c0538.f3116 = 3;
            } else {
                if (!strM3207.equals(C0164.m3495(9985, 3, 30))) {
                    throw new C0414(271, C0164.m3495(9988, 18, 35));
                }
                c0538.f3116 = 4;
            }
            int i2 = 6;
            c0117.m3201(C0164.m3495(10021, 6, 106));
            C0185 c0185 = c0117.f228;
            if (c0185 == null) {
                vectorM3605 = new Vector();
            } else {
                vectorM3605 = c0185.m3605();
            }
            int i3 = 0;
            while (i3 < vectorM3605.size()) {
                String str2 = ((C0185) vectorM3605.get(i3)).f635;
                c0117.m3201(C0164.m3495(10027, i2, 26) + str2);
                String strM3208 = c0117.m3207();
                if (c0538.f3116 == 3) {
                    if (C0164.m3495(10033, 3, 125).equals(str2)) {
                        if (C0164.m3495(10036, 5, 48).equals(strM3208)) {
                            c0538.f3114.f488 = 0;
                        } else if (C0164.m3495(10041, 5, 22).equals(strM3208)) {
                            c0538.f3114.f488 = 1;
                        } else if (C0164.m3495(10046, 5, 68).equals(strM3208)) {
                            c0538.f3114.f488 = 2;
                        } else {
                            if (!C0164.m3495(10051, 9, 110).equals(strM3208)) {
                                throw new C0414(271, C0164.m3495(10060, 24, 77));
                            }
                            c0538.f3114.f488 = 10;
                        }
                    } else if ("x".equals(str2)) {
                        c0538.f3114.f490 = C0259.m3850(strM3208);
                    } else if (JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE.equals(str2)) {
                        c0538.f3114.f487 = C0259.m3850(strM3208);
                    } else if ("d".equals(str2)) {
                        c0538.f3114.f491 = C0259.m3850(strM3208);
                    }
                }
                if (c0538.f3116 == 1) {
                    byte[] bArrM3850 = C0259.m3850(strM3208);
                    if (JWKParameterNames.RSA_MODULUS.equals(str2)) {
                        c0538.f3115.f334 = bArrM3850;
                    } else if (JWKParameterNames.RSA_EXPONENT.equals(str2)) {
                        c0538.f3115.f336 = bArrM3850;
                    } else if ("d".equals(str2)) {
                        c0538.f3115.f335 = bArrM3850;
                    } else if ("p".equals(str2)) {
                        c0538.f3115.f331 = bArrM3850;
                    } else if (JWKParameterNames.RSA_SECOND_PRIME_FACTOR.equals(str2)) {
                        c0538.f3115.f333 = bArrM3850;
                    } else if (JWKParameterNames.RSA_FIRST_FACTOR_CRT_EXPONENT.equals(str2)) {
                        c0538.f3115.f329 = bArrM3850;
                    } else if (JWKParameterNames.RSA_SECOND_FACTOR_CRT_EXPONENT.equals(str2)) {
                        c0538.f3115.f330 = bArrM3850;
                    } else if (JWKParameterNames.RSA_FIRST_CRT_COEFFICIENT.equals(str2)) {
                        c0538.f3115.f332 = bArrM3850;
                    }
                }
                if (c0538.f3116 != 4) {
                    i = 6;
                } else if (C0164.m3495(10084, 3, 102).equals(str2)) {
                    if (C0164.m3495(10087, 7, 98).equals(strM3208)) {
                        c0538.f3111.f488 = 3;
                    } else if (C0164.m3495(10094, 5, 75).equals(strM3208)) {
                        c0538.f3111.f488 = 4;
                    } else {
                        i = 6;
                        if (C0164.m3495(10099, 6, 46).equals(strM3208)) {
                            c0538.f3111.f488 = 5;
                        } else {
                            if (!C0164.m3495(10105, 4, 127).equals(strM3208)) {
                                throw new C0414(271, C0164.m3495(10109, 24, 80));
                            }
                            c0538.f3111.f488 = 5;
                        }
                    }
                    i = 6;
                } else {
                    i = 6;
                    if ("x".equals(str2)) {
                        c0538.f3111.f485 = C0259.m3850(strM3208);
                    } else if ("d".equals(str2)) {
                        c0538.f3111.f486 = C0259.m3850(strM3208);
                    }
                }
                c0538.f3112.put(C0164.m3495(10133, 4, 55) + c0117.m3204() + "_" + str2, strM3208);
                i3++;
                i2 = i;
            }
            if (c0538.f3116 == 1) {
                C0145 c0145 = c0538.f3115;
                if (c0145.f334 == null || c0145.f336 == null) {
                    throw new C0414(271, C0164.m3495(10137, 39, 9));
                }
            }
            if (c0538.f3116 == 3) {
                C0158 c0158 = c0538.f3114;
                if (c0158.f490 == null || c0158.f487 == null) {
                    throw new C0414(271, C0164.m3495(10176, 41, 38));
                }
                return;
            }
            return;
        }
        throw new C0414(271, C0164.m3495(10006, 15, 99));
    }

    public static byte[] m5904(byte[] bArr) {
        if (bArr[0] < 128) {
            return bArr;
        }
        byte[] bArr2 = new byte[bArr.length + 1];
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        return bArr2;
    }

    public static void m5903(C0538 c0538, String str) {
        String strTrim = str.trim();
        if (!strTrim.startsWith(C0164.m3495(11123, 8, 14)) && !strTrim.startsWith(C0164.m3495(11131, 8, 42)) && !strTrim.startsWith(C0164.m3495(11139, 8, 67)) && !strTrim.startsWith(C0164.m3495(11147, 12, 41)) && !strTrim.startsWith(C0164.m3495(11159, 10, 53)) && !strTrim.startsWith(C0164.m3495(11169, 20, 98)) && !strTrim.startsWith(C0164.m3495(11189, 20, 33)) && !strTrim.startsWith(C0164.m3495(11209, 20, 27))) {
            throw new C0414(271, C0164.m3495(11236, 69, 72));
        }
        int iIndexOf = strTrim.indexOf(32) + 1;
        int iIndexOf2 = strTrim.indexOf(32, iIndexOf);
        if (iIndexOf2 > 0) {
            int i = iIndexOf2 + 1;
            if (C0259.m3889(strTrim, i, strTrim.length()).trim().length() > 0) {
                c0538.f3112.put(C0164.m3495(11229, 7, 45), strTrim.substring(i, strTrim.length()).trim());
            }
        }
        if (iIndexOf2 <= 0) {
            iIndexOf2 = strTrim.length();
        }
        m5977(c0538, C0259.m3902(C0259.m3889(strTrim, iIndexOf, iIndexOf2)));
    }

    public static PublicKey m5912(C0511 c0511) {
        String str;
        C0418 c0418 = c0511.f2963;
        if (c0418 instanceof C0319) {
            try {
                return m5905(C0164.m3495(6800, 3, 73)).generatePublic(new RSAPublicKeySpec(new BigInteger(1, ((C0319) c0418).f1704.f2148), new BigInteger(1, ((C0319) c0418).f1705.f2148)));
            } catch (Exception unused) {
                throw new C0414(280, C0164.m3495(6803, 28, 87));
            }
        }
        if (c0418 instanceof C0211) {
            try {
                C0470 c0470 = new C0470();
                c0470.m4680(c0511.f2961.f812.mo3690());
                return m5905(C0164.m3495(6831, 3, 34)).generatePublic(new DSAPublicKeySpec(new BigInteger(1, ((C0211) c0418).f2148), new BigInteger(1, c0470.f2696.f2148), new BigInteger(1, c0470.f2697.f2148), new BigInteger(1, c0470.f2698.f2148)));
            } catch (Exception unused2) {
                throw new C0414(280, C0164.m3495(6834, 28, 36));
            }
        }
        if (c0418 instanceof C0446) {
            try {
                C0418 c0419 = c0511.f2961.f812;
                if (!c0419.f2147) {
                    str = "";
                } else {
                    str = ((C0472) c0419).f2701;
                }
                if (!c0419.f2147) {
                    str = c0511.f2961.f811.f2701;
                }
                int iM3419 = C0158.m3419(str);
                if (!str.equals(C0158.f474) && !str.equals(C0158.f483)) {
                    try {
                        ECParameterSpec eCParameterSpecM5639 = C0612.m5639(iM3419);
                        byte[] bArrM4218 = C0308.m4218(c0418.f2148);
                        C0158 c0158 = new C0158();
                        c0158.m3444(str);
                        c0158.m3446(bArrM4218);
                        return new C0309(new BigInteger(1, c0158.f490), new BigInteger(1, c0158.f487), eCParameterSpecM5639, str);
                    } catch (C0537 e) {
                        throw new C0414(280, e.getMessage());
                    }
                }
                return new C0633(c0418.f2148, new C0144(iM3419));
            } catch (Exception unused3) {
                throw new C0414(280, C0164.m3495(6862, 28, 15));
            }
        }
        throw new C0414(280, C0164.m3495(6890, 31, 82));
    }

    public static int m5941(String str) {
        int i = 0;
        for (String str2 : C0259.m3852(str, ",")) {
            String strTrim = str2.trim();
            int i2 = 0;
            while (true) {
                String[] strArr = f3704;
                if (i2 < strArr.length) {
                    if (strTrim.equalsIgnoreCase(strArr[i2])) {
                        i |= f3711[i2];
                    }
                    i2++;
                }
            }
        }
        return i;
    }

    public static String m5957(C0418 c0418) {
        int i = c0418.f2150;
        if (i == 30) {
            return C0259.m3848(c0418.f2148, C0164.m3495(828, 8, SyslogConstants.LOG_CLOCK));
        }
        if (i == 12) {
            return C0259.m3853(c0418.f2148);
        }
        return C0259.m3882(c0418.f2148);
    }

    public static C0460 m5934(String str) {
        int i;
        C0460 c0460 = new C0460();
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (!z) {
                if (z2) {
                    if (cCharAt == '\"') {
                        stringBuffer2.append(cCharAt);
                        z2 = false;
                    } else {
                        stringBuffer2.append(cCharAt);
                    }
                } else if (cCharAt == '\"') {
                    stringBuffer2.append(cCharAt);
                    z2 = true;
                } else if (cCharAt == ',') {
                    z = true;
                    z3 = true;
                } else {
                    stringBuffer2.append(cCharAt);
                }
                if (i2 == str.length() - 1) {
                    z3 = true;
                }
                if (z3) {
                    C0405 c0405 = new C0405();
                    String string = stringBuffer.toString();
                    C0324 c0324M5484 = C0558.m5484(f3700);
                    while (c0324M5484.m4313()) {
                        String str2 = (String) c0324M5484.f1735;
                        if (C0259.m3872(string, (String) f3700.get(str2))) {
                            string = str2;
                            break;
                        }
                    }
                    String string2 = stringBuffer2.toString();
                    c0405.f2104.f2701 = string;
                    C0418 c0418 = c0405.f2105;
                    if (string.equals(C0458.f2611) || string.equals(C0458.f2621) || string.equals(C0458.f2637) || string.equals(C0458.f2652)) {
                        i = 22;
                    } else {
                        int i3 = 0;
                        while (true) {
                            if (i3 >= string2.length()) {
                                i = 19;
                                break;
                            }
                            char cCharAt2 = string2.charAt(i3);
                            if ((cCharAt2 < 'A' || cCharAt2 > 'Z') && ((cCharAt2 < 'a' || cCharAt2 > 'z') && !((cCharAt2 >= '0' && cCharAt2 <= '9') || cCharAt2 == ' ' || cCharAt2 == '\'' || cCharAt2 == '(' || cCharAt2 == ')' || cCharAt2 == '+' || cCharAt2 == ',' || cCharAt2 == '-' || cCharAt2 == '.' || cCharAt2 == '/' || cCharAt2 == ':' || cCharAt2 == '=' || cCharAt2 == '?'))) {
                                i = 12;
                                break;
                            }
                            i3++;
                        }
                    }
                    c0418.f2150 = i;
                    if (string2.startsWith("\"") && string2.endsWith("\"")) {
                        String strM3889 = C0259.m3889(string2, 1, string2.length() - 1);
                        if (strM3889.contains(",") || strM3889.contains(Marker.ANY_NON_NULL_MARKER) || strM3889.contains("=") || strM3889.contains("#") || strM3889.contains("<") || strM3889.contains(">") || strM3889.contains("\"") || strM3889.startsWith(" ") || strM3889.endsWith(" ")) {
                            string2 = string2.substring(1, string2.length() - 1);
                            if (string2.contains("\\\"")) {
                                string2 = string2.replace("\\\"", "\"");
                            }
                        }
                    }
                    C0418 c0419 = c0405.f2105;
                    c0419.f2148 = c0419.f2150 == 12 ? C0259.m3883(string2) : C0259.m3902(string2);
                    C0182 c0182 = new C0182();
                    c0182.f3176.add(c0405);
                    c0460.f3176.add(c0182);
                    stringBuffer = new StringBuffer();
                    stringBuffer2 = new StringBuffer();
                    z3 = false;
                }
            } else if (cCharAt == '=') {
                z = false;
            } else if (cCharAt != ' ') {
                stringBuffer.append(cCharAt);
            }
        }
        return c0460;
    }

    public static String m5952(Date date, int[] iArr) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(C0164.m3495(836, 12, 51));
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(C0164.m3495(848, 3, 26)));
        String str = simpleDateFormat.format(date) + "Z";
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(C0164.m3495(851, 14, 7));
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone(C0164.m3495(865, 3, 50)));
        String str2 = simpleDateFormat2.format(date) + "Z";
        if (str2.substring(0, 4).compareTo(C0164.m3495(868, 4, 18)) < 0) {
            iArr[0] = 23;
            return str;
        }
        iArr[0] = 24;
        return str2;
    }

    public static ECParameterSpec m5906(byte[] bArr) {
        C0530 c0530 = new C0530(bArr);
        c0530.m5389();
        C0530 c0531 = new C0530(c0530.m5373());
        c0531.m5374();
        ECFieldFp eCFieldFp = new ECFieldFp(new BigInteger(1, c0531.m5373()));
        C0530 c0532 = new C0530(c0530.m5373());
        EllipticCurve ellipticCurve = new EllipticCurve(eCFieldFp, new BigInteger(1, c0532.m5373()), new BigInteger(1, c0532.m5373()), !c0532.m5369() ? c0532.m5375() : null);
        byte[] bArrM5373 = c0530.m5373();
        int length = (bArrM5373.length - 1) / 2;
        byte[] bArr2 = new byte[length];
        byte[] bArr3 = new byte[length];
        if (bArrM5373[0] == 4) {
            System.arraycopy(bArrM5373, 1, bArr2, 0, length);
            System.arraycopy(bArrM5373, length + 1, bArr3, 0, length);
            return new ECParameterSpec(ellipticCurve, new ECPoint(new BigInteger(1, bArr2), new BigInteger(1, bArr3)), new BigInteger(1, c0530.m5373()), c0530.m5369() ? 1 : c0530.m5389());
        }
        throw new C0414(C0164.m3495(13895, 27, 117));
    }

    public static Object m5948(C0335 c0335, boolean z) {
        RSAPrivateKey rSAPrivateKey = z ? null : (RSAPrivateKey) c0335.m4367();
        RSAPublicKey rSAPublicKey = (RSAPublicKey) c0335.m4361();
        if (c0335.m4376().length() <= 0) {
            rSAPublicKey = null;
        }
        if (!c0335.m4374()) {
            rSAPrivateKey = null;
        }
        if (rSAPrivateKey == null && rSAPublicKey == null) {
            return null;
        }
        C0145 c0145 = new C0145();
        if (rSAPublicKey != null) {
            c0145.f334 = m5987(rSAPublicKey.getModulus());
            c0145.f336 = m5987(rSAPublicKey.getPublicExponent());
        }
        if (rSAPrivateKey != null) {
            c0145.f334 = m5987(rSAPrivateKey.getModulus());
            c0145.f335 = m5987(rSAPrivateKey.getPrivateExponent());
            if (rSAPrivateKey instanceof RSAPrivateCrtKey) {
                RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) rSAPrivateKey;
                c0145.f336 = m5987(rSAPrivateCrtKey.getPublicExponent());
                c0145.f331 = m5987(rSAPrivateCrtKey.getPrimeP());
                c0145.f333 = m5987(rSAPrivateCrtKey.getPrimeQ());
                c0145.f329 = m5987(rSAPrivateCrtKey.getPrimeExponentP());
                c0145.f330 = m5987(rSAPrivateCrtKey.getPrimeExponentQ());
                c0145.f332 = m5987(rSAPrivateCrtKey.getCrtCoefficient());
            }
        }
        return c0145;
    }

    public static Object m5947(C0335 c0335) {
        DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) c0335.m4367();
        DSAPublicKey dSAPublicKey = (DSAPublicKey) c0335.m4361();
        DSAParams params = null;
        if (c0335.m4376().length() <= 0) {
            dSAPublicKey = null;
        }
        if (!c0335.m4374()) {
            dSAPrivateKey = null;
        }
        if (dSAPrivateKey == null && dSAPublicKey == null) {
            return null;
        }
        C0130 c0130 = new C0130();
        if (dSAPublicKey != null) {
            c0130.f257 = m5987(dSAPublicKey.getY());
            params = dSAPublicKey.getParams();
        }
        if (dSAPrivateKey != null) {
            c0130.f255 = m5987(dSAPrivateKey.getX());
            params = dSAPrivateKey.getParams();
        }
        if (params != null) {
            c0130.f259 = m5987(params.getP());
            c0130.f256 = m5987(params.getG());
            c0130.f258 = m5987(params.getQ());
        }
        return c0130;
    }

    public static String m5923(byte[] bArr) {
        try {
            C0530 c0530 = new C0530(bArr);
            c0530.m5366();
            if (c0530.m5382() <= 0 || c0530.m5365(0).f3084 != 48) {
                return "";
            }
            c0530.m5365(0).m5366();
            return (c0530.m5365(0).m5382() <= 0 || c0530.m5365(0).m5365(0).f3084 != 6) ? "" : c0530.m5365(0).m5365(0).m5380();
        } catch (Exception unused) {
            return "";
        }
    }

    public static void m5913(C0538 c0538, String str) {
        byte[] bArrM3905;
        boolean z;
        String strM4672;
        C0530 c0530;
        int i;
        try {
            if (str.contains(C0164.m3495(11910, 10, 82))) {
                bArrM3905 = C0259.m3905(C0259.m3902(str), C0164.m3495(11920, 14, 118));
                c0538.f3116 = 1;
            } else if (str.contains(C0164.m3495(11934, 10, 10))) {
                bArrM3905 = C0259.m3905(C0259.m3902(str), C0164.m3495(11944, 14, 42));
                c0538.f3116 = 2;
            } else {
                if (str.contains(C0164.m3495(11958, 9, 89))) {
                    bArrM3905 = C0259.m3905(C0259.m3902(str), C0164.m3495(11967, 13, 81));
                    c0538.f3116 = 3;
                } else if (str.contains(C0164.m3495(11980, 10, 85))) {
                    bArrM3905 = C0259.m3905(C0259.m3902(str), C0164.m3495(11990, 10, 63));
                    String strM5923 = m5923(bArrM3905);
                    if (strM5923.equals(C0458.f2620)) {
                        c0538.f3116 = 1;
                    } else if (strM5923.equals(C0458.f2668)) {
                        c0538.f3116 = 2;
                    } else if (strM5923.equals(C0458.f2650)) {
                        c0538.f3116 = 3;
                    } else {
                        if (!strM5923.equals(C0458.f2646) && !strM5923.equals(C0458.f2658) && !strM5923.equals(C0458.f2651) && !strM5923.equals(C0458.f2614)) {
                            throw new C0414(271, C0164.m3495(12000, 23, 69) + strM5923);
                        }
                        c0538.f3116 = 4;
                    }
                    z = true;
                } else {
                    throw new C0414(271, C0164.m3495(12023, 19, 44));
                }
                c0530 = new C0530(bArrM3905);
                c0530.m5378();
                if (c0538.f3116 == 1) {
                    i = c0538.f3116;
                    if (i == 2) {
                        if (z) {
                            if (C0458.f2668.equals(m5923(bArrM3905))) {
                                c0538.f3113.f259 = c0530.m5365(0).m5365(1).m5365(0).m5373();
                                c0538.f3113.f258 = c0530.m5365(0).m5365(1).m5365(1).m5373();
                                c0538.f3113.f256 = c0530.m5365(0).m5365(1).m5365(2).m5373();
                                C0530 c0531 = new C0530(c0530.m5365(1).m5375());
                                c0531.m5378();
                                c0538.f3113.f257 = c0531.m5373();
                            } else {
                                throw new Exception(C0164.m3495(12069, 26, 0));
                            }
                        } else {
                            c0538.f3113.f259 = c0530.m5365(0).m5373();
                            c0538.f3113.f258 = c0530.m5365(1).m5373();
                            c0538.f3113.f256 = c0530.m5365(2).m5373();
                            c0538.f3113.f257 = c0530.m5365(3).m5373();
                        }
                    } else if (i == 3) {
                        if (C0458.f2650.equals(m5923(bArrM3905))) {
                            if (c0530.m5365(0).m5365(1).f3084 == 48) {
                                c0538.f3114.f488 = C0612.m5638(m5906(c0530.m5365(0).m5365(1).m5373()));
                            } else {
                                c0538.f3114.m3444(c0530.m5365(0).m5365(1).m5380());
                            }
                            c0538.f3114.m3446(c0530.m5365(1).m5375());
                        } else {
                            throw new Exception(C0164.m3495(12095, 26, 119));
                        }
                    } else if (i == 4) {
                        c0538.f3111.m3444(c0530.m5365(0).m5365(0).m5380());
                        c0538.f3111.f485 = c0530.m5365(1).m5375();
                    } else {
                        throw new C0414(280, C0164.m3495(12121, 17, 51));
                    }
                } else if (z) {
                    if (C0458.f2620.equals(m5923(bArrM3905))) {
                        C0530 c0532 = new C0530(c0530.m5365(1).m5375());
                        c0532.m5378();
                        c0538.f3115.f334 = c0532.m5365(0).m5373();
                        c0538.f3115.f336 = c0532.m5365(1).m5373();
                    } else {
                        throw new Exception(C0164.m3495(12042, 27, 47));
                    }
                } else {
                    c0538.f3115.f334 = c0530.m5365(0).m5373();
                    c0538.f3115.f336 = c0530.m5365(1).m5373();
                }
                strM4672 = "";
                if (C0259.m3856(strM4672)) {
                    throw new C0414(280, C0164.m3495(12138, 20, 9) + strM4672);
                }
            }
            c0530 = new C0530(bArrM3905);
            c0530.m5378();
            if (c0538.f3116 == 1) {
                i = c0538.f3116;
                if (i == 2) {
                    if (z) {
                        if (C0458.f2668.equals(m5923(bArrM3905))) {
                            c0538.f3113.f259 = c0530.m5365(0).m5365(1).m5365(0).m5373();
                            c0538.f3113.f258 = c0530.m5365(0).m5365(1).m5365(1).m5373();
                            c0538.f3113.f256 = c0530.m5365(0).m5365(1).m5365(2).m5373();
                            C0530 c0533 = new C0530(c0530.m5365(1).m5375());
                            c0533.m5378();
                            c0538.f3113.f257 = c0533.m5373();
                        } else {
                            throw new Exception(C0164.m3495(12069, 26, 0));
                        }
                    } else {
                        c0538.f3113.f259 = c0530.m5365(0).m5373();
                        c0538.f3113.f258 = c0530.m5365(1).m5373();
                        c0538.f3113.f256 = c0530.m5365(2).m5373();
                        c0538.f3113.f257 = c0530.m5365(3).m5373();
                    }
                } else if (i == 3) {
                    if (C0458.f2650.equals(m5923(bArrM3905))) {
                        if (c0530.m5365(0).m5365(1).f3084 == 48) {
                            c0538.f3114.f488 = C0612.m5638(m5906(c0530.m5365(0).m5365(1).m5373()));
                        } else {
                            c0538.f3114.m3444(c0530.m5365(0).m5365(1).m5380());
                        }
                        c0538.f3114.m3446(c0530.m5365(1).m5375());
                    } else {
                        throw new Exception(C0164.m3495(12095, 26, 119));
                    }
                } else if (i == 4) {
                    c0538.f3111.m3444(c0530.m5365(0).m5365(0).m5380());
                    c0538.f3111.f485 = c0530.m5365(1).m5375();
                } else {
                    throw new C0414(280, C0164.m3495(12121, 17, 51));
                }
            } else if (z) {
                if (C0458.f2620.equals(m5923(bArrM3905))) {
                    C0530 c0534 = new C0530(c0530.m5365(1).m5375());
                    c0534.m5378();
                    c0538.f3115.f334 = c0534.m5365(0).m5373();
                    c0538.f3115.f336 = c0534.m5365(1).m5373();
                } else {
                    throw new Exception(C0164.m3495(12042, 27, 47));
                }
            } else {
                c0538.f3115.f334 = c0530.m5365(0).m5373();
                c0538.f3115.f336 = c0530.m5365(1).m5373();
            }
            strM4672 = "";
        } catch (Exception e) {
            strM4672 = C0414.m4672(e);
        }
        z = false;
        if (C0259.m3856(strM4672)) {
            throw new C0414(280, C0164.m3495(12138, 20, 9) + strM4672);
        }
    }

    public static byte[] m5987(BigInteger bigInteger) {
        if (bigInteger == null) {
            return null;
        }
        return bigInteger.toByteArray();
    }

    public static KeyStore m5963(int i, String str) {
        String strM3495 = C0164.m3495(1042, 3, 35);
        if (i == 2 || i == 3) {
            strM3495 = C0164.m3495(1048, 6, 72);
        } else if (i == 4 || i == 5) {
            strM3495 = C0164.m3495(1045, 3, 121);
        }
        if (str != null) {
            try {
                if (str.length() > 0) {
                    return KeyStore.getInstance(strM3495, str);
                }
            } catch (Exception e) {
                throw new C0414(271, C0164.m3495(1054, 31, 92) + C0414.m4672(e));
            }
        }
        return KeyStore.getInstance(strM3495);
    }

    public static Object m5927(C0335 c0335) {
        int iM5638;
        ECPrivateKey eCPrivateKey = (ECPrivateKey) c0335.m4367();
        ECPublicKey eCPublicKey = (ECPublicKey) c0335.m4361();
        ECParameterSpec params = null;
        if (c0335.m4376().length() <= 0) {
            eCPublicKey = null;
        }
        if (!c0335.m4374()) {
            eCPrivateKey = null;
        }
        if (eCPrivateKey == null && eCPublicKey == null) {
            return null;
        }
        C0158 c0158 = new C0158();
        if (eCPrivateKey != null) {
            params = eCPrivateKey.getParams();
            iM5638 = C0612.m5638(params);
            c0158.f491 = C0158.m3426(m5987(eCPrivateKey.getS()), C0158.m3423(iM5638));
        } else {
            iM5638 = -1;
        }
        if (eCPublicKey != null) {
            params = eCPublicKey.getParams();
            if (iM5638 == -1) {
                iM5638 = C0612.m5638(params);
            }
            c0158.f490 = C0158.m3426(m5987(eCPublicKey.getW().getAffineX()), C0158.m3423(iM5638));
            c0158.f487 = C0158.m3426(m5987(eCPublicKey.getW().getAffineY()), C0158.m3423(iM5638));
        }
        if (params == null) {
            return c0158;
        }
        if (iM5638 != -1) {
            c0158.f488 = iM5638;
            return c0158;
        }
        throw new C0414(280, C0164.m3495(872, 45, 15));
    }

    public static String m5951(String str, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        byte[] bArrM4300 = C0320.f1706;
        try {
            bArrM4300 = C0308.m4217(str).m4300(bArr);
        } catch (Exception unused) {
        }
        return C0259.m3882(C0259.m3901(8, bArrM4300, 0, bArrM4300.length, false));
    }

    public static String m5929(C0158 c0158, boolean z) {
        int i;
        int i2;
        int i3;
        byte[] bArr;
        if (!c0158.m3442() && !c0158.m3430()) {
            return "";
        }
        boolean z2 = (z || (bArr = c0158.f486) == null || bArr.length <= 0) ? false : true;
        byte[] bArr2 = c0158.f485;
        int i4 = (bArr2 == null || bArr2.length <= 0) ? 0 : 1;
        C0530 c0530 = new C0530();
        c0530.m5393();
        if (z2) {
            c0530.m5394(i4);
        }
        c0530.m5393();
        c0530.m5396(c0158.m3437());
        c0530.m5363();
        if (z2) {
            c0530.m5383(4);
            c0530.m5379(c0158.f486, 4);
            c0530.m5362();
            if (i4 != 0) {
                c0530.m5379(c0158.f485, 129);
            }
        } else {
            c0530.m5386(c0158.f485, 3);
        }
        c0530.m5363();
        byte[] bArrM5376 = c0530.m5376();
        if (z2) {
            i = 11;
            i2 = 37;
            i3 = 6603;
        } else {
            i = 10;
            i2 = 61;
            i3 = 6614;
        }
        return C0259.m3882(C0259.m3878(bArrM5376, C0164.m3495(i3, i, i2)));
    }

    public static byte[] m5989(byte[] bArr, String str, String str2, byte[] bArr2, boolean z) {
        return m5990(bArr, str, str2, bArr2, z, (String) null, 0, (byte[]) null);
    }

    public static byte[] m5990(byte[] bArr, String str, String str2, byte[] bArr2, boolean z, String str3, int i, byte[] bArr3) {
        String strM3495;
        int i2;
        int i3;
        boolean z2;
        byte[] bArrM3865;
        byte[] bArrM3866;
        int i4;
        byte[] bArrM3867;
        C0415 c0415;
        int i5;
        int i6;
        if (str2 == null || str2.equalsIgnoreCase(C0164.m3495(1190, 4, 105))) {
            return bArr;
        }
        try {
            if (!str2.equals(C0164.m3495(1194, 12, 68)) && !str2.equals(C0164.m3495(1206, 8, 7)) && !str2.equals(C0164.m3495(1214, 12, 56))) {
                if (str2.equalsIgnoreCase(C0164.m3495(1242, 11, 83))) {
                    strM3495 = C0164.m3495(1253, 3, 87);
                    i2 = 16;
                } else {
                    if (str2.equalsIgnoreCase(C0164.m3495(1256, 11, 74))) {
                        strM3495 = C0164.m3495(1267, 3, 88);
                        i2 = 32;
                    } else {
                        if (!str2.equalsIgnoreCase(C0164.m3495(1270, 7, 55)) && !str2.equalsIgnoreCase(C0164.m3495(1277, 7, 92))) {
                            throw new C0414(271, C0164.m3495(1297, 60, 21) + str2 + "\".");
                        }
                        if (str2.equalsIgnoreCase(C0164.m3495(1284, 7, 40))) {
                            i5 = 1291;
                            i6 = 13;
                        } else {
                            i5 = 1294;
                            i6 = AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
                        }
                        strM3495 = C0164.m3495(i5, 3, i6);
                        i2 = 16;
                        i3 = 2;
                        z2 = true;
                    }
                    bArrM3865 = new byte[i2];
                    if (z) {
                        bArrM3866 = new byte[8];
                    } else {
                        bArrM3866 = null;
                    }
                    AbstractC0313 abstractC0313M4220 = C0308.m4220(strM3495);
                    if (str2.endsWith(C0164.m3495(1357, 3, 90))) {
                        i4 = 4;
                    } else {
                        i4 = 1;
                    }
                    abstractC0313M4220.f1690 = i4;
                    abstractC0313M4220.f1686 = i3;
                    if (bArr2 != null) {
                        bArrM3867 = bArr2;
                    } else if (bArr2.length > 8) {
                        bArrM3867 = C0259.m3865(bArr2, 0, 8);
                    } else {
                        bArrM3867 = bArr2;
                    }
                    if (C0259.m3856(str3)) {
                        if (!C0320.f1718) {
                            c0415 = new C0415();
                            if (str3 != null) {
                                c0415.f2140 = str3;
                            }
                            c0415.f2139 = str;
                            c0415.f2138 = bArrM3867;
                            c0415.m4674(i, bArrM3865, null, z);
                        } else {
                            throw new C0414(271, C0164.m3495(1364, 45, 86));
                        }
                    } else if (!C0320.f1718) {
                        c0415 = new C0415();
                        if (str3 != null) {
                            c0415.f2140 = str3;
                        }
                        c0415.f2139 = str;
                        c0415.f2138 = bArrM3867;
                        c0415.m4674(i, bArrM3865, null, z);
                    } else {
                        throw new C0414(271, C0164.m3495(1364, 45, 86));
                    }
                    if (!z) {
                        bArrM3866 = bArr2;
                    }
                    if (bArr3 != null) {
                        bArrM3866 = bArr3;
                    }
                    if (z2) {
                        bArrM3866 = C0259.m3865(bArrM3865, 8, 8);
                        bArrM3865 = C0259.m3865(bArrM3865, 0, 8);
                    }
                    synchronized (f3699) {
                        return abstractC0313M4220.mo3118(bArrM3865, bArrM3866).mo3122(bArr, 0, bArr.length);
                    }
                }
            } else {
                strM3495 = C0164.m3495(1226, 4, 7);
                if (str2.equals(C0164.m3495(1230, 12, 77))) {
                    i2 = 24;
                } else {
                    i2 = 24;
                    i3 = 1;
                }
                z2 = false;
                bArrM3865 = new byte[i2];
                if (z) {
                    bArrM3866 = new byte[8];
                } else {
                    bArrM3866 = null;
                }
                AbstractC0313 abstractC0313M4221 = C0308.m4220(strM3495);
                if (str2.endsWith(C0164.m3495(1357, 3, 90))) {
                    i4 = 4;
                } else {
                    i4 = 1;
                }
                abstractC0313M4221.f1690 = i4;
                abstractC0313M4221.f1686 = i3;
                if (bArr2 != null) {
                    try {
                        if (bArr2.length > 8) {
                            bArrM3867 = C0259.m3865(bArr2, 0, 8);
                        } else {
                            bArrM3867 = bArr2;
                        }
                    } catch (Exception e) {
                        throw new C0414(e, 271, C0164.m3495(1409, 55, 49) + C0414.m4672(e) + ").");
                    }
                } else {
                    bArrM3867 = bArr2;
                }
                if (C0259.m3856(str3) && str3.contains(C0164.m3495(1360, 4, 86))) {
                    bArrM3865 = C0308.m4228(i, str3, str.getBytes(), bArrM3867, i2);
                } else if (!C0320.f1718) {
                    c0415 = new C0415();
                    if (str3 != null) {
                        c0415.f2140 = str3;
                    }
                    c0415.f2139 = str;
                    c0415.f2138 = bArrM3867;
                    c0415.m4674(i, bArrM3865, null, z);
                } else {
                    throw new C0414(271, C0164.m3495(1364, 45, 86));
                }
                if (!z) {
                    bArrM3866 = bArr2;
                }
                if (bArr3 != null && bArr3.length > 0) {
                    bArrM3866 = bArr3;
                }
                if (z2) {
                    bArrM3866 = C0259.m3865(bArrM3865, 8, 8);
                    bArrM3865 = C0259.m3865(bArrM3865, 0, 8);
                }
                synchronized (f3699) {
                }
                return abstractC0313M4221.mo3118(bArrM3865, bArrM3866).mo3122(bArr, 0, bArr.length);
            }
            AbstractC0313 abstractC0313M4222 = C0308.m4220(strM3495);
            if (str2.endsWith(C0164.m3495(1357, 3, 90))) {
                i4 = 4;
            } else {
                i4 = 1;
            }
            abstractC0313M4222.f1690 = i4;
            abstractC0313M4222.f1686 = i3;
            if (bArr2 != null) {
                bArrM3867 = bArr2;
            } else if (bArr2.length > 8) {
                bArrM3867 = C0259.m3865(bArr2, 0, 8);
            } else {
                bArrM3867 = bArr2;
            }
            if (C0259.m3856(str3)) {
                if (!C0320.f1718) {
                    c0415 = new C0415();
                    if (str3 != null) {
                        c0415.f2140 = str3;
                    }
                    c0415.f2139 = str;
                    c0415.f2138 = bArrM3867;
                    c0415.m4674(i, bArrM3865, null, z);
                } else {
                    throw new C0414(271, C0164.m3495(1364, 45, 86));
                }
            } else if (!C0320.f1718) {
                c0415 = new C0415();
                if (str3 != null) {
                    c0415.f2140 = str3;
                }
                c0415.f2139 = str;
                c0415.f2138 = bArrM3867;
                c0415.m4674(i, bArrM3865, null, z);
            } else {
                throw new C0414(271, C0164.m3495(1364, 45, 86));
            }
            if (!z) {
                bArrM3866 = bArr2;
            }
            if (bArr3 != null) {
                bArrM3866 = bArr3;
            }
            if (z2) {
                bArrM3866 = C0259.m3865(bArrM3865, 8, 8);
                bArrM3865 = C0259.m3865(bArrM3865, 0, 8);
            }
            synchronized (f3699) {
                return abstractC0313M4222.mo3118(bArrM3865, bArrM3866).mo3122(bArr, 0, bArr.length);
            }
        } catch (Exception e2) {
            throw new C0414(271, C0414.m4672(e2));
        }
        i3 = 2;
        z2 = false;
        bArrM3865 = new byte[i2];
        if (z) {
            bArrM3866 = new byte[8];
        } else {
            bArrM3866 = null;
        }
    }

    public static int m5926(byte[] bArr) {
        return ((new BigInteger(bArr).bitLength() + 7) / 8) * 8;
    }

    public static String m5930(C0511 c0511) {
        String str = c0511.f2961.f811.f2701;
        if (str.equals(C0458.f2620)) {
            return C0335.f1795;
        }
        if (str.equals(C0458.f2668)) {
            return C0335.f1793;
        }
        if (str.equals(C0458.f2650)) {
            return C0335.f1794;
        }
        return (str.equals(C0458.f2646) || str.equals(C0458.f2658)) ? C0335.f1796 : "";
    }

    public static String m5928(int i) {
        String strM5880 = "";
        if (i == 0) {
            return "";
        }
        int i2 = 0;
        while (true) {
            int[] iArr = f3711;
            if (i2 >= iArr.length) {
                break;
            }
            int i3 = iArr[i2];
            if ((i & i3) == i3) {
                if (strM5880.length() > 0) {
                    strM5880 = C0663.m5880(strM5880, ", ");
                }
                strM5880 = C0663.m5891(strM5880).append(f3704[i2]).toString();
            }
            i &= ~iArr[i2];
            i2++;
        }
        if (i == 0) {
            return strM5880;
        }
        if (strM5880.length() > 0) {
            strM5880 = C0663.m5880(strM5880, ", ");
        }
        return C0663.m5891(strM5880).append(C0164.m3495(7195, 16, 123)).append(C0259.m3886(i, 4)).toString();
    }

    public static String m5931(C0538 c0538) {
        int i = c0538.f3116;
        if (i == 1) {
            if (i == 1) {
                C0145 c0145 = new C0145();
                C0145 c0146 = c0538.f3115;
                c0145.f336 = c0146.f336;
                c0145.f334 = c0146.f334;
                return m5954(c0145);
            }
            throw new C0414(288, C0164.m3495(20111, 54, 41));
        }
        if (i == 2) {
            if (i == 2) {
                C0130 c0130 = new C0130();
                C0130 c0131 = c0538.f3113;
                c0130.f259 = c0131.f259;
                c0130.f258 = c0131.f258;
                c0130.f256 = c0131.f256;
                if (c0131.f257 == null) {
                    if (c0131.f255 == null) {
                        throw new C0414(280, C0164.m3495(20256, 51, 30));
                    }
                    c0538.f3113 = c0538.m5420(c0131);
                }
                c0130.f257 = c0538.f3113.f257;
                return m5953(c0130);
            }
            throw new C0414(288, C0164.m3495(20307, 54, 107));
        }
        if (i == 3) {
            if (i == 3) {
                C0158 c0158 = new C0158();
                C0158 c0159 = c0538.f3114;
                c0158.f488 = c0159.f488;
                c0158.f489 = c0159.f489;
                c0158.f490 = c0159.f490;
                c0158.f487 = c0159.f487;
                return m5955(c0158, true);
            }
            throw new C0414(288, C0164.m3495(20452, 58, 123));
        }
        if (i != 4) {
            throw new C0414(288, C0164.m3495(8975, 23, 88));
        }
        if (i == 4) {
            if (c0538.f3111.m3432()) {
                C0158 c01510 = new C0158();
                C0158 c01511 = c0538.f3111;
                c01510.f488 = c01511.f488;
                c01510.f489 = c01511.f489;
                c01510.f485 = c01511.f485;
                return m5929(c01510, true);
            }
            throw new C0414(288, C0164.m3495(20607, 38, 97));
        }
        throw new C0414(288, C0164.m3495(20645, 58, 36));
    }

    public static String m5911(byte[] bArr) {
        try {
            C0530 c0530 = new C0530(bArr);
            c0530.m5366();
            if (c0530.m5382() < 2 || c0530.m5365(0).f3084 != 2 || c0530.m5365(1).f3084 != 48) {
                return "";
            }
            c0530.m5365(1).m5366();
            return (c0530.m5365(1).m5382() <= 0 || c0530.m5365(1).m5365(0).f3084 != 6) ? "" : c0530.m5365(1).m5365(0).m5380();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String m5910(String str) {
        int iIndexOf;
        StringBuffer stringBuffer = new StringBuffer();
        String strTrim = str.trim();
        if (!strTrim.startsWith(C0164.m3495(14152, 4, 18)) || (iIndexOf = strTrim.indexOf(C0164.m3495(14156, 4, 87), 4)) < 0) {
            return "";
        }
        int i = iIndexOf + 4;
        String strTrim2 = strTrim.substring(0, i).replace(CoreConstants.DASH_CHAR, CardNumberHelper.DIVIDER).replace('\t', CardNumberHelper.DIVIDER).replace(C0164.m3495(14160, 5, 71), "").trim();
        if (i < strTrim.length() && strTrim.charAt(i) == '-') {
            i = iIndexOf + 5;
        }
        stringBuffer.append(strTrim.substring(0, i)).append("\r\n");
        int iIndexOf2 = strTrim.indexOf(C0164.m3495(14165, 4, 89), i);
        if (iIndexOf2 < 0) {
            return "";
        }
        stringBuffer.append(strTrim.substring(i, iIndexOf2)).append("\r\n");
        String strSubstring = strTrim.substring(iIndexOf2);
        if (!strSubstring.endsWith(C0164.m3495(14169, 4, 47)) || !strTrim2.equals(strSubstring.replace(CoreConstants.DASH_CHAR, CardNumberHelper.DIVIDER).replace('\t', CardNumberHelper.DIVIDER).replace(C0164.m3495(14173, 3, 112), "").trim())) {
            return "";
        }
        stringBuffer.append(strSubstring);
        return stringBuffer.toString();
    }

    public static String m5932(C0538 c0538, String str) {
        String strM5954;
        String strM3495;
        int i;
        int i2 = c0538.f3116;
        if (i2 == 1) {
            strM5954 = m5954(c0538.m5409());
        } else if (i2 == 2) {
            strM5954 = m5953(c0538.m5419());
        } else if (i2 == 3) {
            strM5954 = m5955(c0538.m5417(), false);
        } else {
            if (i2 != 4) {
                throw new C0414(288, C0164.m3495(8998, 23, 102));
            }
            strM5954 = m5929(c0538.m5411(), false);
        }
        if (C0259.m3856(str)) {
            return strM5954;
        }
        byte[] bArrM3905 = C0259.m3905(C0259.m3902(strM5954), C0164.m3495(9021, 11, 0));
        String strM3496 = C0164.m3495(8059, 21, 117);
        String strM3497 = C0164.m3495(8080, 21, 9);
        String strM3498 = C0164.m3495(8101, 18, 101);
        byte[] bArrM4227 = C0308.m4227(8);
        byte[] bArrM4228 = C0308.m4227(8);
        C0530 c0530 = new C0530();
        c0530.m5379(bArrM4227, 4);
        c0530.m5394(2048);
        c0530.m5370();
        C0530 c0531 = new C0530();
        c0531.m5396(strM3497);
        c0531.m5398(c0530);
        c0531.m5370();
        C0530 c0532 = new C0530();
        c0532.m5398(c0531);
        C0530 c0533 = new C0530();
        c0533.m5396(strM3498);
        c0533.m5379(bArrM4228, 4);
        c0533.m5370();
        c0532.m5398(c0533);
        c0532.m5370();
        C0530 c0534 = new C0530();
        c0534.m5396(strM3496);
        c0534.m5398(c0532);
        c0534.m5370();
        C0530 c0535 = new C0530();
        c0535.m5398(c0534);
        String strM3499 = C0164.m3495(8119, 12, 27);
        String strM34910 = C0164.m3495(8131, 8, 99);
        if (!C0259.m3856(strM3499) && !strM3499.equals(C0164.m3495(1464, 12, 82)) && !strM3499.equals(C0164.m3495(1476, 8, 96)) && !strM3499.equals(C0164.m3495(1484, 12, 105))) {
            if (strM3499.equalsIgnoreCase(C0164.m3495(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 11, 65))) {
                strM3495 = C0164.m3495(1511, 3, 38);
                i = 16;
            } else if (strM3499.equalsIgnoreCase(C0164.m3495(1514, 11, 114))) {
                strM3495 = C0164.m3495(1525, 3, 28);
                i = 32;
            } else {
                throw new C0414(271, C0164.m3495(1528, 60, 54) + strM3499 + "\".");
            }
        } else {
            strM3495 = C0164.m3495(1496, 4, 122);
            i = 24;
        }
        byte[] bArr = new byte[i];
        try {
            AbstractC0313 abstractC0313M4220 = C0308.m4220(strM3495);
            abstractC0313M4220.f1690 = strM3499.endsWith(C0164.m3495(1588, 3, 112)) ? 4 : 1;
            abstractC0313M4220.f1686 = 2;
            try {
                C0415 c0415 = new C0415();
                if (strM34910 != null) {
                    c0415.f2140 = strM34910;
                }
                c0415.f2139 = str;
                if (bArrM4227.length > 8) {
                    c0415.f2138 = C0259.m3865(bArrM4227, 0, 8);
                } else {
                    c0415.f2138 = bArrM4227;
                }
                c0415.m4674(2048, bArr, null, false);
                if (bArrM4228.length > 0) {
                    bArrM4227 = bArrM4228;
                }
                c0535.m5367(abstractC0313M4220.mo3117(bArr, bArrM4227).mo3122(bArrM3905, 0, bArrM3905.length));
                c0535.m5370();
                return C0259.m3892(C0259.m3878(c0535.m5376(), C0164.m3495(9032, 21, 19)));
            } catch (Exception e) {
                throw new C0414(271, C0164.m3495(1591, 24, 19) + C0414.m4672(e) + ").");
            }
        } catch (Exception e2) {
            throw new C0414(271, C0414.m4672(e2));
        }
    }

    public static String m5909(int i) {
        String string = (i & 1) == 1 ? C0663.m5891("").append(C0164.m3495(17237, 80, 18)).toString() : "";
        if ((i & 32) != 32) {
            return string;
        }
        if (string.length() > 0) {
            string = C0663.m5880(string, "\r\n");
        }
        return C0663.m5891(string).append(C0164.m3495(17317, 67, 63)).toString();
    }

    public static byte[] m5992(byte[] bArr, byte[] bArr2, String str, String str2) {
        byte[] bArrMo3122;
        if (str2 == null || str2.equalsIgnoreCase(C0164.m3495(1666, 4, 74))) {
            return bArr;
        }
        String lowerCase = str2.toLowerCase();
        if (lowerCase.equals(C0164.m3495(1670, 10, 21))) {
            try {
                AbstractC0313 abstractC0313M4220 = C0308.m4220(C0164.m3495(1680, 3, 44));
                abstractC0313M4220.f1690 = 1;
                try {
                    byte[] bArr3 = new byte[32];
                    byte[] bArr4 = new byte[16];
                    if (bArr2 != null) {
                        System.arraycopy(bArr2, 0, bArr3, 0, 32);
                        System.arraycopy(bArr2, 32, bArr4, 0, 16);
                    } else {
                        byte[] bArrM3858 = C0259.m3858(str);
                        AbstractC0317 abstractC0317M4217 = C0308.m4217(C0164.m3495(1683, 4, 10));
                        byte[] bArr5 = {0, 0, 0, 0};
                        abstractC0317M4217.mo3412(bArr5, 0, 4);
                        System.arraycopy(bArr5, 0, bArr3, 0, 4);
                        abstractC0317M4217.mo3122(bArrM3858, 0, bArrM3858.length);
                        System.arraycopy(abstractC0317M4217.f1702, 0, bArr3, 0, 20);
                        abstractC0317M4217.mo3250();
                        byte[] bArr6 = {0, 0, 0, 1};
                        abstractC0317M4217.mo3412(bArr6, 0, 4);
                        System.arraycopy(bArr6, 0, bArr3, 20, 4);
                        abstractC0317M4217.mo3122(bArrM3858, 0, bArrM3858.length);
                        System.arraycopy(abstractC0317M4217.f1702, 0, bArr3, 20, 12);
                    }
                    synchronized (f3699) {
                        bArrMo3122 = abstractC0313M4220.mo3118(bArr3, bArr4).mo3122(bArr, 0, bArr.length);
                    }
                    return bArrMo3122;
                } catch (Exception e) {
                    throw new C0414(e, 271, C0164.m3495(1687, 55, 47) + C0414.m4672(e) + ").");
                }
            } catch (Exception e2) {
                throw new C0414(271, C0414.m4672(e2));
            }
        }
        throw new C0414(271, C0164.m3495(1742, 60, 0) + lowerCase + "\".");
    }

    public static byte[] m5988(C0322 c0322, String str, C0538 c0538, C0335 c0335) {
        C0593 c0593;
        if (c0538.m5413()) {
            C0145 c0145M5409 = c0538.m5409();
            C0348 c0348 = new C0348();
            c0348.f1855.f1869 = 0;
            c0348.f1859.f2148 = m5904(c0145M5409.f334);
            c0348.f1861.f2148 = m5904(c0145M5409.f336);
            c0348.f1854.f2148 = m5904(c0145M5409.f335);
            c0348.f1857.f2148 = m5904(c0145M5409.f331);
            c0348.f1862.f2148 = m5904(c0145M5409.f333);
            c0348.f1853.f2148 = m5904(c0145M5409.f329);
            c0348.f1863.f2148 = m5904(c0145M5409.f330);
            c0348.f1860.f2148 = m5904(c0145M5409.f332);
            c0348.f1856.f2147 = false;
            c0593 = new C0593();
            c0593.f3281.f1869 = 0;
            c0593.f3283.f811.f2701 = C0458.f2620;
            c0593.f3284.f2148 = c0348.mo3690();
            c0593.f3280.f2147 = true;
        } else if (c0538.m5414()) {
            C0130 c0130M5419 = c0538.m5419();
            C0470 c0470 = new C0470();
            c0470.f2698.f2148 = m5904(c0130M5419.f256);
            c0470.f2696.f2148 = m5904(c0130M5419.f259);
            c0470.f2697.f2148 = m5904(c0130M5419.f258);
            C0646 c0646 = new C0646();
            c0646.f2148 = m5904(c0130M5419.f255);
            c0593 = new C0593();
            c0593.f3281.f1869 = 0;
            C0370 c0370 = c0593.f3283;
            c0370.f811.f2701 = C0458.f2668;
            c0370.f812 = c0470;
            c0593.f3284.f2148 = c0646.mo3690();
            c0593.f3280.f2147 = true;
        } else if (c0538.m5418() || c0538.m5412()) {
            C0158 c0158M5417 = c0538.m5418() ? c0538.m5417() : c0538.m5411();
            C0593 c0594 = new C0593();
            c0594.f3281.f1869 = 0;
            if (c0158M5417.m3439()) {
                C0530 c0530 = new C0530();
                c0530.m5367(c0158M5417.f486);
                c0594.f3284.f2148 = c0530.m5376();
                c0594.f3283.f811.f2701 = c0158M5417.m3437();
                c0594.f3283.f812.f2147 = false;
                c0594.f3280.f2147 = false;
                if (c0158M5417.m3432()) {
                    c0594.f3281.f1869 = 1;
                    C0530 c0531 = new C0530();
                    c0531.m5379(c0158M5417.f485, 129);
                    c0594.f3282 = c0531.m5376();
                }
            } else {
                C0530 c0532 = new C0530();
                c0532.m5393();
                c0532.m5394(1);
                c0532.m5379(C0158.m3426(c0158M5417.f491, C0158.m3423(c0158M5417.m3429())), 4);
                byte[] bArrM3447 = c0158M5417.m3447(false);
                c0532.m5383(161);
                c0532.m5386(bArrM3447, 3);
                c0532.m5362();
                c0532.m5363();
                c0594.f3284.f2148 = c0532.m5376();
                C0472 c0472 = new C0472();
                c0472.f2701 = c0158M5417.m3437();
                C0370 c0371 = c0594.f3283;
                c0371.f811.f2701 = C0458.f2650;
                c0371.f812 = c0472;
                c0594.f3280.f2147 = true;
            }
            c0593 = c0594;
        } else {
            c0593 = null;
        }
        C0183 c0183 = new C0183();
        byte[] bArrM4227 = C0308.m4227(8);
        C0308.m4246(bArrM4227, 0, bArrM4227.length);
        c0183.f617.f2148 = bArrM4227;
        c0183.f618.f1869 = 2000;
        C0426 c0426 = new C0426();
        C0374 c0374 = c0426.f2189;
        c0374.f811.f2701 = C0458.f2605;
        c0374.f812 = c0183;
        c0426.f2190.f2148 = m5991(c0593.mo3690(), C0458.f2605, c0183.f617.f2148, c0183.f618.f1869, str);
        C0401 c0401 = new C0401();
        c0401.f1381.f2701 = C0458.f2616;
        C0591 c0591 = new C0591();
        c0591.f2148 = C0259.m3849(16777216);
        c0401.f1382.f3176.add(c0591);
        C0401 c0402 = new C0401();
        c0402.f1381.f2701 = C0458.f2633;
        Random random = new Random();
        String string = "";
        for (int i = 0; i < 18; i++) {
            string = C0663.m5891(string).append(random.nextInt(9)).toString();
        }
        C0418 c0418 = new C0418();
        c0418.f2150 = 30;
        c0418.f2148 = C0259.m3903(string, C0164.m3495(1845, 8, 20));
        c0402.f1382.f3176.add(c0418);
        C0412 c0412 = new C0412();
        c0412.f2128.f2701 = C0458.f2640;
        c0412.f2129.f1271 = c0426;
        c0412.f2130.f3176.add(c0401);
        c0412.f2130.f3176.add(c0402);
        C0399 c0399 = new C0399();
        c0399.f3176.add(c0412);
        C0226 c0226 = new C0226();
        c0226.f2148 = c0399.mo3690();
        C0302 c0302 = new C0302();
        c0302.f1617.f2701 = C0458.f2613;
        c0302.f1618.f1271 = c0226;
        C0101 c0101 = new C0101();
        c0101.f2148 = c0322.mo3690();
        C0399 c03910 = new C0399();
        m5972(c03910, c0401, c0101);
        if (c0335 != null) {
            for (C0335 c0336 : c0335.m4354()) {
                C0101 c0102 = new C0101();
                c0102.f2148 = c0336.m4360();
                m5972(c03910, (C0401) null, c0102);
            }
        }
        C0308.m4246(bArrM4227, 0, bArrM4227.length);
        c0183.f617.f2148 = bArrM4227;
        C0271 c0271 = new C0271();
        c0271.f1379.f1869 = 0;
        C0094 c0094 = c0271.f1380;
        c0094.f76.f2701 = C0458.f2613;
        C0286 c0286 = c0094.f77;
        c0286.f811.f2701 = C0458.f2645;
        c0286.f812 = c0183;
        c0094.f78.f2148 = m5991(c03910.mo3690(), C0458.f2645, c0183.f617.f2148, c0183.f618.f1869, str);
        C0302 c0303 = new C0302();
        c0303.f1617.f2701 = C0458.f2602;
        c0303.f1618.f1271 = c0271;
        C0525 c0525 = new C0525();
        c0525.f3176.add(c0302);
        c0525.f3176.add(c0303);
        C0153 c0153 = new C0153();
        C0260 c0260 = c0153.f458.f798;
        c0260.f811.f2701 = C0458.f2628;
        c0260.f812.f2147 = false;
        byte[] bArr = new byte[20];
        C0308.m4246(bArr, 0, 20);
        c0153.f459.f2148 = bArr;
        C0416 c0416 = c0153.f458.f799;
        byte[] bArrMo3690 = c0525.mo3690();
        C0277 c0277 = new C0277();
        c0277.f1402 = bArr;
        c0277.f1404 = C0164.m3495(2490, 4, 106);
        c0277.f1403 = str;
        try {
            byte[] bArr2 = new byte[64];
            for (int i2 = 0; i2 < 64; i2++) {
                bArr2[i2] = 3;
            }
            byte[] bArrM3997 = c0277.m3997(1, bArr2, 20);
            AbstractC0403 abstractC0403M4223 = C0308.m4223(C0164.m3495(2494, 8, 46));
            abstractC0403M4223.mo4637(bArrM3997);
            c0416.f2148 = abstractC0403M4223.m4300(bArrMo3690);
            c0153.f460.f2147 = false;
            C0228 c0228 = new C0228();
            c0228.f820.f1869 = 3;
            C0302 c0304 = c0228.f821;
            c0304.f1617.f2701 = C0458.f2613;
            c0304.f1618.f1271 = new C0591(c0525.mo3690());
            c0228.f822 = c0153;
            return c0228.mo3690();
        } catch (Exception unused) {
            throw new C0414(222, C0164.m3495(2502, 38, 10));
        }
    }

    public static void m5936(C0538 c0538, byte[] bArr, String str) {
        int iM4506;
        try {
            byte[] bArrM4488 = new byte[0];
            byte[] bArr2 = new byte[32];
            byte[] bArr3 = new byte[16];
            C0382 c0382 = new C0382(bArr);
            if (c0382.m4482().equalsIgnoreCase(C0283.f1471)) {
                String lowerCase = c0382.m4494().toLowerCase();
                String strM4494 = c0382.m4494();
                if (strM4494.equalsIgnoreCase(C0164.m3495(11656, 4, 77))) {
                    c0382.m4494();
                    iM4506 = 0;
                } else {
                    c0382.m4506();
                    bArrM4488 = c0382.m4488();
                    iM4506 = c0382.m4506();
                }
                byte[] bArr4 = bArrM4488;
                c0382.m4506();
                c0382.m4506();
                C0283.m4051(str, strM4494, bArr4, iM4506, bArr2, bArr3);
                String strM4495 = c0382.m4494();
                if (strM4495.equalsIgnoreCase(C0164.m3495(11660, 7, 14))) {
                    c0382.m4488();
                    c0382.m4488();
                } else if (strM4495.equalsIgnoreCase(C0164.m3495(11667, 7, 20))) {
                    c0382.m4488();
                    c0382.m4488();
                    c0382.m4488();
                    c0382.m4488();
                } else if (strM4495.startsWith(C0164.m3495(11674, 11, 81))) {
                    c0382.m4494();
                    c0382.m4488();
                } else if (strM4495.equalsIgnoreCase(C0164.m3495(11685, 11, 4)) || strM4495.equalsIgnoreCase(C0164.m3495(11696, 9, 33))) {
                    c0382.m4488();
                }
                int iM4507 = c0382.m4506();
                if (strM4494.equalsIgnoreCase(C0164.m3495(11705, 6, 53))) {
                    if (lowerCase.startsWith(C0164.m3495(11711, 3, 112))) {
                        try {
                            AbstractC0313 abstractC0313M4220 = C0308.m4220(C0164.m3495(11739, 3, 118));
                            if (lowerCase.indexOf(C0164.m3495(11742, 4, 30)) > 0) {
                                abstractC0313M4220.f1690 = 1;
                            } else if (lowerCase.indexOf(C0164.m3495(11746, 4, 119)) > 0) {
                                abstractC0313M4220.f1690 = 6;
                            } else {
                                throw new C0414(C0164.m3495(11750, 25, 39) + lowerCase);
                            }
                            abstractC0313M4220.f1686 = 1;
                            byte[] bArrMo3122 = abstractC0313M4220.mo3118(bArr2, bArr3).mo3122(c0382.m4484(iM4507), 0, iM4507);
                            c0382.m4505();
                            c0382.m4517(bArrMo3122, 0, bArrMo3122.length);
                        } catch (Exception e) {
                            throw new C0414(271, C0414.m4672(e));
                        }
                    } else {
                        throw new C0414(C0164.m3495(11714, 25, 81) + lowerCase);
                    }
                }
                c0382.m4506();
                c0382.m4506();
                String strM4496 = c0382.m4494();
                if (strM4496.equalsIgnoreCase(C0164.m3495(11775, 7, 67))) {
                    c0538.f3116 = 1;
                    c0538.f3115.f334 = c0382.m4488();
                    c0538.f3115.f336 = c0382.m4488();
                    c0538.f3115.f335 = c0382.m4488();
                    c0538.f3115.f332 = c0382.m4488();
                    c0538.f3115.f331 = c0382.m4488();
                    c0538.f3115.f333 = c0382.m4488();
                    return;
                }
                if (strM4496.equalsIgnoreCase(C0164.m3495(11782, 7, 62))) {
                    c0538.f3116 = 2;
                    c0538.f3113.f259 = c0382.m4488();
                    c0538.f3113.f258 = c0382.m4488();
                    c0538.f3113.f256 = c0382.m4488();
                    c0538.f3113.f257 = c0382.m4488();
                    c0538.f3113.f255 = c0382.m4488();
                    return;
                }
                if (strM4496.startsWith(C0164.m3495(11789, 11, 14))) {
                    c0538.f3116 = 3;
                    c0538.f3114.f488 = C0612.m5637(c0382.m4494());
                    c0538.f3114.m3446(c0382.m4488());
                    c0538.f3114.f491 = C0158.m3426(c0382.m4488(), c0538.f3114.m3427());
                    return;
                }
                if (strM4496.equalsIgnoreCase(C0164.m3495(11800, 11, 119))) {
                    byte[] bArrM4489 = c0382.m4488();
                    byte[] bArrM44810 = c0382.m4488();
                    String strM4497 = c0382.m4494();
                    int length = bArrM44810.length / 2;
                    byte[] bArr5 = new byte[length];
                    System.arraycopy(bArrM44810, 0, bArr5, 0, length);
                    c0538.f3116 = 4;
                    C0158 c0158 = c0538.f3111;
                    c0158.f488 = 3;
                    c0158.f486 = bArr5;
                    c0158.f485 = bArrM4489;
                    c0538.f3112.put(C0164.m3495(11811, 7, 110), strM4497);
                    return;
                }
                if (strM4496.equalsIgnoreCase(C0164.m3495(11818, 9, 61))) {
                    byte[] bArrM44811 = c0382.m4488();
                    byte[] bArrM44812 = c0382.m4488();
                    String strM4498 = c0382.m4494();
                    int length2 = bArrM44812.length / 2;
                    byte[] bArr6 = new byte[length2];
                    System.arraycopy(bArrM44812, 0, bArr6, 0, length2);
                    c0538.f3116 = 4;
                    C0158 c0159 = c0538.f3111;
                    c0159.f488 = 4;
                    c0159.f486 = bArr6;
                    c0159.f485 = bArrM44811;
                    c0538.f3112.put(C0164.m3495(11827, 7, 67), strM4498);
                    return;
                }
                return;
            }
            throw new C0414(C0164.m3495(11635, 21, 119));
        } catch (C0414 e2) {
            throw e2;
        } catch (C0537 e3) {
            throw new C0414(271, C0164.m3495(11834, 38, 64) + C0414.m4672(e3));
        } catch (Exception e4) {
            throw new C0414(271, C0164.m3495(11872, 38, 59) + C0414.m4672(e4));
        }
    }

    public static C0322 m5966(C0538 c0538, String str, int i, int i2, int i3, C0335 c0335, Vector vector, String str2) throws C0537 {
        String strM3437;
        int iM4371 = c0335 == null ? c0538.f3116 : c0335.m4371();
        if (iM4371 == 1) {
            if (str2 != null && str2.length() > 0) {
                String upperCase = str2.toUpperCase();
                if (upperCase.indexOf(C0164.m3495(2189, 3, 23)) >= 0) {
                    strM3437 = C0458.f2648;
                } else if (upperCase.indexOf(C0164.m3495(2192, 3, 121)) >= 0) {
                    strM3437 = C0458.f2604;
                } else if (upperCase.indexOf(C0164.m3495(2195, 4, 56)) < 0 && upperCase.indexOf(C0164.m3495(2199, 5, 115)) < 0) {
                    if (upperCase.indexOf(C0164.m3495(2204, 6, 92)) < 0 && upperCase.indexOf(C0164.m3495(2210, 7, 125)) < 0) {
                        if (upperCase.indexOf(C0164.m3495(2217, 6, 1)) < 0 && upperCase.indexOf(C0164.m3495(2223, 7, 96)) < 0) {
                            if (upperCase.indexOf(C0164.m3495(2230, 6, 89)) < 0 && upperCase.indexOf(C0164.m3495(2236, 7, 107)) < 0) {
                                strM3437 = (upperCase.indexOf(C0164.m3495(2243, 6, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY)) >= 0 || upperCase.indexOf(C0164.m3495(2249, 7, 53)) >= 0) ? C0458.f2660 : str2;
                            } else {
                                strM3437 = C0458.f2655;
                            }
                        } else {
                            strM3437 = C0458.f2641;
                        }
                    } else {
                        strM3437 = C0458.f2625;
                    }
                } else {
                    strM3437 = C0458.f2612;
                }
            } else {
                strM3437 = C0458.f2612;
            }
        } else if (iM4371 == 2) {
            strM3437 = C0458.f2654;
        } else if (iM4371 == 3) {
            int i4 = c0538.f3114.f488;
            if (i4 == 0 || i4 == 10 || i4 == 9 || i4 == 8 || i4 == 7) {
                strM3437 = C0458.f2664;
            } else if (i4 == 1) {
                strM3437 = C0458.f2659;
            } else if (i4 == 2) {
                strM3437 = C0458.f2647;
            } else {
                throw new C0537(C0164.m3495(2167, 22, 34));
            }
        } else {
            strM3437 = iM4371 == 4 ? c0538.f3111.m3437() : "";
        }
        C0230 c0230 = new C0230();
        c0230.f1869 = 2;
        C0322 c0322 = new C0322();
        C0175 c0175 = c0322.f1731;
        c0175.f577.f1271 = c0230;
        c0175.f582.f2148 = new BigInteger(1, C0259.m3849(i)).toByteArray();
        if (c0335 == null) {
            c0322.f1731.f576.f714 = m5934(str);
        } else {
            C0322 c0323 = new C0322();
            c0323.m4680(c0335.m4360());
            c0322.f1731.f576.f714 = c0323.f1731.f585.f714;
        }
        int[] iArr = new int[1];
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, i2);
        Date time = calendar.getTime();
        calendar.add(5, i3);
        Date time2 = calendar.getTime();
        c0322.f1731.f580.f3331.f902 = m5952(time, iArr);
        C0607 c0607 = c0322.f1731.f580;
        c0607.f3331.f2150 = iArr[0];
        c0607.f3332.f902 = m5952(time2, iArr);
        C0175 c0176 = c0322.f1731;
        c0176.f580.f3332.f2150 = iArr[0];
        c0176.f585.f714 = m5934(str);
        C0175 c0177 = c0322.f1731;
        C0511 c0511 = new C0511();
        if (c0538.m5413()) {
            C0308.m4241(c0538.f3115);
        }
        if (c0538.m5414()) {
            C0308.m4240(c0538.f3113);
        }
        c0511.m4680(C0259.m3905(C0259.m3902(m5931(c0538)), C0164.m3495(8242, 10, 87)));
        c0177.f575 = c0511;
        c0322.f1731.f584.f811.f2701 = strM3437;
        if (vector != null && vector.size() > 0) {
            c0322.f1731.f579.f2147 = true;
            C0119 c0119 = new C0119();
            for (int i5 = 0; i5 < vector.size(); i5++) {
                C0236 c0236 = (C0236) vector.get(i5);
                String str3 = c0236.f846;
                C0093 c0093 = new C0093();
                c0093.f73.f2701 = str3;
                c0093.f75.f2148 = c0236.f844;
                if (c0236.f845) {
                    C0418 c0418 = c0093.f74;
                    c0418.f2147 = true;
                    c0418.f2148 = new byte[]{-1};
                } else {
                    c0093.f74.f2147 = false;
                }
                c0119.f3176.add(c0093);
            }
            c0322.f1731.f579.f2148 = c0119.mo3690();
        }
        byte[] bArrM4257 = null;
        if (c0335 != null) {
            if (c0335.m4371() == 1) {
                c0322.f1732.f811.f2701 = strM3437;
                bArrM4257 = C0308.m4257((C0145) m5948(c0335, false), c0322.f1731.mo3690(), m5916(strM3437));
            } else if (c0335.m4371() == 2) {
                c0322.f1732.f811.f2701 = strM3437;
                byte[] bArrM4258 = C0308.m4257((C0130) m5947(c0335), c0322.f1731.mo3690(), C0164.m3495(1882, 4, 64));
                C0169 c0169 = new C0169();
                c0169.f554.f2148 = C0259.m3865(bArrM4258, 0, 20);
                c0169.f555.f2148 = C0259.m3865(bArrM4258, 20, 20);
                bArrM4257 = c0169.mo3690();
            } else if (c0335.m4371() != 3) {
                if (c0335.m4371() == 4) {
                    throw new C0414(C0164.m3495(1931, 45, 127));
                }
            } else {
                throw new C0414(C0164.m3495(1886, 45, 46));
            }
        } else if (c0538.m5413()) {
            c0322.f1732.f811.f2701 = strM3437;
            bArrM4257 = C0308.m4257(c0538.m5409(), c0322.f1731.mo3690(), m5916(strM3437));
        } else if (c0538.m5414()) {
            c0322.f1732.f811.f2701 = strM3437;
            byte[] bArrM4259 = C0308.m4257(c0538.m5419(), c0322.f1731.mo3690(), C0164.m3495(1976, 4, 76));
            C0169 c01610 = new C0169();
            c01610.f554.f2148 = C0259.m3865(bArrM4259, 0, bArrM4259.length / 2);
            c01610.f555.f2148 = C0259.m3865(bArrM4259, bArrM4259.length / 2, bArrM4259.length / 2);
            bArrM4257 = c01610.mo3690();
        } else if (c0538.m5418()) {
            c0322.f1732.f811.f2701 = strM3437;
            byte[] bArrM42510 = C0308.m4257(c0538.m5417(), c0322.f1731.mo3690(), m5902(strM3437));
            C0366 c0366 = new C0366();
            c0366.f1919.f2148 = C0308.m4265(C0259.m3865(bArrM42510, 0, bArrM42510.length / 2));
            c0366.f1920.f2148 = C0308.m4265(C0259.m3865(bArrM42510, bArrM42510.length / 2, bArrM42510.length / 2));
            bArrM4257 = c0366.mo3690();
        } else if (c0538.m5412()) {
            C0222 c0222 = c0322.f1732;
            c0222.f811.f2701 = strM3437;
            c0222.f812.f2147 = false;
            bArrM4257 = C0308.m4257(c0538.m5411(), c0322.f1731.mo3690(), (String) null);
        }
        byte[] bArr = new byte[bArrM4257.length + 1];
        System.arraycopy(bArrM4257, 0, bArr, 1, bArrM4257.length);
        c0322.f1733.f2148 = bArr;
        return c0322;
    }

    public static byte[] m5937(String str, String str2) {
        if (str.contains(C0164.m3495(14246, 6, 93) + str2) && str.contains(C0164.m3495(14252, 4, 57) + str2)) {
            Vector vector = new Vector();
            Vector vector2 = new Vector();
            Vector vector3 = new Vector();
            if (!m5984(str, vector, vector2, vector3)) {
                return null;
            }
            for (int i = 0; i < vector.size(); i++) {
                if (str2.equals(vector.get(i))) {
                    return (byte[]) vector3.get(i);
                }
            }
        }
        return null;
    }

    public static void m5935(Vector vector) {
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        for (int i = 0; i < vector.size(); i++) {
            vector3.add(((C0136) vector.get(i)).f286);
            vector2.add(vector.get(i));
        }
        m5969(vector3);
        for (int i2 = 0; i2 < vector.size(); i2++) {
            vector.setElementAt(vector2.get(i2), vector3.indexOf(((C0136) vector2.get(i2)).f286));
        }
    }

    public static boolean m5985(byte[] bArr, byte[] bArr2) throws C0537 {
        C0213 c0213 = new C0213();
        c0213.m4680(bArr);
        C0322 c0322 = c0213.f793;
        return m5986(c0322.f1733.f2148, c0322.f1731.mo3690(), c0322.f1732.f811.f2701, new C0335(9, bArr2, "", "*", C0212.f791));
    }

    public static boolean m5986(byte[] bArr, byte[] bArr2, String str, C0335 c0335) throws C0537 {
        if (c0335.m4371() == 1) {
            return C0308.m4248((C0145) m5948(c0335, false), bArr, bArr2, m5916(str));
        }
        if (c0335.m4371() == 2) {
            C0130 c0130 = (C0130) m5947(c0335);
            C0169 c0169 = new C0169();
            c0169.mo3411(bArr, 1);
            byte[] bArr3 = c0169.f554.f2148;
            byte[] bArr4 = new byte[bArr3.length + c0169.f555.f2148.length];
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            byte[] bArr5 = c0169.f555.f2148;
            System.arraycopy(bArr5, 0, bArr4, c0169.f554.f2148.length, bArr5.length);
            return C0308.m4248(c0130, bArr4, bArr2, C0164.m3495(2067, 4, 53));
        }
        if (c0335.m4371() == 3) {
            C0158 c0158 = (C0158) m5927(c0335);
            int length = bArr.length - 1;
            byte[] bArrM3865 = new byte[256];
            if (256 > length) {
                System.arraycopy(bArr, 1, bArrM3865, 0, length);
            } else {
                bArrM3865 = C0259.m3865(bArr, 1, length);
            }
            byte[] bArr6 = new byte[length];
            System.arraycopy(bArrM3865, 0, bArr6, 0, length);
            return C0308.m4248(c0158, bArr6, bArr2, m5902(str));
        }
        if (c0335.m4371() != 4) {
            return false;
        }
        C0158 c0159 = (C0158) m5908(c0335);
        int length2 = bArr.length - 1;
        byte[] bArrM3866 = new byte[256];
        if (256 > length2) {
            System.arraycopy(bArr, 1, bArrM3866, 0, length2);
        } else {
            bArrM3866 = C0259.m3865(bArr, 1, length2);
        }
        byte[] bArr7 = new byte[length2];
        System.arraycopy(bArrM3866, 0, bArr7, 0, length2);
        return C0308.m4248(c0159, bArr7, bArr2, (String) null);
    }

    public static byte[] m5991(byte[] bArr, String str, byte[] bArr2, int i, String str2) {
        int i2;
        if (str.equals(C0458.f2653)) {
            i2 = 128;
        } else {
            i2 = 40;
            if (!str.equals(C0458.f2642)) {
                if (str.equals(C0458.f2605)) {
                    i2 = 192;
                } else if (str.equals(C0458.f2643) || str.equals(C0458.f2638)) {
                    i2 = 128;
                } else {
                    str.equals(C0458.f2645);
                }
            }
        }
        C0277 c0277 = new C0277();
        c0277.f1402 = bArr2;
        c0277.f1404 = C0164.m3495(2256, 4, 19);
        c0277.f1403 = str2;
        try {
            byte[] bArrM3995 = c0277.m3995(i, i2 / 8);
            byte[] bArrM3996 = c0277.m3996(i, 8);
            if (!str.equals(C0458.f2653) && !str.equals(C0458.f2642)) {
                if (!str.equals(C0458.f2605) && !str.equals(C0458.f2643)) {
                    if (!str.equals(C0458.f2638) && !str.equals(C0458.f2645)) {
                        return C0320.f1706;
                    }
                    if (!C0320.f1718) {
                        return C0558.m5509(bArr, bArrM3995, bArrM3996, i2);
                    }
                    throw new C0414(271, C0164.m3495(2345, 76, 78));
                }
                AbstractC0313 abstractC0313M4220 = C0308.m4220(C0164.m3495(2336, 9, 34));
                abstractC0313M4220.f1690 = 1;
                abstractC0313M4220.f1686 = 2;
                return abstractC0313M4220.mo3117(bArrM3995, bArrM3996).mo3122(bArr, 0, bArr.length);
            }
            if (!C0320.f1718) {
                return C0558.m5469(bArr, bArrM3995);
            }
            throw new C0414(271, C0164.m3495(2260, 76, 48));
        } catch (C0414 e) {
            throw new C0414(271, e.getMessage());
        } catch (Exception unused) {
            throw new C0414(271, C0164.m3495(2421, 69, 101));
        }
    }

    public static void m5972(C0399 c0399, C0401 c0401, C0101 c0101) {
        C0123 c0123 = new C0123();
        c0123.f243.f2701 = C0458.f2649;
        c0123.f244.f1271 = c0101;
        C0412 c0412 = new C0412();
        c0412.f2128.f2701 = C0458.f2669;
        c0412.f2129.f1271 = c0123;
        if (c0401 != null) {
            c0412.f2130.f3176.add(c0401);
        }
        c0399.f3176.add(c0412);
    }

    public static String m5956(C0387 c0387) {
        C0387 c0388 = new C0387();
        c0387.m4555();
        if (c0387.m4533() == 0) {
            return null;
        }
        if (c0387.m4546(0) != '=' && c0387.m4546(0) != ',') {
            if (c0387.m4546(0) == '\"') {
                int i = 1;
                while (i < c0387.m4533()) {
                    if (c0387.m4546(i) == '\\') {
                        i++;
                    } else if (c0387.m4546(i) == '\"') {
                        c0388.m4567(c0387);
                        int i2 = i + 1;
                        c0388.m4561(0, i2);
                        c0387.m4534(i2);
                        return c0388.m4571();
                    }
                    i++;
                }
                return null;
            }
            int i3 = 0;
            while (i3 < c0387.m4533()) {
                if (c0387.m4546(i3) == '\\') {
                    i3++;
                } else if (c0387.m4546(i3) == ',' || c0387.m4546(i3) == '=') {
                    c0388.m4567(c0387);
                    c0388.m4561(0, i3);
                    c0387.m4534(i3);
                    return c0388.m4571();
                }
                i3++;
            }
            c0388.m4567(c0387);
            c0387.m4541();
            return c0388.m4571();
        }
        c0388.m4567(c0387);
        c0388.m4561(0, 1);
        c0387.m4534(1);
        return c0388.m4571();
    }

    public static String m5950(String str) {
        try {
            Vector vector = new Vector();
            Vector vector2 = new Vector();
            C0387 c0387 = new C0387();
            c0387.m4531(str);
            while (c0387.m4533() > 0) {
                String strM5956 = m5956(c0387);
                String strM5957 = m5956(c0387);
                if (strM5957 != null && strM5957.equals("=")) {
                    String strM5958 = m5956(c0387);
                    if (strM5956.toUpperCase().startsWith(C0164.m3495(2540, 4, 31)) && m5920(strM5956.substring(4))) {
                        strM5956 = strM5956.substring(4);
                    }
                    if (m5920(strM5956) && f3700.containsKey(strM5956)) {
                        strM5956 = m5922(strM5956);
                    }
                    vector.add(strM5956.toUpperCase());
                    vector2.add(strM5958);
                    String strM5959 = m5956(c0387);
                    if (strM5959 == null && c0387.m4533() == 0) {
                        break;
                    }
                    if (!strM5959.equals(",")) {
                    }
                }
                return str;
            }
            for (int i = 0; i < vector.size(); i++) {
                if (((String) vector.get(i)).equals(ExifInterface.LATITUDE_SOUTH)) {
                    vector.setElementAt("ST", i);
                }
                if (((String) vector.get(i)).equals(C0164.m3495(2544, 5, 81))) {
                    vector.setElementAt(ExifInterface.LONGITUDE_EAST, i);
                }
                if (((String) vector.get(i)).equals(C0164.m3495(2549, 12, 80))) {
                    vector.setElementAt(ExifInterface.LONGITUDE_EAST, i);
                }
                if (((String) vector.get(i)).equals(C0164.m3495(2561, 5, 33))) {
                    vector.setElementAt(ExifInterface.GPS_DIRECTION_TRUE, i);
                }
                if (((String) vector2.get(i)).startsWith("#")) {
                    String strM3888 = C0259.m3888((String) vector2.get(i), 1);
                    C0418 c0418 = new C0418();
                    c0418.f2143 = false;
                    c0418.m4680(C0259.m3863(strM3888));
                    vector2.setElementAt(m5957(c0418), i);
                }
            }
            for (int i2 = 0; i2 < vector.size(); i2++) {
                for (int size = vector.size() - 1; size > i2; size--) {
                    int i3 = size - 1;
                    String str2 = (String) vector.get(i3);
                    String str3 = (String) vector.get(size);
                    String str4 = (String) vector2.get(i3);
                    String str5 = (String) vector2.get(size);
                    if (str2.compareTo(str3) > 0 || (str2.compareTo(str3) == 0 && str4.compareTo(str5) > 0)) {
                        vector.setElementAt(str3, i3);
                        vector2.setElementAt(str5, i3);
                        vector.setElementAt(str2, size);
                        vector2.setElementAt(str4, size);
                    }
                }
            }
            String str6 = "";
            for (int i4 = 0; i4 < vector.size(); i4++) {
                if (str6.length() > 0) {
                    str6 = str6 + ",";
                }
                str6 = str6 + vector.get(i4) + "=" + vector2.get(i4);
            }
            return str6;
        } catch (Exception unused) {
        }
    }

    public static boolean m5982(String str, String str2) {
        if (str2.indexOf(str) >= 0) {
            return true;
        }
        return m5950(str2).indexOf(m5950(str)) >= 0;
    }

    public static String m5954(C0145 c0145) {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        int i;
        int i2;
        int i3;
        C0530 c0530 = new C0530();
        c0530.m5370();
        byte[] bArr5 = c0145.f335;
        boolean z = (bArr5 != null && bArr5.length > 0) || ((bArr = c0145.f331) != null && bArr.length > 0 && (bArr2 = c0145.f333) != null && bArr2.length > 0);
        C0530 c0531 = new C0530();
        c0531.m5370();
        byte[] bArr6 = c0145.f335;
        if ((bArr6 != null && bArr6.length > 0) || ((bArr3 = c0145.f331) != null && bArr3.length > 0 && (bArr4 = c0145.f333) != null && bArr4.length > 0)) {
            c0531.m5394(0);
        }
        byte[] bArr7 = c0145.f334;
        if (bArr7 != null && bArr7.length > 0) {
            c0531.m5385(bArr7);
        }
        byte[] bArr8 = c0145.f336;
        if (bArr8 != null && bArr8.length > 0) {
            c0531.m5385(bArr8);
        }
        byte[] bArr9 = c0145.f335;
        if (bArr9 != null && bArr9.length > 0) {
            c0531.m5385(bArr9);
        }
        byte[] bArr10 = c0145.f331;
        if (bArr10 != null && bArr10.length > 0) {
            c0531.m5385(bArr10);
        }
        byte[] bArr11 = c0145.f333;
        if (bArr11 != null && bArr11.length > 0) {
            c0531.m5385(bArr11);
        }
        byte[] bArr12 = c0145.f329;
        if (bArr12 != null && bArr12.length > 0) {
            c0531.m5385(bArr12);
        }
        byte[] bArr13 = c0145.f330;
        if (bArr13 != null && bArr13.length > 0) {
            c0531.m5385(bArr13);
        }
        byte[] bArr14 = c0145.f332;
        if (bArr14 != null && bArr14.length > 0) {
            c0531.m5385(bArr14);
        }
        byte[] bArrM5376 = c0531.m5376();
        if (z) {
            c0530.m5394(0);
        }
        C0530 c0532 = new C0530();
        c0532.m5370();
        c0532.m5396(C0458.f2620);
        try {
            C0530.m5358(c0532.f3095, 5, 0);
            c0530.m5398(c0532);
            if (z) {
                c0530.m5379(bArrM5376, 4);
            } else {
                c0530.m5386(bArrM5376, 3);
            }
            byte[] bArrM5377 = c0530.m5376();
            if (z) {
                i = 11;
                i2 = 48;
                i3 = 6540;
            } else {
                i = 10;
                i2 = 74;
                i3 = 6551;
            }
            return C0259.m3882(C0259.m3878(bArrM5377, C0164.m3495(i3, i, i2)));
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public static String m5953(C0130 c0130) {
        int i;
        int i2;
        int i3;
        C0530 c0530 = new C0530();
        c0530.m5370();
        byte[] bArr = c0130.f255;
        boolean z = bArr != null && bArr.length > 0;
        if (z) {
            c0530.m5394(0);
        }
        C0530 c0531 = new C0530();
        c0531.m5370();
        c0531.m5396(C0458.f2668);
        C0530 c0532 = new C0530();
        c0532.m5370();
        c0532.m5385(c0130.f259);
        c0532.m5385(c0130.f258);
        c0532.m5385(c0130.f256);
        c0531.m5398(c0532);
        c0530.m5398(c0531);
        if (z) {
            C0530 c0533 = new C0530();
            c0533.m5385(c0130.f255);
            c0530.m5379(c0533.m5376(), 4);
        } else {
            C0530 c0534 = new C0530();
            c0534.m5385(c0130.f257);
            c0530.m5386(c0534.m5376(), 3);
        }
        byte[] bArrM5376 = c0530.m5376();
        if (z) {
            i = 11;
            i2 = 5;
            i3 = 6561;
        } else {
            i = 10;
            i2 = 118;
            i3 = 6572;
        }
        return C0259.m3882(C0259.m3878(bArrM5376, C0164.m3495(i3, i, i2)));
    }

    public static String m5955(C0158 c0158, boolean z) {
        byte[] bArr;
        byte[] bArr2;
        int i = c0158.f488;
        if (i != 0 && i != 1 && i != 2 && i != 10 && i != 9 && i != 8 && i != 7) {
            return "";
        }
        boolean z2 = (z || (bArr2 = c0158.f491) == null || bArr2.length <= 0) ? false : true;
        C0530 c0530 = new C0530();
        c0530.m5393();
        if (z2) {
            c0530.m5394(0);
        }
        c0530.m5393();
        c0530.m5396(C0163.f516);
        int i2 = c0158.f488;
        int i3 = 32;
        if (i2 == 0) {
            c0530.m5396(C0158.f484);
        } else if (i2 == 1) {
            c0530.m5396(C0158.f472);
            i3 = 48;
        } else if (i2 == 2) {
            c0530.m5396(C0158.f473);
            i3 = 66;
        } else if (i2 == 10) {
            c0530.m5396(C0158.f475);
        } else if (i2 == 9) {
            c0530.m5396(C0158.f481);
            i3 = 28;
        } else if (i2 == 8) {
            c0530.m5396(C0158.f479);
            i3 = 24;
        } else if (i2 == 7) {
            c0530.m5396(C0158.f476);
            i3 = 20;
        }
        c0530.m5363();
        if (z2) {
            c0530.m5383(4);
            c0530.m5393();
            c0530.m5394(1);
            c0530.m5379(c0158.f491, 4);
            byte[] bArr3 = c0158.f490;
            if (bArr3 != null && bArr3.length > 0 && (bArr = c0158.f487) != null && bArr.length > 0) {
                C0301 c0301 = new C0301();
                c0301.m4177((byte) 4);
                c0301.m4180(C0158.m3426(c0158.f490, i3));
                c0301.m4180(C0158.m3426(c0158.f487, i3));
                c0530.m5383(161);
                c0530.m5386(c0301.m4182(), 3);
                c0530.m5362();
            }
            c0530.m5363();
            c0530.m5362();
        } else {
            C0301 c0302 = new C0301();
            c0302.m4177((byte) 4);
            c0302.m4180(C0158.m3426(c0158.f490, i3));
            c0302.m4180(C0158.m3426(c0158.f487, i3));
            c0530.m5386(c0302.m4182(), 3);
        }
        c0530.m5363();
        return C0259.m3882(C0259.m3878(c0530.m5376(), z2 ? C0164.m3495(6582, 11, 33) : C0164.m3495(6593, 10, 48)));
    }

    public static String m5962(byte[] bArr) {
        C0420 c0420 = new C0420();
        c0420.m4680(bArr);
        String string = "";
        for (int i = 0; i < c0420.m5510(); i++) {
            C0152 c0152 = (C0152) c0420.m5511(i);
            if (c0152.f455 != null) {
                if (string.length() > 0) {
                    string = C0663.m5880(string, ",");
                }
                int i2 = c0152.f456;
                if (i2 != 0) {
                    if (i2 == 1) {
                        string = C0663.m5891(string).append(C0164.m3495(6728, 6, 20)).toString();
                    } else if (i2 == 2) {
                        string = C0663.m5891(string).append(C0164.m3495(6734, 4, 0)).toString();
                    } else if (i2 == 4) {
                        string = C0663.m5891(string).append(C0164.m3495(6738, 8, 101)).toString();
                    } else if (i2 == 6) {
                        string = C0663.m5891(string).append(C0164.m3495(6746, 4, 115)).toString();
                    } else if (i2 != 7) {
                        if (i2 != 8) {
                            throw new C0414(C0164.m3495(6757, 37, 101));
                        }
                        string = C0663.m5891(string).append(C0164.m3495(6753, 4, 31)).toString();
                    } else {
                        string = C0663.m5891(string).append(C0164.m3495(6750, 3, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY)).toString();
                    }
                }
                string = C0663.m5891(string).append(c0152.f455).toString();
            }
        }
        return string;
    }

    public static String m5960(C0511 c0511) {
        return C0259.m3882(C0259.m3878(c0511.mo3690(), C0164.m3495(6921, 10, 118)));
    }

    public static Vector m5964(C0119 c0119) {
        Vector vector = new Vector();
        for (int i = 0; i < c0119.m5510(); i++) {
            C0093 c0093 = (C0093) c0119.m5511(i);
            String str = c0093.f73.f2701;
            byte[] bArr = c0093.f75.f2148;
            C0418 c0418 = c0093.f74;
            vector.add(new C0236(str, bArr, c0418.f2147 && c0418.f2148[0] != 0));
        }
        return vector;
    }

    public static void m5976(C0538 c0538, C0511 c0511) {
        m5907(c0538, C0259.m3882(C0259.m3878(c0511.mo3690(), C0164.m3495(8252, 10, 25))));
    }

    public static AbstractC0410 m5967(C0538 c0538, String str) {
        byte[] bArr;
        int i = c0538.f3116;
        if (i == 1) {
            C0151 c0151 = new C0151();
            byte[] bArr2 = c0538.f3115.f334;
            if (bArr2 != null && bArr2.length > 0) {
                c0151.f453 = new BigInteger(1, bArr2);
            }
            byte[] bArr3 = c0538.f3115.f336;
            if (bArr3 != null && bArr3.length > 0) {
                c0151.f447 = new BigInteger(1, bArr3);
            }
            byte[] bArr4 = c0538.f3115.f335;
            if (bArr4 != null && bArr4.length > 0) {
                c0151.f448 = new BigInteger(1, bArr4);
            }
            byte[] bArr5 = c0538.f3115.f331;
            if (bArr5 != null && bArr5.length > 0) {
                c0151.f451 = new BigInteger(1, bArr5);
            }
            byte[] bArr6 = c0538.f3115.f333;
            if (bArr6 != null && bArr6.length > 0) {
                c0151.f454 = new BigInteger(1, bArr6);
            }
            byte[] bArr7 = c0538.f3115.f329;
            if (bArr7 != null && bArr7.length > 0) {
                c0151.f449 = new BigInteger(1, bArr7);
            }
            byte[] bArr8 = c0538.f3115.f330;
            if (bArr8 != null && bArr8.length > 0) {
                c0151.f450 = new BigInteger(1, bArr8);
            }
            byte[] bArr9 = c0538.f3115.f332;
            if (bArr9 != null && bArr9.length > 0) {
                c0151.f452 = new BigInteger(1, bArr9);
            }
            if (c0151.f453 != null) {
                if (c0151.f447 == null && c0151.f448 == null) {
                    throw new C0414(280, C0164.m3495(19532, 51, 100));
                }
                try {
                    KeyFactory keyFactoryM4649 = AbstractC0410.m4649(C0164.m3495(19583, 3, 57), str);
                    if (c0151.f447 != null) {
                        c0151.f2121 = keyFactoryM4649.generatePublic(new RSAPublicKeySpec(c0151.f453, c0151.f447));
                    }
                    if (c0151.f448 != null) {
                        if (c0151.f447 != null && c0151.f451 != null && c0151.f454 != null) {
                            if (c0151.f449 == null) {
                                c0151.f449 = c0151.f448.mod(c0151.f451.subtract(BigInteger.ONE));
                            }
                            if (c0151.f450 == null) {
                                c0151.f450 = c0151.f448.mod(c0151.f454.subtract(BigInteger.ONE));
                            }
                            if (c0151.f452 == null) {
                                c0151.f452 = c0151.f454.modInverse(c0151.f451);
                            }
                            c0151.f2122 = keyFactoryM4649.generatePrivate(new RSAPrivateCrtKeySpec(c0151.f453, c0151.f447, c0151.f448, c0151.f451, c0151.f454, c0151.f449, c0151.f450, c0151.f452));
                            return c0151;
                        }
                        c0151.f2122 = keyFactoryM4649.generatePrivate(new RSAPrivateKeySpec(c0151.f453, c0151.f448));
                    }
                    return c0151;
                } catch (Exception unused) {
                    throw new C0414(280, C0164.m3495(19586, 32, 96));
                }
            }
            throw new C0414(280, C0164.m3495(19498, 34, 117));
        }
        if (i == 3) {
            C0612 c0612 = new C0612();
            C0158 c0158 = c0538.f3114;
            byte[] bArr10 = c0158.f490;
            if (bArr10 != null && (bArr = c0158.f487) != null && bArr10.length > 0 && bArr.length > 0) {
                c0612.f3363 = new BigInteger(1, bArr10);
                c0612.f3360 = new BigInteger(1, c0538.f3114.f487);
                c0612.f3362 = c0538.f3114.f488;
            }
            byte[] bArr11 = c0538.f3114.f491;
            if (bArr11 != null && bArr11.length > 0) {
                c0612.f3361 = new BigInteger(1, bArr11);
            }
            if (c0612.f3362 != -1) {
                if ((c0612.f3363 != null && c0612.f3360 != null) || c0612.f3361 != null) {
                    try {
                        String strM3420 = C0158.m3420(c0612.f3362);
                        ECParameterSpec eCParameterSpecM5636 = C0612.m5636(c0612.f3362);
                        if (c0612.f3363 != null && c0612.f3360 != null) {
                            c0612.f2121 = new C0309(c0612.f3363, c0612.f3360, eCParameterSpecM5636, strM3420);
                        }
                        if (c0612.f3361 != null) {
                            c0612.f2122 = new C0269(c0612.f3361, c0612.f3363, c0612.f3360, eCParameterSpecM5636, strM3420);
                        }
                        return c0612;
                    } catch (Exception unused2) {
                        throw new C0414(280, C0164.m3495(19955, 31, 35));
                    }
                }
                throw new C0414(280, C0164.m3495(19905, 50, 27));
            }
            throw new C0414(280, C0164.m3495(19867, 38, 98));
        }
        if (i == 4) {
            String str2 = (String) c0538.f3112.get(C0164.m3495(8262, 7, 67));
            C0158 c0159 = c0538.f3111;
            int i2 = c0159.f488;
            byte[] bArr12 = c0159.f485;
            byte[] bArr13 = c0159.f486;
            if (str2 == null) {
                str2 = "";
            }
            return new C0146(i2, bArr12, bArr13, str2, str);
        }
        if (i != 2) {
            return null;
        }
        C0115 c0115 = new C0115();
        byte[] bArr14 = c0538.f3113.f259;
        if (bArr14 != null && bArr14.length > 0) {
            c0115.f193 = new BigInteger(1, bArr14);
        }
        byte[] bArr15 = c0538.f3113.f258;
        if (bArr15 != null && bArr15.length > 0) {
            c0115.f194 = new BigInteger(1, bArr15);
        }
        byte[] bArr16 = c0538.f3113.f256;
        if (bArr16 != null && bArr16.length > 0) {
            c0115.f195 = new BigInteger(1, bArr16);
        }
        byte[] bArr17 = c0538.f3113.f257;
        if (bArr17 != null && bArr17.length > 0) {
            c0115.f197 = new BigInteger(1, bArr17);
        }
        byte[] bArr18 = c0538.f3113.f255;
        if (bArr18 != null && bArr18.length > 0) {
            c0115.f196 = new BigInteger(1, bArr18);
        }
        if (c0115.f193 != null && c0115.f194 != null && c0115.f195 != null) {
            if (c0115.f197 == null && c0115.f196 == null) {
                throw new C0414(280, C0164.m3495(19665, 51, 35));
            }
            if (c0115.f197 == null) {
                c0115.f197 = c0115.f195.modPow(c0115.f196, c0115.f193);
            }
            try {
                KeyFactory keyFactoryM46410 = AbstractC0410.m4649(C0164.m3495(19716, 3, 77), str);
                if (c0115.f197 != null) {
                    c0115.f2121 = keyFactoryM46410.generatePublic(new DSAPublicKeySpec(c0115.f197, c0115.f193, c0115.f194, c0115.f195));
                }
                if (c0115.f196 != null) {
                    c0115.f2122 = keyFactoryM46410.generatePrivate(new DSAPrivateKeySpec(c0115.f196, c0115.f193, c0115.f194, c0115.f195));
                }
                return c0115;
            } catch (Exception unused3) {
                throw new C0414(280, C0164.m3495(19719, 32, 27));
            }
        }
        throw new C0414(280, C0164.m3495(19618, 47, 114));
    }

    public static String m5961(C0538 c0538) {
        return c0538.m5410() ? m5932(c0538, "") : m5931(c0538);
    }

    public static void m5975(C0538 c0538, AbstractC0410 abstractC0410) {
        c0538.m5415();
        int i = abstractC0410.f2120;
        if (i == 1) {
            C0151 c0151 = (C0151) abstractC0410;
            c0538.f3116 = 1;
            BigInteger bigInteger = c0151.f447;
            if (bigInteger != null) {
                c0538.f3115.f336 = bigInteger.toByteArray();
            }
            BigInteger bigInteger2 = c0151.f453;
            if (bigInteger2 != null) {
                c0538.f3115.f334 = bigInteger2.toByteArray();
            }
            BigInteger bigInteger3 = c0151.f451;
            if (bigInteger3 != null) {
                c0538.f3115.f331 = bigInteger3.toByteArray();
            }
            BigInteger bigInteger4 = c0151.f454;
            if (bigInteger4 != null) {
                c0538.f3115.f333 = bigInteger4.toByteArray();
            }
            BigInteger bigInteger5 = c0151.f449;
            if (bigInteger5 != null) {
                c0538.f3115.f329 = bigInteger5.toByteArray();
            }
            BigInteger bigInteger6 = c0151.f450;
            if (bigInteger6 != null) {
                c0538.f3115.f330 = bigInteger6.toByteArray();
            }
            BigInteger bigInteger7 = c0151.f452;
            if (bigInteger7 != null) {
                c0538.f3115.f332 = bigInteger7.toByteArray();
            }
            BigInteger bigInteger8 = c0151.f448;
            if (bigInteger8 != null) {
                c0538.f3115.f335 = bigInteger8.toByteArray();
                return;
            }
            return;
        }
        if (i == 2) {
            C0115 c0115 = (C0115) abstractC0410;
            c0538.f3116 = 2;
            BigInteger bigInteger9 = c0115.f193;
            if (bigInteger9 != null) {
                c0538.f3113.f259 = bigInteger9.toByteArray();
            }
            BigInteger bigInteger10 = c0115.f194;
            if (bigInteger10 != null) {
                c0538.f3113.f258 = bigInteger10.toByteArray();
            }
            BigInteger bigInteger11 = c0115.f195;
            if (bigInteger11 != null) {
                c0538.f3113.f256 = bigInteger11.toByteArray();
            }
            BigInteger bigInteger12 = c0115.f197;
            if (bigInteger12 != null) {
                c0538.f3113.f257 = bigInteger12.toByteArray();
            }
            BigInteger bigInteger13 = c0115.f196;
            if (bigInteger13 != null) {
                c0538.f3113.f255 = bigInteger13.toByteArray();
                return;
            }
            return;
        }
        if (i != 3) {
            if (i == 4) {
                C0146 c0146 = (C0146) abstractC0410;
                c0538.f3116 = c0146.f2120;
                C0158 c0158 = c0538.f3111;
                c0158.f488 = c0146.f340;
                if (c0146.f2121 != null) {
                    c0158.f485 = c0146.f337;
                }
                if (c0146.f2122 != null) {
                    c0538.f3111.f486 = c0146.f338;
                    return;
                }
                return;
            }
            return;
        }
        C0612 c0612 = (C0612) abstractC0410;
        c0538.f3116 = c0612.f2120;
        C0158 c0159 = c0538.f3114;
        c0159.f488 = c0612.f3362;
        BigInteger bigInteger14 = c0612.f3363;
        if (bigInteger14 != null) {
            c0159.f490 = C0158.m3426(bigInteger14.toByteArray(), c0538.f3114.m3427());
        }
        BigInteger bigInteger15 = c0612.f3360;
        if (bigInteger15 != null) {
            c0538.f3114.f487 = C0158.m3426(bigInteger15.toByteArray(), c0538.f3114.m3427());
        }
        BigInteger bigInteger16 = c0612.f3361;
        if (bigInteger16 != null) {
            c0538.f3114.f491 = C0158.m3426(bigInteger16.toByteArray(), c0538.f3114.m3427());
        }
    }

    public static void m5974(nts.C0538 r18, java.lang.String r19, java.lang.String r20) {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0671.m5974(nts.Ế, java.lang.String, java.lang.String):void");
    }

    public static void m5980(C0538 c0538, byte[] bArr, boolean z, boolean z2, String str) {
        byte[] bArrM5917;
        int i;
        int i2;
        int i3;
        int iM5389;
        String strM3495;
        String strM3496;
        String str2;
        byte[] bArr2;
        byte[] bArr3;
        if (z) {
            try {
                bArrM5917 = m5917(bArr);
            } catch (Exception e) {
                throw new C0414(271, C0164.m3495(10819, 36, 70) + C0414.m4672(e));
            }
        } else {
            bArrM5917 = bArr;
        }
        if (z2) {
            C0530 c0530 = new C0530(bArrM5917);
            byte[] bArrM5364 = c0530.m5361(0).m5364(1);
            String strM5380 = c0530.m5361(0).m5361(0).m5380();
            if (strM5380.equals(C0164.m3495(10228, 21, 99))) {
                String strM5381 = c0530.m5361(0).m5361(0).m5361(1).m5361(0).m5380();
                C0530 c0530M5361 = c0530.m5361(0).m5361(0).m5361(1).m5361(0).m5361(1);
                byte[] bArrM5373 = c0530M5361.m5373();
                iM5389 = c0530M5361.m5389();
                String strM3497 = C0164.m3495(10249, 8, 6);
                try {
                    if (c0530M5361.m5361(2).m5380().equals(C0164.m3495(10257, 18, 14))) {
                        strM3497 = C0164.m3495(10275, 10, 91);
                    }
                } catch (Exception unused) {
                }
                C0530 c0530M5362 = c0530.m5361(0).m5361(0).m5361(1).m5361(1);
                String strM5382 = c0530M5362.m5380();
                byte[] bArrM5374 = c0530M5362.m5373();
                if (strM5381.equals(C0164.m3495(10285, 21, 104)) && strM5380.equals(C0164.m3495(10306, 21, 62))) {
                    if (strM5382.equals(C0164.m3495(10400, 18, 70))) {
                        strM3495 = C0164.m3495(10418, 12, 65);
                    } else if (strM5382.equals(C0164.m3495(10430, 22, 78))) {
                        strM3495 = C0164.m3495(10452, 11, 106);
                    } else if (strM5382.equals(C0164.m3495(10463, 23, 59))) {
                        strM3495 = C0164.m3495(10486, 11, 86);
                    } else {
                        throw new C0414(271, C0164.m3495(10497, 76, 38) + strM5382 + ")");
                    }
                    str2 = strM3497;
                    bArr2 = bArrM5373;
                    i = 4;
                    i2 = 3;
                    bArr3 = bArrM5374;
                } else {
                    throw new C0414(271, C0164.m3495(10327, 73, 73));
                }
            } else {
                C0530 c0530M5363 = c0530.m5361(0).m5361(0).m5361(1);
                byte[] bArrM5375 = c0530M5363.m5373();
                iM5389 = c0530M5363.m5389();
                if (strM5380.equals(C0164.m3495(10573, 20, 71))) {
                    strM3495 = C0164.m3495(10593, 7, 93);
                    strM3496 = C0164.m3495(10600, 3, 28);
                } else if (strM5380.equals(C0164.m3495(10603, 20, 104))) {
                    strM3495 = C0164.m3495(10623, 7, 46);
                    strM3496 = C0164.m3495(10630, 3, 32);
                } else {
                    if (strM5380.equals(C0164.m3495(10633, 20, 25))) {
                        strM3495 = C0164.m3495(10653, 7, 80);
                        strM3496 = C0164.m3495(10660, 3, 19);
                    } else {
                        if (strM5380.equals(C0164.m3495(10663, 20, 43))) {
                            strM3495 = C0164.m3495(10683, 7, 15);
                            i2 = 3;
                            strM3496 = C0164.m3495(10690, 3, 73);
                        } else {
                            i2 = 3;
                            if (strM5380.equals(C0164.m3495(10693, 21, 79))) {
                                strM3495 = C0164.m3495(10714, 7, 33);
                                strM3496 = C0164.m3495(10721, 4, 79);
                            } else if (strM5380.equals(C0164.m3495(10725, 21, 70))) {
                                strM3495 = C0164.m3495(10746, 7, 0);
                                i = 4;
                                strM3496 = C0164.m3495(10753, 4, 80);
                            } else {
                                throw new C0414(271, C0164.m3495(10757, 62, 6) + strM5380 + ".");
                            }
                        }
                        i = 4;
                    }
                    str2 = strM3496;
                    bArr2 = bArrM5375;
                    bArr3 = null;
                }
                i = 4;
                i2 = 3;
                str2 = strM3496;
                bArr2 = bArrM5375;
                bArr3 = null;
            }
            bArrM5917 = m5990(bArrM5364, str, strM3495, bArr2, false, str2, iM5389, bArr3);
        } else {
            i = 4;
            i2 = 3;
        }
        String strM5911 = m5911(bArrM5917);
        if (strM5911.equals(C0458.f2620)) {
            i3 = 1;
        } else if (strM5911.equals(C0458.f2668)) {
            i3 = 2;
        } else if (strM5911.equals(C0458.f2650)) {
            i3 = i2;
        } else if (strM5911.equals(C0458.f2646) || strM5911.equals(C0458.f2658)) {
            i3 = i;
        } else {
            i3 = 0;
        }
        m5973(c0538, i3, bArrM5917);
    }

    public static void m5978(C0538 c0538, byte[] bArr, String str) {
        C0382 c0382 = new C0382(m5917(bArr));
        if (c0382.m4506() == 1064303083) {
            c0382.m4506();
            String strM4494 = c0382.m4494();
            byte[] bArrM5989 = m5989(c0382.m4488(), str, c0382.m4494(), (byte[]) null, true);
            String lowerCase = strM4494.toLowerCase();
            C0382 c0383 = new C0382(bArrM5989);
            if (lowerCase.startsWith(C0164.m3495(10934, 16, 99))) {
                try {
                    c0538.f3116 = 1;
                    c0383.m4506();
                    c0538.f3115.f336 = c0383.m4490();
                    c0538.f3115.f335 = c0383.m4490();
                    c0538.f3115.f334 = c0383.m4490();
                    c0538.f3115.f332 = c0383.m4490();
                    c0538.f3115.f333 = c0383.m4490();
                    c0538.f3115.f331 = c0383.m4490();
                    return;
                } catch (Exception unused) {
                    throw new C0414(280, C0164.m3495(10950, 43, 31));
                }
            }
            if (lowerCase.startsWith(C0164.m3495(10993, 16, 106))) {
                try {
                    c0538.f3116 = 2;
                    c0383.m4506();
                    c0383.m4506();
                    c0538.f3113.f259 = c0383.m4490();
                    c0538.f3113.f256 = c0383.m4490();
                    c0538.f3113.f258 = c0383.m4490();
                    c0538.f3113.f257 = c0383.m4490();
                    c0538.f3113.f255 = c0383.m4490();
                    return;
                } catch (Exception unused2) {
                    throw new C0414(280, C0164.m3495(11009, 43, 110));
                }
            }
            if (lowerCase.startsWith(C0164.m3495(11052, 7, 1))) {
                try {
                    c0538.f3116 = 3;
                    c0383.m4506();
                    c0383.m4506();
                    c0538.f3114.f488 = C0612.m5637(c0383.m4494());
                    c0538.f3114.f491 = C0158.m3426(c0383.m4490(), c0538.f3114.m3427());
                    c0538.f3114.m3443();
                    return;
                } catch (Exception unused3) {
                    throw new C0414(280, C0164.m3495(11059, 43, RNMBXStyleValue.InterpolationModeIdentity));
                }
            }
            throw new C0414(280, C0164.m3495(11102, 21, 94));
        }
        throw new C0414(271, C0164.m3495(10855, 79, 59));
    }

    public static void m5977(C0538 c0538, byte[] bArr) {
        C0382 c0382 = new C0382(m5917(bArr));
        try {
            String strM4494 = c0382.m4494();
            if (strM4494.equalsIgnoreCase(C0164.m3495(11412, 7, 19))) {
                try {
                    c0538.f3116 = 1;
                    c0538.f3115.f336 = c0382.m4488();
                    c0538.f3115.f334 = c0382.m4488();
                    return;
                } catch (Exception unused) {
                    throw new C0414(280, C0164.m3495(11419, 43, 114));
                }
            }
            if (strM4494.equalsIgnoreCase(C0164.m3495(11462, 7, 75))) {
                try {
                    c0538.f3116 = 2;
                    c0538.f3113.f259 = c0382.m4488();
                    c0538.f3113.f258 = c0382.m4488();
                    c0538.f3113.f256 = c0382.m4488();
                    c0538.f3113.f257 = c0382.m4488();
                    return;
                } catch (Exception unused2) {
                    throw new C0414(280, C0164.m3495(11469, 43, 24));
                }
            }
            if (strM4494.startsWith(C0164.m3495(11512, 11, 13))) {
                try {
                    c0538.f3116 = 3;
                    c0538.f3114.f488 = C0612.m5637(c0382.m4494());
                    c0538.f3114.m3446(c0382.m4488());
                    return;
                } catch (Exception unused3) {
                    throw new C0414(280, C0164.m3495(11523, 43, 61));
                }
            }
            if (strM4494.equalsIgnoreCase(f3708)) {
                c0538.f3116 = 4;
                C0158 c0158 = c0538.f3111;
                c0158.f488 = 3;
                c0158.f485 = c0382.m4488();
                c0538.f3111.f486 = null;
                return;
            }
            throw new C0414(271, C0164.m3495(11566, 69, 30));
        } catch (C0414 e) {
            throw new C0414(e, 271, C0164.m3495(11305, 107, 57));
        }
    }

    public static void m5973(C0538 c0538, int i, byte[] bArr) {
        c0538.f3116 = i;
        m5979(c0538, bArr, m5911(bArr) != "");
    }

    public static void m5979(C0538 c0538, byte[] bArr, boolean z) {
        String strM4672;
        C0530 c0530M5365;
        C0530 c0530;
        C0530 c0530M5366;
        try {
            C0530 c0531 = new C0530(bArr);
            c0531.m5378();
            if (c0538.f3116 != 1) {
                int i = c0538.f3116;
                if (i == 2) {
                    if (z) {
                        if (C0458.f2668.equals(m5911(bArr))) {
                            c0538.f3113.f259 = c0531.m5365(1).m5365(1).m5365(0).m5373();
                            c0538.f3113.f258 = c0531.m5365(1).m5365(1).m5365(1).m5373();
                            c0538.f3113.f256 = c0531.m5365(1).m5365(1).m5365(2).m5373();
                            C0530 c0532 = new C0530(c0531.m5365(2).m5373());
                            c0532.m5378();
                            c0538.f3113.f255 = c0532.m5373();
                        } else {
                            throw new Exception(C0164.m3495(12324, 26, 15));
                        }
                    } else {
                        c0538.f3113.f259 = c0531.m5365(1).m5373();
                        c0538.f3113.f258 = c0531.m5365(2).m5373();
                        c0538.f3113.f256 = c0531.m5365(3).m5373();
                        c0538.f3113.f257 = c0531.m5365(4).m5373();
                        c0538.f3113.f255 = c0531.m5365(5).m5373();
                    }
                } else if (i == 3) {
                    if (z) {
                        if (C0458.f2650.equals(m5911(bArr))) {
                            if (c0531.m5365(1).m5365(1).f3084 == 48) {
                                c0538.f3114.f488 = C0612.m5638(m5906(c0531.m5365(1).m5365(1).m5373()));
                            } else {
                                c0538.f3114.m3444(c0531.m5365(1).m5365(1).m5380());
                            }
                            c0531 = c0531.m5365(2).m5390();
                            c0531.m5378();
                        } else {
                            throw new Exception(C0164.m3495(12350, 26, 106));
                        }
                    }
                    c0538.f3114.f491 = c0531.m5365(1).m5373();
                    if (c0531.m5382() == 4) {
                        c0530M5366 = c0531.m5365(2).m5365(0);
                        c0530M5365 = c0531.m5365(3).m5365(0);
                    } else {
                        c0530M5365 = null;
                        if (c0531.m5382() == 3) {
                            c0530M5366 = ((c0531.m5365(2).f3084 & 32) == 32 && (c0531.m5365(2).f3084 & 15) == 0) ? c0531.m5365(2).m5365(0) : null;
                            if ((c0531.m5365(2).f3084 & 32) == 32 && (c0531.m5365(2).f3084 & 15) == 1) {
                                c0530M5365 = c0531.m5365(2).m5365(0);
                            }
                        } else {
                            c0530 = null;
                        }
                        if (c0530M5365 != null) {
                            if ((c0530M5365.f3084 & 16) == 16) {
                                c0538.f3114.f488 = C0612.m5638(m5906(c0530M5365.m5373()));
                            } else {
                                c0538.f3114.m3444(c0530M5365.m5380());
                            }
                        }
                        if (c0530 != null) {
                            c0538.f3114.m3446(c0530.m5375());
                        }
                    }
                    C0530 c0533 = c0530M5365;
                    c0530M5365 = c0530M5366;
                    c0530 = c0533;
                    if (c0530M5365 != null) {
                        if ((c0530M5365.f3084 & 16) == 16) {
                            c0538.f3114.f488 = C0612.m5638(m5906(c0530M5365.m5373()));
                        } else {
                            c0538.f3114.m3444(c0530M5365.m5380());
                        }
                    }
                    if (c0530 != null) {
                        c0538.f3114.m3446(c0530.m5375());
                    }
                } else if (i == 4) {
                    c0538.f3111.m3444(c0531.m5365(1).m5365(0).m5380());
                    C0530 c0534 = new C0530(c0531.m5365(2).m5373());
                    c0534.m5366();
                    c0538.f3111.f486 = c0534.m5373();
                    for (int i2 = 3; c0531.m5382() > i2; i2++) {
                        if ((c0531.m5365(i2).f3084 & 32) != 32 && (c0531.m5365(i2).f3084 & 129) == 129) {
                            c0538.f3111.f485 = c0531.m5365(i2).m5373();
                        }
                    }
                    c0538.f3111.m3443();
                } else {
                    throw new C0414(280, C0164.m3495(12376, 17, 61));
                }
            } else if (z) {
                if (C0458.f2620.equals(m5911(bArr))) {
                    C0530 c0535 = new C0530(c0531.m5365(2).m5373());
                    c0535.m5378();
                    c0538.f3115.f334 = c0535.m5365(1).m5373();
                    c0538.f3115.f336 = c0535.m5365(2).m5373();
                    c0538.f3115.f335 = c0535.m5365(3).m5373();
                    c0538.f3115.f331 = c0535.m5365(4).m5373();
                    c0538.f3115.f333 = c0535.m5365(5).m5373();
                    c0538.f3115.f329 = c0535.m5365(6).m5373();
                    c0538.f3115.f330 = c0535.m5365(7).m5373();
                    c0538.f3115.f332 = c0535.m5365(8).m5373();
                } else {
                    throw new Exception(C0164.m3495(12298, 26, 101));
                }
            } else {
                c0538.f3115.f334 = c0531.m5365(1).m5373();
                c0538.f3115.f336 = c0531.m5365(2).m5373();
                c0538.f3115.f335 = c0531.m5365(3).m5373();
                c0538.f3115.f331 = c0531.m5365(4).m5373();
                c0538.f3115.f333 = c0531.m5365(5).m5373();
                c0538.f3115.f329 = c0531.m5365(6).m5373();
                c0538.f3115.f330 = c0531.m5365(7).m5373();
                c0538.f3115.f332 = c0531.m5365(8).m5373();
            }
            strM4672 = "";
        } catch (Exception e) {
            strM4672 = C0414.m4672(e);
        }
        if (!C0259.m3856(strM4672)) {
            throw new C0414(280, C0164.m3495(12393, 20, 56) + strM4672);
        }
    }

    public static void m5971(C0335 c0335, String str, Vector vector) {
        vector.add(c0335);
        if (C0259.m3856(str)) {
            return;
        }
        String[] strArrM5940 = m5940(str);
        Vector vector2 = new Vector();
        for (String str2 : strArrM5940) {
            vector2.add(new C0335(7, str2, "", "*"));
        }
        while (true) {
            String strM5950 = m5950(c0335.m4363());
            int i = 0;
            while (i < vector2.size()) {
                C0335 c0336 = (C0335) vector2.get(i);
                try {
                    if (m5950(c0336.m4368()).equals(strM5950) && m5985(c0335.m4360(), c0336.m4360())) {
                        try {
                            vector.add(c0336);
                        } catch (C0537 unused) {
                        }
                        c0335 = c0336;
                        break;
                    }
                    i++;
                } catch (C0537 unused2) {
                }
            }
            if (i >= vector2.size()) {
                return;
            } else {
                vector2.removeElementAt(i);
            }
        }
    }

    public static void m5968(String str, Vector vector, Vector vector2) {
        if (str.indexOf(C0164.m3495(13922, 11, 118)) < 0 && str.indexOf(C0164.m3495(13933, 11, 85)) < 0 && str.indexOf(C0164.m3495(13944, 8, 105)) < 0) {
            throw new C0414(271, C0164.m3495(14082, 62, 28));
        }
        C0282 c0282 = new C0282(null, new Object());
        int i = 1;
        c0282.m4022(true);
        c0282.m4027(str);
        Vector vector3 = new Vector();
        C0187 c0187 = c0282.f1423;
        if (c0187 != null) {
            vector3.add(c0187);
        }
        while (vector3.size() > 0) {
            C0187 c0188 = (C0187) vector3.get(vector3.size() - i);
            vector3.removeElementAt(vector3.size() - i);
            if (c0188.m3615(C0164.m3495(13952, 8, 12))) {
                C0187 c0187M3617 = c0188.m3617(C0164.m3495(13960, 15, 8));
                if (c0187M3617 != null) {
                    vector.add(new C0433(C0259.m3876(c0187M3617.m3612())));
                }
            } else {
                int i2 = 0;
                if (c0188.m3615(C0164.m3495(13975, 11, 6))) {
                    C0538 c0538 = new C0538();
                    c0538.f3116 = i;
                    while (i2 < c0188.f652) {
                        C0187 c0187M3616 = c0188.m3616(i2);
                        if (c0187M3616.m3615(C0164.m3495(13986, 7, 127))) {
                            c0538.f3115.f334 = C0259.m3876(c0187M3616.m3612());
                        } else if (c0187M3616.m3615(C0164.m3495(13993, 8, 81))) {
                            c0538.f3115.f336 = C0259.m3876(c0187M3616.m3612());
                        } else if (c0187M3616.m3615("D")) {
                            c0538.f3115.f335 = C0259.m3876(c0187M3616.m3612());
                        } else if (c0187M3616.m3615("P")) {
                            c0538.f3115.f331 = C0259.m3876(c0187M3616.m3612());
                        } else if (c0187M3616.m3615("Q")) {
                            c0538.f3115.f333 = C0259.m3876(c0187M3616.m3612());
                        } else if (c0187M3616.m3615(C0164.m3495(14001, 8, 19))) {
                            c0538.f3115.f332 = C0259.m3876(c0187M3616.m3612());
                        }
                        i2++;
                    }
                    vector2.add(c0538);
                } else if (c0188.m3615(C0164.m3495(14009, 11, 27))) {
                    C0538 c0539 = new C0538();
                    c0539.f3116 = 2;
                    while (i2 < c0188.f652) {
                        C0187 c0187M3618 = c0188.m3616(i2);
                        if (c0187M3618.m3615("P")) {
                            c0539.f3113.f259 = C0259.m3876(c0187M3618.m3612());
                        } else if (c0187M3618.m3615("Q")) {
                            c0539.f3113.f258 = C0259.m3876(c0187M3618.m3612());
                        } else if (c0187M3618.m3615("G")) {
                            c0539.f3113.f256 = C0259.m3876(c0187M3618.m3612());
                        } else if (c0187M3618.m3615("Y")) {
                            c0539.f3113.f257 = C0259.m3876(c0187M3618.m3612());
                        } else if (c0187M3618.m3615("X")) {
                            c0539.f3113.f255 = C0259.m3876(c0187M3618.m3612());
                        }
                        i2++;
                    }
                    vector2.add(c0539);
                } else {
                    while (i2 < c0188.f652) {
                        vector3.add(c0188.m3616(i2));
                        i2++;
                    }
                }
                i = 1;
            }
        }
        if (vector.size() <= 0 && vector2.size() <= 0) {
            throw new C0414(271, C0164.m3495(14020, 62, 93));
        }
    }

    public static int m5945(Vector vector, String str) {
        int i = -1;
        if (vector.size() == 0) {
            return -1;
        }
        for (int i2 = 0; i2 < vector.size(); i2++) {
            if (vector.get(i2) != null) {
                C0213 c0213 = (C0213) vector.get(i2);
                String strM5958 = m5958(c0213.f793.f1731.f585.f714);
                if (str != null && str.length() != 0 && !str.equals("*") && !m5982(strM5958, str) && !m5982(m5950(strM5958), m5950(str))) {
                    if (str.contains(C0164.m3495(14144, 3, 60))) {
                        try {
                            String string = ((X509Certificate) CertificateFactory.getInstance(C0164.m3495(14147, 5, 45)).generateCertificate(new ByteArrayInputStream(c0213.f793.mo3690()))).getSubjectDN().toString();
                            if (!str.equals(string) && !m5982(m5950(string), m5950(str))) {
                                if (i < 0 && string.toLowerCase().contains(str.toLowerCase())) {
                                    i = i2;
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                    if (i < 0 && (strM5958.toLowerCase().contains(str.toLowerCase()) || m5950(strM5958).toLowerCase().contains(m5950(str.toLowerCase())))) {
                        i = i2;
                    }
                }
                return i2;
            }
        }
        return i;
    }

    public static int m5944(String str, int i, String[] strArr) {
        strArr[0] = "";
        int i2 = i;
        while (i2 < str.length() && str.charAt(i2) != '\r' && str.charAt(i2) != '\n') {
            i2++;
        }
        strArr[0] = str.substring(i, i2);
        int i3 = i2 + 1;
        if (i3 < str.length() && str.charAt(i2) == '\r' && str.charAt(i3) == '\n') {
            return i2 + 2;
        }
        return i2 < str.length() ? i3 : i2;
    }

    public static int m5943(String str, int i) {
        while (i < str.length() && (str.charAt(i) == ' ' || str.charAt(i) == '\t' || str.charAt(i) == '\r' || str.charAt(i) == '\n')) {
            i++;
        }
        return i;
    }

    public static boolean m5984(String str, Vector vector, Vector vector2, Vector vector3) {
        boolean z;
        boolean z2;
        String str2;
        ?? r8;
        ?? r9;
        Hashtable hashtableM5939;
        ?? r10;
        String strTrim;
        String str3;
        ?? r11;
        ?? r12;
        String strTrim2;
        int i;
        int length = str.length();
        boolean z3 = true;
        String[] strArr = new String[1];
        boolean z4 = false;
        String str4 = "";
        strArr[0] = "";
        int length2 = length;
        int iM5944 = 0;
        ?? r13 = 0;
        String string = "";
        String strTrim3 = string;
        C0387 c0387 = null;
        byte[] bArrM3876 = null;
        Hashtable hashtable = null;
        String str5 = null;
        String strM5910 = str;
        while (true) {
            if (iM5944 >= length2) {
                z = z3;
                z2 = z4;
                break;
            }
            if (r13 != 100) {
                z2 = z4;
                if (r13 != 0) {
                    z = z3;
                    if (r13 == z3) {
                        str2 = str4;
                        r12 = r13;
                        strTrim2 = strArr[z2 ? 1 : 0];
                        for (i = z2 ? 1 : 0; i < strTrim2.length() && strTrim2.charAt(i) == '-'; i++) {
                            string = C0663.m5891(string).append(strTrim2.charAt(i)).toString();
                        }
                        if ((string.length() != 4 || string.length() == 5) && strTrim2.endsWith(string)) {
                            strTrim2 = strTrim2.substring(string.length(), strTrim2.length() - string.length()).trim();
                            if (strTrim2.startsWith(C0164.m3495(14184, 6, 13))) {
                                strTrim3 = strTrim2.substring(C0164.m3495(14190, 6, 56).length()).trim();
                                r13 = 2;
                            }
                        }
                        str3 = C0164.m3495(14196, 15, 116) + strTrim2;
                        r11 = r12;
                        str5 = str3;
                        r13 = r11;
                    } else if (r13 == 2) {
                        str2 = str4;
                        m5944(strM5910, iM5944, strArr);
                        strArr[z2 ? 1 : 0] = strArr[z2 ? 1 : 0].trim();
                        c0387 = new C0387();
                        if (m5914(strArr[z2 ? 1 : 0])) {
                            r10 = r13;
                            r9 = 4;
                        } else {
                            if (strArr[z2 ? 1 : 0].contains(":")) {
                                r10 = r13;
                                r8 = 3;
                            } else {
                                r10 = r13;
                                str5 = C0164.m3495(14211, 18, 68) + strArr[z2 ? 1 : 0];
                                r8 = r13;
                            }
                            r9 = r8;
                        }
                        hashtable = null;
                        r13 = r9;
                    } else if (r13 == 3) {
                        str2 = str4;
                        iM5944 = m5944(strM5910, iM5944, strArr);
                        String strTrim4 = strArr[z2 ? 1 : 0].trim();
                        strArr[z2 ? 1 : 0] = strTrim4;
                        if (strTrim4.length() > 0) {
                            if (!c0387.m4571().endsWith("\\") && m5914(strArr[z2 ? 1 : 0])) {
                                hashtableM5939 = m5939(c0387.m4571());
                                c0387.m4531(strArr[z2 ? 1 : 0]);
                            } else {
                                if (c0387.m4533() > 0) {
                                    c0387.m4563("\r\n");
                                }
                                c0387.m4563(strArr[z2 ? 1 : 0]);
                                r13 = r13;
                            }
                        } else {
                            hashtableM5939 = m5939(c0387.m4571());
                            c0387.m4541();
                        }
                        hashtable = hashtableM5939;
                        r13 = 4;
                    } else if (r13 == 4) {
                        iM5944 = m5944(strM5910, iM5944, strArr);
                        String strTrim5 = strArr[z2 ? 1 : 0].trim();
                        strArr[z2 ? 1 : 0] = strTrim5;
                        if (m5914(strTrim5)) {
                            c0387.m4563(strArr[z2 ? 1 : 0]);
                            str2 = str4;
                            r13 = r13;
                        } else {
                            bArrM3876 = C0259.m3876(c0387.m4571());
                            r10 = 5;
                            strTrim = strArr[z2 ? 1 : 0];
                            if (strTrim.startsWith(string)) {
                                strTrim = strTrim.substring(string.length(), strTrim.length() - string.length()).trim();
                                if (strTrim.equals(C0164.m3495(14229, 4, 4) + strTrim3)) {
                                    vector.add(strTrim3);
                                    vector2.add(hashtable);
                                    vector3.add(bArrM3876);
                                    str2 = str4;
                                    r13 = z2 ? 1 : 0;
                                }
                            }
                            str2 = str4;
                            str3 = C0164.m3495(14233, 13, 116) + strTrim;
                            r11 = r10;
                            str5 = str3;
                            r13 = r11;
                        }
                    } else if (r13 != 5) {
                        str2 = str4;
                        r13 = r13;
                    } else {
                        strTrim = strArr[z2 ? 1 : 0];
                        if (strTrim.startsWith(string) && strTrim.endsWith(string)) {
                            strTrim = strTrim.substring(string.length(), strTrim.length() - string.length()).trim();
                            if (strTrim.equals(C0164.m3495(14229, 4, 4) + strTrim3)) {
                                vector.add(strTrim3);
                                vector2.add(hashtable);
                                vector3.add(bArrM3876);
                                str2 = str4;
                                r13 = z2 ? 1 : 0;
                            }
                        }
                        str2 = str4;
                        str3 = C0164.m3495(14233, 13, 116) + strTrim;
                        r11 = r10;
                        str5 = str3;
                        r13 = r11;
                    }
                } else {
                    z = z3;
                    str2 = str4;
                    iM5944 = m5944(strM5910, m5943(strM5910, iM5944), strArr);
                    String strTrim6 = strArr[z2 ? 1 : 0].trim();
                    strArr[z2 ? 1 : 0] = strTrim6;
                    if (!strTrim6.startsWith(C0164.m3495(14176, 4, 58)) || !strArr[z2 ? 1 : 0].endsWith(C0164.m3495(14180, 4, 69))) {
                        string = str2;
                        strTrim3 = string;
                        r13 = r13;
                    } else if (iM5944 == strM5910.length()) {
                        z4 = z2 ? 1 : 0;
                        iM5944 = z4 ? 1 : 0;
                        z3 = z;
                        str4 = str2;
                        string = str4;
                        strTrim3 = string;
                        r13 = 100;
                    } else {
                        r12 = z;
                        string = str2;
                        strTrim3 = string;
                        strTrim2 = strArr[z2 ? 1 : 0];
                        while (i < strTrim2.length()) {
                            string = C0663.m5891(string).append(strTrim2.charAt(i)).toString();
                        }
                        if (string.length() != 4) {
                            strTrim2 = strTrim2.substring(string.length(), strTrim2.length() - string.length()).trim();
                            if (strTrim2.startsWith(C0164.m3495(14184, 6, 13))) {
                                strTrim3 = strTrim2.substring(C0164.m3495(14190, 6, 56).length()).trim();
                                r13 = 2;
                            } else {
                                str3 = C0164.m3495(14196, 15, 116) + strTrim2;
                                r11 = r12;
                                str5 = str3;
                                r13 = r11;
                            }
                        } else {
                            strTrim2 = strTrim2.substring(string.length(), strTrim2.length() - string.length()).trim();
                            if (strTrim2.startsWith(C0164.m3495(14184, 6, 13))) {
                                strTrim3 = strTrim2.substring(C0164.m3495(14190, 6, 56).length()).trim();
                                r13 = 2;
                            } else {
                                str3 = C0164.m3495(14196, 15, 116) + strTrim2;
                                r11 = r12;
                                str5 = str3;
                                r13 = r11;
                            }
                        }
                    }
                }
            } else {
                z = z3;
                z2 = z4;
                str2 = str4;
                strM5910 = m5910(strM5910);
                length2 = strM5910.length();
                iM5944 = z2 ? 1 : 0;
                r13 = iM5944;
            }
            if (str5 != null) {
                break;
            }
            z4 = z2 ? 1 : 0;
            z3 = z;
            str4 = str2;
        }
        return vector.size() > 0 ? z : z2;
    }

    public static String m5949(int i) {
        if (i != 99) {
            switch (i) {
                case 0:
                    return C0164.m3495(16281, 4, 79);
                case 1:
                    return C0164.m3495(16285, 7, 71);
                case 2:
                case 3:
                    return C0164.m3495(16292, 3, 50);
                case 4:
                case 5:
                    return C0164.m3495(16295, 3, 46);
                case 6:
                case 7:
                    return C0164.m3495(16298, 3, 100);
                case 8:
                case 9:
                    return C0164.m3495(16301, 10, 85);
                case 10:
                case 13:
                    return C0164.m3495(16314, 14, 127);
                case 11:
                case 12:
                    return C0164.m3495(16311, 3, 57);
                case 14:
                case 15:
                    return C0164.m3495(16328, 3, 21);
                case 16:
                case 17:
                    return C0164.m3495(16331, 3, 58);
                case 18:
                case 19:
                    return C0164.m3495(16334, 3, 78);
                case 20:
                case 21:
                    return C0164.m3495(16337, 5, 70);
                default:
                    return C0164.m3495(16346, 7, 93);
            }
        }
        return C0164.m3495(16342, 4, 94);
    }

    public static int m5946(C0335 c0335, Vector vector, String str, String str2, int i, String str3, String str4, String[] strArr, String[] strArr2, boolean z) {
        int i2;
        int i3;
        boolean zM5983;
        boolean zM5507;
        boolean z2;
        boolean z3;
        int i4;
        int i5 = 0;
        strArr2[0] = "OK";
        if ((i & 1) != 0 || c0335.m4369() == 0) {
            i2 = 0;
        } else {
            strArr2[0] = C0164.m3495(16383, 57, 50);
            i2 = -2146762495;
        }
        String string = "";
        for (int i6 = 0; i6 < vector.size(); i6++) {
            if (string.length() > 0) {
                string = C0663.m5880(string, "\r\n");
            }
            string = C0663.m5891(string).append((String) vector.get(i6)).toString();
        }
        try {
            C0176 c0176 = new C0176();
            C0335 c0336 = (vector.size() <= 1 || string.length() <= 0) ? c0335 : new C0335(9, string, "", c0335.m4368());
            if (i2 == 0) {
                if (C0259.m3856(str)) {
                    i4 = 0;
                } else {
                    try {
                        String[] strArrM5940 = m5940(str);
                        Vector vector2 = new Vector();
                        int i7 = 0;
                        while (i7 < strArrM5940.length) {
                            int i8 = i5;
                            InterfaceC0224 interfaceC0224 = new C0335(7, strArrM5940[i7], "", "*").f1810;
                            vector2.add(interfaceC0224 == null ? null : interfaceC0224.mo3696());
                            i7++;
                            i5 = i8;
                        }
                        i4 = i5;
                        c0176.f604 = vector2;
                    } catch (Exception e) {
                        e = e;
                        strArr[0] = C0164.m3495(16553, 35, 83) + C0414.m4672(e);
                        i2 = 275;
                    }
                }
                if (c0176.m3543(c0336, str2, i) != 0) {
                    strArr2[i4] = C0164.m3495(16440, 113, 58);
                    i2 = -2146762487;
                }
                if (z) {
                    try {
                        m5970(c0335, i4, c0336, vector, str);
                        for (int i9 = 1; i9 < vector.size(); i9++) {
                            m5970(new C0335(9, (String) vector.get(i9), "", "*"), i9, c0336, vector, str);
                        }
                        if (!C0259.m3856(str)) {
                            String[] strArrM5941 = m5940(str);
                            for (int i10 = 1; i10 < strArrM5941.length; i10++) {
                                m5970(new C0335(9, strArrM5941[i10], "", "*"), i10, c0336, vector, str);
                            }
                        }
                    } catch (C0414 e2) {
                        i2 = e2.f2136;
                        strArr2[0] = e2.getMessage();
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
            strArr[0] = C0164.m3495(16553, 35, 83) + C0414.m4672(e);
            i2 = 275;
        }
        if (i2 != 0 || C0259.m3856(str3)) {
            i3 = i2;
        } else {
            Vector vectorM3680 = C0208.m3680(c0335.m4368());
            int i11 = 0;
            while (true) {
                if (i11 >= vectorM3680.size()) {
                    zM5507 = false;
                    break;
                }
                String lowerCase = ((String) vectorM3680.get(i11)).toLowerCase();
                if (lowerCase.startsWith(C0128.m3238(1348, 3, 10))) {
                    zM5507 = C0558.m5507(str3.toCharArray(), 0, lowerCase.substring(3).toCharArray(), 0, true);
                    break;
                }
                i11++;
            }
            if (zM5507) {
                i3 = i2;
            } else {
                String strM4355 = c0335.m4355();
                if (C0259.m3856(strM4355) || C0259.m3856(str3)) {
                    z2 = false;
                } else {
                    Vector vectorM3681 = C0208.m3680(strM4355);
                    int i12 = 0;
                    while (true) {
                        if (i12 < vectorM3681.size()) {
                            String lowerCase2 = ((String) vectorM3681.get(i12)).toLowerCase();
                            if (lowerCase2.startsWith(C0128.m3238(1351, 4, 4))) {
                                if (C0558.m5507(str3.toCharArray(), 0, lowerCase2.substring(4).toCharArray(), 0, true)) {
                                    z3 = true;
                                } else {
                                    if (lowerCase2.startsWith(C0128.m3238(1355, 3, 41))) {
                                        z3 = true;
                                        if (C0558.m5507(str3.toCharArray(), 0, lowerCase2.substring(3).toCharArray(), 0, true)) {
                                        }
                                    }
                                    i12++;
                                }
                            } else {
                                if (lowerCase2.startsWith(C0128.m3238(1355, 3, 41))) {
                                    z3 = true;
                                    if (C0558.m5507(str3.toCharArray(), 0, lowerCase2.substring(3).toCharArray(), 0, true)) {
                                    }
                                }
                                i12++;
                            }
                            z2 = z3;
                        } else {
                            z2 = false;
                        }
                    }
                }
                if (z2) {
                    i3 = i2;
                } else {
                    strArr2[0] = C0164.m3495(16588, 45, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    i3 = 275;
                }
            }
        }
        if (!C0259.m3856(str4) && c0335 != null && c0335.m4373() != null) {
            String strTrim = c0335.m4373().trim();
            if (strTrim.equalsIgnoreCase(C0164.m3495(16633, 7, 36))) {
                zM5983 = m5983(str4, C0164.m3495(16640, 4, 69), C0164.m3495(16644, 3, 16));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16647, 14, 33))) {
                zM5983 = m5983(str4, C0164.m3495(16661, 4, 61), C0164.m3495(16665, 3, 20));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16668, 15, 31))) {
                zM5983 = m5983(str4, C0164.m3495(16683, 6, 10), C0164.m3495(16689, 3, 70));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16692, 7, 95))) {
                zM5983 = m5983(str4, C0164.m3495(16699, 3, 98), C0164.m3495(16702, 3, 72));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16705, 10, 45))) {
                zM5983 = m5983(str4, C0164.m3495(16715, 3, 8), C0164.m3495(16718, 3, 54));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16721, 11, 28))) {
                zM5983 = m5983(str4, C0164.m3495(16732, 4, 90), C0164.m3495(16736, 3, 54));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16739, 13, 85))) {
                zM5983 = m5983(str4, C0164.m3495(16752, 6, 25), C0164.m3495(16758, 3, 107));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16761, 13, 74))) {
                zM5983 = m5983(str4, C0164.m3495(16774, 6, 29), C0164.m3495(16780, 3, 60));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16783, 13, 10))) {
                zM5983 = m5983(str4, C0164.m3495(16796, 6, 111), C0164.m3495(16802, 3, 72));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16805, 13, 41))) {
                zM5983 = m5983(str4, C0164.m3495(16818, 6, 39), C0164.m3495(16824, 3, 18));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16827, 10, 17))) {
                zM5983 = m5983(str4, C0164.m3495(16837, 4, 51), C0164.m3495(16841, 5, 99));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16846, 12, 12))) {
                zM5983 = m5983(str4, C0164.m3495(16858, 6, 76), C0164.m3495(16864, 5, 13));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16869, 12, 27))) {
                zM5983 = m5983(str4, C0164.m3495(16881, 6, 50), C0164.m3495(16887, 5, 23));
            } else if (strTrim.equalsIgnoreCase(C0164.m3495(16892, 12, 15))) {
                zM5983 = m5983(str4, C0164.m3495(16904, 6, 87), C0164.m3495(16910, 5, 62));
            } else {
                if (!strTrim.equalsIgnoreCase(C0164.m3495(16915, 12, 101))) {
                    strArr2[0] = C0164.m3495(16938, 53, 2) + strTrim + ").";
                    return 280;
                }
                zM5983 = m5983(str4, C0164.m3495(16927, 6, 124), C0164.m3495(16933, 5, 106));
            }
            if (!zM5983) {
                strArr2[0] = C0164.m3495(16991, 45, 104) + strTrim + C0164.m3495(17036, 35, 64) + str4;
                return 280;
            }
        }
        return i3;
    }

    public static void m5970(C0335 c0335, int i, C0335 c0336, Vector vector, String str) throws Exception {
        int i2;
        Vector vector2;
        C0335 c0337;
        boolean zEquals;
        Vector vectorM4358 = c0335.m4358();
        int i3 = 0;
        int i4 = 0;
        while (i4 < vectorM4358.size()) {
            String strTrim = ((String) vectorM4358.get(i4)).trim();
            if (strTrim.startsWith(C0164.m3495(17071, 7, 37)) || strTrim.startsWith(C0164.m3495(17078, 8, 93))) {
                Vector vector3 = new Vector();
                Vector vector4 = new Vector();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strTrim).openConnection();
                    httpURLConnection.setRequestMethod(C0164.m3495(16380, 3, 16));
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.connect();
                    if (httpURLConnection.getResponseCode() == 200) {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        byte[] bArr = new byte[4096];
                        for (int i5 = inputStream.read(bArr, i3, 4096); i5 > 0; i5 = inputStream.read(bArr, i3, 4096)) {
                            byteArrayOutputStream.write(bArr, i3, i5);
                        }
                    }
                } catch (Exception unused) {
                }
                C0530 c0530 = new C0530(byteArrayOutputStream.toByteArray());
                c0530.m5378();
                C0530 c0530M5365 = c0530.m5365(i3);
                byte[] bArr2 = c0530M5365.f3099;
                if (c0530M5365.m5365(i3).f3084 == 2) {
                    C0530 c0530M5366 = c0530M5365.m5365(i3);
                    c0530M5366.m5372(i3);
                    c0530M5366.m5389();
                    i2 = 1;
                } else {
                    i2 = i3;
                }
                C0285 c0285 = new C0285();
                c0285.mo3411(c0530M5365.m5365(i2).f3099, i3);
                String str2 = c0285.f811.f2701;
                C0460 c0460 = new C0460();
                c0460.m4680(c0530M5365.m5365(i2 + 1).f3099);
                String strM5950 = m5950(m5958(c0460));
                C0247 c0247 = new C0247();
                int i6 = i2 + 3;
                c0247.m4680(c0530M5365.m5365(i2 + 2).f3099);
                c0247.m3795();
                if (c0530M5365.m5365(i6).f3084 == 23) {
                    C0247 c0248 = new C0247();
                    c0248.m4680(c0530M5365.m5365(i6).f3099);
                    c0248.m3795();
                    i6 = i2 + 4;
                }
                if (c0530M5365.m5365(i6).f3084 == 48) {
                    int i7 = i6 + 1;
                    C0530 c0530M5367 = c0530M5365.m5365(i6);
                    int i8 = i3;
                    while (i8 < c0530M5367.m5382()) {
                        C0530 c0530M5368 = c0530M5367.m5365(i8);
                        vector3.add(c0530M5368.m5365(i3).m5364(i3));
                        Vector vector5 = vectorM4358;
                        vector4.add(new C0247(C0259.m3882(c0530M5368.m5365(1).m5364(i3))).m3795());
                        if (c0530M5368.m5382() > 2) {
                            c0530M5368.m5365(2).m5364(i3);
                        }
                        i8++;
                        vectorM4358 = vector5;
                    }
                    i6 = i7;
                }
                vector2 = vectorM4358;
                if (c0530M5365.m5365(i6).f3084 == 160) {
                    c0530M5365.m5365(i6).m5364(i3);
                }
                c0530.m5365(1).m5364(i3);
                byte[] bArrM5375 = c0530.m5365(2).m5375();
                if (vector.size() <= 1) {
                    c0337 = null;
                    break;
                }
                C0335[] c0335ArrM4354 = c0336.m4354();
                int i9 = i;
                while (true) {
                    if (i9 >= c0335ArrM4354.length) {
                        c0337 = null;
                        break;
                    }
                    c0337 = c0335ArrM4354[i9];
                    if (strM5950.equals(m5950(c0337.m4368()))) {
                        break;
                    } else {
                        i9++;
                    }
                }
                if (c0337 == null && !C0259.m3856(str)) {
                    String[] strArrM5940 = m5940(str);
                    for (int i10 = i3; i10 < strArrM5940.length; i10++) {
                        C0335 c0338 = new C0335(7, strArrM5940[i4], "", "*");
                        if (strM5950.equals(m5950(c0338.m4368()))) {
                            c0337 = c0338;
                            break;
                        }
                    }
                }
                if (c0337 != null && !m5986(bArrM5375, bArr2, str2, c0337)) {
                    throw new C0414(280, C0164.m3495(17086, 37, 118));
                }
                if (vector3.size() != 0) {
                    C0590 c0590 = c0335.f1804;
                    byte[] bArrM3863 = C0259.m3863(c0590 != null ? c0590.f3269 : "");
                    for (int i11 = 0; i11 < vector3.size(); i11++) {
                        byte[] bArr3 = (byte[]) vector3.get(i4);
                        if (bArr3 == null && bArrM3863 == null) {
                            zEquals = true;
                        } else {
                            zEquals = (bArr3 == null || bArrM3863 == null) ? false : new BigInteger(1, bArr3).equals(new BigInteger(1, bArrM3863));
                        }
                        if (zEquals) {
                            throw new C0414(280, C0164.m3495(17123, 53, 19) + vector4.get(i4));
                        }
                    }
                }
                i4++;
                vectorM4358 = vector2;
                i3 = 0;
            } else {
                vector2 = vectorM4358;
            }
            i4++;
            vectorM4358 = vector2;
            i3 = 0;
        }
    }

    public static boolean m5983(String str, String str2, String str3) {
        boolean z = false;
        boolean z2 = false;
        for (String str4 : C0259.m3908(str, ",", true, true)) {
            String[] strArrM3908 = C0259.m3908(str4, "-", true, true);
            if (strArrM3908.length == 2) {
                String lowerCase = strArrM3908[0].trim().toLowerCase();
                String lowerCase2 = strArrM3908[1].trim().toLowerCase();
                if (!z && ((lowerCase.equals(C0164.m3495(17176, 4, 13)) && lowerCase.equals(str2)) || ((lowerCase.equals(C0164.m3495(17180, 3, 84)) && lowerCase.equals(str2)) || ((lowerCase.equals(C0164.m3495(17183, 4, 88)) && lowerCase.equals(str2)) || ((lowerCase.equals(C0164.m3495(17187, 6, 81)) && lowerCase.equals(str2)) || ((lowerCase.equals(C0164.m3495(17193, 6, 4)) && lowerCase.equals(str2)) || ((lowerCase.equals(C0164.m3495(17199, 6, 85)) && lowerCase.equals(str2)) || ((lowerCase.equals(C0164.m3495(17205, 6, 49)) && lowerCase.equals(str2)) || lowerCase.equals(C0164.m3495(17211, 3, 95)))))))))) {
                    z = true;
                }
                if (!z2 && ((lowerCase2.equals(C0164.m3495(17214, 9, 112)) && lowerCase2.equals(str3)) || ((lowerCase2.equals(C0164.m3495(17223, 3, 104)) && lowerCase2.equals(str3)) || ((lowerCase2.equals(C0164.m3495(17226, 3, 66)) && lowerCase2.equals(str3)) || ((lowerCase2.equals(C0164.m3495(17229, 5, 99)) && lowerCase2.equals(str3)) || lowerCase2.equals(C0164.m3495(17234, 3, 77))))))) {
                    z2 = true;
                }
                if (z && z2) {
                    break;
                }
            }
        }
        return z && z2;
    }

    public static void m5969(Vector vector) {
        if (vector.size() <= 1) {
            return;
        }
        Vector vector2 = new Vector();
        C0213 c0213M5965 = (C0213) vector.get(0);
        vector.removeElementAt(0);
        vector2.add(c0213M5965);
        while (true) {
            c0213M5965 = m5965(c0213M5965, vector, true);
            if (c0213M5965 == null) {
                break;
            } else {
                vector2.insertElementAt(c0213M5965, 0);
            }
        }
        C0213 c0213M5966 = (C0213) vector2.get(vector2.size() - 1);
        while (true) {
            c0213M5966 = m5965(c0213M5966, vector, false);
            if (c0213M5966 == null) {
                break;
            } else {
                vector2.add(c0213M5966);
            }
        }
        vector.clear();
        for (int i = 0; i < vector2.size(); i++) {
            vector.add(vector2.get(i));
        }
    }

    public static C0213 m5965(C0213 c0213, Vector vector, boolean z) {
        String strM5958 = m5958(c0213.f793.f1731.f585.f714);
        String strM5959 = m5958(c0213.f793.f1731.f576.f714);
        int i = 0;
        if (z) {
            while (i < vector.size()) {
                C0213 c0214 = (C0213) vector.get(i);
                if (strM5959.equals(m5958(c0214.f793.f1731.f585.f714))) {
                    vector.removeElementAt(i);
                    return c0214;
                }
                i++;
            }
            return null;
        }
        while (i < vector.size()) {
            C0213 c0215 = (C0213) vector.get(i);
            if (strM5958.equals(m5958(c0215.f793.f1731.f576.f714))) {
                vector.removeElementAt(i);
                return c0215;
            }
            i++;
        }
        return null;
    }

    public static void m5981(C0579 c0579, byte[] bArr, String str, C0387 c0387, boolean[] zArr, int[] iArr) throws Throwable {
        boolean z;
        int i;
        C0433 c0433;
        C0538 c0538;
        int i2;
        char c;
        byte[] bArrM3899;
        String str2;
        c0579.f3246.clear();
        byte[] bArr2 = C0320.f1706;
        c0579.f3245 = "";
        c0579.f3243.m4541();
        c0579.f3244 = -1;
        if (zArr != null) {
            zArr[0] = false;
        }
        if (iArr != null) {
            iArr[0] = 0;
        }
        byte[] bArrM3876 = bArr;
        if (bArrM3876.length < 1024) {
            String strM3853 = C0259.m3853(bArrM3876);
            if (new File(strM3853).exists()) {
                if (c0387 != null) {
                    c0387.m4563(C0164.m3495(14860, 31, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
                }
                bArrM3876 = m5919(strM3853);
                if (zArr != null) {
                    zArr[0] = true;
                }
                z = false;
            } else {
                z = true;
            }
        } else {
            z = true;
        }
        String strM3892 = C0259.m3892(bArrM3876);
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        Vector vector4 = new Vector();
        Vector vector5 = new Vector();
        char c2 = 0;
        int i3 = 13;
        if (m5984(strM3892, vector3, vector4, vector5)) {
            if (c0387 != null) {
                c0387.m4563(C0164.m3495(14891, 37, 79));
            }
            int i4 = 0;
            C0433 c0434 = null;
            C0538 c0539 = null;
            boolean z2 = z;
            while (i4 < vector3.size()) {
                C0538 c05310 = new C0538();
                String str3 = (String) vector3.get(i4);
                Hashtable hashtable = (Hashtable) vector4.get(i4);
                byte[] bArr3 = (byte[]) vector5.get(i4);
                if (c0387 != null) {
                    c0387.m4563(C0164.m3495(14928, i3, 117) + str3 + "\r\n");
                }
                if (str3.equals(C0164.m3495(14941, 5, 114))) {
                    C0377 c0377 = new C0377();
                    c0377.m4471(bArr3);
                    if (iArr != null) {
                        iArr[c2] = z2 ? 12 : 11;
                    }
                    C0120 c0120 = new C0120();
                    c0120.f240 = c0377;
                    c0579.f3246.add(c0120);
                } else if (str3.equals(C0164.m3495(14946, 11, 28))) {
                    C0433 c0435 = new C0433(bArr3);
                    if (iArr != null) {
                        iArr[c2] = z2 != 0 ? 7 : 6;
                    }
                    C0120 c0121 = new C0120();
                    c0121.f241 = c0435;
                    C0259.m3878(bArr3, C0164.m3495(14957, 11, 23));
                    c0579.f3246.add(c0121);
                    c0434 = c0435;
                } else if (str3.equals(C0164.m3495(14968, 26, 79))) {
                    m5978(c05310, bArr3, str);
                    if (iArr != null) {
                        iArr[c2] = z2 != 0 ? 7 : 6;
                    }
                    C0120 c0122 = new C0120();
                    c0122.f242 = c05310;
                    C0259.m3902(m5961(c05310));
                    c0579.f3246.add(c0122);
                } else if (str3.equals(C0164.m3495(14994, 15, 111))) {
                    m5977(c05310, bArr3);
                    if (iArr != null) {
                        iArr[c2] = z2 != 0 ? 7 : 6;
                    }
                    C0120 c0123 = new C0120();
                    c0123.f242 = c05310;
                    C0259.m3902(m5961(c05310));
                    c0579.f3246.add(c0123);
                } else if (str3.equals(C0164.m3495(15009, 19, 102))) {
                    m5936(c05310, bArr3, str);
                    if (iArr != null) {
                        iArr[c2] = z2 != 0 ? 7 : 6;
                    }
                    C0120 c0124 = new C0120();
                    c0124.f242 = c05310;
                    C0259.m3902(m5961(c05310));
                    c0579.f3246.add(c0124);
                } else {
                    if (!str3.equals(C0164.m3495(15028, 21, 37)) && !str3.equals(C0164.m3495(15049, 11, 2))) {
                        if (str3.equals(C0164.m3495(15081, 10, 100))) {
                            m5913(c05310, C0259.m3892(C0259.m3878(bArr3, C0164.m3495(15091, 10, 24))));
                            if (iArr != null) {
                                iArr[c2] = z2 != 0 ? 7 : 6;
                            }
                            C0120 c0125 = new C0120();
                            c0125.f242 = c05310;
                            C0259.m3902(m5961(c05310));
                            c0579.f3246.add(c0125);
                        } else {
                            if (hashtable == null || hashtable.get(C0164.m3495(15101, 8, 76)) == null) {
                                bArrM3899 = null;
                                str2 = null;
                            } else {
                                String[] strArrM3907 = C0259.m3907((String) hashtable.get(C0164.m3495(15109, 8, 40)), ",", true);
                                str2 = strArrM3907[c2];
                                bArrM3899 = C0259.m3899(8, strArrM3907[1].getBytes());
                            }
                            if (str3.equals(C0164.m3495(15117, 15, 28))) {
                                boolean z3 = c2;
                                m5973(c05310, 1, m5989(bArr3, str, str2, bArrM3899, z3));
                                if (iArr != null) {
                                    iArr[z3 ? 1 : 0] = z2 != 0 ? 7 : 6;
                                }
                                C0120 c0126 = new C0120();
                                c0126.f242 = c05310;
                                C0259.m3902(m5961(c05310));
                                c0579.f3246.add(c0126);
                            } else if (str3.equals(C0164.m3495(15132, 15, 100))) {
                                m5973(c05310, 2, m5989(bArr3, str, str2, bArrM3899, false));
                                if (iArr != null) {
                                    iArr[0] = z2 != 0 ? 7 : 6;
                                }
                                C0120 c0127 = new C0120();
                                c0127.f242 = c05310;
                                C0259.m3902(m5961(c05310));
                                c0579.f3246.add(c0127);
                            } else if (str3.equals(C0164.m3495(15147, 14, 68))) {
                                m5973(c05310, 3, m5989(bArr3, str, str2, bArrM3899, false));
                                if (iArr != null) {
                                    iArr[0] = z2 != 0 ? 7 : 6;
                                }
                                C0120 c0128 = new C0120();
                                c0128.f242 = c05310;
                                C0259.m3902(m5961(c05310));
                                c0579.f3246.add(c0128);
                            } else if (str3.equals(C0164.m3495(15161, 14, 34))) {
                                m5913(c05310, C0259.m3892(C0259.m3878(bArr3, C0164.m3495(15175, 14, 63))));
                                if (iArr != null) {
                                    iArr[0] = z2 != 0 ? 7 : 6;
                                }
                                C0120 c0129 = new C0120();
                                c0129.f242 = c05310;
                                C0259.m3902(m5961(c05310));
                                c0579.f3246.add(c0129);
                                i2 = 13;
                            } else if (str3.equals(C0164.m3495(15189, 14, 2))) {
                                m5913(c05310, C0259.m3892(C0259.m3878(bArr3, C0164.m3495(15203, 14, 104))));
                                if (iArr != null) {
                                    iArr[0] = z2 != 0 ? 7 : 6;
                                }
                                C0120 c01210 = new C0120();
                                c01210.f242 = c05310;
                                C0259.m3902(m5961(c05310));
                                c0579.f3246.add(c01210);
                                i2 = 13;
                            } else {
                                i2 = 13;
                                if (str3.equals(C0164.m3495(15217, 13, 98))) {
                                    m5913(c05310, C0259.m3892(C0259.m3878(bArr3, C0164.m3495(15230, 13, 99))));
                                    if (iArr != null) {
                                        iArr[0] = z2 != 0 ? 7 : 6;
                                    }
                                    C0120 c01211 = new C0120();
                                    c01211.f242 = c05310;
                                    C0259.m3902(m5961(c05310));
                                    c0579.f3246.add(c01211);
                                } else if (str3.equals(C0164.m3495(15243, 12, 7))) {
                                    C0159 c0159 = new C0159();
                                    c0159.m3448(strM3892);
                                    if (iArr != null) {
                                        iArr[0] = 22;
                                    }
                                    C0120 c01212 = new C0120();
                                    c01212.f237 = c0159;
                                    c0579.f3246.add(c01212);
                                } else if (c0387 != null) {
                                    c0387.m4563(C0164.m3495(15255, 17, RNMBXStyleValue.InterpolationModeIdentity) + str3 + C0164.m3495(15272, 16, 102));
                                }
                            }
                            c = CoreConstants.PERCENT_CHAR;
                            i2 = 13;
                        }
                        c = CoreConstants.PERCENT_CHAR;
                        i4++;
                        i3 = i2;
                        z2 = z2;
                        vector3 = vector3;
                        c2 = 0;
                    } else {
                        i2 = i3;
                        c = CoreConstants.PERCENT_CHAR;
                        m5980(c05310, bArr3, false, str3.equals(C0164.m3495(15060, 21, 37)), str);
                        if (iArr != null) {
                            iArr[0] = z2 != 0 ? 7 : 6;
                        }
                        C0120 c01213 = new C0120();
                        c01213.f242 = c05310;
                        C0259.m3902(m5961(c05310));
                        c0579.f3246.add(c01213);
                    }
                    c0539 = c05310;
                    i4++;
                    i3 = i2;
                    z2 = z2;
                    vector3 = vector3;
                    c2 = 0;
                }
                i2 = i3;
                c = CoreConstants.PERCENT_CHAR;
                i4++;
                i3 = i2;
                z2 = z2;
                vector3 = vector3;
                c2 = 0;
            }
            boolean z4 = z2;
            if (vector3.size() != 2 || (c0433 = c0434) == null || (c0538 = c0539) == null) {
                return;
            }
            m5981(c0579, m5988(c0433.f2241.f793, str, c0538, (C0335) null), str, null, null, null);
            if (iArr != null) {
                iArr[0] = z4 ? 7 : 6;
                return;
            }
            return;
        }
        boolean z5 = z;
        int i5 = 21;
        if (m5915(strM3892)) {
            bArrM3876 = C0259.m3876(strM3892);
        }
        byte[] bArr4 = bArrM3876;
        if (C0530.m5360(bArr4, true)) {
            try {
                C0574 c0574 = new C0574();
                c0574.m5526(bArr4, str);
                if (iArr != null) {
                    iArr[0] = z5 ? 3 : 2;
                }
                C0120 c01214 = new C0120();
                c01214.f239 = c0574;
                c0579.f3246.add(c01214);
                if (c0387 != null) {
                    c0387.m4563(C0164.m3495(15288, 58, 114));
                    return;
                }
                return;
            } catch (Exception e) {
                if (c0387 != null) {
                    c0387.m4563(C0164.m3495(15346, 52, 61) + C0414.m4672(e) + "\r\n");
                }
                if ((e instanceof C0414) && ((C0414) e).f2136 == 500) {
                    if (iArr != null) {
                        iArr[0] = z5 ? 3 : 2;
                        return;
                    }
                    return;
                }
                try {
                    C0433 c0436 = new C0433(bArr4);
                    if (iArr != null) {
                        iArr[0] = z5 ? 7 : 6;
                    }
                    C0120 c01215 = new C0120();
                    c01215.f241 = c0436;
                    C0259.m3878(bArr4, C0164.m3495(15398, 11, 123));
                    c0579.f3246.add(c01215);
                    if (c0387 != null) {
                        c0387.m4563(C0164.m3495(15409, 59, 39));
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    if (c0387 != null) {
                        c0387.m4563(C0164.m3495(15468, 53, 97) + C0414.m4672(e2) + "\r\n");
                    }
                    try {
                        C0377 c0378 = new C0377();
                        c0378.m4471(bArr4);
                        if (iArr != null) {
                            iArr[0] = z5 ? 12 : 11;
                        }
                        C0120 c01216 = new C0120();
                        c01216.f240 = c0378;
                        c0579.f3246.add(c01216);
                        if (c0387 != null) {
                            c0387.m4563(C0164.m3495(15521, 58, 125));
                            return;
                        }
                        return;
                    } catch (Exception e3) {
                        if (c0387 != null) {
                            c0387.m4563(C0164.m3495(15579, 52, 3) + C0414.m4672(e3) + "\r\n");
                        }
                        try {
                            C0578 c0578 = new C0578();
                            c0578.m5554(bArr4, str);
                            if (iArr != null) {
                                if (!z5) {
                                    i5 = 20;
                                }
                                iArr[0] = i5;
                            }
                            C0120 c01217 = new C0120();
                            c01217.f238 = c0578;
                            c0579.f3246.add(c01217);
                            if (c0387 != null) {
                                c0387.m4563(C0164.m3495(15631, 58, 27));
                                return;
                            }
                            return;
                        } catch (Exception e4) {
                            if (c0387 != null) {
                                c0387.m4563(C0164.m3495(15689, 54, 94) + C0414.m4672(e4) + "\r\n");
                            }
                        }
                    }
                }
            }
        }
        try {
            m5968(strM3892, vector, vector2);
            if (iArr != null) {
                iArr[0] = z5 ? 17 : 16;
            }
            for (int i6 = 0; i6 < vector.size(); i6++) {
                C0120 c01218 = new C0120();
                c01218.f241 = (C0433) vector.get(i6);
                C0213 c0213 = c01218.f241.f2241;
                i = 19;
                try {
                    C0259.m3878(c0213 == null ? C0320.f1706 : c0213.mo3690(), C0164.m3495(15743, 11, 19));
                    c0579.f3246.add(c01218);
                } catch (Exception e5) {
                    e = e5;
                    if (c0387 != null) {
                        c0387.m4563(C0164.m3495(15800, 34, 127) + C0414.m4672(e) + "\r\n");
                    }
                    try {
                        C0538 c05311 = new C0538();
                        m5974(c05311, strM3892, str);
                        if (iArr != null) {
                            iArr[0] = z5 ? 15 : 14;
                        }
                        C0120 c01219 = new C0120();
                        c01219.f242 = c05311;
                        C0259.m3902(m5961(c05311));
                        c0579.f3246.add(c01219);
                        if (c0387 != null) {
                            c0387.m4563(C0164.m3495(15834, 46, 63));
                            return;
                        }
                        return;
                    } catch (Exception e6) {
                        if (c0387 != null) {
                            c0387.m4563(C0164.m3495(15880, 34, 44) + C0414.m4672(e6) + "\r\n");
                        }
                        if (C0414.m4672(e6).equals(f3694)) {
                            if (iArr != null) {
                                iArr[0] = z5 ? 15 : 14;
                                return;
                            }
                            return;
                        }
                        try {
                            C0538 c05312 = new C0538();
                            m5924(c05312, strM3892);
                            if (iArr != null) {
                                if (!z5) {
                                    i = 18;
                                }
                                iArr[0] = i;
                            }
                            C0120 c01220 = new C0120();
                            c01220.f242 = c05312;
                            C0259.m3902(m5961(c05312));
                            c0579.f3246.add(c01220);
                            if (c0387 != null) {
                                c0387.m4563(C0164.m3495(15914, 46, 33));
                                return;
                            }
                            return;
                        } catch (Exception e7) {
                            if (c0387 != null) {
                                c0387.m4563(C0164.m3495(15960, 34, 107) + C0414.m4672(e7) + "\r\n");
                            }
                            try {
                                C0538 c05313 = new C0538();
                                m5903(c05313, strM3892);
                                if (iArr != null) {
                                    iArr[0] = z5 ? 10 : 13;
                                }
                                C0120 c01221 = new C0120();
                                c01221.f242 = c05313;
                                C0259.m3902(m5961(c05313));
                                c0579.f3246.add(c01221);
                                if (c0387 != null) {
                                    c0387.m4563(C0164.m3495(15994, 61, 107));
                                    return;
                                }
                                return;
                            } catch (Exception e8) {
                                if (c0387 != null) {
                                    c0387.m4563(C0164.m3495(16055, 49, 0) + C0414.m4672(e8) + "\r\n");
                                }
                                try {
                                    C0538 c05314 = new C0538();
                                    m5977(c05314, bArr4);
                                    if (iArr != null) {
                                        iArr[0] = z5 ? 10 : 13;
                                    }
                                    C0120 c01222 = new C0120();
                                    c01222.f242 = c05314;
                                    C0259.m3902(m5961(c05314));
                                    c0579.f3246.add(c01222);
                                    if (c0387 != null) {
                                        c0387.m4563(C0164.m3495(16104, 72, 104));
                                        return;
                                    }
                                    return;
                                } catch (Exception e9) {
                                    if (c0387 != null) {
                                        c0387.m4563(C0164.m3495(16176, 60, 45) + C0414.m4672(e9) + "\r\n");
                                    }
                                    if (c0387 != null) {
                                        c0387.m4563(C0164.m3495(16236, 45, 31));
                                        return;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                }
            }
            i = 19;
            for (int i7 = 0; i7 < vector2.size(); i7++) {
                C0120 c01223 = new C0120();
                c01223.f242 = (C0538) vector2.get(i7);
                C0259.m3902(m5961(c01223.f242));
                c0579.f3246.add(c01223);
            }
            if (c0387 != null) {
                c0387.m4563(C0164.m3495(15754, 46, 65));
            }
        } catch (Exception e10) {
            e = e10;
            i = 19;
        }
    }
}
