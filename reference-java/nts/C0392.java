package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imageutils.JfifUtil;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import geidea.utils.GeideaUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;
import okhttp3.internal.ws.WebSocketProtocol;

public class C0392 extends C0320 {

    public boolean f2002;

    public long f2003;

    public C0387 f2004;

    public C0387 f2005;

    public InterfaceC0126 f2006;

    public C0387 f2007;

    public boolean f2008;

    public long f2009;

    public int f2010;

    public boolean f2011;

    public int f2012;

    public C0387 f2013;

    public int f2014;

    public int f2015;

    public int f2016;

    public boolean f2017;

    public int f2018;

    public int f2019;

    public C0387 f2020;

    public boolean f2021;

    public C0387 f2022;

    public int f2023;

    public boolean f2024;

    public int f2025;

    public InterfaceC0449 f2026;

    public int f2027;

    public C0387 f2028;

    public C0387 f2029;

    public int f2030;

    public C0387 f2031;

    public int f2032;

    public C0627 f2033;

    public C0387 f2034;

    public long f2035;

    public OutputStream f2036;

    public C0627 f2037;

    public int f2038;

    public int f2039;

    public AbstractC0313 f2040;

    public int f2041;

    public C0387 f2042;

    public InputStream f2043;

    public C0387 f2044;

    public long f2045;

    public C0387 f2046;

    public boolean f2047;

    public C0387 f2048;

    public boolean f2049;

    public C0387 f2050;

    public boolean f2051;

    public boolean f2052;

    public C0392(Object obj, Object obj2) {
        super(obj2);
        this.f2046 = new C0387();
        this.f2013 = new C0387();
        this.f2007 = new C0387();
        this.f2034 = new C0387();
        this.f2004 = new C0387();
        this.f2042 = new C0387();
        this.f2048 = new C0387();
        this.f2029 = new C0387();
        this.f2043 = null;
        this.f2036 = null;
        this.f2037 = new C0627();
        this.f2033 = new C0627();
        this.f2019 = 0;
        this.f2031 = new C0387();
        this.f2005 = new C0387();
        this.f2044 = new C0387();
        this.f2022 = new C0387();
        this.f2050 = new C0387();
        this.f2026 = null;
        this.f2017 = false;
        this.f2024 = false;
        this.f2020 = new C0387();
        this.f2028 = new C0387();
        if (obj instanceof InterfaceC0449) {
            this.f2026 = (InterfaceC0449) obj;
        }
        this.f2014 = 0;
        this.f2049 = false;
        this.f2047 = false;
        this.f2051 = false;
        this.f2008 = false;
        this.f2021 = true;
        this.f2002 = true;
        this.f2032 = 0;
        this.f2012 = 0;
        this.f2030 = 12;
        this.f2018 = 20;
        this.f2027 = 512;
        this.f2045 = 0L;
        m4607(C0465.m5115(0, 3, 75));
        m4620();
        m4597();
        this.f2034.m4541();
        this.f2004.m4541();
        this.f2042.m4541();
        this.f2048.m4541();
        this.f2037.m5722();
        this.f2033.m5722();
        this.f2007.m4541();
        this.f2046.m4541();
        this.f2013.m4541();
        this.f2050.m4541();
        this.f2029.m4541();
        this.f2028.m4541();
        this.f2031.m4541();
        this.f2005.m4541();
        this.f2044.m4541();
        this.f2022.m4541();
        m4610();
        this.f2003 = 0L;
        this.f2035 = 0L;
        this.f2038 = 128;
        this.f2052 = false;
        this.f2011 = false;
        this.f2041 = 0;
        this.f2009 = 0L;
        this.f2025 = 0;
        this.f2010 = 64;
        this.f2019 = 0;
        this.f2015 = -1;
        this.f2023 = 1;
        this.f2016 = 0;
    }

    public final void m4593(int i) {
        m4597();
        int i2 = 2;
        if (i != 0) {
            if (i == 1) {
                i2 = 3;
            } else if (i == 2) {
                i2 = 1;
            } else {
                i2 = 4;
                if (i != 3) {
                    i2 = i == 4 ? 5 : -1;
                }
            }
        }
        C0308.m4224(this.f2040, i2);
    }

    public final void m4595() {
        int i = this.f2041;
        if (i == 5 || i == 7) {
            m4596(8);
        } else if (i == 2 || i == 3) {
            m4596(m4621());
        }
    }

    public void m4596(int i) {
        this.f2040.m4286(i);
    }

    public final void m4597() {
        this.f2039 = 0;
    }

    public final boolean m4598() {
        int i = this.f2032;
        return i > 0 && i != m4609();
    }

    public void m4600(byte[] bArr) {
        m4597();
        this.f2034.m4543(bArr);
    }

    public void m4601() {
        m4614(false);
    }

    public void m4604(int i) {
        try {
            this.f2040.m4284(i);
        } catch (C0537 unused) {
            throw new C0414(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, C0465.m5115(44, 41, WebSocketProtocol.PAYLOAD_SHORT));
        }
    }

    public void m4606(int i) {
        this.f2019 = i;
        try {
            if (i == 0) {
                this.f2040 = C0308.m4220(C0465.m5115(85, 5, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
            } else if (i == 1) {
                this.f2040 = C0308.m4220(C0465.m5115(90, 4, 19));
            } else if (i == 2) {
                this.f2040 = C0308.m4220(C0465.m5115(94, 3, 2));
            }
        } catch (C0537 e) {
            throw new C0414(101, e.getMessage());
        }
    }

    public byte[] m4608() {
        return this.f2004.m4554();
    }

    public final int m4609() {
        return C0308.m4231(this.f2040);
    }

    public final void m4610() {
        OutputStream outputStream;
        InputStream inputStream;
        try {
            if (this.f2017 && (inputStream = this.f2043) != null) {
                inputStream.close();
                this.f2043 = null;
            }
            if (!this.f2024 || (outputStream = this.f2036) == null) {
                return;
            }
            if (outputStream instanceof ByteArrayOutputStream) {
                this.f2004.m4543(((ByteArrayOutputStream) outputStream).toByteArray());
            }
            this.f2036.close();
            this.f2036 = null;
        } catch (IOException unused) {
            throw new C0414(304, C0465.m5115(751, 19, 77));
        }
    }

    public final boolean m4611() {
        int i = this.f2012;
        return i > 0 && i != m4622();
    }

    public final boolean m4612() {
        return this.f2041 == 6 && this.f2014 == 0;
    }

    public final void m4614(boolean z) {
        int i;
        byte[] bArr = new byte[262144];
        C0387 c0387 = new C0387();
        m4605();
        do {
            try {
                try {
                    i = this.f2043.read(bArr);
                    if (i > 0) {
                        if (this.f2011) {
                            c0387.m4541();
                            if (z) {
                                byte[] bArrM4628 = m4628(z, bArr, i, false);
                                C0558.m5505(bArrM4628, bArrM4628.length, c0387);
                                this.f2036.write(c0387.m4554(), 0, c0387.m4533());
                            } else {
                                c0387.m4568(C0259.m3900(8, bArr, 0, i));
                                this.f2036.write(m4628(z, c0387.m4554(), c0387.m4533(), false));
                            }
                        } else {
                            this.f2036.write(m4628(z, bArr, i, false));
                        }
                    }
                    m4626(i);
                } catch (IOException e) {
                    throw new C0414(104, C0465.m5115(1061, 31, 43) + C0414.m4672(e));
                }
            } catch (Throwable th) {
                m4610();
                throw th;
            }
        } while (i > 0);
        if (i <= 0 && !z && this.f2039 != 3 && this.f2014 != 6) {
            throw new C0414(112, C0465.m5115(1039, 22, 122));
        }
        byte[] bArrM4629 = m4628(z, C0320.f1706, 0, true);
        if (this.f2011 && z) {
            c0387.m4541();
            C0558.m5505(bArrM4629, bArrM4629.length, c0387);
        } else {
            c0387.m4543(bArrM4629);
        }
        this.f2036.write(c0387.m4554(), 0, c0387.m4533());
        m4610();
    }

    public int m4615() {
        int i = this.f2012;
        return i == 0 ? m4622() : i;
    }

    public final boolean m4616() {
        return this.f2041 == 9 && this.f2014 == 0;
    }

    public void m4617(byte[] bArr) {
        m4597();
        this.f2046.m4543(bArr);
    }

    public final int m4618() {
        if (m4612()) {
            return 0;
        }
        return (this.f2014 == 11 && this.f2008) ? 1 : 2;
    }

    public final boolean m4619() {
        int i = this.f2014;
        return i == 6 || i == 11 || i == 12;
    }

    public void m4620() {
        try {
            switch (this.f2014) {
                case 0:
                    this.f2040 = C0308.m4220(C0465.m5115(473, 3, 116));
                    return;
                case 1:
                    this.f2040 = C0308.m4220(C0465.m5115(TypedValues.PositionType.TYPE_TRANSITION_EASING, 8, 1));
                    return;
                case 2:
                    this.f2040 = C0308.m4220(C0465.m5115(516, 5, 104));
                    return;
                case 3:
                    this.f2040 = C0308.m4220(C0465.m5115(476, 3, 40));
                    return;
                case 4:
                    this.f2040 = C0308.m4220(C0465.m5115(479, 4, 18));
                    return;
                case 5:
                    this.f2040 = C0308.m4220(C0465.m5115(483, 3, 26));
                    return;
                case 6:
                    this.f2040 = C0308.m4220(C0465.m5115(486, 3, 92));
                    return;
                case 7:
                    int i = this.f2019;
                    if (i != 0 && i != 1 && i != 2) {
                        throw new C0414(101, C0465.m5115(521, 21, 49));
                    }
                    m4606(i);
                    return;
                case 8:
                    this.f2040 = C0308.m4220(C0465.m5115(497, 4, 115));
                    return;
                case 9:
                    this.f2040 = C0308.m4220(C0465.m5115(509, 7, 8));
                    return;
                case 10:
                    this.f2040 = C0308.m4220(C0465.m5115(542, 8, 122));
                    return;
                case 11:
                    this.f2040 = C0308.m4220(C0465.m5115(489, 8, 77));
                    return;
                case 12:
                    this.f2040 = C0308.m4220(C0465.m5115(550, 7, 34));
                    return;
                default:
                    throw new C0414(101, C0465.m5115(557, 21, 38));
            }
        } catch (C0537 e) {
            throw new C0414(101, e.getMessage());
        }
    }

    public int m4621() {
        int i = this.f2032;
        return i == 0 ? m4609() : i;
    }

    public int m4622() {
        try {
            return C0308.m4216(this.f2040);
        } catch (C0537 unused) {
            throw new C0414(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, C0465.m5115(3, 41, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
        }
    }

    public int m4623() {
        return this.f2023;
    }

    public void m4625(int i) {
        this.f2010 = i;
        int i2 = this.f2019;
        if (i2 == 2) {
            ((C0168) this.f2040).f553 = i;
        } else if (i2 == 1) {
            ((C0421) this.f2040).f2154 = i;
        }
    }

    public void m4627(byte[] bArr) {
        this.f2031.m4543(bArr);
    }

    public final void m4602(int i) {
        try {
            this.f2040.m4288(i);
            int iM4599 = m4599(i);
            this.f2046.m4530(iM4599);
            this.f2013.m4530(iM4599);
            this.f2040.m4286(i);
        } catch (C0537 unused) {
            throw new C0414(107, C0465.m5115(1194, 43, 67));
        }
    }

    @Override
    public String mo3151(C0440 c0440) {
        if (c0440.m4813(C0465.m5115(97, 31, 54))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2021).toString();
            }
            this.f2021 = c0440.m4809();
        } else if (c0440.m4813(C0465.m5115(128, 32, 112))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2002).toString();
            }
            this.f2002 = c0440.m4809();
        } else if (!c0440.m4813(C0465.m5115(SyslogConstants.LOG_LOCAL4, 9, 73)) || m4619()) {
            if (c0440.m4813(C0465.m5115(169, 7, 19))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(m4615()).toString();
                }
                this.f2012 = c0440.m4805();
            } else if (!c0440.m4813(C0465.m5115(SyslogConstants.LOG_LOCAL6, 9, 70)) || this.f2014 == 6) {
                if (c0440.m4813(C0465.m5115(185, 14, 12))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2047).toString();
                    }
                    this.f2047 = c0440.m4809();
                } else if (c0440.m4813(C0465.m5115(199, 9, 79))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2010).toString();
                    }
                    m4625(c0440.m4805());
                } else if (c0440.m4813(C0465.m5115(JfifUtil.MARKER_RST0, 13, 118))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2025).toString();
                    }
                    this.f2025 = c0440.m4805();
                } else if (c0440.m4813(C0465.m5115(221, 20, 11))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2020.m4571()).toString();
                    }
                    m4607(c0440.f2271);
                } else if (c0440.m4813(C0465.m5115(241, 19, 65))) {
                    if (c0440.f2269) {
                        return super.mo3151(c0440);
                    }
                    if (C0320.f1718 != c0440.m4809()) {
                        super.mo3151(c0440);
                        m4620();
                    }
                } else if (c0440.m4813(C0465.m5115(260, 10, 44))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2041).toString();
                    }
                    this.f2041 = c0440.m4805();
                } else if (c0440.m4813(C0465.m5115(RotationOptions.ROTATE_270, 15, 44))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2028.m4571()).toString();
                    }
                    this.f2028.m4531(c0440.f2271);
                } else if (c0440.m4813(C0465.m5115(285, 24, 83)) || c0440.m4813(C0465.m5115(309, 21, 27))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2015).toString();
                    }
                    this.f2015 = c0440.m4805();
                } else if (c0440.m4813(C0465.m5115(330, 18, 57))) {
                    if (c0440.f2269) {
                        if (this.f2044.m4533() <= 0 && this.f2031.m4533() > 0) {
                            C0558.m5505(this.f2031.m4554(), this.f2031.m4533(), this.f2044);
                        }
                        return this.f2044.m4571();
                    }
                    this.f2044.m4531(c0440.f2271);
                } else if (c0440.m4813(C0465.m5115(348, 7, 29))) {
                    if (c0440.f2269) {
                        if (this.f2022.m4533() <= 0 && this.f2005.m4533() > 0) {
                            C0558.m5505(this.f2005.m4554(), this.f2005.m4533(), this.f2022);
                        }
                        return this.f2022.m4571();
                    }
                    String str = c0440.f2271;
                    this.f2005.m4541();
                    C0558.m5450(str, this.f2005);
                } else if (c0440.m4813(C0465.m5115(355, 13, 2))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2038).toString();
                    }
                    this.f2038 = c0440.m4805();
                } else if (c0440.m4813(C0465.m5115(368, 14, 92))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2009).toString();
                    }
                    this.f2009 = c0440.m4806();
                } else if (c0440.m4813(C0465.m5115(382, 8, 113))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2030).toString();
                    }
                    this.f2030 = c0440.m4805();
                } else if (c0440.m4813(C0465.m5115(390, 10, 42))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2008).toString();
                    }
                    this.f2008 = c0440.m4809();
                } else if (c0440.m4813(C0465.m5115(400, 16, 124))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(m4623()).toString();
                    }
                    this.f2023 = c0440.m4805();
                } else if (c0440.m4813(C0465.m5115(TypedValues.CycleType.TYPE_PATH_ROTATE, 11, 54))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2018).toString();
                    }
                    this.f2018 = c0440.m4805();
                } else if (c0440.m4813(C0465.m5115(427, 14, 98))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2051).toString();
                    }
                    this.f2051 = c0440.m4809();
                } else if (c0440.m4813(C0465.m5115(441, 17, 81))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2027).toString();
                    }
                    this.f2027 = c0440.m4805();
                } else {
                    if (!c0440.m4813(C0465.m5115(458, 15, 97))) {
                        return super.mo3151(c0440);
                    }
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f2045).toString();
                    }
                    this.f2045 = c0440.m4806();
                }
            } else {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f2049).toString();
                }
                this.f2049 = c0440.m4809();
            }
        } else {
            if (c0440.f2269) {
                return C0663.m5891("").append(m4621()).toString();
            }
            this.f2032 = c0440.m4805();
        }
        return "";
    }

    public int m4599(int i) {
        if (m4612()) {
            return 12;
        }
        int i2 = this.f2014;
        if (i2 == 11) {
            return this.f2030;
        }
        if (i2 == 12) {
            int i3 = this.f2023;
            if (i3 == 0) {
                return 8;
            }
            if (i3 == 1) {
                return 24;
            }
        }
        return i / 8;
    }

    public final void m4624() {
        C0387 c0387 = new C0387();
        c0387.m4531(this.f2020.m4571());
        c0387.m4531(c0387.m4571().toLowerCase(new Locale("")));
        if ((c0387.m4542(C0465.m5115(1111, 4, 22)) != 0 || (c0387.m4542(C0465.m5115(1115, 9, 84)) < 0 && c0387.m4542(C0465.m5115(1124, 4, 105)) < 0 && c0387.m4542(C0465.m5115(1128, 3, 45)) < 0 && c0387.m4542(C0465.m5115(1131, 6, 32)) < 0 && c0387.m4542(C0465.m5115(1137, 6, 123)) < 0 && c0387.m4542(C0465.m5115(1143, 6, 15)) < 0 && c0387.m4542(C0465.m5115(1149, 6, 85)) < 0)) && !c0387.m4552(C0465.m5115(1155, 4, 100)) && !c0387.m4552(C0465.m5115(1159, 3, 119)) && !c0387.m4552(C0465.m5115(1162, 3, 32))) {
            throw new C0414(101, C0465.m5115(1165, 29, 74));
        }
    }

    public final void m4594(boolean z) {
        int i;
        int i2;
        int i3;
        if (C0320.f1718) {
            int i4 = this.f2014;
            if (i4 != 0 && i4 != 8) {
                throw new C0414(TypedValues.PositionType.TYPE_TRANSITION_EASING, C0465.m5115(1237, 37, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
            }
            int i5 = this.f2041;
            if (i5 != 4 && i5 != 2) {
                if (this.f2029.m4533() > 0) {
                    i = 8;
                    if (!this.f2020.m4539(C0465.m5115(1327, 9, 88)) && !this.f2020.m4539(C0465.m5115(1336, 11, 102)) && !this.f2020.m4539(C0465.m5115(1347, 11, 25)) && !this.f2020.m4539(C0465.m5115(1358, 11, 23)) && !this.f2020.m4539(C0465.m5115(1369, 4, RNMBXStyleValue.InterpolationModeIdentity))) {
                        C0387 c0387 = new C0387();
                        c0387.m4566(C0465.m5115(1373, 116, 34), this.f2020.m4571());
                        c0387.m4563(C0465.m5115(1489, 6, 3));
                        c0387.m4563(C0465.m5115(1495, 53, 53));
                        throw new C0414(TypedValues.PositionType.TYPE_TRANSITION_EASING, c0387.m4571());
                    }
                } else {
                    i = 8;
                }
            } else {
                throw new C0414(TypedValues.PositionType.TYPE_TRANSITION_EASING, C0465.m5115(1274, 53, 100));
            }
        } else {
            i = 8;
        }
        int i6 = this.f2014;
        if (i6 == 7) {
            if (this.f2019 == 0 && m4621() > 2048 && ((i3 = this.f2016) == 0 || i3 == 3 || i3 == 4)) {
                throw new C0414(119, C0465.m5115(578, 20, 76));
            }
            m4625(this.f2010);
            if (this.f2019 == 1) {
                ((C0421) this.f2040).f2155 = this.f2025;
            }
        } else if (i6 == 12) {
            ((C0380) this.f2040).f1966 = m4623();
            try {
                ((C0380) this.f2040).m4480(this.f2018);
            } catch (C0537 unused) {
                throw new C0414(130, C0465.m5115(598, 42, 9));
            }
        }
        boolean zM4612 = m4612();
        boolean z2 = m4618() != 2;
        if (z2) {
            try {
                if (zM4612) {
                    if (!C0320.f1718 && this.f2051) {
                        this.f2040 = C0308.m4222(C0465.m5115(770, 7, 0), 3);
                        m4604(256);
                    } else {
                        this.f2040 = C0308.m4220(C0465.m5115(GeideaUtils.REGISTRATION_REQUEST_CODE, 7, 122));
                    }
                } else {
                    this.f2040 = C0308.m4220(C0465.m5115(784, 17, RNMBXStyleValue.InterpolationModeIdentity));
                }
            } catch (C0537 unused2) {
            }
        } else if (this.f2014 == 0 && !C0320.f1718 && this.f2051) {
            try {
                this.f2040 = C0308.m4222(C0465.m5115(801, 3, 124), 3);
            } catch (C0537 e) {
                throw new C0414(101, e.getMessage());
            }
        }
        m4613(this.f2041);
        m4593(this.f2016);
        if (m4611()) {
            m4604(this.f2012);
        }
        if (m4598()) {
            m4602(this.f2032);
        }
        try {
            int iM4615 = m4615() / 8;
            int iM4599 = m4599(m4621());
            if (this.f2029.m4533() > 0) {
                byte[] bArr = new byte[iM4615];
                byte[] bArr2 = new byte[iM4599];
                m4624();
                C0387 c0388 = new C0387();
                c0388.m4531(this.f2020.m4571());
                c0388.m4565("-", "");
                c0388.m4565("_", "");
                c0388.m4531(c0388.m4571().toUpperCase(new Locale("")));
                int i7 = this.f2015;
                if (i7 == -1) {
                    i7 = c0388.m4542(C0465.m5115(804, 4, 111)) >= 0 ? 10000 : 10;
                }
                C0387 c0389 = new C0387();
                if (this.f2028.m4533() >= 2 && C0558.m5506(this.f2028.m4546(0)) && C0558.m5506(this.f2028.m4546(1))) {
                    c0389.m4543(C0259.m3899(i, this.f2028.m4554()));
                }
                C0415 c0415 = new C0415();
                if (c0389.m4533() > 0) {
                    c0415.f2138 = c0389.m4554();
                }
                c0415.f2140 = c0388.m4571();
                c0415.f2139 = this.f2029.m4571();
                c0415.m4674(i7, bArr, bArr2, false);
                this.f2046.m4537(bArr2, iM4599);
                this.f2007.m4537(bArr, iM4615);
            }
            if (zM4612 && z && this.f2013.m4553(this.f2046.m4554(), this.f2046.m4533()) && this.f2050.m4553(this.f2007.m4554(), this.f2007.m4533())) {
                throw new C0414(129, C0465.m5115(808, 39, 112));
            }
            if (this.f2007.m4533() > 0) {
                C0308.m4225(this.f2040, this.f2007.m4554());
                this.f2013.m4567(this.f2046);
                if (this.f2014 != 6 && (i2 = this.f2041) != 1 && i2 != 9 && this.f2013.m4533() <= 0) {
                    if (z) {
                        C0558.m5501(this.f2013, iM4599);
                    } else {
                        throw new C0414(RNMBXStyleValue.InterpolationModeIdentity, C0465.m5115(864, 21, 53));
                    }
                }
                if (this.f2013.m4533() > 0) {
                    if (z2) {
                        if (!((AbstractC0373) this.f2040).m4470(this.f2013.m4554())) {
                            throw new C0414(123, C0465.m5115(885, 52, 124));
                        }
                    } else {
                        this.f2040.mo3994(this.f2013.m4554());
                    }
                }
                m4595();
                if (z2) {
                    if (this.f2044.m4533() > 0) {
                        if (C0558.m5458(this.f2044.m4571())) {
                            this.f2031.m4541();
                            C0558.m5450(this.f2044.m4571(), this.f2031);
                        } else {
                            throw new C0414(127, C0465.m5115(937, 39, 25));
                        }
                    }
                    ((AbstractC0373) this.f2040).m4468(this.f2031.m4554());
                    if (z) {
                        if (zM4612) {
                            this.f2050.m4531(this.f2007.m4571());
                        }
                    } else if (this.f2005.m4533() > 0) {
                        try {
                            ((AbstractC0373) this.f2040).f1949 = this.f2005.m4554();
                        } catch (C0537 e2) {
                            throw new C0414(125, C0414.m4672(e2));
                        }
                    } else if (!this.f2047 && this.f2038 > 0) {
                        throw new C0414(WebSocketProtocol.PAYLOAD_SHORT, C0465.m5115(976, 26, 26));
                    }
                    int i8 = this.f2038;
                    if (i8 >= 0) {
                        try {
                            ((AbstractC0373) this.f2040).m4469(i8);
                        } catch (C0537 e3) {
                            throw new C0414(125, C0414.m4672(e3));
                        }
                    }
                }
                if (!z2) {
                    if (this.f2014 == 11) {
                        ((C0276) this.f2040).f1401 = this.f2009;
                    }
                    if (z) {
                        this.f2006 = this.f2040.mo4285();
                    } else {
                        this.f2006 = this.f2040.mo4287();
                    }
                    if (m4616()) {
                        C0292 c0292 = (C0292) this.f2006;
                        c0292.f1523 = this.f2027;
                        c0292.f1517 = this.f2045;
                        return;
                    }
                    return;
                }
                if (this.f2008) {
                    ((C0494) this.f2040).f2807 = this.f2009;
                }
                if (z) {
                    this.f2006 = ((AbstractC0373) this.f2040).mo4285();
                    return;
                } else {
                    this.f2006 = ((AbstractC0373) this.f2040).mo4287();
                    return;
                }
            }
            throw new C0414(102, C0465.m5115(847, 17, 52));
        } catch (C0537 e4) {
            throw new C0414(e4);
        }
    }

    public void m4603() {
        m4614(true);
    }

    public void m4607(String str) {
        this.f2020.m4531(str);
    }

    public final void m4605() {
        this.f2035 = 0L;
        this.f2003 = 0L;
        if (this.f2036 == null && this.f2048.m4533() > 0 && !this.f2052 && C0558.m5468(this.f2048.m4571())) {
            throw new C0414(111, C0465.m5115(640, 49, 63));
        }
        this.f2024 = false;
        this.f2017 = false;
        try {
            if (this.f2043 == null) {
                this.f2017 = true;
                if (this.f2042.m4533() > 0) {
                    try {
                        this.f2043 = new FileInputStream(this.f2042.m4571());
                        this.f2003 = C0558.m5448(this.f2042.m4571());
                    } catch (FileNotFoundException e) {
                        throw new C0414(305, C0663.m5886(e, new StringBuilder().append(C0465.m5115(689, 31, 95))));
                    }
                } else {
                    this.f2043 = new ByteArrayInputStream(this.f2034.m4554());
                }
                if (this.f2036 == null) {
                    this.f2024 = true;
                    if (this.f2048.m4533() > 0) {
                        try {
                            this.f2036 = new FileOutputStream(this.f2048.m4571());
                            return;
                        } catch (FileNotFoundException e2) {
                            throw new C0414(306, C0663.m5886(e2, new StringBuilder().append(C0465.m5115(720, 31, 77))));
                        }
                    }
                    this.f2036 = new ByteArrayOutputStream();
                    return;
                }
                this.f2024 = this.f2002;
            }
            this.f2017 = this.f2021;
            this.f2003 = this.f2043.available();
        } catch (Exception unused) {
            this.f2003 = -1L;
        }
        if (this.f2036 == null) {
            this.f2024 = true;
            if (this.f2048.m4533() > 0) {
                this.f2036 = new FileOutputStream(this.f2048.m4571());
                return;
            } else {
                this.f2036 = new ByteArrayOutputStream();
                return;
            }
        }
        this.f2024 = this.f2002;
    }

    public final void m4613(int i) {
        int i2;
        m4597();
        switch (i) {
            case 0:
                i2 = 1;
                break;
            case 1:
                i2 = 2;
                break;
            case 2:
            case 5:
                i2 = 3;
                break;
            case 3:
            case 7:
                i2 = 4;
                break;
            case 4:
                i2 = 5;
                break;
            case 6:
                return;
            case 8:
                i2 = 6;
                break;
            case 9:
                i2 = 7;
                break;
            default:
                throw new C0414(101, C0465.m5115(1092, 19, RNMBXStyleValue.InterpolationModeIdentity));
        }
        C0308.m4243(this.f2040, i2);
    }

    public final byte[] m4628(boolean z, byte[] bArr, int i, boolean z2) {
        byte[] bArr2;
        int iM5720;
        int iM5721;
        int i2;
        int iM5722;
        byte[] bArrMo3661;
        int i3 = i;
        int i4 = this.f2038 / 8;
        boolean zM4612 = m4612();
        boolean zM4619 = m4619();
        boolean z3 = m4618() != 2;
        this.f2037.m5722();
        int i5 = this.f2039;
        if (i5 == 2 || i5 == 3) {
            if (i5 != (z ? 2 : 3)) {
                this.f2039 = 0;
            }
        }
        if (!z && this.f2039 == 1) {
            this.f2039 = 0;
        }
        int iM4621 = m4621() / 8;
        if (this.f2041 == 9) {
            iM4621 = this.f2027;
        }
        int iM4599 = m4599(m4621());
        int i6 = this.f2039;
        if (i6 == 0 || i6 == 1) {
            if (!this.f2049 || z) {
                bArr2 = bArr;
            } else {
                if (i6 == 0) {
                    this.f2046.m4541();
                    this.f2039 = 1;
                }
                int i7 = 0;
                while (this.f2046.m4533() < iM4599 && i7 < i3) {
                    this.f2046.m4556(bArr[i7]);
                    i7++;
                }
                if (this.f2046.m4533() < iM4599) {
                    return C0320.f1706;
                }
                i3 -= i7;
                bArr2 = new byte[i3];
                System.arraycopy(bArr, i7, bArr2, 0, i3);
            }
            m4594(z);
            this.f2033.m5722();
            if (this.f2049 && z) {
                this.f2037.m5724(this.f2013.m4554(), this.f2013.m4533());
            }
            this.f2039 = z ? 2 : 3;
        } else {
            bArr2 = bArr;
        }
        this.f2033.m5729(bArr2, i3);
        if (zM4612 && !z && this.f2047) {
            iM5721 = (this.f2033.m5720() - i4) / iM4621;
        } else if (z3 && !z && this.f2047) {
            iM5721 = (this.f2033.m5720() - (this.f2038 / 8)) / iM4621;
        } else {
            if (!zM4619 && (this.f2041 != 8 || this.f2016 != 2)) {
                iM5721 = this.f2033.m5720() / iM4621;
            } else {
                iM5720 = this.f2033.m5720();
            }
            i2 = iM5720;
            if (i2 > 0) {
                try {
                    byte[] bArr3 = new byte[i2];
                    this.f2037.m5729(bArr3, this.f2006.mo3121(this.f2033.m5725(), 0, i2, bArr3, 0));
                    this.f2033.m5721(i2);
                } catch (Exception e) {
                    throw new C0414(105, C0414.m4672(e));
                }
            }
            if (z2) {
                iM5722 = this.f2033.m5720();
                if (z3 && !z && this.f2047) {
                    if (iM5722 >= i4) {
                        iM5722 -= i4;
                        ((InterfaceC0614) this.f2006).mo3659(this.f2033.m5726(iM5722));
                    } else {
                        throw new C0414(128, C0465.m5115(1002, 17, 4));
                    }
                }
                try {
                    byte[] bArrMo3122 = this.f2006.mo3122(this.f2033.m5725(), 0, iM5722);
                    this.f2037.m5729(bArrMo3122, bArrMo3122.length);
                    m4597();
                    if (z3 && z) {
                        this.f2005.m4541();
                        bArrMo3661 = ((InterfaceC0614) this.f2006).mo3661();
                        if (this.f2047) {
                            this.f2037.m5728(bArrMo3661);
                        }
                        this.f2005.m4537(bArrMo3661, bArrMo3661.length);
                    }
                } catch (Exception e2) {
                    int iM4673 = C0414.m4673(e2);
                    if (iM4673 == 2001) {
                        throw new C0414(128, C0465.m5115(PointerIconCompat.TYPE_ZOOM_OUT, 20, 87));
                    }
                    throw new C0414(iM4673, C0414.m4672(e2));
                }
            }
            return this.f2037.m5725();
        }
        iM5720 = (iM5721 - 1) * iM4621;
        i2 = iM5720;
        if (i2 > 0) {
            byte[] bArr4 = new byte[i2];
            this.f2037.m5729(bArr4, this.f2006.mo3121(this.f2033.m5725(), 0, i2, bArr4, 0));
            this.f2033.m5721(i2);
        }
        if (z2) {
            iM5722 = this.f2033.m5720();
            if (z3) {
                if (iM5722 >= i4) {
                    iM5722 -= i4;
                    ((InterfaceC0614) this.f2006).mo3659(this.f2033.m5726(iM5722));
                } else {
                    throw new C0414(128, C0465.m5115(1002, 17, 4));
                }
            }
            byte[] bArrMo3123 = this.f2006.mo3122(this.f2033.m5725(), 0, iM5722);
            this.f2037.m5729(bArrMo3123, bArrMo3123.length);
            m4597();
            if (z3) {
                this.f2005.m4541();
                bArrMo3661 = ((InterfaceC0614) this.f2006).mo3661();
                if (this.f2047) {
                    this.f2037.m5728(bArrMo3661);
                }
                this.f2005.m4537(bArrMo3661, bArrMo3661.length);
            }
        }
        return this.f2037.m5725();
    }

    public void m4626(long j) {
        int i;
        if (j <= 0) {
            return;
        }
        long j2 = this.f2035 + j;
        this.f2035 = j2;
        long j3 = this.f2003;
        if (j3 > 0) {
            i = (int) ((100 * j2) / j3);
            if (i > 100) {
                i = 100;
            }
        } else {
            i = -1;
        }
        InterfaceC0449 interfaceC0449 = this.f2026;
        if (interfaceC0449 != null) {
            interfaceC0449.m5091(j2, i);
        }
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0449 interfaceC0449 = this.f2026;
        if (interfaceC0449 != null) {
            interfaceC0449.m5090(i, str);
        }
    }
}
