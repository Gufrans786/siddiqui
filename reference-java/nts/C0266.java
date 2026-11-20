package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import ch.qos.logback.classic.net.SyslogAppender;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.android.gms.common.ConnectionResult;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Vector;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import sa.lg.android.locate.BuildConfig;

public class C0266 extends C0212 {

    public boolean f1289;

    public static final String f1279 = C0128.m3228(0, 7, 3);

    public static String f1278 = C0128.m3228(7, 59, 30);

    public static String f1282 = C0128.m3228(66, 59, 83);

    public static String f1276 = C0128.m3228(125, 59, 25);

    public static String f1286 = C0128.m3228(SyslogConstants.LOG_LOCAL7, 59, 79);

    public static byte f1288 = 0;

    public static byte f1281 = 0;

    public static int f1280 = 0;

    public static int f1285 = 15;

    public static final String f1287 = C0128.m3228(243, 5, 17);

    public static final String f1283 = C0128.m3228(248, 8, 18);

    public static final byte[] f1277 = {75, 71, 83, 33, SignedBytes.MAX_POWER_OF_TWO, 35, 36, 37};

    public static final byte[] f1284 = {42, -122, 72, -122, -9, Ascii.DC2, 1, 2, 2};

    public int f1300 = 0;

    public InterfaceC0126 f1290 = null;

    public InterfaceC0126 f1294 = null;

    public byte[] f1309 = null;

    public byte[] f1292 = null;

    public String f1293 = f1287;

    public String f1297 = "";

    public String f1303 = "";

    public String f1306 = "";

    public String f1296 = "";

    public String f1301 = "";

    public boolean f1307 = true;

    public boolean f1295 = false;

    public boolean f1308 = false;

    public C0335 f1305 = null;

    public String f1299 = "";

    public String f1302 = "";

    public String f1291 = "";

    public boolean f1298 = false;

    public StringBuffer f1304 = new StringBuffer();

    public C0266(boolean z, boolean z2, boolean z3) {
        this.f1289 = false;
        this.f1289 = z;
    }

    public static byte[] m3947(byte[] bArr) {
        try {
            return C0308.m4261(C0128.m3228(978, 3, 39), bArr);
        } catch (C0537 e) {
            throw new C0414(e, 0, C0128.m3228(981, 26, 121));
        }
    }

    public static void m3960(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        if (C0135.m3265(bArr, 0) || C0135.m3266(bArr, 0)) {
            for (int i2 = i; i2 < i + 8; i2++) {
                bArr3[i2] = 0;
            }
            return;
        }
        try {
            AbstractC0313 abstractC0313M4220 = C0308.m4220(C0128.m3228(PointerIconCompat.TYPE_ALIAS, 3, 118));
            abstractC0313M4220.f1686 = 1;
            abstractC0313M4220.f1690 = 2;
            C0308.m4225(abstractC0313M4220, bArr);
            abstractC0313M4220.mo4285().mo3121(bArr2, 0, 8, bArr3, i);
        } catch (Exception e) {
            throw new C0414(e, 0, C0128.m3228(PointerIconCompat.TYPE_ALL_SCROLL, 27, 17));
        }
    }

    public final byte[] m3965() {
        String hostName;
        C0497 c0497 = new C0497();
        c0497.m4514(f1279);
        c0497.m4503(1);
        c0497.m4503(0);
        c0497.m4512(0L);
        c0497.m4512(0L);
        this.f1293 = f1287;
        try {
            try {
                hostName = InetAddress.getLocalHost().getHostName();
            } catch (UnknownHostException e) {
                throw new C0414(e);
            }
        } catch (Exception unused) {
            hostName = "";
        }
        if (this.f1289) {
            this.f1301 = hostName;
        } else if (this.f1296.length() <= 0) {
            this.f1296 = hostName.toUpperCase();
        }
        m3953(c0497);
        int[] iArr = {-1576500729};
        if (this.f1308) {
            iArr[0] = (-1576500729) | 16 | 1073741856;
        }
        this.f1300 = iArr[0];
        m3955(c0497, this.f1303, this.f1293, 16, iArr, 4096);
        m3955(c0497, this.f1296, this.f1293, 24, iArr, 8192);
        c0497.f1969.mo3839(iArr[0], c0497.f1972, 12, 4);
        return c0497.m4502();
    }

    public String m3966() {
        return this.f1304.toString();
    }

    public final byte[] m3967(byte[] bArr, String str) {
        if (bArr != null && (this.f1300 & 524288) == 524288) {
            return str.toUpperCase().equals(C0128.m3228(937, 6, 101)) ? m3947(C0259.m3851(bArr, C0259.m3858(f1278))) : m3947(C0259.m3851(bArr, C0259.m3858(f1276)));
        }
        return null;
    }

    public static byte[] m3949(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        bArr2[0] = (byte) (bArr[0] & 254);
        bArr2[1] = (byte) (((bArr[0] << 7) | ((bArr[1] & 255) >> 1)) & 254);
        bArr2[2] = (byte) (((bArr[1] << 6) | ((bArr[2] & 255) >> 2)) & 254);
        bArr2[3] = (byte) (((bArr[2] << 5) | ((bArr[3] & 255) >> 3)) & 254);
        bArr2[4] = (byte) (((bArr[3] << 4) | ((bArr[4] & 255) >> 4)) & 254);
        bArr2[5] = (byte) (((bArr[4] << 3) | ((bArr[5] & 255) >> 5)) & 254);
        bArr2[6] = (byte) (((bArr[5] << 2) | ((bArr[6] & 255) >> 6)) & 254);
        bArr2[7] = (byte) ((bArr[6] << 1) & 254);
        for (int i = 0; i < 8; i++) {
            byte b = bArr2[i];
            if (((((((((b >>> 7) ^ (b >>> 6)) ^ (b >>> 5)) ^ (b >>> 4)) ^ (b >>> 3)) ^ (b >>> 2)) ^ (b >>> 1)) & 1) == 0) {
                bArr2[i] = (byte) (b | 1);
            }
        }
        return bArr2;
    }

    public static void m3951(String str, C0382 c0382, int i, int i2, int i3, String str2, StringBuffer stringBuffer) {
        if (i2 > 0) {
            if (i2 >= i3) {
                i2 = i3;
            }
            stringBuffer.append(SyslogAppender.DEFAULT_STACKTRACE_PATTERN + str + ": ").append(m3945(C0259.m3865(c0382.f1972, i, i2), str2)).append("\r\n");
        }
    }

    public static void m3952(String str, C0382 c0382, int i, int i2, int i3, StringBuffer stringBuffer) {
        if (i2 > 0) {
            if (i2 >= i3) {
                i2 = i3;
            }
            byte[] bArrM3865 = C0259.m3865(c0382.f1972, i, i2);
            stringBuffer.append(SyslogAppender.DEFAULT_STACKTRACE_PATTERN + str + ": ").append(C0259.m3882(C0259.m3901(8, bArrM3865, 0, bArrM3865.length, true))).append("\r\n");
        }
    }

    public static boolean m3961(String str) {
        if (C0259.m3856(str)) {
            return false;
        }
        byte[] bArrM3876 = C0259.m3876(str);
        return C0301.m4163(bArrM3876, f1284, 0, bArrM3876.length) > 0;
    }

    public byte[] m3968(String str, String str2, String str3, String str4, String str5, byte[] bArr) {
        String strSubstring;
        byte[] bArrM3965;
        int iIndexOf;
        String strSubstring2 = str2;
        if (bArr == null || bArr.length == 0) {
            this.f1304 = new StringBuffer();
        }
        if (str3.length() != 0 || (iIndexOf = strSubstring2.indexOf("\\")) <= -1) {
            strSubstring = str3;
        } else {
            strSubstring = strSubstring2.substring(0, iIndexOf);
            strSubstring2 = strSubstring2.substring(iIndexOf + 1);
        }
        if (!strSubstring2.equals(this.f1297) || !strSubstring.equals(this.f1303) || !str4.equals(this.f1306) || !str5.equals(this.f1301)) {
            this.f1297 = strSubstring2;
            this.f1303 = strSubstring;
            this.f1306 = str4;
            this.f1301 = str5;
        }
        if (str.equalsIgnoreCase(C0128.m3228(256, 9, 51)) && !this.f1289 && (bArr == null || bArr.length == 0)) {
            try {
                StringBuffer stringBuffer = this.f1304;
                if (stringBuffer != null) {
                    stringBuffer.append(C0465.m5119(0, 56, 45)).append("\r\n");
                }
                throw new C0414(0, C0465.m5119(56, 56, 64));
            } catch (C0414 unused) {
            }
        }
        try {
            this.f1304.append(C0128.m3228(265, 29, 35)).append("\r\n");
            this.f1304.append(C0128.m3228(294, 11, 76)).append("\r\n");
            this.f1304.append(C0128.m3228(305, 11, 0)).append(str).append(C0128.m3228(TypedValues.AttributesType.TYPE_PATH_ROTATE, 9, 1)).append(strSubstring2).append("\"");
            this.f1304.append(C0128.m3228(325, 10, 6)).append(strSubstring).append(C0128.m3228(335, 18, 110)).append(str4 == null ? C0128.m3228(353, 4, 10) : "" + str4.length()).append("\"");
            this.f1304.append(C0128.m3228(357, 10, 68)).append(str5).append("\"");
            this.f1304.append(C0128.m3228(367, 15, 123)).append(this.f1289).append("\r\n");
            if (bArr != null && bArr.length > 0) {
                this.f1304.append(C0128.m3228(382, 14, 20));
                m3959(bArr, this.f1304);
            }
            if (!this.f1289) {
                if (bArr != null && bArr.length != 0) {
                    this.f1304.append(C0128.m3228(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 31, 85)).append("\r\n");
                    bArrM3965 = m3969(bArr);
                } else {
                    this.f1304.append(C0128.m3228(396, 26, 123)).append("\r\n");
                    bArrM3965 = m3965();
                }
                this.f1304.append(C0128.m3228(453, 18, 123));
                m3959(bArrM3965, this.f1304);
                return bArrM3965;
            }
            return C0212.f791;
        } finally {
            this.f1304.append(C0128.m3228(471, 38, 21)).append("\r\n");
        }
    }

    public static byte[] m3948(String str) {
        byte[] bArrM3962 = m3962(str.toUpperCase(), C0128.m3228(1040, 8, 8));
        byte[] bArr = new byte[7];
        byte[] bArr2 = new byte[7];
        int iMin = Math.min(7, bArrM3962.length);
        int i = 0;
        while (i < iMin) {
            bArr[i] = bArrM3962[i];
            i++;
        }
        while (i < 7) {
            bArr[i] = 0;
            i++;
        }
        int iMin2 = Math.min(14, bArrM3962.length);
        while (i < iMin2) {
            bArr2[i - 7] = bArrM3962[i];
            i++;
        }
        while (i < 14) {
            bArr2[i - 7] = 0;
            i++;
        }
        byte[] bArr3 = new byte[16];
        byte[] bArrM3949 = m3949(bArr);
        byte[] bArr4 = f1277;
        m3960(bArrM3949, bArr4, bArr3, 0);
        m3960(m3949(bArr2), bArr4, bArr3, 8);
        return bArr3;
    }

    public static String m3945(byte[] bArr, String str) {
        try {
            return new String(bArr, str);
        } catch (UnsupportedEncodingException e) {
            throw new C0414(e, 0, C0128.m3228(TypedValues.Custom.TYPE_STRING, 34, 88) + str + "\".");
        }
    }

    public static byte[] m3946(byte[] bArr) {
        try {
            return C0308.m4261(C0128.m3228(949, 3, 67), bArr);
        } catch (C0537 e) {
            throw new C0414(e, 0, C0128.m3228(952, 26, 116));
        }
    }

    public static byte[] m3950(byte[] bArr, byte[] bArr2) throws C0414 {
        try {
            return new C0569(bArr2).m4300(bArr);
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public static void m3953(C0382 c0382) {
        c0382.m4509(f1288);
        c0382.m4509(f1281);
        c0382.m4489(f1280);
        c0382.m4500(new byte[3]);
        c0382.m4487(f1285);
    }

    public static void m3955(C0382 c0382, String str, String str2, int i, int[] iArr, int i2) {
        byte[] bArrM3962 = m3962(str, str2);
        if (bArrM3962.length > 0) {
            m3957(c0382, bArrM3962, i);
            iArr[0] = iArr[0] | i2;
        }
    }

    public static void m3954(C0382 c0382, String str, String str2, int i) {
        m3957(c0382, m3962(str, str2), i);
    }

    public static void m3957(C0382 c0382, byte[] bArr, int i) {
        if (bArr.length > 0) {
            c0382.m4511(i, bArr.length);
            c0382.m4511(i + 2, bArr.length);
            c0382.f1969.mo3839(c0382.f1971, c0382.f1972, i + 4, 4);
            c0382.m4500(bArr);
        }
    }

    public final byte[] m3969(byte[] bArr) {
        byte[] bArrM3963;
        byte[] bArrM3964;
        byte[] bArrM3965;
        byte[] bArrM3966;
        byte[] bArrM3946;
        int i;
        byte[] bArrM3947;
        C0497 c0497 = new C0497(bArr);
        if (c0497.m4482().equals(f1279)) {
            if (c0497.m4506() == 2) {
                short sM4483 = c0497.m4483();
                c0497.m4483();
                int iM4506 = c0497.m4506();
                int iM4507 = c0497.m4506();
                this.f1300 = iM4507;
                if ((iM4507 & 1) == 1) {
                    this.f1300 = iM4507 & (-3);
                    this.f1293 = f1283;
                } else if ((iM4507 & 2) != 2) {
                    throw new C0414(0, C0128.m3228(662, 76, 51));
                }
                int i2 = iM4507 & 524288;
                if (i2 != 524288 && (iM4507 & 512) != 512) {
                    throw new C0414(0, C0128.m3228(738, 81, 66));
                }
                if (i2 != 524288) {
                    this.f1300 &= -524289;
                }
                if ((iM4507 & 4) == 4) {
                    m3945(c0497.m4518(iM4506, (int) sM4483), this.f1293);
                    this.f1300 |= 8388608;
                }
                byte[] bArrM4484 = c0497.m4484(8);
                c0497.m4484(8);
                Vector vector = new Vector();
                if ((iM4507 & 8388608) == 8388608) {
                    short sM4484 = c0497.m4483();
                    c0497.m4483();
                    C0497 c0498 = new C0497(c0497.m4518(c0497.m4506(), (int) sM4484));
                    for (C0157 c0157 = new C0157(c0498); c0157.f471 != 0; c0157 = new C0157(c0498)) {
                        vector.addElement(c0157);
                    }
                }
                if ((iM4507 & 33554432) == 33554432) {
                    c0497.m4496();
                    c0497.m4496();
                    c0497.m4483();
                    c0497.m4484(3);
                    c0497.m4496();
                }
                C0497 c0499 = new C0497();
                c0499.m4514(f1279);
                c0499.m4503(3);
                c0499.m4512(0L);
                c0499.m4512(0L);
                c0499.m4512(0L);
                c0499.m4512(0L);
                c0499.m4512(0L);
                c0499.m4512(0L);
                c0499.m4503(this.f1300);
                m3953(c0499);
                String str = this.f1306;
                String str2 = f1283;
                byte[] bArrM3948 = m3946(m3962(str, str2));
                byte[] bArrM3971 = C0212.f791;
                if (this.f1295) {
                    byte[] bArrM4227 = C0308.m4227(8);
                    byte[] bArrM3950 = m3950(m3962(this.f1297.toUpperCase() + this.f1303, str2), bArrM3948);
                    if ((this.f1300 & 8388608) == 8388608) {
                        bArrM3966 = new byte[0];
                    } else {
                        bArrM3966 = m3964(bArrM3950, bArrM4227, bArrM4484);
                    }
                    if (this.f1305 == null) {
                        bArrM3947 = null;
                    } else {
                        try {
                            AbstractC0317 abstractC0317M4217 = C0308.m4217(C0128.m3228(843, 6, 114));
                            abstractC0317M4217.mo3250();
                            byte[] bArrM4300 = abstractC0317M4217.m4300(this.f1305.m4360());
                            byte[] bArrM3902 = C0259.m3902(C0128.m3228(849, 21, 8));
                            int length = bArrM3902.length + bArrM4300.length;
                            byte[] bArr2 = new byte[length];
                            System.arraycopy(bArrM3902, 0, bArr2, 0, bArrM3902.length);
                            System.arraycopy(bArrM4300, 0, bArr2, bArrM3902.length, bArrM4300.length);
                            C0497 c04910 = new C0497();
                            c04910.m4503(0);
                            c04910.m4503(0);
                            c04910.m4503(0);
                            c04910.m4503(0);
                            c04910.m4503(length);
                            if (length > 0) {
                                c04910.m4500(bArr2);
                            }
                            bArrM3947 = m3947(c04910.m4502());
                        } catch (C0537 e) {
                            throw new C0414(e);
                        }
                    }
                    if (bArrM3947 != null) {
                        vector.add(new C0157(10, bArrM3947));
                    }
                    vector.add(new C0157());
                    C0497 c04911 = new C0497();
                    c04911.m4487(1);
                    c04911.m4487(1);
                    c04911.m4487(0);
                    c04911.m4487(0);
                    c04911.m4503(0);
                    c04911.m4512((System.currentTimeMillis() + 11644473600000L) * 10000);
                    c04911.m4500(bArrM4227);
                    c04911.m4503(0);
                    for (int i3 = 0; i3 < vector.size(); i3++) {
                        c04911.m4500(((C0157) vector.get(i3)).m3415());
                    }
                    c04911.m4503(0);
                    byte[] bArr3 = c04911.f1972;
                    bArrM3965 = m3964(bArrM3950, bArr3, bArrM4484);
                    if ((this.f1300 & 48) != 0) {
                        byte[] bArrM3951 = m3950(m3950(C0259.m3851(bArrM4484, bArr3), bArrM3950), bArrM3950);
                        if ((this.f1300 & 1073741824) == 1073741824) {
                            byte[] bArrM4228 = C0308.m4227(16);
                            bArrM3971 = m3971(bArrM3951, bArrM4228, 0, bArrM4228.length);
                            bArrM3946 = bArrM4228;
                        } else {
                            bArrM3946 = bArrM3951;
                        }
                    } else {
                        bArrM3946 = null;
                    }
                } else {
                    if ((this.f1300 & 524288) == 524288) {
                        byte[] bArrM4229 = C0308.m4227(8);
                        C0497 c04912 = new C0497();
                        c04912.m4500(bArrM4484);
                        c04912.m4500(bArrM4229);
                        byte[] bArrM3967 = m3963(bArrM3948, m3947(c04912.m4502()));
                        byte[] bArr4 = new byte[24];
                        System.arraycopy(bArrM4229, 0, bArr4, 0, 8);
                        for (int i4 = 8; i4 < 24; i4++) {
                            bArr4[i4] = 0;
                        }
                        bArrM3963 = bArrM3967;
                        bArrM3964 = bArr4;
                    } else {
                        bArrM3963 = m3963(bArrM3948, bArrM4484);
                        bArrM3964 = this.f1307 ? bArrM3963 : m3963(m3948(this.f1306), bArrM4484);
                    }
                    if ((this.f1300 & 48) != 0) {
                        bArrM3946 = m3946(bArrM3948);
                        if ((this.f1300 & 524288) == 524288) {
                            byte[] bArrM3952 = m3950(C0259.m3851(bArrM4484, C0259.m3865(bArrM3964, 0, 8)), bArrM3946);
                            bArrM3946 = C0308.m4227(16);
                            bArrM3971 = m3971(bArrM3952, bArrM3946, 0, bArrM3946.length);
                        } else {
                            byte[] bArrM3949 = m3948(this.f1306);
                            int i5 = this.f1300;
                            if ((i5 & 128) == 128) {
                                byte[] bArrM3865 = C0259.m3865(bArrM3949, 0, 7);
                                byte[] bArrM3866 = C0259.m3865(bArrM3964, 0, 8);
                                byte[] bArr5 = new byte[8];
                                m3960(bArrM3865, bArrM3866, bArr5, 0);
                                byte[] bArr6 = new byte[8];
                                m3960(C0259.m3851(bArrM3865, new byte[]{-67, -67, -67, -67}), bArrM3866, bArr6, 0);
                                bArrM3946 = C0259.m3851(bArr5, bArr6);
                            } else if ((i5 & 4194304) == 4194304) {
                                bArrM3946 = C0259.m3851(C0259.m3865(bArrM3949, 0, 7), new byte[8]);
                            }
                        }
                        bArrM3965 = bArrM3963;
                        bArrM3966 = bArrM3964;
                    } else {
                        bArrM3965 = bArrM3963;
                        bArrM3966 = bArrM3964;
                        bArrM3946 = null;
                    }
                }
                if ((this.f1300 & 16) == 16) {
                    i = 6;
                    m3967(bArrM3946, C0128.m3228(819, 6, 63));
                    m3967(bArrM3946, C0128.m3228(825, 6, 86));
                } else {
                    i = 6;
                }
                if ((this.f1300 & 32) == 32) {
                    this.f1309 = m3970(bArrM3946, C0128.m3228(831, i, 62));
                    this.f1292 = m3970(bArrM3946, C0128.m3228(837, i, 12));
                }
                m3954(c0499, this.f1303, this.f1293, 28);
                m3954(c0499, this.f1297, this.f1293, 36);
                m3954(c0499, this.f1296, this.f1293, 44);
                m3957(c0499, bArrM3966, 12);
                m3957(c0499, bArrM3965, 20);
                m3957(c0499, bArrM3971, 52);
                return c0499.m4502();
            }
            throw new C0414(0, C0128.m3228(587, 75, 79));
        }
        throw new C0414(0, C0128.m3228(515, 72, 116));
    }

    public static byte[] m3962(String str, String str2) {
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException e) {
            throw new C0414(e, 0, C0128.m3228(870, 33, 80) + str2 + "\".");
        }
    }

    public final byte[] m3970(byte[] bArr, String str) {
        if (bArr == null) {
            return null;
        }
        int i = this.f1300;
        if ((i & 524288) == 524288) {
            if ((i & PKIFailureInfo.duplicateCertReq) != 536870912) {
                if ((i & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
                    bArr = C0259.m3865(bArr, 0, 7);
                } else {
                    bArr = C0259.m3865(bArr, 0, 5);
                }
            }
            if (str.toUpperCase().equals(C0128.m3228(943, 6, SyslogConstants.LOG_CLOCK))) {
                return m3947(C0259.m3851(bArr, C0259.m3858(f1282)));
            }
            return m3947(C0259.m3851(bArr, C0259.m3858(f1286)));
        }
        if ((i & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            byte[] bArrM3865 = C0259.m3865(bArr, 0, 8);
            bArrM3865[bArrM3865.length - 1] = -96;
            return bArrM3865;
        }
        byte[] bArrM3866 = C0259.m3865(bArr, 0, 8);
        bArrM3866[5] = -27;
        bArrM3866[6] = 56;
        bArrM3866[7] = -80;
        return bArrM3866;
    }

    public final byte[] m3971(byte[] bArr, byte[] bArr2, int i, int i2) {
        try {
            AbstractC0313 abstractC0313M4220 = C0308.m4220(C0128.m3228(PointerIconCompat.TYPE_CROSSHAIR, 3, 75));
            C0308.m4225(abstractC0313M4220, bArr);
            return abstractC0313M4220.mo4285().mo3122(bArr2, i, i2);
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public static byte[] m3963(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[24];
        byte[] bArrM3865 = C0259.m3865(bArr, 0, 7);
        byte[] bArrM3866 = C0259.m3865(bArr, 7, 7);
        byte[] bArr4 = {bArr[14], bArr[15], 0, 0, 0, 0, 0};
        m3960(m3949(bArrM3865), bArr2, bArr3, 0);
        m3960(m3949(bArrM3866), bArr2, bArr3, 8);
        m3960(m3949(bArr4), bArr2, bArr3, 16);
        return bArr3;
    }

    public static byte[] m3964(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[bArr3.length + bArr2.length];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        System.arraycopy(bArr2, 0, bArr4, bArr3.length, bArr2.length);
        byte[] bArrM3950 = m3950(bArr4, bArr);
        byte[] bArr5 = new byte[bArrM3950.length + bArr2.length];
        System.arraycopy(bArrM3950, 0, bArr5, 0, bArrM3950.length);
        System.arraycopy(bArr2, 0, bArr5, bArrM3950.length, bArr2.length);
        return bArr5;
    }

    public static void m3959(byte[] bArr, StringBuffer stringBuffer) {
        String strM5380;
        char c;
        short sM4483;
        short sM4484;
        int iM4506;
        int iM4507;
        int i;
        short s;
        StringBuffer stringBuffer2 = stringBuffer;
        if (stringBuffer2 == null) {
            return;
        }
        if (bArr != null && bArr.length != 0) {
            byte[] bArrM3858 = C0259.m3858(f1279);
            if (bArr.length >= bArrM3858.length) {
                int i2 = 0;
                while (true) {
                    if (i2 < bArrM3858.length) {
                        if (bArr[i2] == bArrM3858[i2]) {
                            i2++;
                        } else if ((bArr[0] & 96) == 96) {
                            stringBuffer2.append(C0128.m3228(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 20, 90)).append("\r\n");
                            C0530 c0530 = new C0530(bArr);
                            c0530.m5381();
                            strM5380 = c0530.m5380();
                            char c2 = '`';
                            stringBuffer2.append(C0128.m3228(1520, 6, 91)).append(strM5380).append("\r\n");
                            if (strM5380 == null) {
                                stringBuffer2.append(C0128.m3228(1820, 18, 93));
                            } else {
                                stringBuffer2.append(C0128.m3228(1820, 18, 93));
                            }
                        } else {
                            stringBuffer2.append(C0128.m3228(1855, 19, 35)).append("\r\n");
                        }
                    } else {
                        stringBuffer2.append(C0128.m3228(1063, 17, 30)).append("\r\n");
                        stringBuffer2.append(C0128.m3228(1080, 9, 73)).append(bArr.length).append("\r\n");
                        try {
                            C0497 c0497 = new C0497(bArr);
                            String strM4482 = c0497.m4482();
                            int iM4508 = c0497.m4506();
                            stringBuffer2.append(C0128.m3228(1089, 20, RNMBXStyleValue.InterpolationModeIdentity) + strM4482).append("\r\n");
                            if (iM4508 == 2) {
                                stringBuffer2.append(C0128.m3228(1109, 29, 119)).append("\r\n");
                                short sM4485 = c0497.m4483();
                                short sM4486 = c0497.m4483();
                                int iM4509 = c0497.m4506();
                                int iM45010 = c0497.m4506();
                                stringBuffer2.append(C0128.m3228(1138, 8, 83)).append(Integer.toHexString(iM45010)).append("\r\n");
                                String str = f1287;
                                if ((iM45010 & 1) == 1) {
                                    str = f1283;
                                }
                                m3951(C0128.m3228(1146, 13, 127), c0497, iM4509, sM4485, sM4486, str, stringBuffer2);
                                stringBuffer2.append(C0128.m3228(1159, 12, 25)).append(C0259.m3882(C0619.m5664(c0497.m4484(8), true))).append("\r\n");
                                if ((iM45010 & 16384) == 16384) {
                                    stringBuffer2.append(C0128.m3228(1171, 11, 71)).append(C0259.m3882(C0619.m5664(c0497.m4484(8), true))).append("\r\n");
                                }
                                if ((8388608 & iM45010) == 8388608) {
                                    short sM4487 = c0497.m4483();
                                    short sM4488 = c0497.m4483();
                                    int iM45011 = c0497.m4506();
                                    if (sM4487 > 0) {
                                        if (sM4487 >= sM4488) {
                                            sM4487 = sM4488;
                                        }
                                        byte[] bArrM4518 = c0497.m4518(iM45011, (int) sM4487);
                                        stringBuffer2.append(C0128.m3228(1182, 21, 29));
                                        C0497 c0498 = new C0497(bArrM4518);
                                        for (C0157 c0157 = new C0157(c0498); c0157.f471 != 0; c0157 = new C0157(c0498)) {
                                            stringBuffer2.append(C0128.m3228(1203, 6, 99));
                                            int i3 = c0157.f471;
                                            if (i3 == 1) {
                                                stringBuffer2.append(C0128.m3228(1209, 15, 21));
                                            } else if (i3 == 2) {
                                                stringBuffer2.append(C0128.m3228(1224, 15, 72));
                                            } else if (i3 == 3) {
                                                stringBuffer2.append(C0128.m3228(1239, 19, 53));
                                            } else if (i3 == 4) {
                                                stringBuffer2.append(C0128.m3228(1258, 19, 12));
                                            } else if (i3 == 7) {
                                                stringBuffer2.append(C0128.m3228(1277, 13, 98));
                                            } else {
                                                stringBuffer2.append(c0157.f471);
                                            }
                                            String strM3848 = C0259.m3848(c0157.f470, f1283);
                                            if (c0157.f471 == 7) {
                                                C0497 c0499 = new C0497(c0157.m3415());
                                                c0499.m4484(4);
                                                strM3848 = new C0394((c0499.m4492(8) / 10000) - 11644473600000L).toString();
                                            }
                                            stringBuffer2.append(C0128.m3228(1290, 8, 10)).append(strM3848);
                                            stringBuffer2.append(SyslogAppender.DEFAULT_STACKTRACE_PATTERN);
                                        }
                                        stringBuffer2.append("\r\n");
                                    }
                                }
                                if ((33554432 & iM45010) == 33554432) {
                                    m3956(c0497, stringBuffer2);
                                }
                            } else {
                                try {
                                    if (iM4508 == 1) {
                                        stringBuffer2.append(C0128.m3228(1298, 29, 42)).append("\r\n");
                                        stringBuffer2.append(C0128.m3228(1327, 8, 28)).append(Integer.toHexString(c0497.m4506())).append("\r\n");
                                        if (c0497.f1971 > 16) {
                                            short sM4489 = c0497.m4483();
                                            short sM44810 = c0497.m4483();
                                            int iM45012 = c0497.m4506();
                                            short sM44811 = c0497.m4483();
                                            short sM44812 = c0497.m4483();
                                            int iM45013 = c0497.m4506();
                                            int i4 = iM45012 > iM45013 ? iM45013 : iM45012;
                                            if (c0497.f1970 < i4 || (i4 <= 0 && c0497.m4486() > 0)) {
                                                m3956(c0497, stringBuffer2);
                                            }
                                            String strM3228 = C0128.m3228(1335, 15, 1);
                                            String str2 = f1287;
                                            m3951(strM3228, c0497, iM45012, sM4489, sM44810, str2, stringBuffer2);
                                            stringBuffer2 = stringBuffer;
                                            m3951(C0128.m3228(1350, 20, 50), c0497, iM45013, sM44811, sM44812, str2, stringBuffer2);
                                        }
                                    } else if (iM4508 == 3) {
                                        stringBuffer2.append(C0128.m3228(1370, 32, 111)).append("\r\n");
                                        short sM44813 = c0497.m4483();
                                        short sM44814 = c0497.m4483();
                                        int iM45014 = c0497.m4506();
                                        short sM44815 = c0497.m4483();
                                        short sM44816 = c0497.m4483();
                                        int iM45015 = c0497.m4506();
                                        int i5 = iM45014 > iM45015 ? iM45015 : iM45014;
                                        short sM44817 = c0497.m4483();
                                        short sM44818 = c0497.m4483();
                                        int iM45016 = c0497.m4506();
                                        if (i5 > iM45016) {
                                            i5 = iM45016;
                                        }
                                        short sM44819 = c0497.m4483();
                                        short sM44820 = c0497.m4483();
                                        int iM45017 = c0497.m4506();
                                        if (i5 > iM45017) {
                                            i5 = iM45017;
                                        }
                                        short sM44821 = c0497.m4483();
                                        short sM44822 = c0497.m4483();
                                        int iM45018 = c0497.m4506();
                                        if (i5 > iM45018) {
                                            i5 = iM45018;
                                        }
                                        if (c0497.f1970 < i5 || (i5 <= 0 && c0497.m4486() > 0)) {
                                            sM4483 = c0497.m4483();
                                            sM4484 = c0497.m4483();
                                            iM4506 = c0497.m4506();
                                            iM4507 = c0497.m4506();
                                            i = 1;
                                            s = sM44813;
                                            stringBuffer2.append(C0128.m3228(1402, 8, 88)).append(Integer.toHexString(iM4507)).append("\r\n");
                                            if (c0497.f1970 < i5 || (i5 <= 0 && c0497.m4486() > 0)) {
                                                m3956(c0497, stringBuffer2);
                                            }
                                        } else {
                                            s = sM44813;
                                            i = 1;
                                            sM4483 = 0;
                                            sM4484 = 0;
                                            iM4506 = 0;
                                            iM4507 = 0;
                                        }
                                        String str3 = f1287;
                                        if ((iM4507 & 1) == i) {
                                            str3 = f1283;
                                        }
                                        String str4 = str3;
                                        m3951(C0128.m3228(1410, 11, 52), c0497, iM45016, sM44817, sM44818, str4, stringBuffer2);
                                        m3951(C0128.m3228(1421, 4, 36), c0497, iM45017, sM44819, sM44820, str4, stringBuffer);
                                        m3951(C0128.m3228(1425, 11, 95), c0497, iM45018, sM44821, sM44822, str4, stringBuffer);
                                        StringBuffer stringBuffer3 = stringBuffer;
                                        try {
                                            m3952(C0128.m3228(1436, 16, 51), c0497, iM45014, s, sM44814, stringBuffer3);
                                            m3952(C0128.m3228(1452, 20, 6), c0497, iM45015, sM44815, sM44816, stringBuffer);
                                            stringBuffer3 = stringBuffer;
                                            m3952(C0128.m3228(1472, 11, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR), c0497, iM4506, sM4483, sM4484, stringBuffer3);
                                            stringBuffer2 = stringBuffer3;
                                        } catch (Throwable th) {
                                            th = th;
                                            stringBuffer2 = stringBuffer3;
                                            stringBuffer2.append(C0128.m3228(1483, 17, 18) + C0414.m4672(th)).append("\r\n");
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    stringBuffer2 = stringBuffer;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                }
            } else if ((bArr[0] & 96) == 96) {
                stringBuffer2.append(C0128.m3228(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 20, 90)).append("\r\n");
                try {
                    C0530 c0531 = new C0530(bArr);
                    c0531.m5381();
                    strM5380 = c0531.m5380();
                    char c3 = '`';
                    stringBuffer2.append(C0128.m3228(1520, 6, 91)).append(strM5380).append("\r\n");
                    if (strM5380 == null && strM5380.equals(C0128.m3228(1526, 13, 98))) {
                        stringBuffer2.append(C0128.m3228(1539, 21, 42));
                        C0530 c0530M5390 = c0531.m5390();
                        int i6 = c0530M5390.f3091;
                        if (i6 == 160) {
                            stringBuffer2.append(C0128.m3228(1560, 26, 1)).append("\r\n");
                            C0530 c0530M5391 = c0530M5390.m5390();
                            while (!c0530M5391.m5369()) {
                                C0530 c0530M5392 = c0530M5391.m5390();
                                int i7 = c0530M5392.f3091;
                                if (i7 == 160) {
                                    stringBuffer2.append(C0128.m3228(1586, 20, 11)).append("\r\n");
                                    C0530 c0530M5393 = c0530M5392.m5390();
                                    while (!c0530M5393.m5369()) {
                                        stringBuffer2.append(C0128.m3228(1606, 3, 83)).append(c0530M5393.m5380()).append("\r\n");
                                    }
                                } else if (i7 == 162) {
                                    byte[] bArrM5373 = c0530M5392.m5373();
                                    stringBuffer2.append(C0128.m3228(1609, 30, 24)).append(bArrM5373.length).append(".");
                                    if (bArrM5373.length > 0) {
                                        c = c3;
                                        if ((bArrM5373[0] & 96) == c) {
                                            C0530 c0532 = new C0530(bArrM5373);
                                            c0532.m5381();
                                            String strM5381 = c0532.m5380();
                                            if (strM5381 != null && strM5381.equals(C0128.m3228(1639, 20, 48))) {
                                                stringBuffer2.append(C0128.m3228(1659, 10, 57));
                                                int iM5371 = c0532.m5371();
                                                c0532.m5371();
                                                if (iM5371 == 1) {
                                                    stringBuffer2.append(C0128.m3228(1669, 17, 44)).append("\r\n");
                                                    m3958(c0532, stringBuffer2, C0128.m3228(1686, 3, 53));
                                                } else if (iM5371 == 2) {
                                                    stringBuffer2.append(C0128.m3228(1689, 17, 78)).append("\r\n");
                                                    m3958(c0532, stringBuffer2, C0128.m3228(1706, 3, 115));
                                                } else if (iM5371 == 3) {
                                                    stringBuffer2.append(C0128.m3228(1709, 16, 115)).append("\r\n");
                                                    m3958(c0532, stringBuffer2, C0128.m3228(1725, 3, 82));
                                                } else {
                                                    stringBuffer2.append(C0128.m3228(1728, 13, 117)).append(iM5371).append(")").append("\r\n");
                                                }
                                            } else {
                                                stringBuffer2.append(C0128.m3228(1741, 29, 99)).append(strM5381).append("\r\n");
                                            }
                                        }
                                        c3 = c;
                                    } else {
                                        c = c3;
                                    }
                                    stringBuffer2.append("\r\n");
                                    c3 = c;
                                }
                            }
                        } else if (i6 == 161) {
                            stringBuffer2.append(C0128.m3228(1770, 30, 87)).append("\r\n");
                        } else {
                            stringBuffer2.append(C0128.m3228(1800, 20, 80)).append(c0530M5390.f3091).append(").").append("\r\n");
                        }
                    } else {
                        stringBuffer2.append(C0128.m3228(1820, 18, 93));
                    }
                } catch (Throwable th4) {
                    stringBuffer2.append(C0128.m3228(1838, 17, 36) + C0414.m4672(th4)).append("\r\n");
                }
            } else {
                stringBuffer2.append(C0128.m3228(1855, 19, 35)).append("\r\n");
            }
            stringBuffer2.append(C0128.m3228(1874, 11, 86)).append(bArr.length == 0 ? "" : C0259.m3882(C0259.m3906(bArr, false))).append("\r\n");
            return;
        }
        stringBuffer2.append(C0128.m3228(1048, 15, 107)).append("\r\n");
    }

    public static void m3956(C0382 c0382, StringBuffer stringBuffer) {
        stringBuffer.append(C0128.m3228(1885, 21, 23));
        stringBuffer.append((int) c0382.m4496());
        stringBuffer.append(CoreConstants.DOT);
        stringBuffer.append((int) c0382.m4496());
        stringBuffer.append(C0128.m3228(1906, 8, 50));
        stringBuffer.append((int) c0382.m4483());
        stringBuffer.append(C0128.m3228(1914, 3, 6));
        c0382.m4484(3);
        stringBuffer.append(C0128.m3228(1917, 22, 107));
        stringBuffer.append((int) c0382.m4496()).append("\r\n");
    }

    public static void m3958(C0530 c0530, StringBuffer stringBuffer, String str) {
        if (c0530 == null || stringBuffer == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        C0530 c0530M5390 = c0530.m5390();
        c0530M5390.m5381();
        stringBuffer.append(str).append(C0128.m3228(1939, 7, 30)).append(c0530M5390.m5390().m5389()).append("\r\n");
        int iM5389 = c0530M5390.m5390().m5389();
        stringBuffer.append(str).append(C0128.m3228(1946, 11, 46));
        if (iM5389 != 14) {
            if (iM5389 == 30) {
                stringBuffer.append(C0128.m3228(2105, 14, 32)).append("\r\n");
                return;
            } else {
                stringBuffer.append(C0128.m3228(2119, 9, 121)).append(iM5389).append(")").append("\r\n");
                return;
            }
        }
        stringBuffer.append(C0128.m3228(1957, 11, 33)).append("\r\n");
        C0530 c0530M5391 = c0530M5390.m5390();
        stringBuffer.append(str).append(C0128.m3228(1968, 11, 34));
        byte[] bArrM5373 = c0530M5391.m5373();
        if (bArrM5373 != null && bArrM5373.length >= 4) {
            StringBuffer stringBufferAppend = stringBuffer.append(C0128.m3228(1979, 16, 105));
            int i = bArrM5373[bArrM5373.length - 4] & SignedBytes.MAX_POWER_OF_TWO;
            String str2 = BuildConfig.IOS_VERSION_CODE;
            stringBufferAppend.append(i == 64 ? BuildConfig.IOS_VERSION_CODE : "0").append(") ");
            StringBuffer stringBufferAppend2 = stringBuffer.append(C0128.m3228(1995, 16, 101));
            if ((bArrM5373[bArrM5373.length - 4] & 32) != 32) {
                str2 = "0";
            }
            stringBufferAppend2.append(str2).append(") ");
            stringBuffer.append(C0259.m3882(C0259.m3901(8, bArrM5373, 0, bArrM5373.length, true))).append("\r\n");
        } else {
            stringBuffer.append(C0128.m3228(2011, 7, 54)).append("\r\n");
        }
        C0530 c0530M5392 = c0530M5390.m5390().m5390();
        c0530M5392.m5381();
        C0530 c0530M5393 = c0530M5392.m5390();
        stringBuffer.append(str).append(C0128.m3228(2018, 8, 101)).append("\r\n");
        stringBuffer.append(str).append(C0128.m3228(2026, 10, 55)).append(c0530M5393.m5389()).append("\r\n");
        stringBuffer.append(str).append(C0128.m3228(2036, 8, 99)).append(C0259.m3853(c0530M5392.m5390().m5373())).append("\r\n");
        C0530 c0530M5394 = c0530M5392.m5390();
        c0530M5394.m5381();
        stringBuffer.append(str).append(C0128.m3228(2044, 22, 112)).append(c0530M5394.m5390().m5389()).append(")").append("\r\n");
        C0530 c0530M5395 = c0530M5394.m5390();
        c0530M5395.m5381();
        while (!c0530M5395.m5369()) {
            stringBuffer.append(str).append(C0128.m3228(2066, 8, WebSocketProtocol.PAYLOAD_SHORT)).append(C0259.m3853(c0530M5395.m5373())).append("\r\n");
        }
        C0530 c0530M5396 = c0530M5390.m5390().m5390();
        c0530M5396.m5381();
        stringBuffer.append(str).append(C0128.m3228(2074, 31, 106)).append(c0530M5396.m5389()).append("\r\n");
    }
}
