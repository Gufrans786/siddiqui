package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.CoreConstants;
import com.facebook.imageutils.JfifUtil;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0354 extends C0320 {

    public int f1871;

    public C0627 f1872;

    public OutputStream f1873;

    public C0387 f1874;

    public int f1875;

    public boolean f1876;

    public C0387 f1877;

    public C0669 f1878;

    public Vector f1879;

    public C0335 f1880;

    public boolean f1881;

    public C0387 f1882;

    public int f1883;

    public InputStream f1884;

    public InterfaceC0344 f1885;

    public boolean f1886;

    public C0387 f1887;

    public boolean f1888;

    public boolean f1889;

    public boolean f1890;

    public C0387 f1891;

    public int f1892;

    public boolean f1893;

    public C0354(Object obj, Object obj2) {
        super(obj2);
        this.f1878 = new C0669();
        this.f1887 = new C0387();
        this.f1891 = new C0387();
        this.f1877 = new C0387();
        this.f1874 = new C0387();
        this.f1882 = new C0387();
        this.f1872 = new C0627();
        this.f1880 = null;
        this.f1879 = new Vector();
        this.f1888 = false;
        this.f1890 = false;
        this.f1884 = null;
        this.f1873 = null;
        this.f1885 = null;
        if (obj instanceof InterfaceC0344) {
            this.f1885 = (InterfaceC0344) obj;
        }
        this.f1887.m4541();
        this.f1891.m4541();
        this.f1877.m4541();
        this.f1874.m4541();
        C0669 c0669 = this.f1878;
        c0669.f3684.m4066();
        c0669.f3683.m4541();
        c0669.f3682.m4541();
        this.f1872.m5722();
        this.f1879.clear();
        this.f1892 = 0;
        this.f1889 = false;
        this.f1888 = false;
        this.f1890 = false;
        this.f1880 = null;
        this.f1883 = 0;
        this.f1871 = 0;
        this.f1875 = 16;
        this.f1881 = true;
        this.f1886 = true;
        this.f1893 = false;
        this.f1876 = true;
        this.f1882.m4541();
    }

    public void m4420() {
        if (this.f1873 == null && this.f1874.m4533() > 0 && !this.f1889 && C0558.m5468(this.f1874.m4571())) {
            throw new C0414(207, C0128.m3237(220, 49, 84));
        }
        this.f1890 = false;
        this.f1888 = false;
        if (this.f1884 == null) {
            this.f1888 = true;
            if (this.f1877.m4533() > 0) {
                try {
                    this.f1884 = new FileInputStream(this.f1877.m4571());
                } catch (FileNotFoundException e) {
                    throw new C0414(305, C0663.m5886(e, new StringBuilder().append(C0128.m3237(269, 31, 64))));
                }
            } else {
                this.f1884 = new ByteArrayInputStream(this.f1887.m4554());
            }
        } else {
            this.f1888 = this.f1881;
        }
        if (this.f1873 == null) {
            this.f1890 = true;
            if (this.f1874.m4533() > 0) {
                try {
                    this.f1873 = new FileOutputStream(this.f1874.m4571());
                } catch (FileNotFoundException e2) {
                    throw new C0414(306, C0663.m5886(e2, new StringBuilder().append(C0128.m3237(300, 31, 124))));
                }
            } else {
                this.f1873 = new ByteArrayOutputStream();
            }
        } else {
            this.f1890 = this.f1886;
        }
        try {
            C0387 c0387 = new C0387();
            C0558.m5464(this.f1884, c0387);
            m4423(c0387.m4571(), this.f1878);
            m4424(this.f1878);
            try {
                this.f1873.write(this.f1878.f3683.m4554(), 0, this.f1878.f3683.m4533());
                m4421();
            } catch (IOException e3) {
                throw new C0414(e3, JfifUtil.MARKER_RST0, C0128.m3237(1104, 19, 116));
            }
        } catch (Throwable th) {
            m4421();
            throw th;
        }
    }

    public final void m4421() {
        OutputStream outputStream;
        InputStream inputStream;
        try {
            if (this.f1888 && (inputStream = this.f1884) != null) {
                inputStream.close();
                this.f1884 = null;
            }
            if (!this.f1890 || (outputStream = this.f1873) == null) {
                return;
            }
            if (outputStream instanceof ByteArrayOutputStream) {
                this.f1891.m4543(((ByteArrayOutputStream) outputStream).toByteArray());
            }
            this.f1873.close();
            this.f1873 = null;
        } catch (IOException unused) {
            throw new C0414(304, C0128.m3237(331, 19, 40));
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        if (c0440.m4813(C0128.m3237(0, 17, 114))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1883).toString();
            }
            this.f1883 = c0440.m4805();
        } else if (c0440.m4813(C0128.m3237(17, 16, 71))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1893).toString();
            }
            this.f1893 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3237(33, 24, 63))) {
            if (c0440.f2269) {
                return this.f1882.m4571();
            }
            this.f1882.m4531(c0440.f2271);
        } else if (c0440.m4813(C0128.m3237(57, 17, 86))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1876).toString();
            }
            this.f1876 = c0440.m4809();
        } else {
            if (c0440.m4813(C0128.m3237(74, 9, 5)) && c0440.f2269) {
                return C0663.m5891("").append(this.f1878.f3684.toString()).toString();
            }
            if (c0440.m4813(C0128.m3237(83, 28, 90))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1881).toString();
                }
                this.f1881 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3237(111, 29, 28))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1886).toString();
                }
                this.f1886 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3237(CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA, 11, 100))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1871).toString();
                }
                this.f1871 = c0440.m4805();
            } else if (c0440.m4813(C0128.m3237(151, 16, 31))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1875).toString();
                }
                this.f1875 = c0440.m4805();
            } else if (!c0440.f2269 && c0440.m4813(C0128.m3237(167, 18, 100))) {
                this.f1878.f3684.m3141(c0440.f2271);
            } else if (c0440.m4813(C0128.m3237(185, 11, 71))) {
                if (c0440.f2269) {
                    return this.f1878.f3684.f1498.m4571();
                }
                this.f1878.f3684.f1498.m4531(c0440.f2271);
            } else {
                if (!c0440.m4813(C0128.m3237(196, 24, 28))) {
                    return super.mo3151(c0440);
                }
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1878.f3684.m4065()).toString();
                }
                this.f1878.f3684.f1500 = c0440.m4805();
            }
        }
        return "";
    }

    public final void m4423(String str, C0669 c0669) {
        if (str.length() > 0) {
            C0200 c0200 = new C0200();
            C0558.m5497(str, c0200);
            if (c0200.m3672() != 2 && c0200.m3672() != 3) {
                C0190 c0190 = new C0190(this, this);
                c0190.m4304(C0128.m3237(808, 25, 11));
                c0190.m3631(true);
                c0190.f686 = str;
                try {
                    c0190.m3648();
                    boolean zM3636 = c0190.m3636(C0128.m3237(862, 15, 50));
                    boolean zM3637 = c0190.m3636(C0128.m3237(877, 16, 83));
                    if (!zM3636 && !zM3637) {
                        throw new C0414(206, C0128.m3237(996, 34, 113));
                    }
                    this.f1883 = zM3636 ? 2 : 1;
                    c0190.m3637(C0128.m3237(893, 13, 17));
                    c0669.f3683.m4541();
                    C0558.m5498(c0190.m3630(), c0669.f3683);
                    c0190.m3637(zM3636 ? C0128.m3237(TypedValues.Custom.TYPE_REFERENCE, 15, 6) : C0128.m3237(921, 30, 38));
                    c0669.f3682.m4541();
                    C0558.m5498(c0190.m3630(), c0669.f3682);
                    if (c0190.m3636(zM3636 ? C0128.m3237(951, 15, 111) : C0128.m3237(966, 30, 32))) {
                        m4422(c0190.m3630(), c0669.f3684);
                        return;
                    }
                    return;
                } catch (C0414 unused) {
                    throw new C0414(201, C0128.m3237(833, 29, 0));
                }
            }
            this.f1883 = 0;
            m4422(c0200.m3675(0), c0669.f3684);
            c0669.f3683.m4541();
            C0558.m5465(c0200.m3675(1), c0669.f3683);
            if (c0200.m3672() == 3) {
                c0669.f3682.m4541();
                C0558.m5465(c0200.m3675(2), c0669.f3682);
                return;
            }
            return;
        }
        throw new C0414(201, C0128.m3237(779, 29, 66));
    }

    public final void m4424(C0669 c0669) {
        boolean zM4540 = false;
        if (this.f1893) {
            boolean z = c0669.f3684.f1499 == this.f1892;
            if (!z && this.f1882.m4533() > 0) {
                Vector vector = new Vector();
                for (String str : C0259.m3852(this.f1882.m4571(), ",")) {
                    vector.addElement(str);
                }
                z = vector.indexOf(c0669.f3684.m4064()) >= 0;
            }
            if (!z) {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3237(458, 46, 123));
            }
        }
        int i = c0669.f3684.f1499;
        if (i == 0 || i == 1 || i == 2) {
            if (this.f1872.m5720() > 0) {
                C0627 c0627 = new C0627();
                C0558.m5502(this.f1872, this.f1871, c0627);
                byte[] bArrM5725 = c0627.m5725();
                if (c0669.f3684.m3135()) {
                    C0387 c0387 = new C0387();
                    m4419(c0669, c0387);
                    int i2 = c0669.f3684.f1499;
                    C0104 c0104 = new C0104(null, new Object());
                    if (i2 == 0) {
                        c0104.m3147(13);
                    } else if (i2 == 1) {
                        c0104.m3147(14);
                    } else {
                        c0104.m3147(15);
                    }
                    c0104.f137 = false;
                    c0104.f139.m4543(bArrM5725);
                    zM4540 = c0669.f3682.m4540(c0104.m3154(c0387.m4554(), true));
                }
            } else {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER, C0128.m3237(TypedValues.PositionType.TYPE_PERCENT_HEIGHT, 22, 112));
            }
        } else if (c0669.f3684.m4067()) {
            C0335 c0335 = this.f1880;
            if (c0335 != null) {
                try {
                    C0648 c0648M5487 = C0558.m5487(c0335);
                    if (c0669.f3684.m3135()) {
                        C0387 c0388 = new C0387();
                        m4419(c0669, c0388);
                        C0267 c0267 = new C0267(null, new Object());
                        int i3 = c0669.f3684.f1499;
                        c0267.f1346 = false;
                        if (i3 == 6) {
                            c0267.m3974(0);
                            c0267.f1358 = 2;
                        } else if (i3 == 7) {
                            c0267.m3974(1);
                            c0267.f1358 = 3;
                        } else if (i3 == 8) {
                            c0267.m3974(2);
                            c0267.f1358 = 4;
                        } else if (i3 == 13) {
                            c0267.m3974(10);
                            c0267.f1358 = 2;
                        } else {
                            throw new C0414(206, C0128.m3237(1267, 41, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY));
                        }
                        c0267.f1362 = c0648M5487;
                        byte[] bArrM4554 = c0388.m4554();
                        c0267.f1350.m4541();
                        c0267.f1336.m4543(bArrM4554);
                        c0267.f1325.m4543(c0669.f3682.m4554());
                        zM4540 = c0267.m3982();
                    }
                } catch (C0414 unused) {
                    throw new C0414(205, C0128.m3237(1202, 31, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY));
                }
            } else {
                throw new C0414(205, C0128.m3237(526, 46, 88));
            }
        } else if (c0669.f3684.m4068()) {
            C0335 c0336 = this.f1880;
            if (c0336 != null) {
                if (c0669.f3684.m3135()) {
                    C0387 c0389 = new C0387();
                    m4419(c0669, c0389);
                    C0427 c0427 = new C0427(null, new Object());
                    c0427.f2206 = c0336;
                    int i4 = c0669.f3684.f1499;
                    c0427.f2199 = false;
                    if (i4 == 3) {
                        c0427.f2205 = false;
                        c0427.f2217 = 2;
                    } else if (i4 == 4) {
                        c0427.f2205 = false;
                        c0427.f2217 = 3;
                    } else if (i4 == 5) {
                        c0427.f2205 = false;
                        c0427.f2217 = 4;
                    } else if (i4 == 9) {
                        c0427.f2205 = true;
                        c0427.f2217 = 2;
                    } else if (i4 == 10) {
                        c0427.f2205 = true;
                        c0427.f2217 = 3;
                    } else if (i4 == 11) {
                        c0427.f2205 = true;
                        c0427.f2217 = 4;
                    } else {
                        throw new C0414(206, C0128.m3237(1161, 41, 32));
                    }
                    c0427.m4705(c0389.m4554());
                    c0427.f2209.m4543(c0669.f3682.m4554());
                    zM4540 = c0427.m4695();
                }
            } else {
                throw new C0414(205, C0128.m3237(572, 46, 3));
            }
        } else {
            if (!(c0669.f3684.f1499 == 12)) {
                throw new C0414(206, C0128.m3237(618, 26, 11));
            }
            zM4540 = true;
        }
        if (!zM4540) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3237(644, 27, 15));
        }
    }

    public final void m4422(String str, C0288 c0288) {
        int i;
        C0335 c0335;
        Vector vector;
        int i2;
        C0387 c0387 = new C0387();
        this.f1879.clear();
        c0288.m4066();
        c0288.f120.m4531(str);
        C0558.m5465(str, c0387);
        C0387 c0388 = new C0387();
        C0190 c0190 = new C0190(null, new Object());
        c0190.f686 = c0387.m4571();
        int i3 = 1;
        c0190.m3631(true);
        int i4 = 3;
        c0190.m3651(3);
        c0190.m3633(true);
        c0190.m3648();
        int i5 = 9;
        c0388.m4531(C0128.m3237(1030, 9, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
        boolean zM3636 = c0190.m3636(c0388.m4571());
        int i6 = 1;
        while (zM3636) {
            C0387 c0389 = new C0387();
            c0389.m4531(c0190.m3634());
            String strM3630 = c0190.m3630();
            int iM3632 = c0190.m3632();
            AbstractC0103.m3125(this.f1879, c0389.m4571(), strM3630, iM3632);
            String strM4571 = c0389.m4571();
            InterfaceC0344 interfaceC0344 = this.f1885;
            if (interfaceC0344 != null) {
                interfaceC0344.m4412(strM4571, strM3630, iM3632);
            }
            int i7 = i3;
            if (c0389.m4552(C0128.m3237(1039, i4, 101))) {
                C0387 c0387M5881 = C0663.m5881(strM3630);
                if (c0387M5881.m4552(C0288.f1486)) {
                    i2 = 0;
                } else if (c0387M5881.m4552(C0288.f1490)) {
                    i2 = i7;
                } else if (c0387M5881.m4552(C0288.f1484)) {
                    i2 = 2;
                } else if (c0387M5881.m4552(C0288.f1495)) {
                    i2 = i4;
                } else if (c0387M5881.m4552(C0288.f1497)) {
                    i2 = 4;
                } else if (c0387M5881.m4552(C0288.f1488)) {
                    i2 = 5;
                } else if (c0387M5881.m4552(C0288.f1487)) {
                    i2 = 6;
                } else if (c0387M5881.m4552(C0288.f1494)) {
                    i2 = 7;
                } else if (c0387M5881.m4552(C0288.f1496)) {
                    i2 = 8;
                } else if (c0387M5881.m4552(C0288.f1491)) {
                    i2 = i5;
                } else if (c0387M5881.m4552(C0288.f1485)) {
                    i2 = 10;
                } else if (c0387M5881.m4552(C0288.f1492)) {
                    i2 = 11;
                } else if (c0387M5881.m4552(C0288.f1489)) {
                    i2 = 12;
                } else {
                    i2 = c0387M5881.m4552(C0288.f1493) ? 13 : -1;
                }
                c0288.f1499 = i2;
                if (c0288.f1499 == -1) {
                    C0387 c03810 = new C0387();
                    c03810.m4563(C0128.m3237(1042, 22, 102));
                    c03810.m4563(strM3630);
                    throw new C0414(206, c03810.m4571());
                }
            } else if (c0389.m4552(C0128.m3237(1064, i4, 91))) {
                c0288.f114.m4531(strM3630);
            } else if (c0389.m4552(C0128.m3237(1067, 4, 95))) {
                c0288.f104.m4531(strM3630);
            } else if (c0389.m4552(C0128.m3237(1071, i4, 51))) {
                c0288.f105.m4531(strM3630);
            } else if (c0389.m4552(C0128.m3237(1074, i4, 61))) {
                c0288.f109.m4531(strM3630);
            } else if (c0389.m4552(C0128.m3237(1077, i4, i4))) {
                c0288.m3127(strM3630);
            } else {
                if (c0389.m4552(C0128.m3237(1080, i4, 60))) {
                    c0288.f107.m4531(strM3630);
                } else {
                    if (c0389.m4552(C0128.m3237(1083, i4, 53))) {
                        boolean z = this.f1876;
                        int i8 = this.f1875;
                        C0387 c03811 = new C0387();
                        C0387 c03812 = new C0387();
                        C0387 c03813 = new C0387();
                        String strM5855 = C0642.m5855(63, 27, 66);
                        String strM5856 = C0642.m5855(90, 25, 36);
                        c03811.m4531(c0190.m3640());
                        c0190.m3637(C0642.m5855(115, i5, 15));
                        boolean zM3637 = c0190.m3636(C0642.m5855(124, 13, 40));
                        c0288.f113.m3671();
                        int i9 = i7;
                        while (zM3637) {
                            c03813.m4531(strM5855);
                            c03813.m4547('\n');
                            c03813.m4563(c0190.m3630());
                            c03813.m4547('\n');
                            c03813.m4563(strM5856);
                            c0288.f113.m3674(c03813.m4571());
                            c03812.m4531(C0642.m5855(137, 4, 99));
                            i9++;
                            c03812.m4558(i9);
                            c03812.m4547(AbstractJsonLexerKt.END_LIST);
                            zM3637 = c0190.m3636(c03812.m4571());
                            strM5855 = strM5855;
                        }
                        if (z && c0288.f113.m3672() > 0) {
                            C0335 c0336 = new C0335(7, c0288.f113.m3675(0), "", "*");
                            C0200 c0200 = c0288.f113;
                            Vector vector2 = c0288.f116;
                            if (vector2.size() > 0) {
                                i8 &= -17;
                            }
                            if (c0200.m3672() > i7) {
                                String string = "";
                                for (int i10 = 0; i10 < c0200.m3672(); i10++) {
                                    string = C0663.m5891(string).append(c0200.m3675(i10)).append("\r\n").toString();
                                }
                                c0335 = new C0335(9, string, "", c0336.m4368());
                            } else {
                                c0335 = c0336;
                            }
                            if (vector2.size() > 0) {
                                vector = new Vector();
                                for (int i11 = 0; i11 < vector2.size(); i11++) {
                                    InterfaceC0224 interfaceC0224 = ((C0335) vector2.get(i11)).f1810;
                                    vector.add(interfaceC0224 == null ? null : interfaceC0224.mo3696());
                                }
                            } else {
                                vector = null;
                            }
                            C0176 c0176 = new C0176();
                            c0176.f604 = vector;
                            int iM3543 = c0176.m3543(c0335, "", i8);
                            if (iM3543 != 0) {
                                String strM5909 = C0671.m5909(iM3543);
                                throw new C0414(TypedValues.CycleType.TYPE_CURVE_FIT, C0642.m5855(193, 38, 69) + (C0259.m3856(strM5909) ? "." : C0663.m5880(": ", strM5909)));
                            }
                            int iM4369 = c0336.m4369();
                            if (iM4369 > 0) {
                                throw new C0414(TypedValues.CycleType.TYPE_CURVE_FIT, C0642.m5855(231, 28, 0));
                            }
                            if (iM4369 < 0) {
                                throw new C0414(TypedValues.CycleType.TYPE_CURVE_FIT, C0642.m5855(259, 33, 74));
                            }
                        }
                        c0190.m3637(c03811.m4571());
                        c0288.m3130(strM3630);
                        String strM3675 = c0288.f113.m3675(0);
                        if (strM3675.length() > 0) {
                            this.f1880 = new C0335(7, strM3675, "", "*");
                        }
                    } else if (c0389.m4552(C0128.m3237(1086, 3, 62))) {
                        c0288.f112.m4531(strM3630);
                    } else {
                        if (c0389.m4552(C0128.m3237(1089, 8, 39))) {
                            c0288.f117.m4531(strM3630);
                        } else {
                            i = 3;
                            if (c0389.m4552(C0128.m3237(1097, 3, 57))) {
                                c0288.f119.m4531(strM3630);
                            } else {
                                AbstractC0103.m3125(c0288.f110, c0389.m4571(), strM3630, iM3632);
                            }
                        }
                        i7 = 1;
                    }
                    i = 3;
                    i7 = 1;
                }
                i6++;
                c0388.m4531(C0128.m3237(1100, 4, 67));
                c0388.m4558(i6);
                c0388.m4547(AbstractJsonLexerKt.END_LIST);
                zM3636 = c0190.m3636(c0388.m4571());
                i4 = i;
                i3 = i7;
                i5 = 9;
            }
            i = i4;
            i6++;
            c0388.m4531(C0128.m3237(1100, 4, 67));
            c0388.m4558(i6);
            c0388.m4547(AbstractJsonLexerKt.END_LIST);
            zM3636 = c0190.m3636(c0388.m4571());
            i4 = i;
            i3 = i7;
            i5 = 9;
        }
        String strM4572 = c0288.f122.m4571();
        String strM4064 = c0288.m4064();
        InterfaceC0344 interfaceC0345 = this.f1885;
        if (interfaceC0345 != null) {
            interfaceC0345.m4411(strM4572, strM4064);
        }
    }

    public static void m4419(C0669 c0669, C0387 c0387) {
        c0669.f3684.m3145(c0387);
        c0387.m4547(CoreConstants.DOT);
        C0558.m5504(c0669.f3683.m4554(), 0, c0669.f3683.m4533(), c0387);
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0344 interfaceC0344 = this.f1885;
        if (interfaceC0344 != null) {
            interfaceC0344.m4410(i, str);
        }
    }
}
