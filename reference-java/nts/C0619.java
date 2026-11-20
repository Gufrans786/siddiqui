package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.PointerIconCompat;
import ch.qos.logback.classic.net.SyslogAppender;
import ch.qos.logback.core.CoreConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imageutils.JfifUtil;
import com.google.api.FieldBehaviorProto;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.io.encoding.Base64;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Utf8;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0619 extends C0610 {

    public static final byte[] f3382;

    public static final int f3384;

    public static final byte[] f3385;

    public static final int f3392;

    public String f3393;

    public int f3394;

    public boolean f3395;

    public byte[] f3396;

    public int f3397;

    public int f3398;

    public String f3399;

    public OutputStream f3400;

    public int f3401;

    public long f3402;

    public byte[] f3403;

    public boolean f3404;

    public boolean f3405;

    public String f3406;

    public OutputStream f3407;

    public boolean f3408;

    public byte[] f3409;

    public byte[] f3410;

    public String f3411;

    public int f3412;

    public int f3413;

    public byte[] f3414;

    public boolean f3415;

    public boolean f3416;

    public int f3417;

    public String f3418;

    public InputStream f3419;

    public InterfaceC0180 f3420;

    public boolean f3421;

    public int f3422;

    public boolean f3423;

    public boolean[] f3424;

    public byte[][] f3425;

    public InputStream f3426;

    public long f3427;

    public String f3428;

    public int f3429;

    public boolean f3430;

    public boolean f3431;

    public boolean f3432;

    public int f3433;

    public int f3434;

    public static final String f3387 = C0128.m3236(0, 3, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);

    public static final String f3383 = C0128.m3236(3, 4, 44);

    public static final String f3380 = C0128.m3236(7, 7, 106);

    public static final String f3386 = C0128.m3236(14, 3, 92);

    public static final String f3381 = C0128.m3236(17, 9, 73);

    public static final char[] f3390 = new char[64];

    public static final char[] f3389 = new char[64];

    public static final char[] f3391 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final char[] f3388 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    static {
        byte[] bArr = new byte[128];
        f3382 = bArr;
        byte[] bArr2 = new byte[256];
        f3385 = bArr2;
        f3392 = bArr.length;
        f3384 = bArr2.length;
    }

    public C0619(Object obj, Object obj2) {
        super(obj2);
        this.f3410 = C0320.f1706;
        String str = f3383;
        this.f3418 = str;
        this.f3394 = 0;
        this.f3426 = null;
        this.f3407 = null;
        this.f3422 = 1;
        this.f3433 = 1;
        this.f3397 = 0;
        this.f3408 = true;
        this.f3404 = false;
        this.f3413 = 0;
        this.f3428 = "";
        this.f3411 = C0128.m3236(26, 3, 37);
        byte[] bArr = C0320.f1706;
        this.f3403 = bArr;
        this.f3409 = bArr;
        this.f3406 = "";
        this.f3393 = "";
        this.f3419 = null;
        this.f3400 = null;
        this.f3405 = false;
        this.f3415 = false;
        this.f3432 = false;
        this.f3429 = 76;
        this.f3402 = 0L;
        this.f3434 = 0;
        this.f3417 = -1;
        this.f3412 = -1;
        this.f3425 = null;
        this.f3414 = null;
        this.f3396 = null;
        this.f3427 = 0L;
        this.f3398 = 128;
        this.f3401 = 2;
        this.f3421 = false;
        this.f3430 = false;
        this.f3431 = true;
        this.f3423 = true;
        this.f3399 = "";
        this.f3420 = null;
        this.f3416 = true;
        this.f3424 = new boolean[]{false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, true, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, false, false, true, false};
        this.f3395 = false;
        if (obj instanceof InterfaceC0180) {
            this.f3420 = (InterfaceC0180) obj;
        }
        this.f3410 = C0320.f1706;
        this.f3418 = str;
        this.f3394 = 0;
        this.f3426 = null;
        this.f3407 = null;
        this.f3422 = 1;
        this.f3433 = 1;
        this.f3397 = 0;
        this.f3408 = true;
        this.f3404 = false;
        this.f3413 = 0;
        this.f3428 = "";
        this.f3411 = C0128.m3236(29, 3, 13);
        byte[] bArr2 = C0320.f1706;
        this.f3403 = bArr2;
        this.f3409 = bArr2;
        this.f3406 = "";
        this.f3393 = "";
        this.f3419 = null;
        this.f3400 = null;
        this.f3405 = false;
        this.f3415 = false;
        this.f3432 = false;
        this.f3429 = 76;
        this.f3402 = 0L;
        this.f3434 = 0;
        this.f3417 = -1;
        this.f3412 = -1;
        this.f3427 = 0L;
        this.f3398 = 128;
        this.f3401 = 2;
        this.f3421 = false;
        this.f3430 = false;
        this.f3431 = true;
        this.f3399 = "";
        this.f3425 = new byte[][]{bArr, new byte[100]};
        byte[] bArr3 = new byte[100];
        this.f3414 = new byte[63];
        this.f3396 = bArr3;
        m5685();
        m5673("*");
    }

    public static String m5657(String str) {
        int i;
        if (C0259.m3856(str)) {
            return "";
        }
        C0387 c0387 = new C0387();
        int i2 = 0;
        while (true) {
            i = 128;
            if (i2 >= str.length()) {
                break;
            }
            if (str.charAt(i2) < 128) {
                c0387.m4547(str.charAt(i2));
            }
            i2++;
        }
        int iM4533 = c0387.m4533();
        if (iM4533 > 0) {
            c0387.m4547(CoreConstants.DASH_CHAR);
        }
        int iM5660 = 72;
        int i3 = 0;
        int i4 = iM4533;
        while (i4 < str.length()) {
            char cCharAt = 65535;
            for (int i5 = 0; i5 < str.length(); i5++) {
                if (str.charAt(i5) >= i && str.charAt(i5) < cCharAt) {
                    cCharAt = str.charAt(i5);
                }
            }
            int i6 = cCharAt - i;
            int i7 = i4 + 1;
            if (i6 > (Integer.MAX_VALUE - i3) / i7) {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3236(761, 17, 106));
            }
            int i8 = (i6 * i7) + i3;
            for (int i9 = 0; i9 < str.length(); i9++) {
                if (str.charAt(i9) < cCharAt && (i8 = i8 + 1) == 0) {
                    throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3236(778, 17, 75));
                }
                if (str.charAt(i9) == cCharAt) {
                    int i10 = 36;
                    int i11 = i8;
                    while (true) {
                        int i12 = i10 <= iM5660 ? 1 : i10 >= iM5660 + 26 ? 26 : i10 - iM5660;
                        if (i11 < i12) {
                            break;
                        }
                        int i13 = i11 - i12;
                        int i14 = 36 - i12;
                        c0387.m4547(m5658((i13 % i14) + i12));
                        i11 = i13 / i14;
                        i10 += 36;
                    }
                    c0387.m4547(m5658(i11));
                    int i15 = i4 + 1;
                    boolean z = i4 == iM4533;
                    i4 = i15;
                    iM5660 = m5660(i8, i15, z);
                    i8 = 0;
                }
            }
            i3 = i8 + 1;
            i = cCharAt + 1;
        }
        return c0387.m4571();
    }

    public static char m5658(int i) {
        return (char) (i > 25 ? i + 22 : i + 97);
    }

    public final void m5665() throws IOException {
        C0301 c0301 = new C0301();
        byte[] bArr = new byte[1000];
        while (true) {
            int i = this.f3426.read(bArr);
            if (i == -1) {
                break;
            }
            m5682();
            c0301.m4181(bArr, 0, i);
        }
        String strM5716 = this.f1725.m5716(c0301.m4182());
        if (strM5716 == null) {
            return;
        }
        this.f3407.write(this.f1725.m5718(m5657(strM5716)));
    }

    public void m5666() throws C0414 {
        int i;
        String strM3870;
        byte[] bArr = new byte[4096];
        C0391 c0391 = new C0391();
        C0391 c0392 = this.f3401 == 0 ? null : new C0391();
        loop0: while (true) {
            char c = 1;
            while (true) {
                i = 0;
                while (true) {
                    try {
                        int i2 = this.f3426.read();
                        m5682();
                        if (i2 == -1) {
                            break loop0;
                        }
                        if (i2 != 13 && i2 != 10) {
                            bArr[i] = (byte) i2;
                            i++;
                        } else if (i == 0) {
                        }
                    } catch (IOException e) {
                        throw new C0414(e);
                    }
                }
                strM3870 = C0259.m3870(bArr, 0, i);
                if (c == 1) {
                    m5671(strM3870, C0128.m3236(1282, 8, 113));
                    int iIndexOf = strM3870.indexOf(C0128.m3236(1290, 6, 119));
                    this.f3428 = iIndexOf == -1 ? "" : strM3870.substring(iIndexOf + 6);
                    c = strM3870.indexOf(C0128.m3236(1296, 6, 20)) != -1 ? (char) 2 : (char) 3;
                } else if (c == 2) {
                    m5671(strM3870, C0128.m3236(1302, 7, 125));
                } else if (c != 3) {
                    continue;
                } else {
                    if (strM3870.startsWith(C0128.m3236(1309, 6, 107))) {
                        break;
                    }
                    int i3 = 0;
                    while (i3 < i) {
                        int i4 = bArr[i3];
                        if (i4 == 61) {
                            i3++;
                            i4 = bArr[i3] - 64;
                        }
                        int i5 = i4 - 42;
                        try {
                            this.f3407.write(i5);
                            c0391.m4591(i5);
                            if (c0392 != null) {
                                c0392.m4591(i5);
                            }
                            i3++;
                        } catch (Exception e2) {
                            throw new C0414(e2);
                        }
                    }
                }
            }
            if (strM3870.indexOf(C0128.m3236(1315, 6, 113)) != -1) {
                m5705(strM3870, C0128.m3236(1321, 8, 99), c0391);
            }
            c0391 = new C0391();
        }
        String strM3871 = C0259.m3870(bArr, 0, i);
        int i6 = this.f3401;
        if (i6 != 0) {
            if (i6 == 1) {
                try {
                    m5683(strM3871, C0128.m3236(1329, 7, 56));
                } catch (Exception unused) {
                    return;
                }
            }
            m5705(strM3871, C0128.m3236(1336, 7, 42), c0392);
        }
    }

    public void m5667() throws C0414, IOException {
        C0301 c0301 = new C0301();
        byte[] bArr = new byte[1000];
        while (true) {
            int i = this.f3426.read(bArr);
            if (i == -1) {
                this.f3407.write(C0259.m3903(C0259.m3882(c0301.m4182()), C0128.m3236(574, 11, 48)));
                return;
            } else {
                m5682();
                c0301.m4181(bArr, 0, i);
            }
        }
    }

    public void m5668() throws C0414, IOException {
        C0301 c0301 = new C0301();
        byte[] bArr = new byte[1000];
        while (true) {
            int i = this.f3426.read(bArr);
            if (i == -1) {
                this.f3407.write(C0259.m3848(c0301.m4182(), C0128.m3236(585, 11, 55)).getBytes());
                return;
            } else {
                m5682();
                c0301.m4181(bArr, 0, i);
            }
        }
    }

    public final void m5669() {
        String str;
        String strM3236;
        int length;
        try {
            int i = 1;
            String[] strArrM3907 = C0259.m3907(this.f3418, "-", true);
            if (f3383.equalsIgnoreCase(strArrM3907[0])) {
                strM3236 = C0128.m3236(888, 8, 81);
            } else if (f3387.equalsIgnoreCase(strArrM3907[0])) {
                strM3236 = C0128.m3236(896, 7, 86);
            } else {
                if (!f3381.equalsIgnoreCase(strArrM3907[0])) {
                    str = null;
                    if (f3386.equalsIgnoreCase(strArrM3907[0]) && strArrM3907.length == 2) {
                        if (C0128.m3236(916, 3, 2).equalsIgnoreCase(strArrM3907[1])) {
                            strM3236 = C0128.m3236(919, 10, 12);
                        } else if (C0128.m3236(929, 3, 95).equalsIgnoreCase(strArrM3907[1])) {
                            strM3236 = C0128.m3236(932, 10, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
                        } else if (C0128.m3236(942, 3, 118).equalsIgnoreCase(strArrM3907[1])) {
                            strM3236 = C0128.m3236(945, 10, 52);
                        } else if (C0128.m3236(955, 3, 84).equalsIgnoreCase(strArrM3907[1])) {
                            strM3236 = C0128.m3236(958, 10, 8);
                        } else {
                            i = 2;
                        }
                        i = 2;
                    }
                    if (str != null) {
                        throw new C0414(19, C0128.m3236(968, 16, 27) + strArrM3907[0] + C0128.m3236(984, 19, 72));
                    }
                    AbstractC0403 abstractC0403M4223 = C0308.m4223(str);
                    abstractC0403M4223.mo4637(this.f3410);
                    byte[] bArrM4302 = abstractC0403M4223.m4302(this.f3426);
                    length = bArrM4302.length;
                    if (strArrM3907.length > i) {
                        length = Math.min(length, Integer.parseInt(strArrM3907[i]) / 8);
                    }
                    this.f3407.write(bArrM4302, 0, length);
                }
                strM3236 = C0128.m3236(TypedValues.Custom.TYPE_STRING, 13, 15);
            }
            str = strM3236;
            if (str != null) {
                throw new C0414(19, C0128.m3236(968, 16, 27) + strArrM3907[0] + C0128.m3236(984, 19, 72));
            }
            AbstractC0403 abstractC0403M4224 = C0308.m4223(str);
            abstractC0403M4224.mo4637(this.f3410);
            byte[] bArrM4303 = abstractC0403M4224.m4302(this.f3426);
            length = bArrM4303.length;
            if (strArrM3907.length > i) {
                length = Math.min(length, Integer.parseInt(strArrM3907[i]) / 8);
            }
            this.f3407.write(bArrM4303, 0, length);
        } catch (Exception e) {
            throw new C0414(19, C0414.m4672(e));
        }
    }

    public void m5670() throws C0414, IOException {
        int i;
        C0301 c0301 = new C0301();
        byte[] bArr = new byte[1000];
        while (true) {
            int i2 = this.f3426.read(bArr);
            i = 0;
            if (i2 == -1) {
                break;
            }
            m5682();
            c0301.m4181(bArr, 0, i2);
        }
        String strM3892 = C0259.m3892(c0301.m4182());
        while (i < strM3892.length()) {
            int iCharAt = strM3892.charAt(i);
            if (iCharAt == 37) {
                try {
                    iCharAt = Integer.parseInt(strM3892.substring(i + 1, i + 3), 16);
                    i += 2;
                } catch (Exception unused) {
                }
            } else if (iCharAt == 43) {
                iCharAt = 32;
            }
            this.f3407.write(iCharAt);
            i++;
        }
    }

    public final void m5671(String str, String str2) throws C0414 {
        if (!str.startsWith(str2)) {
            throw new C0414(1, C0128.m3236(1102, 16, 12) + str2 + C0128.m3236(1118, 11, 43));
        }
    }

    public void m5672(String str) throws C0414 {
        try {
            byte[] bArrM4302 = C0308.m4217(str).m4302(this.f3426);
            if (!this.f3423) {
                this.f3407.write(bArrM4302, 0, bArrM4302.length);
            } else {
                byte[] bArrM5664 = m5664(bArrM4302, this.f3395);
                this.f3407.write(bArrM5664, 0, bArrM5664.length);
            }
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public void m5673(String str) {
        this.f3399 = str;
    }

    public final void m5674(int r15) throws nts.C0414 {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0619.m5674(int):void");
    }

    public String m5675() throws C0414, IOException {
        String strM5697 = m5697(0, 0);
        StringBuffer stringBuffer = null;
        while (true) {
            char c = 1;
            while (true) {
                if (c == 1) {
                    int iIndexOf = strM5697.indexOf(C0128.m3236(189, 6, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
                    if (iIndexOf != -1) {
                        int i = iIndexOf + 6;
                        strM5697 = m5697(i, strM5697.length() - i);
                        c = 2;
                    } else {
                        strM5697 = m5697(strM5697.length() - 5, 5);
                        if (strM5697.length() == 5) {
                            throw new C0414(1, C0128.m3236(195, 15, 26));
                        }
                    }
                } else if (c == 2) {
                    int iIndexOf2 = strM5697.indexOf(" ");
                    if (iIndexOf2 != -1) {
                        this.f3411 = strM5697.substring(0, iIndexOf2);
                        int i2 = iIndexOf2 + 1;
                        int length = strM5697.length() - i2;
                        stringBuffer = new StringBuffer();
                        strM5697 = m5697(i2, length);
                        c = 3;
                    }
                } else if (c == 3) {
                    int iIndexOf3 = strM5697.indexOf("\n");
                    if (iIndexOf3 != -1) {
                        int i3 = iIndexOf3 + 1;
                        m5697(i3, strM5697.length() - i3);
                        if (strM5697.indexOf("\r\n") + 1 == iIndexOf3) {
                            iIndexOf3--;
                        }
                        String str = stringBuffer.toString() + strM5697.substring(0, iIndexOf3);
                        if (this.f3428.endsWith(C0320.f1717)) {
                            this.f3428 = C0663.m5888(new StringBuilder(), this.f3428, str);
                        } else {
                            this.f3428 = str;
                        }
                        return this.f3428;
                    }
                    int length2 = strM5697.length() - 1;
                    stringBuffer.append(strM5697.substring(0, length2));
                    strM5697 = m5697(length2, 1);
                    if (strM5697.length() == 1) {
                        throw new C0414(1, C0128.m3236(210, 15, 49));
                    }
                } else {
                    continue;
                }
            }
        }
    }

    public void m5676() throws IOException {
        byte[] bArr = new byte[5];
        int i = this.f3430 ? 32 : 0;
        while (true) {
            int i2 = this.f3426.read(bArr);
            m5682();
            if (i2 == -1) {
                return;
            }
            if (i2 == 1) {
                OutputStream outputStream = this.f3407;
                char[] cArr = f3389;
                outputStream.write(cArr[((bArr[0] >>> 3) & 31) + i]);
                this.f3407.write(cArr[((bArr[0] << 2) & 28) + i]);
                this.f3407.write(61);
                this.f3407.write(61);
                this.f3407.write(61);
                this.f3407.write(61);
                this.f3407.write(61);
                this.f3407.write(61);
            } else if (i2 == 2) {
                OutputStream outputStream2 = this.f3407;
                char[] cArr2 = f3389;
                outputStream2.write(cArr2[((bArr[0] >>> 3) & 31) + i]);
                this.f3407.write(cArr2[((bArr[0] << 2) & 28) + (3 & (bArr[1] >>> 6)) + i]);
                this.f3407.write(cArr2[((bArr[1] >>> 1) & 31) + i]);
                this.f3407.write(cArr2[((bArr[1] << 4) & 16) + i]);
                this.f3407.write(61);
                this.f3407.write(61);
                this.f3407.write(61);
                this.f3407.write(61);
            } else if (i2 == 3) {
                OutputStream outputStream3 = this.f3407;
                char[] cArr3 = f3389;
                outputStream3.write(cArr3[((bArr[0] >>> 3) & 31) + i]);
                this.f3407.write(cArr3[((bArr[0] << 2) & 28) + (3 & (bArr[1] >>> 6)) + i]);
                this.f3407.write(cArr3[((bArr[1] >>> 1) & 31) + i]);
                this.f3407.write(cArr3[((bArr[1] << 4) & 16) + ((bArr[2] >>> 4) & 15) + i]);
                this.f3407.write(cArr3[((bArr[2] << 1) & 30) + i]);
                this.f3407.write(61);
                this.f3407.write(61);
                this.f3407.write(61);
            } else if (i2 == 4) {
                OutputStream outputStream4 = this.f3407;
                char[] cArr4 = f3389;
                outputStream4.write(cArr4[((bArr[0] >>> 3) & 31) + i]);
                this.f3407.write(cArr4[((bArr[0] << 2) & 28) + ((bArr[1] >>> 6) & 3) + i]);
                this.f3407.write(cArr4[((bArr[1] >>> 1) & 31) + i]);
                this.f3407.write(cArr4[((bArr[1] << 4) & 16) + ((bArr[2] >>> 4) & 15) + i]);
                this.f3407.write(cArr4[((bArr[2] << 1) & 30) + (1 & (bArr[3] >>> 7)) + i]);
                this.f3407.write(cArr4[((bArr[3] >>> 2) & 31) + i]);
                this.f3407.write(cArr4[((bArr[3] << 3) & 24) + i]);
                this.f3407.write(61);
            } else if (i2 == 5) {
                OutputStream outputStream5 = this.f3407;
                char[] cArr5 = f3389;
                outputStream5.write(cArr5[((bArr[0] >>> 3) & 31) + i]);
                this.f3407.write(cArr5[((bArr[0] << 2) & 28) + ((bArr[1] >>> 6) & 3) + i]);
                this.f3407.write(cArr5[((bArr[1] >>> 1) & 31) + i]);
                this.f3407.write(cArr5[((bArr[1] << 4) & 16) + ((bArr[2] >>> 4) & 15) + i]);
                this.f3407.write(cArr5[((bArr[2] << 1) & 30) + (1 & (bArr[3] >>> 7)) + i]);
                this.f3407.write(cArr5[((bArr[3] >>> 2) & 31) + i]);
                this.f3407.write(cArr5[((bArr[3] << 3) & 24) + ((bArr[4] >>> 5) & 7) + i]);
                this.f3407.write(cArr5[(bArr[4] & Ascii.US) + i]);
            }
        }
    }

    public final void m5677() throws IOException {
        String string;
        int i;
        int i2;
        int i3;
        C0301 c0301 = new C0301();
        byte[] bArr = new byte[1000];
        while (true) {
            int i4 = this.f3426.read(bArr);
            if (i4 == -1) {
                break;
            }
            m5682();
            c0301.m4181(bArr, 0, i4);
        }
        String strM5716 = this.f1725.m5716(c0301.m4182());
        if (strM5716 == null) {
            return;
        }
        if (!C0259.m3856(strM5716)) {
            StringBuffer stringBuffer = new StringBuffer();
            int i5 = 0;
            for (int i6 = 0; i6 < strM5716.length(); i6++) {
                if (strM5716.charAt(i6) == '-') {
                    i5 = i6;
                }
            }
            int i7 = 0;
            while (true) {
                int length = 128;
                if (i7 >= i5) {
                    int i8 = 1;
                    int i9 = i5 > 0 ? i5 + 1 : 0;
                    int iM5660 = 72;
                    int i10 = 0;
                    while (i9 < strM5716.length()) {
                        int i11 = i8;
                        int i12 = i10;
                        int i13 = 36;
                        while (true) {
                            if (i9 >= strM5716.length()) {
                                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3236(809, 14, 41));
                            }
                            i = i9 + 1;
                            char cCharAt = strM5716.charAt(i9);
                            i2 = i8;
                            if (cCharAt >= '0' && cCharAt <= '9') {
                                i3 = cCharAt - 22;
                            } else if (cCharAt < 'a' || cCharAt > 'z') {
                                i3 = (cCharAt < 'A' || cCharAt > 'Z') ? 36 : cCharAt - 'A';
                            } else {
                                i3 = cCharAt - 'a';
                            }
                            if (i3 >= 36) {
                                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3236(823, 14, 16));
                            }
                            if (i3 > (Integer.MAX_VALUE - i12) / i11) {
                                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3236(837, 17, WebSocketProtocol.PAYLOAD_SHORT));
                            }
                            i12 += i3 * i11;
                            int i14 = i13 <= iM5660 ? i2 : i13 >= iM5660 + 26 ? 26 : i13 - iM5660;
                            if (i3 < i14) {
                                break;
                            }
                            int i15 = 36 - i14;
                            if (i11 > Integer.MAX_VALUE / i15) {
                                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3236(854, 17, 115));
                            }
                            i11 *= i15;
                            i13 += 36;
                            i9 = i;
                            i8 = i2;
                        }
                        iM5660 = m5660(i12 - i10, stringBuffer.length() + 1, i10 == 0 ? i2 : 0);
                        if (i12 / (stringBuffer.length() + 1) > Integer.MAX_VALUE - length) {
                            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3236(871, 17, 4));
                        }
                        length += i12 / (stringBuffer.length() + 1);
                        int length2 = i12 % (stringBuffer.length() + 1);
                        stringBuffer.insert(length2, (char) length);
                        i10 = length2 + 1;
                        i9 = i;
                        i8 = i2;
                    }
                    string = stringBuffer.toString();
                    break;
                }
                if (strM5716.charAt(i7) >= 128) {
                    throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3236(795, 14, 19));
                }
                stringBuffer.append(strM5716.charAt(i7));
                i7++;
            }
        } else {
            string = "";
        }
        this.f3407.write(this.f1725.m5718(string));
    }

    public String m5678(String str) throws IOException {
        boolean z;
        boolean z2;
        byte[] bArr = {43, 45};
        if (this.f3421) {
            bArr[0] = 38;
        }
        StringBuffer stringBuffer = new StringBuffer();
        C0301 c0301 = new C0301();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream byteArrayInputStream = this.f3426;
        if (str != null) {
            byteArrayInputStream = new ByteArrayInputStream(C0259.m3858(str));
            z2 = false;
            z = false;
        } else {
            z = false;
            z2 = true;
        }
        while (true) {
            if (z2) {
                m5682();
            }
            int i = byteArrayInputStream.read();
            if (i < 0) {
                return stringBuffer.toString();
            }
            byte b = (byte) (i & 127);
            if (!z && b == bArr[0]) {
                c0301.m4169();
                z = true;
            } else if (z && b == bArr[1]) {
                if (c0301.f1615 != 0) {
                    while (c0301.f1615 % 4 != 0) {
                        c0301.m4178(61);
                    }
                    InputStream byteArrayInputStream2 = new ByteArrayInputStream(c0301.m4182());
                    byteArrayOutputStream.reset();
                    m5703(byteArrayInputStream2, (OutputStream) byteArrayOutputStream, false);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    StringBuffer stringBuffer2 = new StringBuffer();
                    for (int i2 = 0; i2 < byteArray.length; i2 += 2) {
                        stringBuffer2.append((char) (((byteArray[i2] & 255) << 8) | (byteArray[i2 + 1] & 255)));
                    }
                    if (z2) {
                        this.f3407.write(C0259.m3858(stringBuffer2.toString()));
                    } else {
                        stringBuffer.append(stringBuffer2.toString());
                    }
                } else if (z2) {
                    this.f3407.write(bArr[0]);
                } else {
                    stringBuffer.append((char) (bArr[0] & 255));
                }
                z = false;
            } else if (z) {
                if (this.f3421 && b == 44) {
                    b = 47;
                }
                c0301.m4178((int) b);
            } else if (z2) {
                this.f3407.write(b);
            } else {
                stringBuffer.append((char) (b & 255));
            }
        }
    }

    public void m5679() throws C0414, IOException {
        this.f3407.write(C0259.m3858(C0128.m3236(596, 6, 51) + this.f3411 + " " + this.f3428 + "\r\n"));
        while (true) {
            int i = this.f3426.read(this.f3414, 0, 45);
            if (i == -1) {
                this.f3407.write(C0128.m3236(TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, 8, 104).getBytes());
                return;
            }
            m5682();
            byte[] bArr = this.f3414;
            bArr[i + 1] = 0;
            bArr[i] = 0;
            this.f3396[0] = (byte) (i + 32);
            this.f3417 = 0;
            this.f3412 = 1;
            while (true) {
                int i2 = this.f3417;
                if (i2 < i) {
                    byte[] bArr2 = this.f3414;
                    int i3 = bArr2[i2] >>> 2;
                    byte[] bArr3 = this.f3396;
                    int i4 = this.f3412;
                    int i5 = i4 + 1;
                    this.f3412 = i5;
                    int i6 = 96;
                    bArr3[i4] = (byte) (i3 == 0 ? 96 : i3 + 32);
                    int i7 = ((bArr2[i2] & 3) << 4) | ((bArr2[i2 + 1] & 255) >>> 4);
                    int i8 = i4 + 2;
                    this.f3412 = i8;
                    bArr3[i5] = (byte) (i7 == 0 ? 96 : i7 + 32);
                    int i9 = ((bArr2[i2 + 1] & Ascii.SI) << 2) | ((bArr2[i2 + 2] & 255) >>> 6);
                    int i10 = i4 + 3;
                    this.f3412 = i10;
                    bArr3[i8] = (byte) (i9 == 0 ? 96 : i9 + 32);
                    int i11 = bArr2[i2 + 2] & Utf8.REPLACEMENT_BYTE;
                    this.f3412 = i4 + 4;
                    if (i11 != 0) {
                        i6 = i11 + 32;
                    }
                    bArr3[i10] = (byte) i6;
                    this.f3417 = i2 + 3;
                }
            }
            byte[] bArr4 = this.f3396;
            int i12 = this.f3412;
            int i13 = i12 + 1;
            this.f3412 = i13;
            bArr4[i12] = Ascii.CR;
            int i14 = i12 + 2;
            this.f3412 = i14;
            bArr4[i13] = 10;
            this.f3407.write(bArr4, 0, i14);
        }
    }

    public void m5680() throws C0414 {
        try {
            long jAvailable = this.f3426.available();
            C0391 c0391 = this.f3401 == 0 ? null : new C0391();
            long j = this.f3427;
            if (jAvailable <= j || j <= 0) {
                this.f3407.write(this.f1725.m5718(m5698(0, this.f3398, jAvailable, this.f3428) + "\r\n"));
                m5702(jAvailable, (C0391) null, c0391);
                this.f3407.write(this.f1725.m5718(m5700(jAvailable, c0391)));
                return;
            }
            int i = 1;
            long j2 = 0;
            while (j2 < jAvailable) {
                C0391 c0392 = new C0391();
                long j3 = jAvailable;
                this.f3407.write(this.f1725.m5718(m5698(i, this.f3398, jAvailable, this.f3428) + "\r\n"));
                long j4 = this.f3427;
                if (j2 + j4 > j3) {
                    j4 = j3 - j2;
                }
                long j5 = j4;
                long j6 = j2;
                j2 = j6 + j5;
                this.f3407.write(this.f1725.m5718((C0128.m3236(FieldBehaviorProto.FIELD_BEHAVIOR_FIELD_NUMBER, 13, 7) + (j6 + 1) + C0128.m3236(1065, 5, 51) + j2) + "\r\n"));
                m5702(j5, c0392, c0391);
                int i2 = i;
                this.f3407.write(this.f1725.m5718(m5699(i2, j5, c0392, j2 == j3 ? c0391 : null) + "\r\n"));
                i = i2 + 1;
                jAvailable = j3;
            }
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public final void m5681() throws C0414, IOException {
        C0301 c0301 = new C0301();
        byte[] bArr = new byte[1000];
        while (true) {
            int i = this.f3426.read(bArr);
            if (i == -1) {
                break;
            }
            m5682();
            c0301.m4181(bArr, 0, i);
        }
        String strM3892 = C0259.m3892(c0301.m4182());
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        boolean z = false;
        for (int i2 = 0; i2 < strM3892.length(); i2++) {
            char cCharAt = strM3892.charAt(i2);
            if (z) {
                if (cCharAt == ';') {
                    String string = stringBuffer2.toString();
                    if (string.startsWith("#")) {
                        stringBuffer.append(Character.toChars(Integer.parseInt(string.substring(1))));
                    } else if (string.equalsIgnoreCase("lt")) {
                        stringBuffer.append(Typography.less);
                    } else if (string.equalsIgnoreCase("gt")) {
                        stringBuffer.append(Typography.greater);
                    } else if (string.equalsIgnoreCase(C0128.m3236(725, 4, 14))) {
                        stringBuffer.append(CoreConstants.SINGLE_QUOTE_CHAR);
                    } else if (string.equalsIgnoreCase(C0128.m3236(729, 4, 66))) {
                        stringBuffer.append('\"');
                    } else if (string.equalsIgnoreCase(C0128.m3236(733, 3, 82))) {
                        stringBuffer.append(Typography.amp);
                    } else if (string.equalsIgnoreCase("gt")) {
                        stringBuffer.append(Typography.greater);
                    }
                    stringBuffer2.setLength(0);
                    z = false;
                } else {
                    stringBuffer2.append(cCharAt);
                }
            } else if (cCharAt == '&') {
                z = true;
            } else {
                stringBuffer.append(cCharAt);
            }
        }
        if (stringBuffer2.length() > 0) {
            stringBuffer.append(stringBuffer2.toString());
        }
        this.f3407.write(this.f1725.m5718(stringBuffer.toString()));
    }

    public final void m5682() throws C0414 {
        int i;
        if (!this.f3408 || this.f3422 == 0 || (i = this.f3397) == 0) {
            return;
        }
        try {
            int iAvailable = ((i - this.f3426.available()) * 100) / this.f3397;
            while (true) {
                int i2 = this.f3422;
                int i3 = this.f3433;
                if (iAvailable < i2 * i3) {
                    return;
                }
                int i4 = i2 * i3;
                InterfaceC0180 interfaceC0180 = this.f3420;
                if (interfaceC0180 != null) {
                    interfaceC0180.m3569(i4);
                }
                this.f3433++;
            }
        } catch (IOException unused) {
            throw new C0414(5, C0128.m3236(FrameMetricsAggregator.EVERY_DURATION, 30, 44));
        }
    }

    public final int m5683(String str, String str2) throws C0414 {
        int iIndexOf = str.indexOf(str2);
        if (iIndexOf == -1) {
            throw new C0414(1, C0128.m3236(1185, 48, 101) + str2 + C0128.m3236(1233, 7, 17));
        }
        try {
            int iIndexOf2 = str.indexOf(" ", str2.length() + iIndexOf);
            if (iIndexOf2 == -1) {
                iIndexOf2 = str.indexOf(SyslogAppender.DEFAULT_STACKTRACE_PATTERN, str2.length() + iIndexOf);
            }
            if (iIndexOf2 == -1) {
                iIndexOf2 = str.length();
            }
            return (int) C0259.m3879(str.substring(iIndexOf + str2.length(), iIndexOf2));
        } catch (Exception unused) {
            throw new C0414(1, C0128.m3236(1129, 49, 12) + str2 + C0128.m3236(1178, 7, 21));
        }
    }

    public void m5684() throws C0414, IOException {
        boolean[] zArr = this.f3424;
        int length = zArr.length;
        boolean[] zArr2 = new boolean[length];
        System.arraycopy(zArr, 0, zArr2, 0, length);
        for (int i = 0; i < this.f3399.length(); i++) {
            char cCharAt = this.f3399.charAt(i);
            if (cCharAt >= ' ' && cCharAt < 128) {
                zArr2[cCharAt - ' '] = true;
            }
        }
        char[] cArr = this.f3395 ? f3388 : f3391;
        byte[] bArr = new byte[4096];
        while (true) {
            int i2 = this.f3426.read(bArr, 0, 4096);
            if (i2 <= 0) {
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                byte b = bArr[i3];
                if (b < 32 || b >= 128 || !zArr2[b - 32]) {
                    this.f3407.write(new byte[]{37, (byte) cArr[(b >> 4) & 15], (byte) cArr[b & Ascii.SI]}, 0, 3);
                } else {
                    this.f3407.write(b);
                }
            }
            m5682();
        }
    }

    public void m5685() {
        char[] cArr = f3390;
        cArr[0] = 'A';
        cArr[1] = 'B';
        cArr[2] = 'C';
        cArr[3] = 'D';
        cArr[4] = 'E';
        cArr[5] = 'F';
        cArr[6] = 'G';
        cArr[7] = 'H';
        cArr[8] = 'I';
        cArr[9] = 'J';
        cArr[10] = 'K';
        cArr[11] = 'L';
        cArr[12] = 'M';
        cArr[13] = 'N';
        cArr[14] = 'O';
        cArr[15] = 'P';
        cArr[16] = 'Q';
        cArr[17] = 'R';
        cArr[18] = 'S';
        cArr[19] = 'T';
        cArr[20] = 'U';
        cArr[21] = 'V';
        cArr[22] = 'W';
        cArr[23] = 'X';
        cArr[24] = 'Y';
        cArr[25] = 'Z';
        cArr[26] = 'a';
        cArr[27] = 'b';
        cArr[28] = 'c';
        cArr[29] = 'd';
        cArr[30] = 'e';
        cArr[31] = 'f';
        cArr[32] = 'g';
        cArr[33] = 'h';
        cArr[34] = 'i';
        cArr[35] = 'j';
        cArr[36] = 'k';
        cArr[37] = 'l';
        cArr[38] = 'm';
        cArr[39] = 'n';
        cArr[40] = 'o';
        cArr[41] = 'p';
        cArr[42] = 'q';
        cArr[43] = 'r';
        cArr[44] = 's';
        cArr[45] = 't';
        cArr[46] = AbstractJsonLexerKt.UNICODE_ESC;
        cArr[47] = 'v';
        cArr[48] = 'w';
        cArr[49] = 'x';
        cArr[50] = 'y';
        cArr[51] = 'z';
        cArr[52] = '0';
        cArr[53] = '1';
        cArr[54] = '2';
        cArr[55] = '3';
        cArr[56] = '4';
        cArr[57] = '5';
        cArr[58] = '6';
        cArr[59] = '7';
        cArr[60] = '8';
        cArr[61] = '9';
        cArr[62] = '+';
        cArr[63] = '/';
        byte[] bArr = f3382;
        bArr[0] = -1;
        bArr[1] = -1;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = -1;
        bArr[5] = -1;
        bArr[6] = -1;
        bArr[7] = -1;
        bArr[8] = -1;
        bArr[9] = -1;
        bArr[10] = -1;
        bArr[11] = -1;
        bArr[12] = -1;
        bArr[13] = -1;
        bArr[14] = -1;
        bArr[15] = -1;
        bArr[16] = -1;
        bArr[17] = -1;
        bArr[18] = -1;
        bArr[19] = -1;
        bArr[20] = -1;
        bArr[21] = -1;
        bArr[22] = -1;
        bArr[23] = -1;
        bArr[24] = -1;
        bArr[25] = -1;
        bArr[26] = -1;
        bArr[27] = -1;
        bArr[28] = -1;
        bArr[29] = -1;
        bArr[30] = -1;
        bArr[31] = -1;
        bArr[32] = -1;
        bArr[33] = -1;
        bArr[34] = -1;
        bArr[35] = -1;
        bArr[36] = -1;
        bArr[37] = -1;
        bArr[38] = -1;
        bArr[39] = -1;
        bArr[40] = -1;
        bArr[41] = -1;
        bArr[42] = -1;
        bArr[43] = 62;
        bArr[44] = -1;
        bArr[45] = -1;
        bArr[46] = -1;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
        bArr[48] = 52;
        bArr[49] = 53;
        bArr[50] = 54;
        bArr[51] = 55;
        bArr[52] = 56;
        bArr[53] = 57;
        bArr[54] = 58;
        bArr[55] = 59;
        bArr[56] = 60;
        bArr[57] = Base64.padSymbol;
        bArr[58] = -1;
        bArr[59] = -1;
        bArr[60] = -1;
        bArr[61] = 99;
        bArr[62] = -1;
        bArr[63] = -1;
        bArr[64] = -1;
        bArr[65] = 0;
        bArr[66] = 1;
        bArr[67] = 2;
        bArr[68] = 3;
        bArr[69] = 4;
        bArr[70] = 5;
        bArr[71] = 6;
        bArr[72] = 7;
        bArr[73] = 8;
        bArr[74] = 9;
        bArr[75] = 10;
        bArr[76] = Ascii.VT;
        bArr[77] = Ascii.FF;
        bArr[78] = Ascii.CR;
        bArr[79] = Ascii.SO;
        bArr[80] = Ascii.SI;
        bArr[81] = 16;
        bArr[82] = 17;
        bArr[83] = Ascii.DC2;
        bArr[84] = 19;
        bArr[85] = Ascii.DC4;
        bArr[86] = Ascii.NAK;
        bArr[87] = Ascii.SYN;
        bArr[88] = Ascii.ETB;
        bArr[89] = Ascii.CAN;
        bArr[90] = Ascii.EM;
        bArr[91] = -1;
        bArr[92] = -1;
        bArr[93] = -1;
        bArr[94] = -1;
        bArr[95] = -1;
        bArr[96] = -1;
        bArr[97] = Ascii.SUB;
        bArr[98] = Ascii.ESC;
        bArr[99] = Ascii.FS;
        bArr[100] = Ascii.GS;
        bArr[101] = Ascii.RS;
        bArr[102] = Ascii.US;
        bArr[103] = 32;
        bArr[104] = 33;
        bArr[105] = 34;
        bArr[106] = 35;
        bArr[107] = 36;
        bArr[108] = 37;
        bArr[109] = 38;
        bArr[110] = 39;
        bArr[111] = 40;
        bArr[112] = 41;
        bArr[113] = 42;
        bArr[114] = 43;
        bArr[115] = 44;
        bArr[116] = 45;
        bArr[117] = 46;
        bArr[118] = 47;
        bArr[119] = 48;
        bArr[120] = 49;
        bArr[121] = 50;
        bArr[122] = 51;
        char[] cArr2 = f3389;
        cArr2[0] = 'A';
        cArr2[1] = 'B';
        cArr2[2] = 'C';
        cArr2[3] = 'D';
        cArr2[4] = 'E';
        cArr2[5] = 'F';
        cArr2[6] = 'G';
        cArr2[7] = 'H';
        cArr2[8] = 'I';
        cArr2[9] = 'J';
        cArr2[10] = 'K';
        cArr2[11] = 'L';
        cArr2[12] = 'M';
        cArr2[13] = 'N';
        cArr2[14] = 'O';
        cArr2[15] = 'P';
        cArr2[16] = 'Q';
        cArr2[17] = 'R';
        cArr2[18] = 'S';
        cArr2[19] = 'T';
        cArr2[20] = 'U';
        cArr2[21] = 'V';
        cArr2[22] = 'W';
        cArr2[23] = 'X';
        cArr2[24] = 'Y';
        cArr2[25] = 'Z';
        cArr2[26] = '2';
        cArr2[27] = '3';
        cArr2[28] = '4';
        cArr2[29] = '5';
        cArr2[30] = '6';
        cArr2[31] = '7';
        cArr2[32] = '0';
        cArr2[33] = '1';
        cArr2[34] = '2';
        cArr2[35] = '3';
        cArr2[36] = '4';
        cArr2[37] = '5';
        cArr2[38] = '6';
        cArr2[39] = '7';
        cArr2[40] = '8';
        cArr2[41] = '9';
        cArr2[42] = 'A';
        cArr2[43] = 'B';
        cArr2[44] = 'C';
        cArr2[45] = 'D';
        cArr2[46] = 'E';
        cArr2[47] = 'F';
        cArr2[48] = 'G';
        cArr2[49] = 'H';
        cArr2[50] = 'I';
        cArr2[51] = 'J';
        cArr2[52] = 'K';
        cArr2[53] = 'L';
        cArr2[54] = 'M';
        cArr2[55] = 'N';
        cArr2[56] = 'O';
        cArr2[57] = 'P';
        cArr2[58] = 'Q';
        cArr2[59] = 'R';
        cArr2[60] = 'S';
        cArr2[61] = 'T';
        cArr2[62] = 'U';
        cArr2[63] = 'V';
        byte[] bArr2 = f3385;
        bArr2[0] = -1;
        bArr2[1] = -1;
        bArr2[2] = -1;
        bArr2[3] = -1;
        bArr2[4] = -1;
        bArr2[5] = -1;
        bArr2[6] = -1;
        bArr2[7] = -1;
        bArr2[8] = -1;
        bArr2[9] = -1;
        bArr2[10] = -1;
        bArr2[11] = -1;
        bArr2[12] = -1;
        bArr2[13] = -1;
        bArr2[14] = -1;
        bArr2[15] = -1;
        bArr2[16] = -1;
        bArr2[17] = -1;
        bArr2[18] = -1;
        bArr2[19] = -1;
        bArr2[20] = -1;
        bArr2[21] = -1;
        bArr2[22] = -1;
        bArr2[23] = -1;
        bArr2[24] = -1;
        bArr2[25] = -1;
        bArr2[26] = -1;
        bArr2[27] = -1;
        bArr2[28] = -1;
        bArr2[29] = -1;
        bArr2[30] = -1;
        bArr2[31] = -1;
        bArr2[32] = -1;
        bArr2[33] = -1;
        bArr2[34] = -1;
        bArr2[35] = -1;
        bArr2[36] = -1;
        bArr2[37] = -1;
        bArr2[38] = -1;
        bArr2[39] = -1;
        bArr2[40] = -1;
        bArr2[41] = -1;
        bArr2[42] = -1;
        bArr2[43] = -1;
        bArr2[44] = -1;
        bArr2[45] = -1;
        bArr2[46] = -1;
        bArr2[47] = -1;
        bArr2[48] = -1;
        bArr2[49] = -1;
        bArr2[50] = Ascii.SUB;
        bArr2[51] = Ascii.ESC;
        bArr2[52] = Ascii.FS;
        bArr2[53] = Ascii.GS;
        bArr2[54] = Ascii.RS;
        bArr2[55] = Ascii.US;
        bArr2[56] = -1;
        bArr2[57] = -1;
        bArr2[58] = -1;
        bArr2[59] = -1;
        bArr2[60] = -1;
        bArr2[61] = 99;
        bArr2[62] = -1;
        bArr2[63] = -1;
        bArr2[64] = -1;
        bArr2[65] = 0;
        bArr2[66] = 1;
        bArr2[67] = 2;
        bArr2[68] = 3;
        bArr2[69] = 4;
        bArr2[70] = 5;
        bArr2[71] = 6;
        bArr2[72] = 7;
        bArr2[73] = 8;
        bArr2[74] = 9;
        bArr2[75] = 10;
        bArr2[76] = Ascii.VT;
        bArr2[77] = Ascii.FF;
        bArr2[78] = Ascii.CR;
        bArr2[79] = Ascii.SO;
        bArr2[80] = Ascii.SI;
        bArr2[81] = 16;
        bArr2[82] = 17;
        bArr2[83] = Ascii.DC2;
        bArr2[84] = 19;
        bArr2[85] = Ascii.DC4;
        bArr2[86] = Ascii.NAK;
        bArr2[87] = Ascii.SYN;
        bArr2[88] = Ascii.ETB;
        bArr2[89] = Ascii.CAN;
        bArr2[90] = Ascii.EM;
        bArr2[91] = -1;
        bArr2[92] = -1;
        bArr2[93] = -1;
        bArr2[94] = -1;
        bArr2[95] = -1;
        bArr2[96] = -1;
        bArr2[97] = -1;
        bArr2[98] = -1;
        bArr2[99] = -1;
        bArr2[100] = -1;
        bArr2[101] = -1;
        bArr2[102] = -1;
        bArr2[103] = -1;
        bArr2[104] = -1;
        bArr2[105] = -1;
        bArr2[106] = -1;
        bArr2[107] = -1;
        bArr2[108] = -1;
        bArr2[109] = -1;
        bArr2[110] = -1;
        bArr2[111] = -1;
        bArr2[112] = -1;
        bArr2[113] = -1;
        bArr2[114] = -1;
        bArr2[115] = -1;
        bArr2[116] = -1;
        bArr2[117] = -1;
        bArr2[118] = -1;
        bArr2[119] = -1;
        bArr2[120] = -1;
        bArr2[121] = -1;
        bArr2[122] = -1;
        bArr2[123] = -1;
        bArr2[124] = -1;
        bArr2[125] = -1;
        bArr2[126] = -1;
        bArr2[127] = -1;
        bArr2[128] = -1;
        bArr2[129] = -1;
        bArr2[130] = -1;
        bArr2[131] = -1;
        bArr2[132] = -1;
        bArr2[133] = -1;
        bArr2[134] = -1;
        bArr2[135] = -1;
        bArr2[136] = -1;
        bArr2[137] = -1;
        bArr2[138] = -1;
        bArr2[139] = -1;
        bArr2[140] = -1;
        bArr2[141] = -1;
        bArr2[142] = -1;
        bArr2[143] = -1;
        bArr2[144] = -1;
        bArr2[145] = -1;
        bArr2[146] = -1;
        bArr2[147] = -1;
        bArr2[148] = -1;
        bArr2[149] = -1;
        bArr2[150] = -1;
        bArr2[151] = -1;
        bArr2[152] = -1;
        bArr2[153] = -1;
        bArr2[154] = -1;
        bArr2[155] = -1;
        bArr2[156] = -1;
        bArr2[157] = -1;
        bArr2[158] = -1;
        bArr2[159] = -1;
        bArr2[160] = -1;
        bArr2[161] = -1;
        bArr2[162] = -1;
        bArr2[163] = -1;
        bArr2[164] = -1;
        bArr2[165] = -1;
        bArr2[166] = -1;
        bArr2[167] = -1;
        bArr2[168] = -1;
        bArr2[169] = -1;
        bArr2[170] = -1;
        bArr2[171] = -1;
        bArr2[172] = -1;
        bArr2[173] = -1;
        bArr2[174] = -1;
        bArr2[175] = -1;
        bArr2[176] = 0;
        bArr2[177] = 1;
        bArr2[178] = 2;
        bArr2[179] = 3;
        bArr2[180] = 4;
        bArr2[181] = 5;
        bArr2[182] = 6;
        bArr2[183] = 7;
        bArr2[184] = 8;
        bArr2[185] = 9;
        bArr2[186] = -1;
        bArr2[187] = -1;
        bArr2[188] = -1;
        bArr2[189] = 99;
        bArr2[190] = -1;
        bArr2[191] = -1;
        bArr2[192] = -1;
        bArr2[193] = 10;
        bArr2[194] = Ascii.VT;
        bArr2[195] = Ascii.FF;
        bArr2[196] = Ascii.CR;
        bArr2[197] = Ascii.SO;
        bArr2[198] = Ascii.SI;
        bArr2[199] = 16;
        bArr2[200] = 17;
        bArr2[201] = Ascii.DC2;
        bArr2[202] = 19;
        bArr2[203] = Ascii.DC4;
        bArr2[204] = Ascii.NAK;
        bArr2[205] = Ascii.SYN;
        bArr2[206] = Ascii.ETB;
        bArr2[207] = Ascii.CAN;
        bArr2[208] = Ascii.EM;
        bArr2[209] = Ascii.SUB;
        bArr2[210] = Ascii.ESC;
        bArr2[211] = Ascii.FS;
        bArr2[212] = Ascii.GS;
        bArr2[213] = Ascii.RS;
        bArr2[214] = Ascii.US;
        bArr2[215] = -1;
        bArr2[216] = -1;
        bArr2[217] = -1;
        bArr2[218] = -1;
        bArr2[219] = -1;
        bArr2[220] = -1;
        bArr2[221] = -1;
        bArr2[222] = -1;
        bArr2[223] = -1;
        bArr2[224] = -1;
        bArr2[225] = -1;
        bArr2[226] = -1;
        bArr2[227] = -1;
        bArr2[228] = -1;
        bArr2[229] = -1;
        bArr2[230] = -1;
        bArr2[231] = -1;
        bArr2[232] = -1;
        bArr2[233] = -1;
        bArr2[234] = -1;
        bArr2[235] = -1;
        bArr2[236] = -1;
        bArr2[237] = -1;
        bArr2[238] = -1;
        bArr2[239] = -1;
        bArr2[240] = -1;
        bArr2[241] = -1;
        bArr2[242] = -1;
        bArr2[243] = -1;
        bArr2[244] = -1;
        bArr2[245] = -1;
        bArr2[246] = -1;
        bArr2[247] = -1;
        bArr2[248] = -1;
        bArr2[249] = -1;
        bArr2[250] = -1;
        bArr2[251] = -1;
        bArr2[252] = -1;
        bArr2[253] = -1;
        bArr2[254] = -1;
        bArr2[255] = -1;
    }

    public final void m5686() throws C0414 {
        try {
            byte[] bArr = new byte[4096];
            byte[] bArr2 = new byte[8192];
            while (true) {
                int i = this.f3426.read(bArr, 0, 4096);
                if (i <= 0) {
                    return;
                }
                m5682();
                this.f3407.write(bArr2, 0, m5662(bArr, 0, bArr2, 0, i, this.f3395));
            }
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public void m5687() throws C0414, IOException {
        byte b;
        byte b2;
        byte[] bArr = new byte[2];
        while (true) {
            int i = this.f3426.read();
            if (i == -1) {
                return;
            }
            m5682();
            if (i == 61) {
                int i2 = this.f3426.read();
                if (i2 == -1) {
                    return;
                }
                m5682();
                if (i2 == 61) {
                    int i3 = this.f3426.read(bArr);
                    m5682();
                    if (i3 != 2) {
                        throw new C0414(1, C0128.m3236(625, 15, 9));
                    }
                    if (bArr[0] != 13 || bArr[1] != 10) {
                        throw new C0414(1, C0128.m3236(655, 15, 10));
                    }
                    i2 = this.f3426.read();
                    if (i2 == -1) {
                        throw new C0414(1, C0128.m3236(640, 15, 72));
                    }
                    m5682();
                }
                bArr[0] = (byte) i2;
                int i4 = this.f3426.read();
                if (i4 == -1) {
                    throw new C0414(1, C0128.m3236(670, 15, 26));
                }
                bArr[1] = (byte) i4;
                m5682();
                byte b3 = bArr[0];
                if (b3 != 13 || bArr[1] != 10) {
                    byte b4 = 48;
                    if (((b3 < 48 || b3 > 57) && ((b3 < 65 || b3 > 70) && (b3 < 97 || b3 > 102))) || (((b = bArr[1]) < 48 || b > 57) && ((b < 65 || b > 70) && (b < 97 || b > 102)))) {
                        throw new C0414(1, C0128.m3236(685, 15, 48));
                    }
                    if (b3 > 96) {
                        b2 = 87;
                    } else {
                        b2 = b3 > 64 ? (byte) 55 : (byte) 48;
                    }
                    byte b5 = (byte) (((b3 - b2) << 4) & 240);
                    if (b > 96) {
                        b4 = 87;
                    } else if (b > 64) {
                        b4 = 55;
                    }
                    this.f3407.write(b5 | ((byte) ((b - b4) & 15)));
                }
            } else {
                this.f3407.write(i);
            }
        }
    }

    public void m5688() throws C0414, IOException {
        int i = 32767;
        int i2 = 32767;
        boolean z = false;
        while (true) {
            try {
                byte b = this.f3414[0];
                if (b == 96) {
                    return;
                }
                int i3 = b - 32;
                if (i3 < i2) {
                    if (i2 == i) {
                        i2 = i3;
                    } else {
                        z = true;
                    }
                }
                this.f3417 = 1;
                this.f3412 = 0;
                while (true) {
                    int i4 = this.f3412;
                    if (i4 >= i3) {
                        break;
                    }
                    byte[] bArr = this.f3414;
                    int i5 = this.f3417;
                    int i6 = i5 + 1;
                    this.f3417 = i6;
                    byte b2 = bArr[i5];
                    int i7 = b2 == 96 ? 0 : b2 - 32;
                    int i8 = i5 + 2;
                    this.f3417 = i8;
                    byte b3 = bArr[i6];
                    int i9 = b3 == 96 ? 0 : b3 - 32;
                    byte[] bArr2 = this.f3396;
                    int i10 = i4 + 1;
                    this.f3412 = i10;
                    bArr2[i4] = (byte) ((i7 << 2) + (i9 >>> 4));
                    int i11 = i5 + 3;
                    this.f3417 = i11;
                    byte b4 = bArr[i8];
                    int i12 = b4 == 96 ? 0 : b4 - 32;
                    int i13 = i4 + 2;
                    this.f3412 = i13;
                    bArr2[i10] = (byte) ((i9 << 4) + (i12 >>> 2));
                    this.f3417 = i5 + 4;
                    byte b5 = bArr[i11];
                    int i14 = b5 == 96 ? 0 : b5 - 32;
                    this.f3412 = i4 + 3;
                    bArr2[i13] = (byte) ((i12 << 6) + i14);
                }
                this.f3407.write(this.f3396, 0, i3);
                byte[] bArr3 = this.f3414;
                int i15 = this.f3417;
                byte b6 = bArr3[i15];
                if (b6 == 10) {
                    this.f3417 = i15 + 1;
                } else if (b6 == 13 && bArr3[i15 + 1] == 10) {
                    this.f3417 = i15 + 2;
                }
                int i16 = this.f3417;
                if (i16 < 63) {
                    System.arraycopy(bArr3, i16, bArr3, 0, 63 - i16);
                }
                InputStream inputStream = this.f3426;
                byte[] bArr4 = this.f3414;
                int i17 = this.f3417;
                int i18 = inputStream.read(bArr4, 63 - i17, i17);
                m5682();
                if (i18 <= 0) {
                    if (z) {
                        return;
                    } else {
                        z = true;
                    }
                }
                i = 32767;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new C0414(1, C0128.m3236(TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 15, 6));
            }
        }
    }

    public void m5689(byte[] bArr, int i, int i2) {
        this.f3403 = C0259.m3865(bArr, i, i2);
    }

    public String m5690(String str) throws IOException {
        boolean z;
        C0301 c0301 = new C0301();
        C0301 c0302 = new C0301();
        if (str != null) {
            z = false;
        } else {
            byte[] bArr = new byte[1000];
            while (true) {
                int i = this.f3426.read(bArr);
                if (i == -1) {
                    break;
                }
                m5682();
                c0301.m4181(bArr, 0, i);
            }
            str = this.f1725.m5716(c0301.m4182());
            z = true;
        }
        if (str == null) {
            return c0302.toString();
        }
        byte[] bArr2 = {43, 45};
        if (this.f3421) {
            bArr2[0] = 38;
        }
        C0301 c0303 = new C0301();
        for (int i2 = 0; i2 < str.length(); i2++) {
            byte[] bArr3 = {(byte) (str.charAt(i2) >> '\b'), (byte) str.charAt(i2)};
            if (bArr3[0] != 0) {
                c0303.m4180(bArr3);
            } else {
                byte b = bArr3[1];
                if (b == bArr2[0]) {
                    if (z) {
                        this.f3407.write(m5707(c0303, bArr2));
                        this.f3407.write(bArr2);
                    } else {
                        c0302.m4180(m5707(c0303, bArr2));
                        c0302.m4180(bArr2);
                    }
                } else if (this.f3421) {
                    if (b < 32 || b > 126) {
                        c0303.m4180(bArr3);
                    } else if (z) {
                        this.f3407.write(m5707(c0303, bArr2));
                        this.f3407.write(bArr3[1]);
                    } else {
                        c0302.m4180(m5707(c0303, bArr2));
                        c0302.m4178((char) (bArr3[1] & 255));
                    }
                } else if ((b < 39 || b > 41) && ((b < 44 || b > 58) && b != 63 && ((b < 65 || b > 90) && (b < 97 || b > 122)))) {
                    if (b != 32 && b != 9 && b != 13 && b != 10) {
                        c0303.m4180(bArr3);
                    } else if (z) {
                        this.f3407.write(m5707(c0303, bArr2));
                        this.f3407.write(bArr3[1]);
                    } else {
                        c0302.m4180(m5707(c0303, bArr2));
                        c0302.m4178((char) (bArr3[1] & 255));
                    }
                } else if (z) {
                    this.f3407.write(m5707(c0303, bArr2));
                    this.f3407.write(bArr3[1]);
                } else {
                    c0302.m4180(m5707(c0303, bArr2));
                    c0302.m4178((char) (bArr3[1] & 255));
                }
            }
        }
        if (z) {
            this.f3407.write(m5707(c0303, bArr2));
        } else {
            c0302.m4180(m5707(c0303, bArr2));
        }
        return c0302.toString();
    }

    public final void m5691() throws C0414, IOException {
        int i;
        C0301 c0301 = new C0301();
        byte[] bArr = new byte[1000];
        while (true) {
            int i2 = this.f3426.read(bArr);
            i = 0;
            if (i2 == -1) {
                break;
            }
            m5682();
            c0301.m4181(bArr, 0, i2);
        }
        String strM5716 = this.f1725.m5716(c0301.m4182());
        if (strM5716 == null) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer(strM5716.length());
        while (i < strM5716.length()) {
            char cCharAt = strM5716.charAt(i);
            if (cCharAt > 127) {
                if (cCharAt < 256 || i >= strM5716.length() - 1) {
                    stringBuffer.append("&#" + ((int) cCharAt) + ";");
                } else if (i < strM5716.length() - 1) {
                    int i3 = i + 1;
                    char cCharAt2 = strM5716.charAt(i3);
                    if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                        stringBuffer.append(C0663.m5891("&#").append(Character.toCodePoint(cCharAt, cCharAt2)).append(";").toString());
                        i = i3;
                    } else {
                        stringBuffer.append("&#" + ((int) cCharAt) + ";");
                    }
                }
            } else if (cCharAt < ' ' && (cCharAt == '\t' || cCharAt == '\n' || cCharAt == '\r')) {
                stringBuffer.append(cCharAt);
            } else if (cCharAt == '\"') {
                stringBuffer.append(C0128.m3236(750, 6, 112));
            } else if (cCharAt == '<') {
                stringBuffer.append(C0128.m3236(736, 4, 85));
            } else if (cCharAt == '>') {
                stringBuffer.append(C0128.m3236(740, 4, 34));
            } else if (cCharAt == '&') {
                stringBuffer.append(C0128.m3236(756, 5, WebSocketProtocol.PAYLOAD_SHORT));
            } else if (cCharAt != '\'') {
                stringBuffer.append(cCharAt);
            } else {
                stringBuffer.append(C0128.m3236(744, 6, 20));
            }
            i++;
        }
        this.f3407.write(stringBuffer.toString().getBytes());
    }

    public final void m5692() throws IOException {
        int i;
        int i2 = 1 - this.f3434;
        this.f3434 = i2;
        byte[] bArr = this.f3425[i2];
        int i3 = this.f3412;
        if (i3 > 76) {
            int i4 = 73;
            while (true) {
                i = this.f3412;
                if (i4 >= i - 2) {
                    i4 = 75;
                    break;
                } else if (this.f3396[i4] == 61) {
                    break;
                } else {
                    i4++;
                }
            }
            int i5 = i - i4;
            this.f3412 = i5;
            System.arraycopy(this.f3396, i4, bArr, 0, i5);
            this.f3396[i4] = Base64.padSymbol;
            i3 = i4 + 1;
        } else if (i3 > 0) {
            this.f3412 = 0;
            byte[] bArr2 = this.f3396;
            int i6 = i3 - 1;
            byte b = bArr2[i6];
            if (b == 32 || b == 9) {
                bArr2[i6] = Base64.padSymbol;
                int i7 = i3 + 1;
                char[] cArr = f3388;
                bArr2[i3] = (byte) cArr[(b >> 4) & 15];
                i3 += 2;
                bArr2[i7] = (byte) cArr[b & Ascii.SI];
            }
        } else {
            i3 = 0;
        }
        byte[] bArr3 = this.f3396;
        bArr3[i3] = Ascii.CR;
        bArr3[i3 + 1] = 10;
        this.f3407.write(bArr3, 0, i3 + 2);
        this.f3396 = bArr;
    }

    public void m5693() throws IOException {
        byte b;
        int i = 8;
        byte[] bArr = new byte[8];
        byte b2 = this.f3430 ? (byte) 128 : (byte) 0;
        byte[] bArr2 = new byte[65536];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = 0;
            while (i4 < i) {
                if (i2 >= i3) {
                    i3 = this.f3426.read(bArr2);
                    i2 = 0;
                }
                m5682();
                if (i3 <= 0) {
                    return;
                }
                int i5 = i2 + 1;
                byte b3 = bArr2[i2];
                if (b3 < f3384 / 2 && (b = f3385[b3 + b2]) >= 0) {
                    bArr[i4] = b;
                    i4++;
                }
                i2 = i5;
            }
            int i6 = i;
            while (bArr[i6 - 1] == 99) {
                i6--;
            }
            if (i6 == 2) {
                this.f3407.write(((bArr[0] << 3) | (bArr[1] >>> 2)) & 255);
            } else if (i6 == 4) {
                this.f3407.write(((bArr[0] << 3) | (bArr[1] >>> 2)) & 255);
                this.f3407.write(((bArr[1] << 6) | (bArr[2] << 1) | (bArr[3] >>> 4)) & 255);
            } else if (i6 == 5) {
                this.f3407.write(((bArr[0] << 3) | (bArr[1] >>> 2)) & 255);
                this.f3407.write(((bArr[1] << 6) | (bArr[2] << 1) | (bArr[3] >>> 4)) & 255);
                this.f3407.write(((bArr[3] << 4) | (bArr[4] >>> 1)) & 255);
            } else if (i6 == 7) {
                this.f3407.write(((bArr[0] << 3) | (bArr[1] >>> 2)) & 255);
                this.f3407.write(((bArr[1] << 6) | (bArr[2] << 1) | (bArr[3] >>> 4)) & 255);
                this.f3407.write(((bArr[3] << 4) | (bArr[4] >>> 1)) & 255);
                this.f3407.write(((bArr[4] << 7) | (bArr[5] << 2) | (bArr[6] >> 3)) & 255);
            } else if (i6 == i) {
                this.f3407.write(((bArr[0] << 3) | (bArr[1] >>> 2)) & 255);
                this.f3407.write(((bArr[1] << 6) | (bArr[2] << 1) | (bArr[3] >>> 4)) & 255);
                this.f3407.write(((bArr[3] << 4) | (bArr[4] >>> 1)) & 255);
                this.f3407.write(((bArr[4] << 7) | (bArr[5] << 2) | (bArr[6] >> 3)) & 255);
                this.f3407.write(((bArr[6] << 5) | bArr[7]) & 255);
            }
            i = 8;
        }
    }

    public void m5694() throws C0414, IOException {
        int i = this.f3426.read();
        this.f3412 = 0;
        loop0: while (true) {
            int i2 = 10;
            while (true) {
                if (i == -1) {
                    break loop0;
                }
                if (i != 13 || (i2 = this.f3426.read()) != 10) {
                    break;
                }
                m5682();
                m5692();
                i = this.f3426.read();
                m5682();
            }
            if ((i < 32 || i > 60) && ((i < 62 || i > 126) && i != 9)) {
                byte[] bArr = this.f3396;
                int i3 = this.f3412;
                int i4 = i3 + 1;
                this.f3412 = i4;
                bArr[i3] = Base64.padSymbol;
                int i5 = i3 + 2;
                this.f3412 = i5;
                char[] cArr = f3388;
                bArr[i4] = (byte) cArr[(i >> 4) & 15];
                this.f3412 = i3 + 3;
                bArr[i5] = (byte) cArr[i & 15];
            } else {
                byte[] bArr2 = this.f3396;
                int i6 = this.f3412;
                this.f3412 = i6 + 1;
                bArr2[i6] = (byte) i;
            }
            if (this.f3412 > 76) {
                m5692();
            }
            i = i2 == 10 ? this.f3426.read() : i2;
            m5682();
        }
        int i7 = this.f3412;
        if (i7 > 0) {
            this.f3407.write(this.f3396, 0, i7);
        }
    }

    public final void m5695() {
        OutputStream outputStream;
        InputStream inputStream;
        try {
            if (this.f3405 && (inputStream = this.f3426) != null) {
                inputStream.close();
            }
        } catch (IOException unused) {
        }
        try {
            if (this.f3415 && (outputStream = this.f3407) != null) {
                outputStream.close();
            }
        } catch (IOException unused2) {
        }
        this.f3426 = null;
        this.f3407 = null;
    }

    public final void m5696(String str) throws C0414 {
        File file = new File(str);
        if (!this.f3404 && file.exists()) {
            throw new C0414(8, C0128.m3236(JfifUtil.MARKER_APP1, 6, 90) + str + C0128.m3236(231, 39, 51));
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            this.f3407 = new BufferedOutputStream(new FileOutputStream(str));
        } catch (IOException unused) {
            if (!file.exists()) {
                throw new C0414(3, C0128.m3236(288, 20, 24) + str + "\".");
            }
            throw new C0414(4, C0128.m3236(RotationOptions.ROTATE_270, 18, 83) + str + "\".");
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        byte b;
        if (c0440.m4813(C0128.m3236(32, 11, 76))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3402).toString();
            }
            this.f3402 = c0440.m4806();
        } else if (c0440.m4813(C0128.m3236(43, 7, 96))) {
            if (c0440.f2269) {
                return C0259.m3882(this.f3410);
            }
            String str = c0440.f2271;
            if (str == null || str.length() == 0) {
                this.f3410 = C0320.f1706;
            } else {
                byte[] bytes = str.getBytes();
                this.f3410 = bytes;
                if (bytes.length > 2 && bytes[0] == 48 && ((b = bytes[1]) == 120 || b == 88)) {
                    int length = bytes.length - 2;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        m5663(new ByteArrayInputStream(bytes, 2, length), byteArrayOutputStream, (C0619) null);
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException unused) {
                        }
                        this.f3410 = byteArray;
                    } catch (Throwable th) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException unused2) {
                        }
                        throw th;
                    }
                }
            }
        } else if (c0440.m4813(C0128.m3236(50, 13, 69))) {
            if (c0440.f2269) {
                return this.f3418;
            }
            this.f3418 = c0440.f2271;
        } else if (c0440.m4813(C0128.m3236(63, 16, 127))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3429).toString();
            }
            this.f3429 = c0440.m4805();
        } else if (c0440.m4813(C0128.m3236(79, 15, 39))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3416).toString();
            }
            this.f3416 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3236(94, 15, 101))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3421).toString();
            }
            this.f3421 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3236(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 20, 18))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3430).toString();
            }
            this.f3430 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3236(129, 18, 14))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3431).toString();
            }
            this.f3431 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3236(CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 14, 69))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3408).toString();
            }
            this.f3408 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3236(161, 18, 38))) {
            if (c0440.f2269) {
                return this.f3399;
            }
            this.f3399 = c0440.f2271;
        } else {
            if (!c0440.m4813(C0128.m3236(179, 10, 81))) {
                return super.mo3151(c0440);
            }
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f3423).toString();
            }
            this.f3423 = c0440.m4809();
        }
        return "";
    }

    public void m5706(byte[] bArr, int i, int i2) {
        this.f3409 = C0259.m3865(bArr, i, i2);
    }

    public final byte[] m5707(C0301 c0301, byte[] bArr) throws IOException {
        if (c0301 != null && c0301.f1615 > 0) {
            InputStream byteArrayInputStream = new ByteArrayInputStream(c0301.m4182());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(bArr[0]);
            m5704(byteArrayInputStream, (OutputStream) byteArrayOutputStream, false, false, false);
            byteArrayOutputStream.write(bArr[1]);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (this.f3421) {
                for (int i = 0; i < byteArray.length; i++) {
                    if (byteArray[i] == 47) {
                        byteArray[i] = 44;
                    }
                }
            }
            c0301.m4169();
            return byteArray;
        }
        return C0320.f1706;
    }

    public final String m5697(int i, int i2) throws C0414, IOException {
        byte[] bArr = this.f3414;
        System.arraycopy(bArr, i, bArr, 0, i2);
        int i3 = this.f3426.read(this.f3414, i2, 63 - i2);
        if (i3 == -1) {
            i3 = 0;
        }
        return C0259.m3870(this.f3414, 0, i3 + i2);
    }

    public static char m5659(int i, boolean z) {
        if (z) {
            if (i == 62) {
                return CoreConstants.DASH_CHAR;
            }
            if (i == 63) {
                return '_';
            }
        }
        return f3390[i];
    }

    public final void m5704(InputStream inputStream, OutputStream outputStream, boolean z, boolean z2, boolean z3) throws IOException {
        byte[] bArr = new byte[3];
        while (true) {
            int i = 0;
            while (true) {
                int i2 = inputStream.read(bArr);
                if (inputStream == this.f3426 && outputStream == this.f3407) {
                    m5682();
                }
                if (i2 == -1) {
                    return;
                }
                if (i2 == 1) {
                    outputStream.write(m5659((bArr[0] >>> 2) & 63, z3));
                    outputStream.write(m5659((bArr[0] << 4) & 48, z3));
                    if (z2 && !z3) {
                        outputStream.write(61);
                        outputStream.write(61);
                    }
                } else if (i2 == 2) {
                    outputStream.write(m5659((bArr[0] >>> 2) & 63, z3));
                    outputStream.write(m5659(((bArr[0] << 4) & 48) + ((bArr[1] >>> 4) & 15), z3));
                    outputStream.write(m5659((bArr[1] << 2) & 60, z3));
                    if (z2 && !z3) {
                        outputStream.write(61);
                    }
                } else if (i2 == 3) {
                    outputStream.write(m5659((bArr[0] >>> 2) & 63, z3));
                    outputStream.write(m5659(((bArr[0] << 4) & 48) + ((bArr[1] >>> 4) & 15), z3));
                    outputStream.write(m5659(((bArr[1] << 2) & 60) + ((bArr[2] >>> 6) & 3), z3));
                    outputStream.write(m5659(bArr[2] & Utf8.REPLACEMENT_BYTE, z3));
                }
                if (!z || z3 || (i = i + 4) != this.f3429) {
                }
            }
            outputStream.write(C0320.f1710);
            outputStream.write(C0320.f1714);
        }
    }

    public final void m5703(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        char c;
        int i;
        byte b;
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[65536];
        int i2 = 0;
        int i3 = 0;
        do {
            int i4 = 0;
            while (i4 < 4) {
                if (i2 >= i3) {
                    i3 = inputStream.read(bArr2);
                    i2 = 0;
                }
                if (inputStream == this.f3426 && outputStream == this.f3407) {
                    m5682();
                }
                if (i3 <= 0) {
                    if (z && i4 > 0) {
                        while (i4 < 4) {
                            bArr[i4] = 99;
                            i4++;
                        }
                        break;
                    }
                    return;
                }
                int i5 = i2 + 1;
                byte b2 = bArr2[i2];
                if (b2 >= f3392 || (b = f3382[b2]) < 0) {
                    if (z && (b2 == 45 || b2 == 95)) {
                        if (b2 == 45) {
                            i = i4 + 1;
                            bArr[i4] = 62;
                        } else {
                            i = i4 + 1;
                            bArr[i4] = Utf8.REPLACEMENT_BYTE;
                        }
                    } else if (this.f3431 && b2 != 13 && b2 != 10 && b2 != 32 && b2 != 9) {
                        throw new C0414(26, C0128.m3236(541, 33, 112));
                    }
                    i2 = i5;
                } else {
                    i = i4 + 1;
                    bArr[i4] = b;
                }
                i4 = i;
                i2 = i5;
            }
            if (bArr[3] == 99) {
                c = bArr[2] == 99 ? (char) 1 : (char) 2;
            } else {
                c = 3;
            }
            if (c == 1) {
                outputStream.write(((bArr[0] << 2) | (bArr[1] >>> 4)) & 255);
            } else if (c == 2) {
                outputStream.write(((bArr[0] << 2) | (bArr[1] >>> 4)) & 255);
                outputStream.write(((bArr[1] << 4) | (bArr[2] >>> 2)) & 255);
            } else if (c == 3) {
                outputStream.write(((bArr[0] << 2) | (bArr[1] >>> 4)) & 255);
                outputStream.write(((bArr[1] << 4) | (bArr[2] >>> 2)) & 255);
                outputStream.write((bArr[3] | (bArr[2] << 6)) & 255);
            }
        } while (i3 >= 0);
    }

    public void m5701(char c, boolean z) {
        if (c < ' ' || c >= 128) {
            return;
        }
        this.f3424[c - CardNumberHelper.DIVIDER] = z;
    }

    public static byte[] m5664(byte[] bArr, boolean z) {
        int length = bArr.length;
        if (length > bArr.length) {
            length = bArr.length;
        }
        int i = length;
        byte[] bArr2 = new byte[i * 2];
        m5662(bArr, 0, bArr2, 0, i, z);
        return bArr2;
    }

    public static int m5662(byte[] bArr, int i, byte[] bArr2, int i2, int i3, boolean z) {
        if (i + i3 > bArr.length) {
            i3 = bArr.length - i;
        }
        if ((i3 * 2) + i2 > bArr2.length) {
            i3 = (bArr2.length - i2) / 2;
        }
        char[] cArr = z ? f3388 : f3391;
        int i4 = i + i3;
        while (i < i4) {
            byte b = bArr[i];
            int i5 = i2 + 1;
            bArr2[i2] = (byte) cArr[(b >> 4) & 15];
            i2 += 2;
            bArr2[i5] = (byte) cArr[b & Ascii.SI];
            i++;
        }
        return i3 * 2;
    }

    public static void m5663(InputStream inputStream, OutputStream outputStream, C0619 c0619) {
        try {
            byte[] bArr = new byte[4096];
            byte[] bArr2 = new byte[2048];
            while (true) {
                int i = inputStream.read(bArr);
                if (i <= 0) {
                    return;
                }
                if (i % 2 == 0) {
                    if (c0619 != null) {
                        c0619.m5682();
                    }
                    outputStream.write(bArr2, 0, m5661(bArr, 0, bArr2, 0, i));
                } else {
                    throw new C0414(1, C0128.m3236(700, 25, 43));
                }
            }
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public static int m5661(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        byte b;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = i + i4;
            byte b2 = bArr[i6];
            int i7 = i2 + i5;
            byte b3 = 55;
            if (b2 > 96) {
                b = 87;
            } else {
                b = b2 > 64 ? (byte) 55 : (byte) 48;
            }
            byte b4 = (byte) (((b2 - b) << 4) & 240);
            bArr2[i7] = b4;
            byte b5 = bArr[i6 + 1];
            if (b5 > 96) {
                b3 = 87;
            } else if (b5 <= 64) {
                b3 = 48;
            }
            bArr2[i7] = (byte) (((byte) ((b5 - b3) & 15)) | b4);
            i4 += 2;
            i5++;
        }
        return i5;
    }

    public static int m5660(int i, int i2, boolean z) {
        int i3 = z ? i / 700 : i >> 1;
        int i4 = (i3 / i2) + i3;
        int i5 = 0;
        while (i4 > 455) {
            i4 /= 35;
            i5 += 36;
        }
        return ((i4 * 36) / (i4 + 38)) + i5;
    }

    public final String m5698(int i, int i2, long j, String str) {
        StringBuffer stringBuffer = new StringBuffer(C0128.m3236(PointerIconCompat.TYPE_HELP, 7, 8));
        if (i > 0) {
            stringBuffer.append(C0128.m3236(PointerIconCompat.TYPE_ALIAS, 6, 6) + i);
        }
        stringBuffer.append(C0128.m3236(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, 6, 95) + i2);
        stringBuffer.append(C0128.m3236(1022, 6, 100) + j);
        if (str.length() > 0) {
            stringBuffer.append(C0128.m3236(1028, 6, 44) + str);
        }
        return stringBuffer.toString();
    }

    public final String m5700(long j, C0391 c0391) {
        String str = C0128.m3236(1034, 11, 48) + j;
        return c0391 != null ? C0663.m5891(str).append(C0128.m3236(1045, 7, 121)).append(C0259.m3887(c0391.mo4590(), 4, this.f3395)).toString() : str;
    }

    public final String m5699(long j, long j2, C0391 c0391, C0391 c0392) {
        String str = C0128.m3236(1070, 11, 60) + j2 + C0128.m3236(1081, 6, 12) + j + C0128.m3236(1087, 8, 28) + C0259.m3887(c0391.mo4590(), 4, this.f3395);
        return c0392 != null ? C0663.m5891(str).append(C0128.m3236(1095, 7, 40)).append(C0259.m3887(c0392.mo4590(), 4, this.f3395)).toString() : str;
    }

    public final void m5702(long j, C0391 c0391, C0391 c0392) throws Exception {
        int i;
        byte[] bArr = new byte[this.f3398 + 1];
        int i2 = 0;
        while (j > 0) {
            int i3 = this.f3426.read();
            m5682();
            if (i3 != -1) {
                if (c0391 != null) {
                    c0391.m4591(i3);
                }
                if (c0392 != null) {
                    c0392.m4591(i3);
                }
                byte b = (byte) (i3 + 42);
                if (b != 0 && b != 10 && b != 13 && b != 61) {
                    i = i2 + 1;
                    bArr[i2] = b;
                } else {
                    bArr[i2] = Base64.padSymbol;
                    i = i2 + 2;
                    bArr[i2 + 1] = (byte) (b + SignedBytes.MAX_POWER_OF_TWO);
                }
                if (i >= this.f3398) {
                    this.f3407.write(bArr, 0, i);
                    this.f3407.write(C0320.f1716);
                    i2 = 0;
                } else {
                    i2 = i;
                }
                j--;
            } else {
                throw new Exception();
            }
        }
        if (i2 > 0) {
            this.f3407.write(bArr, 0, i2);
            this.f3407.write(C0320.f1716);
        }
    }

    public final void m5705(String str, String str2, C0391 c0391) throws C0414 {
        if (m5683(str, str2) != ((int) c0391.mo4590())) {
            throw new C0414(1, C0128.m3236(1240, 42, 72));
        }
    }
}
