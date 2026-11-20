package nts;

import androidx.appcompat.app.AppCompatDelegate;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.android.material.internal.ViewUtils;
import com.nimbusds.jose.HeaderParameterNames;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
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

public class C0111 extends C0320 {

    public boolean f151;

    public C0387 f152;

    public InputStream f153;

    public C0387 f154;

    public int f155;

    public boolean f156;

    public int f157;

    public C0387 f158;

    public C0561 f159;

    public int f160;

    public boolean f161;

    public Vector f162;

    public InterfaceC0170 f163;

    public C0627 f164;

    public int f165;

    public boolean f166;

    public OutputStream f167;

    public boolean f168;

    public C0387 f169;

    public int f170;

    public boolean f171;

    public boolean f172;

    public C0387 f173;

    public C0335 f174;

    public int f175;

    public C0111(Object obj, Object obj2) {
        super(obj2);
        this.f159 = new C0561();
        this.f169 = new C0387();
        this.f173 = new C0387();
        this.f158 = new C0387();
        this.f154 = new C0387();
        this.f164 = new C0627();
        this.f152 = new C0387();
        this.f174 = null;
        this.f162 = new Vector();
        this.f172 = false;
        this.f166 = false;
        this.f153 = null;
        this.f167 = null;
        this.f163 = null;
        if (obj instanceof InterfaceC0170) {
            this.f163 = (InterfaceC0170) obj;
        }
        C0561 c0561 = this.f159;
        c0561.f3169.m5550();
        c0561.f3168.m4541();
        c0561.f3166.m4541();
        c0561.f3167.m4541();
        c0561.f3165.m4541();
        this.f169.m4541();
        this.f173.m4541();
        this.f158.m4541();
        this.f154.m4541();
        this.f164.m5722();
        this.f152.m4541();
        this.f162.clear();
        this.f171 = false;
        this.f172 = false;
        this.f166 = false;
        this.f174 = null;
        this.f170 = 0;
        this.f160 = 0;
        this.f168 = true;
        this.f151 = true;
        this.f175 = 0;
        this.f165 = 0;
        this.f157 = 16;
        this.f155 = 1000;
        this.f161 = false;
        this.f156 = false;
    }

    public static void m3161(C0427 c0427, int i) {
        if (i == 0) {
            c0427.f2197 = false;
        } else if (i == 1) {
            c0427.f2197 = true;
            c0427.f2217 = 0;
            c0427.m4698(C0128.m3242(1830, 4, 70));
        } else {
            if (i != 2) {
                throw new C0414(104, C0128.m3242(1840, 28, 68));
            }
            c0427.f2197 = true;
            c0427.f2217 = 2;
            c0427.m4698(C0128.m3242(1834, 6, RNMBXStyleValue.InterpolationModeIdentity));
        }
        c0427.f2199 = false;
    }

    public void m3164(int i) {
        this.f160 = i;
        this.f159.f3169.f3233 = i;
    }

    public void m3165(int i) {
        this.f175 = i;
    }

    public final void m3167(C0561 c0561) {
        C0387 c0387 = new C0387();
        if (this.f175 != 0) {
            throw new C0414(116, C0128.m3242(1408, 36, 56));
        }
        c0561.f3169.m3145(c0387);
        c0387.m4547(CoreConstants.DOT);
        if (c0561.f3168.m4533() > 0) {
            C0558.m5504(c0561.f3168.m4554(), 0, c0561.f3168.m4533(), c0387);
        }
        c0387.m4547(CoreConstants.DOT);
        if (c0561.f3166.m4533() > 0) {
            C0558.m5504(c0561.f3166.m4554(), 0, c0561.f3166.m4533(), c0387);
        }
        c0387.m4547(CoreConstants.DOT);
        C0558.m5504(c0561.f3167.m4554(), 0, c0561.f3167.m4533(), c0387);
        c0387.m4547(CoreConstants.DOT);
        if (c0561.f3165.m4533() > 0) {
            C0558.m5504(c0561.f3165.m4554(), 0, c0561.f3165.m4533(), c0387);
        }
        try {
            this.f167.write(c0387.m4554(), 0, c0387.m4533());
        } catch (IOException e) {
            throw new C0414(e, 112, C0128.m3242(1444, 19, 3));
        }
    }

    public final void m3168() {
        OutputStream outputStream;
        InputStream inputStream;
        try {
            if (this.f172 && (inputStream = this.f153) != null) {
                inputStream.close();
                this.f153 = null;
            }
            if (!this.f166 || (outputStream = this.f167) == null) {
                return;
            }
            if (outputStream instanceof ByteArrayOutputStream) {
                this.f173.m4543(((ByteArrayOutputStream) outputStream).toByteArray());
            }
            this.f167.close();
            this.f167 = null;
        } catch (IOException unused) {
            throw new C0414(304, C0128.m3242(1027, 19, 121));
        }
    }

    public String m3169() {
        return this.f173.m4571();
    }

    public void m3171(String str) {
        this.f159.f3169.f122.m4531(str);
    }

    public void m3172(int i) {
        this.f170 = i;
        this.f159.f3169.f3235 = i;
    }

    public void m3174(byte[] bArr) {
        this.f164.m5723(bArr);
    }

    public void m3175() {
        if (this.f156) {
            if (this.f164.m5720() <= 0) {
                throw new C0414(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, C0128.m3242(1046, 16, 33));
            }
        } else {
            if ((this.f159.f3169.m5540() || this.f159.f3169.m5544()) && this.f174 == null) {
                throw new C0414(110, C0128.m3242(1062, 70, 25));
            }
            if ((this.f159.f3169.m5541() || this.f159.f3169.m5542() || this.f159.f3169.m5548()) && this.f164.m5720() <= 0) {
                throw new C0414(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, C0128.m3242(1132, 43, 82));
            }
            if (this.f159.f3169.m5549() && this.f152.m4533() <= 0) {
                throw new C0414(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, C0128.m3242(1175, 51, 27));
            }
        }
        m3170();
        try {
            m3173(this.f159);
            m3167(this.f159);
            this.f159.f3166.m4541();
        } finally {
            m3168();
        }
    }

    public final void m3173(C0561 c0561) {
        C0387 c0387 = new C0387();
        C0558.m5464(this.f153, c0387);
        C0577 c0577 = this.f159.f3169;
        Vector vector = this.f162;
        c0577.f110.clear();
        for (int i = 0; i < vector.size(); i++) {
            c0577.f110.add(vector.get(i));
        }
        if (this.f156 || c0561.f3169.m5541()) {
            C0627 c0627 = new C0627();
            C0558.m5502(this.f164, this.f165, c0627);
            new C0462().m5109(c0627.m5725(), c0387.m4554(), c0561);
            return;
        }
        if (c0561.f3169.m5540()) {
            C0335 c0335 = this.f174;
            byte[] bArrM4554 = c0387.m4554();
            C0387 c0388 = new C0387();
            C0558.m5501(c0388, c0561.f3169.m5534());
            C0427 c0427 = new C0427(null, new Object());
            c0427.f2202 = c0335;
            m3161(c0427, c0561.f3169.f3233);
            c0427.m4705(c0388.m4554());
            if (C0320.f1718) {
                throw new C0414(C0128.m3225(335, 37, RNMBXStyleValue.InterpolationModeIdentity));
            }
            C0387 c0389 = new C0387();
            C0387 c03810 = new C0387();
            String strM5477 = C0558.m5477(c0427.f2217);
            C0387 c03811 = new C0387();
            if (c0427.f2197 && c0427.f2193.m4533() > 0) {
                C0558.m5450(c0427.f2193.m4571(), c03811);
            }
            c0427.m4700(true);
            c0427.m4697();
            try {
                try {
                    try {
                        c0427.m4704(c0389);
                        c03810.m4568(c0427.f2201.m5131(c0389.m4554(), c0427.f2197, c03811.m4554(), strM5477, c0427.f2219.m4571()));
                        if (c0427.f2199) {
                            c0389.m4537(c03810.m4554(), c03810.m4533());
                            c03810.m4541();
                            C0558.m5505(c0389.m4554(), c0389.m4533(), c03810);
                        }
                        c0427.f2211.write(c03810.m4554());
                        c0427.m4699();
                        c0561.f3168.m4543(c0427.f2214.m4554());
                        new C0462().m5109(c0388.m4554(), bArrM4554, c0561);
                        return;
                    } catch (Throwable th) {
                        c0427.m4699();
                        throw th;
                    }
                } catch (IOException e) {
                    throw new C0414(104, C0128.m3225(372, 31, 69) + C0414.m4672(e));
                }
            } catch (C0537 e2) {
                throw new C0414(e2);
            }
        }
        if (c0561.f3169.m5548() || c0561.f3169.m5542()) {
            C0627 c0628 = new C0627();
            C0558.m5502(this.f164, this.f165, c0628);
            byte[] bArrM5725 = c0628.m5725();
            byte[] bArrM4555 = c0387.m4554();
            C0387 c03812 = new C0387();
            m3163(bArrM5725, c0561);
            C0558.m5501(c03812, c0561.f3169.m5534());
            if (c0561.f3169.m5542()) {
                C0387 c03813 = new C0387();
                C0558.m5501(c03813, 12);
                C0392 c0392 = new C0392(null, new Object());
                c0392.f2041 = 6;
                c0392.m4597();
                c0392.f2007.m4543(bArrM5725);
                c0392.m4617(c03813.m4554());
                c0392.m4627((byte[]) null);
                c0392.f2038 = 128;
                c0392.m4600(c03812.m4554());
                c0392.m4603();
                c0561.f3169.f111.m4543(c03813.m4554());
                c0561.f3169.f115.m4543(c0392.f2005.m4554());
                c0561.f3168.m4543(c0392.m4608());
            } else {
                try {
                    c0561.f3168.m4543(new C0668().m5897(bArrM5725, c03812.m4554(), 0, c03812.m4533()));
                } catch (Exception e3) {
                    throw new C0414(e3, 114, C0128.m3242(2096, 40, 64));
                }
            }
            new C0462().m5109(c03812.m4554(), bArrM4555, c0561);
            return;
        }
        if (c0561.f3169.m5549()) {
            c0561.f3169.f3236 = this.f155;
            String strM4571 = this.f152.m4571();
            int i2 = this.f157;
            byte[] bArrM4556 = c0387.m4554();
            C0387 c03814 = new C0387();
            C0387 c03815 = new C0387();
            C0387 c03816 = new C0387();
            C0558.m5501(c03814, i2);
            m3160(strM4571, c03814.m4554(), c0561.f3169.f3236, c0561, c03815);
            c0561.f3169.f3234.m5723(c03814.m4554());
            C0558.m5501(c03816, c0561.f3169.m5534());
            try {
                c0561.f3168.m4543(new C0668().m5897(c03815.m4554(), c03816.m4554(), 0, c03816.m4533()));
                new C0462().m5109(c03816.m4554(), bArrM4556, c0561);
                return;
            } catch (Exception e4) {
                throw new C0414(e4, 114, C0128.m3242(2309, 53, 88));
            }
        }
        if (!c0561.f3169.m5544()) {
            throw new C0414(104, C0128.m3242(1226, 32, 91));
        }
        C0335 c0336 = this.f174;
        byte[] bArrM4557 = c0387.m4554();
        C0648 c0648M3158 = m3158(c0336, true);
        C0267 c0267 = new C0267(null, new Object());
        int iM5858 = c0648M3158.m5858();
        c0267.f1332.m4576();
        c0267.f1332.m4585(iM5858);
        try {
            c0267.f1356.m5862(c0267.f1332.m4583(true), true);
            C0648 c0648 = c0267.f1356;
            C0648 c0649 = new C0648();
            c0649.m5863(c0648);
            C0387 c03817 = new C0387();
            m3162(c0648, c0648M3158, c0561, c03817);
            C0387 c03818 = new C0387();
            if (c0561.f3169.f3233 == 7) {
                c03818.m4567(c03817);
                c0561.f3168.m4541();
            } else {
                C0387 c03819 = new C0387();
                C0558.m5501(c03818, c0561.f3169.m5534());
                c03819.m4567(c03817);
                try {
                    c0561.f3168.m4543(new C0668().m5897(c03819.m4554(), c03818.m4554(), 0, c03818.m4533()));
                } catch (Exception e5) {
                    throw new C0414(e5, 114, C0128.m3242(1933, 40, 92));
                }
            }
            c0561.f3169.f3228.f3629.m3445(c0649.f3629, false);
            new C0462().m5109(c03818.m4554(), bArrM4557, c0561);
        } catch (C0537 e6) {
            throw new C0414(e6);
        }
    }

    public final void m3170() {
        if (this.f167 == null && this.f154.m4533() > 0 && !this.f171 && C0558.m5468(this.f154.m4571())) {
            throw new C0414(107, C0128.m3242(916, 49, 37));
        }
        this.f166 = false;
        this.f172 = false;
        if (this.f153 == null) {
            this.f172 = true;
            if (this.f158.m4533() > 0) {
                try {
                    this.f153 = new FileInputStream(this.f158.m4571());
                } catch (FileNotFoundException e) {
                    throw new C0414(305, C0663.m5886(e, new StringBuilder().append(C0128.m3242(965, 31, 36))));
                }
            } else {
                this.f153 = new ByteArrayInputStream(this.f169.m4554());
            }
        } else {
            this.f172 = this.f168;
        }
        if (this.f167 == null) {
            this.f166 = true;
            if (this.f154.m4533() > 0) {
                try {
                    this.f167 = new FileOutputStream(this.f154.m4571());
                    return;
                } catch (FileNotFoundException e2) {
                    throw new C0414(306, C0663.m5886(e2, new StringBuilder().append(C0128.m3242(996, 31, 61))));
                }
            }
            this.f167 = new ByteArrayOutputStream();
            return;
        }
        this.f166 = this.f151;
    }

    public final void m3176(String str, C0561 c0561) {
        int i;
        int i2;
        if (str.length() > 0) {
            C0200 c0200 = new C0200();
            C0558.m5497(str, c0200);
            int i3 = 1;
            if (c0200.m3672() == 5) {
                this.f175 = 0;
                String strM3675 = c0200.m3675(0);
                C0577 c0577 = c0561.f3169;
                C0387 c0387 = new C0387();
                this.f162.clear();
                c0577.m5550();
                c0577.m3132(strM3675);
                C0558.m5465(strM3675, c0387);
                C0387 c0388 = new C0387();
                C0387 c0389 = new C0387();
                C0190 c0190 = new C0190(null, new Object());
                c0190.f686 = c0387.m4571();
                c0190.m3631(true);
                c0190.m3651(1);
                c0190.m3633(true);
                c0190.m3648();
                c0388.m4531(C0128.m3242(1602, 9, 110));
                boolean zM3636 = c0190.m3636(c0388.m4571());
                int i4 = 1;
                while (zM3636) {
                    C0387 c03810 = new C0387();
                    c03810.m4531(c0190.m3634());
                    String strM3630 = c0190.m3630();
                    int iM3632 = c0190.m3632();
                    int i5 = i3;
                    AbstractC0103.m3125(this.f162, c03810.m4571(), strM3630, iM3632);
                    String strM4571 = c03810.m4571();
                    InterfaceC0170 interfaceC0170 = this.f163;
                    if (interfaceC0170 != null) {
                        interfaceC0170.m3517(strM4571, strM3630, iM3632);
                    }
                    if (c03810.m4552(C0128.m3242(1611, 3, 49))) {
                        C0387 c0387M5881 = C0663.m5881(strM3630);
                        if (c0387M5881.m4552(C0577.f3212)) {
                            i2 = 0;
                        } else if (c0387M5881.m4552(C0577.f3223)) {
                            i2 = i5;
                        } else if (c0387M5881.m4552(C0577.f3224)) {
                            i2 = 2;
                        } else if (c0387M5881.m4552(C0577.f3219)) {
                            i2 = 3;
                        } else if (c0387M5881.m4552(C0577.f3207)) {
                            i2 = 4;
                        } else if (c0387M5881.m4552(C0577.f3220)) {
                            i2 = 5;
                        } else if (c0387M5881.m4552(C0577.f3217)) {
                            i2 = 6;
                        } else if (c0387M5881.m4552(C0577.f3222)) {
                            i2 = 7;
                        } else if (c0387M5881.m4552(C0577.f3205)) {
                            i2 = 8;
                        } else if (c0387M5881.m4552(C0577.f3218)) {
                            i2 = 9;
                        } else if (c0387M5881.m4552(C0577.f3227)) {
                            i2 = 10;
                        } else if (c0387M5881.m4552(C0577.f3211)) {
                            i2 = 11;
                        } else if (c0387M5881.m4552(C0577.f3209)) {
                            i2 = 12;
                        } else if (c0387M5881.m4552(C0577.f3213)) {
                            i2 = 13;
                        } else if (c0387M5881.m4552(C0577.f3210)) {
                            i2 = 14;
                        } else if (c0387M5881.m4552(C0577.f3215)) {
                            i2 = 15;
                        } else {
                            i2 = c0387M5881.m4552(C0577.f3216) ? 16 : -1;
                        }
                        c0577.f3233 = i2;
                        if (c0577.f3233 == -1) {
                            C0387 c03811 = new C0387();
                            c03811.m4563(C0128.m3242(1614, 41, 113));
                            c03811.m4563(strM3630);
                            throw new C0414(104, c03811.m4571());
                        }
                    } else if (c03810.m4552(C0128.m3242(1655, 3, 25))) {
                        C0387 c0387M5882 = C0663.m5881(strM3630);
                        if (c0387M5882.m4552(C0577.f3206)) {
                            i = 0;
                        } else if (c0387M5882.m4552(C0577.f3225)) {
                            i = i5;
                        } else if (c0387M5882.m4552(C0577.f3214)) {
                            i = 2;
                        } else if (c0387M5882.m4552(C0577.f3221)) {
                            i = 3;
                        } else if (c0387M5882.m4552(C0577.f3226)) {
                            i = 4;
                        } else {
                            i = c0387M5882.m4552(C0577.f3208) ? 5 : -1;
                        }
                        c0577.m5552(i);
                        if (c0577.f3235 == -1) {
                            C0387 c03812 = new C0387();
                            c03812.m4563(C0128.m3242(1658, 43, 33));
                            c03812.m4563(strM3630);
                            throw new C0414(RNMBXStyleValue.InterpolationModeIdentity, c03812.m4571());
                        }
                    } else if (c03810.m4552(C0128.m3242(1701, 3, 7))) {
                        c0577.m5547(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1704, 3, 82))) {
                        c0577.m3137(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1707, 4, 18))) {
                        c0577.m3129(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1711, 3, 72))) {
                        c0577.m3134(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1714, 3, 49))) {
                        c0577.m3126(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1717, 3, SyslogConstants.LOG_CLOCK))) {
                        c0577.m3127(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1720, 3, 123))) {
                        c0577.m3140(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1723, 3, 71))) {
                        c0577.m3130(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1726, 3, 77))) {
                        c0577.m3131(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1729, 8, 44))) {
                        c0577.m3133(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1737, 3, 54))) {
                        c0577.m3139(strM3630);
                    } else if (c03810.m4552(C0128.m3242(1740, 3, 62))) {
                        c0389.m4541();
                        C0558.m5465(strM3630, c0389);
                        c0577.m5536(c0389.m4554());
                    } else if (c03810.m4552(C0128.m3242(1743, 3, 97))) {
                        c0577.m5545(Integer.parseInt(strM3630));
                    } else if (c03810.m4571().equals(HeaderParameterNames.INITIALIZATION_VECTOR)) {
                        c0389.m4541();
                        C0558.m5465(strM3630, c0389);
                        c0577.m3146(c0389.m4554());
                    } else if (c03810.m4552(C0128.m3242(1746, 3, 97))) {
                        c0389.m4541();
                        C0558.m5465(strM3630, c0389);
                        c0577.m3138(c0389.m4554());
                    } else if (c03810.m4552(C0128.m3242(1749, 3, 87))) {
                        c0389.m4541();
                        C0558.m5465(strM3630, c0389);
                        c0577.f3229.m4543(c0389.m4554());
                    } else if (c03810.m4552(C0128.m3242(1752, 3, 113))) {
                        c0389.m4541();
                        C0558.m5465(strM3630, c0389);
                        c0577.m5543(c0389.m4554());
                    } else if (c03810.m4552(C0128.m3242(1755, 3, 119))) {
                        C0577.m5532(c0190, c0577.f3228);
                    } else {
                        c0577.m3142(c03810.m4571(), strM3630, iM3632);
                    }
                    i4++;
                    c0388.m4531(C0128.m3242(1758, 4, 11));
                    c0388.m4558(i4);
                    c0388.m4547(AbstractJsonLexerKt.END_LIST);
                    zM3636 = c0190.m3636(c0388.m4571());
                    i3 = i5;
                }
                int i6 = i3;
                String strM3136 = c0577.m3136();
                String strM5537 = c0577.m5537();
                InterfaceC0170 interfaceC0171 = this.f163;
                if (interfaceC0171 != null) {
                    interfaceC0171.m3516(strM3136, strM5537);
                }
                c0561.f3168.m4541();
                C0558.m5465(c0200.m3675(i6), c0561.f3168);
                c0561.f3166.m4541();
                C0558.m5465(c0200.m3675(2), c0561.f3166);
                c0561.f3167.m4541();
                C0558.m5465(c0200.m3675(3), c0561.f3167);
                c0561.f3165.m4541();
                C0558.m5465(c0200.m3675(4), c0561.f3165);
                if (!c0561.f3169.m3135()) {
                    throw new C0414(111, C0128.m3242(1548, 54, 1));
                }
                return;
            }
            C0190 c0191 = new C0190(this, this);
            c0191.f686 = str;
            c0191.m3631(true);
            try {
                c0191.m3648();
                this.f175 = 1;
                throw new C0414(116, C0128.m3242(1514, 34, 72));
            } catch (C0414 unused) {
                throw new C0414(101, C0128.m3242(1480, 34, 66));
            }
        }
        throw new C0414(116, C0128.m3242(1463, 17, 125));
    }

    public void m3166(int i) {
        String str;
        if (i == 0) {
            str = "";
        } else if (i == 1) {
            str = C0554.f3154;
        } else {
            throw new C0414(102, C0128.m3242(1762, 34, 48));
        }
        this.f159.f3169.f3230.m4531(str);
    }

    public void m3178(byte[] bArr) {
        this.f169.m4543(bArr);
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        int i;
        if (c0440.m4813(C0128.m3242(739, 19, 127))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f175).toString();
            }
            this.f175 = c0440.m4805();
        } else if (c0440.m4813(C0128.m3242(758, 10, 27))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f155).toString();
            }
            this.f155 = c0440.m4805();
        } else if (c0440.m4813(C0128.m3242(ViewUtils.EDGE_TO_EDGE_FLAGS, 15, 106))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f157).toString();
            }
            this.f157 = c0440.m4805();
        } else if (c0440.m4813(C0128.m3242(783, 28, 37))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f168).toString();
            }
            this.f168 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3242(811, 29, 5))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f151).toString();
            }
            this.f151 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3242(840, 20, 105))) {
            if (c0440.f2269) {
                StringBuilder sbM5891 = C0663.m5891("");
                C0387 c0387M5881 = C0663.m5881(this.f159.f3169.m5535());
                if (c0387M5881.m4533() <= 0) {
                    i = 0;
                } else {
                    if (!c0387M5881.m4552(C0554.f3154)) {
                        throw new C0414(102, C0128.m3242(1796, 34, 60));
                    }
                    i = 1;
                }
                return sbM5891.append(i).toString();
            }
            m3166(c0440.m4805());
        } else if (c0440.m4813(C0128.m3242(860, 10, 60))) {
            if (c0440.f2269) {
                return this.f159.f3169.f3229.m4571();
            }
            C0577.m5530(c0440.f2271, this.f159.f3169.f3229);
        } else if (c0440.m4813(C0128.m3242(870, 10, 71))) {
            if (c0440.f2269) {
                return this.f159.f3169.f3232.m4571();
            }
            C0577.m5530(c0440.f2271, this.f159.f3169.f3232);
        } else if (c0440.m4813(C0128.m3242(880, 16, 44))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f161).toString();
            }
            this.f161 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3242(896, 11, 37))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f165).toString();
            }
            this.f165 = c0440.m4805();
        } else {
            if (c0440.m4813(C0128.m3242(907, 9, 8)) && c0440.f2269) {
                return C0663.m5891("").append(this.f159.f3169.toString()).toString();
            }
            return super.mo3151(c0440);
        }
        return "";
    }

    public final void m3177(C0561 c0561) {
        byte[] bArrM5110;
        if (this.f161) {
            C0577 c0577 = c0561.f3169;
            if (c0577.f3233 == this.f160) {
                if (c0577.f3235 != this.f170) {
                    throw new C0414(115, C0128.m3242(1304, 53, 115));
                }
            } else {
                throw new C0414(115, C0128.m3242(1258, 46, 59));
            }
        }
        if (c0561.f3169.m5540()) {
            C0335 c0335 = this.f174;
            C0387 c0387 = new C0387();
            int i = c0561.f3169.f3233;
            C0427 c0427 = new C0427(null, new Object());
            c0427.f2221 = c0335;
            m3161(c0427, i);
            c0427.m4705(c0561.f3168.m4554());
            try {
                c0427.m4701();
                c0387.m4543(c0427.f2214.m4554());
            } catch (C0414 e) {
                if (i != 0) {
                    throw e;
                }
            }
            if (i == 0 && c0387.m4533() == 0) {
                C0558.m5501(c0387, c0561.f3169.m5534());
            }
            bArrM5110 = new C0462().m5110(c0387.m4554(), c0561);
        } else if (c0561.f3169.m5541()) {
            C0627 c0627 = new C0627();
            C0558.m5502(this.f164, this.f165, c0627);
            bArrM5110 = new C0462().m5110(c0627.m5725(), c0561);
        } else if (!c0561.f3169.m5548() && !c0561.f3169.m5542()) {
            if (c0561.f3169.m5549()) {
                String strM4571 = this.f152.m4571();
                C0577 c0578 = c0561.f3169;
                int i2 = c0578.f3236;
                if (i2 > 0) {
                    byte[] bArrM5725 = c0578.f3234.m5725();
                    if (bArrM5725 != null && bArrM5725.length > 0) {
                        C0387 c0388 = new C0387();
                        m3160(strM4571, bArrM5725, i2, c0561, c0388);
                        try {
                            byte[] bArrM5111 = new C0462().m5110(new C0668().m5898(c0388.m4554(), c0561.f3168.m4554(), 0, c0561.f3168.m4533()), c0561);
                            this.f155 = c0561.f3169.f3236;
                            bArrM5110 = bArrM5111;
                        } catch (Exception e2) {
                            throw new C0414(e2, 115, C0128.m3242(2458, 54, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR));
                        }
                    } else {
                        throw new C0414(105, C0128.m3242(2410, 48, 47));
                    }
                } else {
                    throw new C0414(105, C0128.m3242(2362, 48, 32));
                }
            } else if (c0561.f3169.m5544()) {
                C0335 c0336 = this.f174;
                C0648 c0648 = c0561.f3169.f3228;
                if (!c0648.m5859()) {
                    C0387 c0389 = new C0387();
                    C0648 c0648M3158 = m3158(c0336, false);
                    if (c0648M3158.m5858() == c0648.m5858()) {
                        m3162(c0648M3158, c0648, c0561, c0389);
                        C0387 c03810 = new C0387();
                        if (c0561.f3169.f3233 == 7) {
                            c03810.m4567(c0389);
                        } else {
                            try {
                                c03810.m4543(new C0668().m5898(c0389.m4554(), c0561.f3168.m4554(), 0, c0561.f3168.m4533()));
                            } catch (Exception e3) {
                                throw new C0414(e3, 115, C0128.m3242(2053, 43, 50));
                            }
                        }
                        bArrM5110 = new C0462().m5110(c03810.m4554(), c0561);
                    } else {
                        throw new C0414(110, C0128.m3242(2033, 20, 5));
                    }
                } else {
                    throw new C0414(115, C0128.m3242(1973, 60, 113));
                }
            } else {
                throw new C0414(104, C0128.m3242(1357, 32, 63));
            }
        } else {
            C0627 c0628 = new C0627();
            C0558.m5502(this.f164, this.f165, c0628);
            byte[] bArrM5726 = c0628.m5725();
            m3163(bArrM5726, c0561);
            C0387 c03811 = new C0387();
            if (c0561.f3169.m5542()) {
                byte[] bArrM4554 = c0561.f3169.f111.m4554();
                if (bArrM4554 != null && bArrM4554.length > 0) {
                    byte[] bArrM4555 = c0561.f3169.f115.m4554();
                    if (bArrM4555 != null && bArrM4555.length > 0) {
                        C0392 c0392 = new C0392(null, new Object());
                        c0392.f2041 = 6;
                        c0392.m4597();
                        c0392.f2007.m4543(bArrM5726);
                        c0392.m4597();
                        c0392.f2046.m4543(bArrM4554);
                        c0392.f2005.m4543(bArrM4555);
                        c0392.m4627((byte[]) null);
                        c0392.f2038 = 128;
                        c0392.m4600(c0561.f3168.m4554());
                        try {
                            c0392.m4601();
                            c03811.m4543(c0392.m4608());
                        } catch (C0414 e4) {
                            C0387 c03812 = new C0387();
                            c03812.m4563(C0128.m3242(2231, 18, 112));
                            c03812.m4563(C0414.m4672(e4));
                            throw new C0414(115, c03812.m4571());
                        }
                    } else {
                        throw new C0414(105, C0128.m3242(2183, 48, 82));
                    }
                } else {
                    throw new C0414(105, C0128.m3242(2136, 47, 15));
                }
            } else {
                try {
                    c03811.m4543(new C0668().m5898(bArrM5726, c0561.f3168.m4554(), 0, c0561.f3168.m4533()));
                } catch (Exception e5) {
                    throw new C0414(e5, 115, C0128.m3242(2249, 43, 27));
                }
            }
            bArrM5110 = new C0462().m5110(c03811.m4554(), c0561);
        }
        if (bArrM5110 != null) {
            try {
                this.f167.write(bArrM5110, 0, bArrM5110.length);
            } catch (IOException e6) {
                throw new C0414(e6, 112, C0128.m3242(1389, 19, 68));
            }
        }
    }

    public static void m3162(C0648 c0648, C0648 c0649, C0561 c0561, C0387 c0387) {
        int iM5534;
        byte[] bArrM4588;
        C0387 c0388 = new C0387();
        C0577 c0577 = c0561.f3169;
        int i = c0577.f3233;
        if (i == 7) {
            iM5534 = c0577.m5534();
            c0388.m4531(c0561.f3169.m5551());
        } else {
            if (i == 8) {
                iM5534 = 16;
            } else if (i == 9) {
                iM5534 = 24;
            } else {
                iM5534 = i == 10 ? 32 : 0;
            }
            c0388.m4531(c0561.f3169.m5537());
        }
        C0301 c0301 = new C0301();
        byte[] bArr = new byte[4];
        m3159(c0388.m4533(), bArr, 0);
        c0301.m4180(bArr);
        byte[] bArrM4554 = c0388.m4554();
        int iM4533 = c0388.m4533();
        if (iM4533 > 0) {
            c0301.m4181(bArrM4554, 0, iM4533);
        }
        byte[] bArrM4555 = c0561.f3169.f3229.m4554();
        byte[] bArrM4556 = c0561.f3169.f3232.m4554();
        C0301 c0302 = new C0301();
        byte[] bArr2 = new byte[4];
        m3159(bArrM4555.length, bArr2, 0);
        c0302.m4180(bArr2);
        if (bArrM4555 != null) {
            c0302.m4180(bArrM4555);
        }
        C0301 c0303 = new C0301();
        m3159(bArrM4556.length, bArr2, 0);
        c0303.m4180(bArr2);
        if (bArrM4556 != null) {
            c0303.m4180(bArrM4556);
        }
        byte[] bArr3 = new byte[4];
        m3159(iM5534 * 8, bArr3, 0);
        C0267 c0267 = new C0267(null, new Object());
        c0267.f1361.m4543(c0301.m4182());
        c0267.f1343.m4543(c0302.m4182());
        c0267.f1334.m4543(c0303.m4182());
        c0267.f1341.m4543(bArr3);
        c0267.f1338.m4543((byte[]) null);
        c0267.f1363 = 13;
        c0267.f1356 = c0648;
        c0267.f1331 = c0649;
        C0158 c0158 = new C0158();
        c0267.m3975();
        if (!c0267.f1331.m5859()) {
            c0158.m3445(c0267.f1331.f3629, false);
            try {
                if (c0267.f1363 == 13) {
                    bArrM4588 = c0267.f1332.m4589(c0158, c0267.f1320.m4571(), c0267.f1361.m4554(), c0267.f1343.m4554(), c0267.f1334.m4554(), c0267.f1341.m4554(), c0267.f1338.m4554());
                } else {
                    bArrM4588 = c0267.f1332.m4588(c0158, c0267.f1363, (c0267.f1363 == 12 ? c0267.f1340 : c0267.f1354).m4554(), (c0267.f1363 == 12 ? c0267.f1335 : c0267.f1364).m4554(), c0267.f1326.m4554());
                }
                c0267.f1322.m4543(bArrM4588);
                if (c0267.f1346) {
                    C0558.m5505(c0267.f1322.m4554(), c0267.f1322.m4533(), c0267.f1322);
                }
                c0387.m4537(c0267.f1322.m4554(), iM5534);
                return;
            } catch (C0537 e) {
                throw new C0414(e);
            }
        }
        throw new C0414(102, C0164.m3494(549, 26, 71));
    }

    public static C0648 m3158(C0335 c0335, boolean z) {
        try {
            C0648 c0648M5487 = C0558.m5487(c0335);
            if (z || !c0648M5487.m5856()) {
                return c0648M5487;
            }
            throw new C0414(110, C0128.m3242(1899, 34, 15));
        } catch (C0414 unused) {
            throw new C0414(110, C0128.m3242(1868, 31, 32));
        }
    }

    public static void m3163(byte[] bArr, C0561 c0561) {
        int i;
        int i2 = c0561.f3169.f3233;
        if (i2 == 3 || i2 == 11) {
            i = 128;
        } else {
            i = (i2 == 4 || i2 == 12) ? 192 : 256;
        }
        if (bArr == null || bArr.length != i / 8) {
            throw new C0414(106, C0128.m3242(2292, 17, 47));
        }
    }

    public static void m3160(String str, byte[] bArr, int i, C0561 c0561, C0387 c0387) {
        String strM3242;
        int i2;
        C0387 c0388 = new C0387();
        c0388.m4568(C0259.m3883(c0561.f3169.m5537()));
        c0388.m4556((byte) 0);
        c0388.m4569(bArr, bArr.length);
        int i3 = c0561.f3169.f3233;
        if (i3 == 14) {
            strM3242 = C0128.m3242(2512, 10, 3);
            i2 = 128;
        } else if (i3 == 15) {
            strM3242 = C0128.m3242(2522, 10, 97);
            i2 = 192;
        } else {
            strM3242 = C0128.m3242(2532, 10, 4);
            i2 = 256;
        }
        try {
            c0387.m4543(C0308.m4253(i, strM3242, str, c0388.m4554(), i2 / 8));
        } catch (C0537 e) {
            throw new C0414(e, 114, C0128.m3242(2542, 57, 5));
        }
    }

    public static void m3159(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0170 interfaceC0170 = this.f163;
        if (interfaceC0170 != null) {
            interfaceC0170.m3515(i, str);
        }
    }
}
