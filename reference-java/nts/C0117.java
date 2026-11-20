package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.classic.pattern.CallerDataConverter;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.StringTokenizer;
import java.util.Vector;

public class C0117 extends C0610 {

    public char f201;

    public C0185 f202;

    public String f203;

    public String f204;

    public C0387 f205;

    public boolean f206;

    public int f207;

    public boolean f208;

    public int f209;

    public int f210;

    public boolean f211;

    public boolean f212;

    public int f213;

    public int f214;

    public boolean f215;

    public C0143 f216;

    public boolean f217;

    public boolean f218;

    public int f219;

    public int f220;

    public boolean f221;

    public boolean f222;

    public C0337 f223;

    public boolean f224;

    public boolean f225;

    public int f226;

    public String f227;

    public C0185 f228;

    public String f229;

    public boolean f230;

    public boolean f231;

    public InterfaceC0518 f232;

    public boolean f233;

    public StringBuffer f234;

    public boolean f235;

    public static final String f200 = C0128.m3241(0, 4, 104);

    public static final int[] f199 = {8, 8, 8, 8, 8, 8, 8, 8, 8, 1, 1, 8, 1, 1, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 2, 4, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 2, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 8, 8, 8, 8, 8, 8, 8, 2, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 8, 8};

    public C0117(Object obj, Object obj2) {
        super(obj2);
        this.f216 = new C0143();
        this.f223 = null;
        this.f202 = null;
        this.f228 = null;
        this.f213 = 0;
        this.f226 = 0;
        this.f234 = null;
        this.f204 = "";
        this.f210 = 0;
        this.f219 = 0;
        this.f230 = false;
        this.f217 = false;
        this.f209 = 0;
        this.f215 = false;
        this.f212 = true;
        this.f201 = (char) 0;
        this.f224 = false;
        this.f206 = false;
        this.f211 = false;
        this.f221 = false;
        this.f233 = false;
        this.f231 = true;
        this.f208 = false;
        this.f235 = false;
        this.f222 = false;
        this.f218 = false;
        this.f227 = "";
        this.f220 = 0;
        this.f203 = "";
        this.f229 = "";
        this.f205 = new C0387();
        this.f207 = 0;
        this.f225 = true;
        this.f232 = null;
        if (obj instanceof InterfaceC0518) {
            this.f232 = (InterfaceC0518) obj;
        }
        m3203();
    }

    public final void m3194() throws C0414 {
        int i;
        C0337 c0337;
        int i2;
        String strM3212;
        int i3;
        int i4;
        int i5;
        int i6;
        InterfaceC0611 interfaceC0611;
        int i7;
        char c;
        char cCharAt = this.f234.charAt(this.f213);
        int i8 = cCharAt < 128 ? f199[cCharAt] : 8;
        int i9 = this.f213;
        int i10 = i9 + 1;
        this.f213 = i10;
        switch (this.f226) {
            case 0:
                if (cCharAt != 65279) {
                    if (cCharAt == '(') {
                        this.f224 = true;
                        this.f214 = i10;
                    } else {
                        this.f213 = i9;
                    }
                    this.f226 = this.f207 != 2 ? 1 : 14;
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1 || i2 == 3) {
                            m3200();
                            this.f225 = false;
                            return;
                        } else {
                            if (i2 == 2) {
                                if (this.f229.length() == 0) {
                                    m3200();
                                    this.f226 = 15;
                                }
                                this.f225 = false;
                                return;
                            }
                            if (i2 == 0) {
                                m3200();
                                this.f226 = 12;
                                return;
                            }
                            return;
                        }
                    }
                    i = this.f207;
                    if (i == 1 && i != 3) {
                        if (i != 2 || i8 == 1) {
                            return;
                        }
                        this.f213--;
                        this.f226 = 15;
                        this.f225 = true;
                        return;
                    }
                    if (!this.f224 && cCharAt == ')') {
                        this.f226 = 12;
                        this.f225 = true;
                        return;
                    } else {
                        if (i8 != 1) {
                            this.f213--;
                            this.f226 = 1;
                            this.f225 = true;
                            c0337 = this.f223;
                            if (c0337 == null && c0337.f1815 == 0) {
                                this.f223 = null;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                return;
            case 1:
                while (i8 == 1) {
                    if (this.f213 >= this.f234.length()) {
                        return;
                    }
                    StringBuffer stringBuffer = this.f234;
                    int i11 = this.f213;
                    this.f213 = i11 + 1;
                    cCharAt = stringBuffer.charAt(i11);
                    i8 = cCharAt < 128 ? f199[cCharAt] : 8;
                }
                m3213(1);
                InterfaceC0518 interfaceC0518 = this.f232;
                if (interfaceC0518 != null && (interfaceC0611 = ((C0190) interfaceC0518).f674) != null) {
                }
                if (cCharAt == '[') {
                    m3219(true, 3);
                } else if (cCharAt != '{') {
                    this.f206 = true;
                    this.f214 = this.f213 - 1;
                    if (cCharAt == '\"') {
                        if (this.f215) {
                            C0185 c0185 = new C0185(this.f202, this.f214);
                            this.f202 = c0185;
                            c0185.f631 = 2;
                        }
                        this.f226 = 7;
                    } else {
                        if (i8 == 2) {
                            for (int i12 = 2; i8 == i12; i12 = 2) {
                                if (this.f213 >= this.f234.length()) {
                                    this.f213++;
                                    if (this.f215) {
                                        C0185 c0186 = new C0185(this.f202, this.f214);
                                        this.f202 = c0186;
                                        i6 = 3;
                                        c0186.f631 = 3;
                                        c0186.f633 = this.f213 - 1;
                                    } else {
                                        i6 = 3;
                                    }
                                    m3218(0, i6);
                                    this.f226 = 13;
                                } else {
                                    StringBuffer stringBuffer2 = this.f234;
                                    int i13 = this.f213;
                                    this.f213 = i13 + 1;
                                    cCharAt = stringBuffer2.charAt(i13);
                                    i8 = cCharAt < 128 ? f199[cCharAt] : 8;
                                }
                            }
                            if (this.f215) {
                                C0185 c0187 = new C0185(this.f202, this.f214);
                                this.f202 = c0187;
                                i6 = 3;
                                c0187.f631 = 3;
                                c0187.f633 = this.f213 - 1;
                            } else {
                                i6 = 3;
                            }
                            m3218(0, i6);
                            this.f226 = 13;
                        } else {
                            while (i8 != 1) {
                                if (this.f213 >= this.f234.length()) {
                                    this.f213++;
                                    strM3212 = m3212();
                                    if (strM3212.equals(C0128.m3241(391, 4, 87))) {
                                        i3 = 5;
                                    } else {
                                        i3 = 5;
                                        if (!strM3212.equals(C0128.m3241(395, 5, 4)) && !strM3212.equals(C0128.m3241(400, 4, 29))) {
                                            throw new C0414(10232, C0128.m3241(412, 20, 98));
                                        }
                                    }
                                    if (this.f215) {
                                        C0185 c0188 = new C0185(this.f202, this.f214);
                                        this.f202 = c0188;
                                        if (strM3212.equals(C0128.m3241(404, 4, 35))) {
                                            i5 = i3;
                                        } else {
                                            i5 = 4;
                                        }
                                        c0188.f631 = i5;
                                        this.f202.f633 = this.f213 - 1;
                                    }
                                    if (strM3212.equals(C0128.m3241(TSLocationManager.LOCATION_ERROR_TIMEOUT, 4, 94))) {
                                        i4 = i3;
                                    } else {
                                        i4 = 4;
                                    }
                                    m3218(0, i4);
                                    this.f226 = 13;
                                } else {
                                    StringBuffer stringBuffer3 = this.f234;
                                    int i14 = this.f213;
                                    this.f213 = i14 + 1;
                                    cCharAt = stringBuffer3.charAt(i14);
                                    i8 = cCharAt < 128 ? f199[cCharAt] : 8;
                                }
                            }
                            strM3212 = m3212();
                            if (strM3212.equals(C0128.m3241(391, 4, 87))) {
                                i3 = 5;
                                if (!strM3212.equals(C0128.m3241(395, 5, 4))) {
                                    throw new C0414(10232, C0128.m3241(412, 20, 98));
                                }
                            } else {
                                i3 = 5;
                            }
                            if (this.f215) {
                                C0185 c0189 = new C0185(this.f202, this.f214);
                                this.f202 = c0189;
                                if (strM3212.equals(C0128.m3241(404, 4, 35))) {
                                    i5 = i3;
                                } else {
                                    i5 = 4;
                                }
                                c0189.f631 = i5;
                                this.f202.f633 = this.f213 - 1;
                            }
                            if (strM3212.equals(C0128.m3241(TSLocationManager.LOCATION_ERROR_TIMEOUT, 4, 94))) {
                                i4 = i3;
                            } else {
                                i4 = 4;
                            }
                            m3218(0, i4);
                            this.f226 = 13;
                        }
                    }
                } else {
                    m3219(true, 2);
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 2:
            case 3:
            case 13:
            default:
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 4:
                while (i8 == 1) {
                    if (this.f213 >= this.f234.length()) {
                        return;
                    }
                    StringBuffer stringBuffer4 = this.f234;
                    int i15 = this.f213;
                    this.f213 = i15 + 1;
                    cCharAt = stringBuffer4.charAt(i15);
                    i8 = cCharAt < 128 ? f199[cCharAt] : 8;
                }
                this.f210 = 0;
                m3213(1);
                if (cCharAt == '\"') {
                    this.f226 = 6;
                } else {
                    if (cCharAt != '}') {
                        throw new C0414(10232, C0128.m3241(432, 20, 121));
                    }
                    this.f226 = 11;
                    this.f213--;
                    m3194();
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 5:
                while (i8 == 1) {
                    if (this.f213 >= this.f234.length()) {
                        return;
                    }
                    StringBuffer stringBuffer5 = this.f234;
                    int i16 = this.f213;
                    this.f213 = i16 + 1;
                    cCharAt = stringBuffer5.charAt(i16);
                    i8 = cCharAt < 128 ? f199[cCharAt] : 8;
                }
                this.f210 = 0;
                m3213(1);
                int i17 = this.f214 - 1;
                this.f214 = i17;
                if (this.f215) {
                    this.f202.f636 = i17;
                }
                if (i8 == 2) {
                    this.f226 = 8;
                } else if (cCharAt == '\"') {
                    this.f226 = 7;
                } else if (cCharAt == '[') {
                    m3219(true, 3);
                } else if (cCharAt == ']') {
                    this.f226 = 11;
                    this.f213--;
                    m3194();
                } else if (cCharAt != '{') {
                    this.f226 = 9;
                } else {
                    m3219(true, 2);
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 6:
                while (true) {
                    int i18 = this.f210;
                    if (i18 != 0) {
                        this.f210 = i18 - 1;
                        if (cCharAt == 'u') {
                            this.f210 = 4;
                        }
                    } else if (cCharAt == '\\') {
                        this.f210 = 1;
                    } else if (cCharAt == '\"') {
                        C0185 c01810 = this.f202;
                        if (c01810 != null) {
                            c01810.f635 = this.f219 == 0 ? m3212() : m3215(this.f234, this.f214, this.f213 - 1);
                        }
                        m3213(2);
                        this.f226 = 10;
                    }
                    if (this.f213 >= this.f234.length()) {
                        return;
                    }
                    StringBuffer stringBuffer6 = this.f234;
                    int i19 = this.f213;
                    this.f213 = i19 + 1;
                    cCharAt = stringBuffer6.charAt(i19);
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 7:
                while (true) {
                    int i20 = this.f210;
                    if (i20 != 0) {
                        this.f210 = i20 - 1;
                        if (cCharAt == 'u') {
                            this.f210 = 4;
                        }
                    } else if (cCharAt == '\\') {
                        this.f210 = 1;
                    } else if (cCharAt == '\"') {
                        this.f213++;
                        m3218(0, 2);
                        if (this.f206) {
                            int i21 = this.f213 - 1;
                            this.f213 = i21;
                            if (this.f215) {
                                this.f202.f633 = i21;
                            }
                            this.f226 = 13;
                        } else {
                            if (this.f221 && !this.f215 && this.f223.m4385().equals("[")) {
                                if (this.f208) {
                                    this.f223.m4384();
                                }
                                m3202("");
                            } else {
                                m3199(2);
                            }
                            this.f226 = 11;
                            int i22 = this.f213 - 1;
                            this.f213 = i22;
                            this.f214 = i22;
                        }
                    }
                    if (this.f213 >= this.f234.length()) {
                        return;
                    }
                    StringBuffer stringBuffer7 = this.f234;
                    int i23 = this.f213;
                    this.f213 = i23 + 1;
                    cCharAt = stringBuffer7.charAt(i23);
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 8:
                if ((i8 & 5) <= 0) {
                    if (i8 != 2) {
                        throw new C0414(10232, C0128.m3241(532, 20, 57));
                    }
                    while (this.f213 < this.f234.length()) {
                        StringBuffer stringBuffer8 = this.f234;
                        int i24 = this.f213;
                        this.f213 = i24 + 1;
                        cCharAt = stringBuffer8.charAt(i24);
                        i8 = cCharAt < 128 ? f199[cCharAt] : 8;
                        if (i8 != 2) {
                            this.f213--;
                        }
                    }
                    return;
                }
                m3218(0, 3);
                if (this.f221 && !this.f215 && this.f223.m4385().equals("[")) {
                    if (this.f208) {
                        this.f223.m4384();
                    }
                    m3202("");
                } else {
                    m3199(3);
                }
                this.f226 = 11;
                int i25 = this.f213 - 1;
                this.f213 = i25;
                this.f214 = i25;
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 9:
                if ((i8 & 5) > 0) {
                    String strM3213 = m3212();
                    if (strM3213.equalsIgnoreCase(C0128.m3241(552, 4, 14)) || strM3213.equalsIgnoreCase(C0128.m3241(556, 5, 32))) {
                        i7 = 4;
                    } else {
                        if (!strM3213.equalsIgnoreCase(C0128.m3241(561, 4, 9))) {
                            throw new C0414(10232, C0128.m3241(565, 20, 27));
                        }
                        i7 = 5;
                    }
                    m3218(0, i7);
                    if (this.f221 && !this.f215 && this.f223.m4385().equals("[")) {
                        if (this.f208) {
                            this.f223.m4384();
                        }
                        m3202("");
                    } else {
                        m3199(i7);
                    }
                    this.f226 = 11;
                    int i26 = this.f213 - 1;
                    this.f213 = i26;
                    this.f214 = i26;
                } else if ((i10 - this.f214) - 1 >= 5) {
                    throw new C0414(10232, C0128.m3241(585, 20, 87));
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 10:
                while (i8 == 1) {
                    if (this.f213 >= this.f234.length()) {
                        return;
                    }
                    StringBuffer stringBuffer9 = this.f234;
                    int i27 = this.f213;
                    this.f213 = i27 + 1;
                    cCharAt = stringBuffer9.charAt(i27);
                    i8 = cCharAt < 128 ? f199[cCharAt] : 8;
                }
                m3213(1);
                if (cCharAt != ':') {
                    throw new C0414(10232, C0128.m3241(452, 20, 80));
                }
                this.f226 = 5;
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 11:
                while (i8 == 1) {
                    if (this.f213 >= this.f234.length()) {
                        return;
                    }
                    StringBuffer stringBuffer10 = this.f234;
                    int i28 = this.f213;
                    this.f213 = i28 + 1;
                    cCharAt = stringBuffer10.charAt(i28);
                    i8 = cCharAt < 128 ? f199[cCharAt] : 8;
                }
                m3213(1);
                if (cCharAt == ',') {
                    C0143 c0143 = this.f216;
                    m3219(false, c0143.f327[c0143.f325 - 1]);
                } else if (cCharAt == ']') {
                    C0143 c0144 = this.f216;
                    int[] iArr = c0144.f327;
                    int i29 = c0144.f325 - 1;
                    c0144.f325 = i29;
                    if (iArr[i29] != 3) {
                        throw new C0414(10232, C0128.m3241(492, 20, 84));
                    }
                    if (this.f201 == '[') {
                        if (!this.f221) {
                            m3202("");
                        }
                        if (this.f215) {
                            this.f202 = this.f202.f634;
                        }
                    }
                    if (this.f221) {
                        if (!this.f215) {
                            this.f223.f1816 = 1;
                        }
                        m3202("]");
                        if (this.f215) {
                            m3199(1);
                        } else {
                            String strM4385 = this.f223.m4385();
                            if (!strM4385.equals("[")) {
                                if (this.f208 && this.f201 == '\"') {
                                    this.f223.m4384();
                                }
                                m3202(strM4385);
                            }
                        }
                    } else {
                        m3199(1);
                    }
                    if (this.f216.f325 == 0) {
                        this.f226 = 13;
                    }
                } else {
                    if (cCharAt != '}') {
                        throw new C0414(10232, C0128.m3241(512, 20, 117));
                    }
                    C0143 c0145 = this.f216;
                    int[] iArr2 = c0145.f327;
                    int i30 = c0145.f325 - 1;
                    c0145.f325 = i30;
                    if (iArr2[i30] != 2) {
                        throw new C0414(10232, C0128.m3241(472, 20, 52));
                    }
                    if (this.f215 && ((c = this.f201) == '{' || c == ',')) {
                        this.f202 = this.f202.f634;
                    }
                    if (this.f221) {
                        if (!this.f215) {
                            this.f223.f1816 = 0;
                        }
                        m3202("}");
                        if (this.f215) {
                            m3199(0);
                        } else {
                            String strM4386 = this.f223.m4385();
                            if (!strM4386.equals("[")) {
                                m3202(strM4386);
                            }
                        }
                    } else {
                        m3199(0);
                    }
                    if (this.f216.f325 == 0) {
                        this.f226 = 13;
                    }
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 12:
                if (this.f224 && cCharAt == ')') {
                    this.f224 = false;
                } else if (!this.f211 && i8 != 1) {
                    throw new C0414(10232, C0128.m3241(640, 52, 9));
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 14:
                if (this.f205.m4533() == 0 && i8 == 1) {
                    return;
                }
                if (this.f205.m4533() < this.f203.length()) {
                    if (cCharAt != this.f203.charAt(this.f205.m4533())) {
                        throw new C0414(10232, C0128.m3241(354, 37, 85));
                    }
                    this.f205.m4547(cCharAt);
                }
                if (this.f205.m4533() == this.f203.length()) {
                    this.f205.m4541();
                    this.f226 = 1;
                    if (this.f203.length() == 0) {
                        this.f213--;
                    }
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 15:
                if (this.f205.m4533() < this.f229.length()) {
                    if (cCharAt != this.f229.charAt(this.f205.m4533())) {
                        throw new C0414(10232, C0128.m3241(TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 35, 45));
                    }
                    this.f205.m4547(cCharAt);
                    if (this.f205.m4533() == this.f229.length()) {
                        m3200();
                    }
                } else if (i8 != 1) {
                    this.f205.m4541();
                    this.f225 = true;
                    this.f213--;
                    if (this.f224 && cCharAt == ')') {
                        this.f226 = 12;
                    } else {
                        this.f226 = 14;
                        C0337 c0338 = this.f223;
                        if (c0338 != null && c0338.f1815 == 0) {
                            this.f223 = null;
                        }
                    }
                }
                this.f201 = cCharAt;
                if (this.f226 == 13) {
                    if (this.f225) {
                        i2 = this.f207;
                        if (i2 != 1) {
                            break;
                        }
                        m3200();
                        this.f225 = false;
                        return;
                    }
                    i = this.f207;
                    if (i == 1) {
                        break;
                    }
                    if (!this.f224) {
                    }
                    if (i8 != 1) {
                        this.f213--;
                        this.f226 = 1;
                        this.f225 = true;
                        c0337 = this.f223;
                        if (c0337 == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                return;
        }
    }

    public void m3195(int i) {
        if (i < 0 || i > 3) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3241(21, 26, 80));
        }
        if (this.f211 && i != 0) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3241(47, 75, 33));
        }
        this.f207 = i;
    }

    public void m3197(int i) {
        this.f219 = i;
        this.f230 = (i & 1) == 1;
        this.f217 = (i & 2) == 2;
    }

    public final void m3199(int i) {
        if (!this.f215) {
            C0337 c0337 = this.f223;
            c0337.f1816 = i;
            m3202(c0337.m4385());
            return;
        }
        C0185 c0185 = this.f202;
        c0185.f633 = this.f213;
        c0185.f631 = i;
        m3196(c0185.f635);
        C0185 c0186 = this.f202;
        C0185 c0187 = c0186.f634;
        if (c0187 != null) {
            c0187.m3608(c0186);
            this.f202 = this.f202.f634;
        }
    }

    public void m3200() {
        InterfaceC0611 interfaceC0611;
        C0445 c0445;
        boolean z;
        InterfaceC0518 interfaceC0518 = this.f232;
        if (interfaceC0518 == null || (interfaceC0611 = ((C0190) interfaceC0518).f674) == null || !(z = (c0445 = (C0445) interfaceC0611).f2480) || !z) {
            return;
        }
        try {
            c0445.m4882();
        } catch (C0414 e) {
            c0445.m4312((Exception) e);
            throw e;
        }
    }

    public void m3201(String str) throws C0414 {
        boolean zM3210 = m3210(str);
        if (str == null || str.equals("")) {
            return;
        }
        if (!str.equals(zM3210 ? "@" : ".") && !m3221(str, Boolean.valueOf(zM3210))) {
            throw new C0414(10233, C0128.m3241(SyslogConstants.LOG_LOCAL1, 14, 80));
        }
    }

    public final void m3202(String str) {
        if (!this.f215 && this.f223.f1815 > 0) {
            if (this.f221) {
                if (this.f235) {
                    m3196(str);
                }
                String strM4385 = this.f223.m4385();
                if (strM4385.equals(str) || ((str.equals("]") && strM4385.equals("[")) || (str.equals("}") && (strM4385.equals("{") || !strM4385.equals("["))))) {
                    this.f223.m4383();
                }
            } else {
                if (this.f235) {
                    m3196(str);
                }
                this.f223.m4383();
            }
            if (this.f218) {
                if (!str.equals("]") && !str.equals("}")) {
                    return;
                }
                boolean zEquals = str.equals("]");
                this.f220 = zEquals ? 1 : 0;
                C0337 c0337 = this.f223;
                c0337.f1816 = zEquals ? 1 : 0;
                String strM4386 = c0337.m4385();
                if (strM4386.equals("[") || strM4386.equals("{")) {
                    strM4386 = "";
                }
                this.f227 = strM4386;
            }
        }
        if (this.f235) {
            return;
        }
        m3196(str);
    }

    public final void m3203() {
        this.f201 = (char) 0;
        this.f210 = 0;
        this.f213 = 0;
        this.f226 = 0;
        this.f224 = false;
        this.f206 = false;
        this.f216.f325 = 0;
        this.f223 = null;
        this.f214 = 1;
        this.f234 = new StringBuffer();
        this.f202 = null;
        this.f228 = null;
        this.f205.m4541();
        m4307(C0128.m3241(4, 5, 38));
    }

    public int m3204() {
        if (!this.f215) {
            return this.f223.f1816;
        }
        C0185 c0185 = this.f228;
        if (c0185 != null) {
            return c0185.f631;
        }
        C0185 c0186 = this.f202;
        if (c0186 != null) {
            return c0186.f631;
        }
        throw new C0414(10233, C0128.m3241(122, 14, 86));
    }

    public boolean m3206(String str) {
        boolean zM3210 = m3210(str);
        if (str != null && !str.equals("")) {
            if (str.equals(zM3210 ? "@" : ".") || this.f202 == null) {
                return false;
            }
            return m3221(str, Boolean.valueOf(zM3210));
        }
        return false;
    }

    public String m3207() {
        C0185 c0185;
        int i;
        C0185 c0186 = this.f228;
        if (c0186 == null) {
            return "";
        }
        return (!this.f222 || c0186.f628.length() > 0 || (i = (c0185 = this.f228).f636) < c0185.f629) ? this.f228.f628.toString() : this.f234.substring(i, c0185.f633);
    }

    public final void m3208(String str) {
        InterfaceC0611 interfaceC0611;
        if (!this.f215) {
            C0337 c0337 = this.f223;
            int i = c0337.f1815;
            int i2 = c0337.f1818;
            if (i == i2) {
                c0337.f1818 = i2 * 2;
                String[] strArr = new String[c0337.f1818];
                System.arraycopy(c0337.f1820, 0, strArr, 0, i);
                c0337.f1820 = strArr;
                int[] iArr = new int[c0337.f1818];
                System.arraycopy(c0337.f1819, 0, iArr, 0, c0337.f1815);
                c0337.f1819 = iArr;
                int[] iArr2 = new int[c0337.f1818];
                System.arraycopy(c0337.f1817, 0, iArr2, 0, c0337.f1815);
                c0337.f1817 = iArr2;
            }
            int[] iArr3 = c0337.f1817;
            int i3 = c0337.f1815;
            iArr3[i3] = iArr3[i3] + 1;
            c0337.f1820[i3] = str;
            c0337.f1819[i3] = 0;
            c0337.f1815 = i3 + 1;
            if (this.f208) {
                C0337 c0338 = this.f223;
                c0338.f1819[c0338.f1815 - 1] = str.equals("[") ? -1 : 0;
            }
            if (this.f218) {
                if (!str.equals("{") && !str.equals("[")) {
                    return;
                }
                boolean zEquals = str.equals("[");
                this.f220 = zEquals ? 1 : 0;
                C0337 c0339 = this.f223;
                c0339.f1816 = zEquals ? 1 : 0;
                String str2 = c0339.f1820[c0339.f1815 - 2];
                if (str2.equals("{") || str2.equals("[")) {
                    str2 = "";
                }
                this.f227 = str2;
            }
        }
        InterfaceC0518 interfaceC0518 = this.f232;
        if (interfaceC0518 == null || (interfaceC0611 = ((C0190) interfaceC0518).f674) == null) {
            return;
        }
        C0445 c0445 = (C0445) interfaceC0611;
        if (c0445.f2480) {
            try {
                c0445.m4961(str);
            } catch (C0414 e) {
                c0445.m4312((Exception) e);
                throw e;
            }
        }
    }

    public Vector m3209() {
        C0185 c0185 = this.f228;
        return c0185 == null ? new Vector() : c0185.m3605();
    }

    public final boolean m3210(String str) {
        int iIndexOf;
        int i;
        if (this.f209 == 2) {
            return true;
        }
        return !C0259.m3856(str) && (str.charAt(0) == '$' || (str.charAt(0) != '/' && ((str.indexOf("['") >= 0 && str.indexOf("']") > 0) || ((iIndexOf = str.indexOf(46)) > 0 && str.length() > (i = iIndexOf + 1) && str.charAt(i) != '.' && str.charAt(i) != '/'))));
    }

    public void m3211() throws C0414 {
        m3203();
        this.f207 = 0;
        this.f225 = true;
        this.f204 = "";
        m4312((Exception) null);
    }

    public final String m3212() {
        return this.f234.substring(this.f214, this.f213 - 1);
    }

    public void m3214(String str) throws C0414 {
        if (this.f231) {
            this.f234.append(str);
        } else {
            this.f234.delete(0, this.f214 - 1);
            this.f214 = 1;
            this.f213 = this.f234.length();
            this.f234.append(str);
        }
        int length = str.length() + this.f213;
        while (length > this.f213) {
            m3194();
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        if (!c0440.m4813(C0128.m3241(9, 12, 26))) {
            return super.mo3151(c0440);
        }
        if (c0440.f2269) {
            return C0663.m5891("").append(this.f231).toString();
        }
        this.f231 = c0440.m4809();
        return "";
    }

    public boolean m3198(String str) {
        boolean zM3210 = m3210(str);
        if (str != null && !str.equals("")) {
            if (!str.equals(zM3210 ? "@" : ".") && this.f202 != null && m3217(str, zM3210) != null) {
                return true;
            }
        }
        return false;
    }

    public void m3196(String str) {
        InterfaceC0611 interfaceC0611;
        InterfaceC0518 interfaceC0518 = this.f232;
        if (interfaceC0518 == null || (interfaceC0611 = ((C0190) interfaceC0518).f674) == null) {
            return;
        }
        C0445 c0445 = (C0445) interfaceC0611;
        if (c0445.f2480) {
            try {
                c0445.m4828(str);
            } catch (C0414 e) {
                c0445.m4312((Exception) e);
                if (!c0445.f2514) {
                    throw e;
                }
            }
        }
    }

    public static String m3192(String str) {
        StringBuilder sb = new StringBuilder();
        C0387 c0387M5881 = C0663.m5881(str);
        c0387M5881.m4531(c0387M5881.m4571().trim());
        if (c0387M5881.m4533() == 0) {
            return c0387M5881.m4571();
        }
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (true) {
            if (i >= c0387M5881.m4533()) {
                z = true;
                break;
            }
            char cM4546 = c0387M5881.m4546(i);
            if (cM4546 == '-') {
                z2 = true;
            } else if (cM4546 != '0') {
                if (cM4546 == '.' || cM4546 == 'e' || cM4546 == 'E') {
                    i--;
                }
                if (i >= 0) {
                    break;
                }
                i = 0;
                break;
            }
            i++;
        }
        if (z) {
            sb.append("0");
            return sb.toString();
        }
        if (z2) {
            sb.append(CoreConstants.DASH_CHAR);
        }
        sb.append(c0387M5881.m4538(i));
        return sb.toString();
    }

    public void m3205() throws C0414 {
        int i = this.f226;
        if (i == 0) {
            return;
        }
        if (this.f215 && this.f202 == null) {
            throw new C0414(10234, C0128.m3241(206, 61, 119));
        }
        int i2 = this.f207;
        if (i2 == 0 && i != 12) {
            throw new C0414(10232, C0128.m3241(267, 29, 19));
        }
        if ((i2 == 0 || i2 == 3) && i != 12 && i != 13) {
            throw new C0414(10232, C0128.m3241(296, 29, 6));
        }
        if (i2 == 2 && i != 12 && i != 15) {
            throw new C0414(10232, C0128.m3241(325, 29, 101));
        }
    }

    public boolean m3221(String str, Boolean bool) {
        if (str != null && !str.equals("")) {
            if (!str.equals(bool.booleanValue() ? "@" : ".")) {
                if (this.f202 != null) {
                    C0185 c0185M3217 = m3217(str, bool.booleanValue());
                    if (c0185M3217 != null) {
                        this.f228 = c0185M3217;
                        if (this.f212) {
                            this.f204 = bool.booleanValue() ? c0185M3217.m3603() : c0185M3217.m3601();
                        } else {
                            this.f204 = str;
                        }
                    }
                    return c0185M3217 != null;
                }
                throw new C0414(10234, C0128.m3241(150, 56, SyslogConstants.LOG_CLOCK));
            }
        }
        return false;
    }

    public final void m3213(int i) {
        InterfaceC0611 interfaceC0611;
        InterfaceC0611 interfaceC0612;
        if (i == 0) {
            int i2 = this.f213;
            int i3 = this.f214;
            if (i2 - i3 > 1) {
                String strM3212 = this.f219 == 0 ? m3212() : m3215(this.f234, i3, i2 - 1);
                InterfaceC0518 interfaceC0518 = this.f232;
                if (interfaceC0518 != null && (interfaceC0611 = ((C0190) interfaceC0518).f674) != null) {
                    C0445 c0445 = (C0445) interfaceC0611;
                    if (c0445.f2480) {
                        try {
                            c0445.m4977(strM3212);
                        } catch (C0414 e) {
                            c0445.m4312((Exception) e);
                            throw e;
                        }
                    }
                }
                C0185 c0185 = this.f202;
                if (c0185 != null) {
                    c0185.f628.append(strM3212);
                    if (this.f222 && this.f202.f628.length() == 0) {
                        this.f202.f636 = 0;
                    }
                }
            }
        } else if (i != 1) {
            if (i == 2) {
                m3208(m3212());
            }
        } else if (this.f213 - this.f214 > 1) {
            String strM3213 = m3212();
            InterfaceC0518 interfaceC0519 = this.f232;
            if (interfaceC0519 != null && (interfaceC0612 = ((C0190) interfaceC0519).f674) != null) {
                ((C0445) interfaceC0612).m4971(strM3213);
            }
        }
        this.f214 = this.f213;
    }

    public C0185 m3217(String str, boolean z) {
        C0185 c0185 = this.f228;
        if (z) {
            C0140 c0140 = new C0140();
            Vector<String> vector = new Vector<>();
            int length = str.length();
            if (length > 0) {
                char c = '0';
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt != '\'') {
                        if (cCharAt != '.') {
                            if (cCharAt == '[') {
                                if (i - i2 > 0) {
                                    vector.add(C0259.m3889(str, i2, i));
                                }
                                i2 = i;
                            } else if (cCharAt == ']') {
                                if (c == '\'') {
                                    vector.add(C0259.m3889(str, i2 + 2, i - 1));
                                } else {
                                    vector.add(C0259.m3889(str, i2, i + 1));
                                }
                            }
                        } else if (c == '.') {
                            vector.add(CallerDataConverter.DEFAULT_RANGE_DELIMITER);
                        } else if (i - i2 > 0) {
                            vector.add(C0259.m3889(str, i2, i));
                        }
                        i2 = i + 1;
                    } else {
                        for (int i3 = i + 1; i3 < length; i3++) {
                            if (str.charAt(i3) == '\'') {
                                i = i3;
                                break;
                            }
                        }
                    }
                    i++;
                    c = cCharAt;
                }
                if (i2 < length) {
                    vector.add(C0259.m3888(str, i2));
                }
            }
            c0140.f318 = vector;
            c0140.f317 = 0;
            if (str.startsWith("$") || this.f228 == null) {
                c0185 = this.f202;
            }
            return (!c0140.m3283() || c0185 == null) ? c0185 : c0185.m3607(c0140);
        }
        boolean z2 = str.startsWith("/") || this.f228 == null;
        StringTokenizer stringTokenizer = new StringTokenizer(str, "/");
        if (z2) {
            c0185 = this.f202;
        }
        return (!stringTokenizer.hasMoreTokens() || c0185 == null) ? c0185 : c0185.m3606(stringTokenizer, z2, this.f233);
    }

    public void m3220(char[] cArr, int i, int i2) throws C0414 {
        if (cArr == null || i < 0 || i2 <= 0) {
            return;
        }
        if (i + i2 > cArr.length) {
            i2 = cArr.length - i;
        }
        if (this.f231) {
            this.f234.append(cArr, i, i2);
        } else {
            this.f234.delete(0, this.f214 - 1);
            if (this.f234.capacity() < this.f234.length() + i2) {
                StringBuffer stringBuffer = this.f234;
                stringBuffer.ensureCapacity(stringBuffer.length() + i2 + 256);
            }
            this.f214 = 1;
            this.f213 = this.f234.length();
            this.f234.append(cArr, i, i2);
        }
        int i3 = this.f213 + i2;
        while (i3 > this.f213) {
            m3194();
        }
    }

    public final String m3216(C0185 c0185, String str) {
        if (c0185 == null) {
            return "";
        }
        C0387 c0387 = new C0387();
        if (str != null) {
            if (c0185.f634 != null) {
                c0387.m4563("\r\n");
            }
            c0387.m4563(str);
        }
        C0185 c0186 = c0185.f634;
        if (c0186 != null && c0186.f631 == 0 && c0185.f635.length() > 0) {
            c0387.m4563(C0663.m5891("\"").append(c0185.f635).append("\":").toString());
        }
        if (str != null && c0185.f634 != null && c0185.f635.length() > 0) {
            c0387.m4563(" ");
        }
        int i = c0185.f631;
        if (i == 0) {
            c0387.m4563("{");
            for (C0185 c0187 = c0185.f630; c0187 != null; c0187 = c0187.f627) {
                c0387.m4563(m3216(c0187, str == null ? null : C0663.m5880(str, TSLog.TAB)));
                c0387.m4563(",");
            }
            if (c0185.f632 > 0) {
                c0387.m4561(0, c0387.m4533() - 1);
            }
            if (str != null) {
                c0387.m4563("\r\n" + str);
            }
            c0387.m4563("}");
        } else if (i == 1) {
            c0387.m4563("[");
            for (C0185 c0188 = c0185.f630; c0188 != null; c0188 = c0188.f627) {
                c0387.m4563(m3216(c0188, str == null ? null : C0663.m5880(str, TSLog.TAB)));
                c0387.m4563(",");
            }
            if (c0185.f632 > 0) {
                c0387.m4561(0, c0387.m4533() - 1);
            }
            if (str != null) {
                c0387.m4563("\r\n" + str);
            }
            c0387.m4563("]");
        } else if (i == 2 || i == 3) {
            c0387.m4563(c0185.m3602());
        } else if (i == 4) {
            c0387.m4563(C0128.m3241(1314, 4, 16).equals(c0185.m3602()) ? C0128.m3241(1318, 4, 15) : C0128.m3241(1322, 5, 73));
        } else if (i == 5) {
            c0387.m4563(C0128.m3241(1327, 4, 67));
        }
        return c0387.m4571();
    }

    public final String m3215(StringBuffer stringBuffer, int i, int i2) {
        if (this.f230) {
            if (i < i2 && stringBuffer.charAt(i) == '\"') {
                i++;
            }
            if (i < i2 && stringBuffer.charAt(i2 - 1) == '\"') {
                i2--;
            }
        }
        if (i2 - i < 1) {
            return "";
        }
        if (!this.f217) {
            return stringBuffer.substring(i, i2);
        }
        int i3 = i;
        while (true) {
            if (i3 >= i2) {
                i3 = -1;
                break;
            }
            if ('\\' == stringBuffer.charAt(i3)) {
                break;
            }
            i3++;
        }
        if (i3 < 0) {
            return stringBuffer.substring(i, i2);
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        while (i3 >= 0) {
            if (i < i3) {
                stringBuffer2.append((CharSequence) stringBuffer, i, i3);
            }
            int i4 = i3 + 1;
            int i5 = i3 + 2;
            if (i4 >= i2) {
                stringBuffer2.append('\\');
                i = i5;
                break;
            }
            char cCharAt = stringBuffer.charAt(i4);
            if (cCharAt == '\"' || cCharAt == '/' || cCharAt == '\\') {
                stringBuffer2.append(cCharAt);
            } else if (cCharAt == 'b') {
                stringBuffer2.append('\b');
            } else if (cCharAt == 'f') {
                stringBuffer2.append('\f');
            } else if (cCharAt == 'n') {
                stringBuffer2.append('\n');
            } else if (cCharAt == 'r') {
                stringBuffer2.append('\r');
            } else if (cCharAt != 't') {
                if (cCharAt == 'u' && i3 + 5 < i2) {
                    int i6 = i3 + 4;
                    byte[] bArr = {(byte) (Integer.parseInt(stringBuffer.substring(i5, i6), 16) & 255), (byte) (Integer.parseInt(stringBuffer.substring(i6, i3 + 6), 16) & 255)};
                    stringBuffer2.append((char) (((bArr[0] & 255) << 8) | (bArr[1] & 255)));
                    i = i3 + 6;
                } else {
                    stringBuffer2.append('\\');
                    stringBuffer2.append(cCharAt);
                }
                i3 = i;
                while (true) {
                    if (i3 < i2) {
                        i3 = -1;
                        break;
                    }
                    if ('\\' == stringBuffer.charAt(i3)) {
                        break;
                    }
                    i3++;
                }
            } else {
                stringBuffer2.append('\t');
            }
            i = i5;
            i3 = i;
            while (true) {
                if (i3 < i2) {
                    i3 = -1;
                    break;
                    break;
                }
                if ('\\' == stringBuffer.charAt(i3)) {
                    break;
                    break;
                }
                i3++;
            }
        }
        if (i < i2) {
            stringBuffer2.append((CharSequence) stringBuffer, i, i2);
        }
        return stringBuffer2.toString();
    }

    public final void m3219(boolean z, int i) {
        if (z) {
            C0143 c0143 = this.f216;
            int[] iArr = c0143.f327;
            int i2 = c0143.f325;
            c0143.f325 = i2 + 1;
            iArr[i2] = i;
            int i3 = c0143.f325;
            int i4 = c0143.f326;
            if (i3 == i4) {
                c0143.f326 = i4 * 2;
                int[] iArr2 = new int[c0143.f326];
                System.arraycopy(iArr, 0, iArr2, 0, i3);
                c0143.f327 = iArr2;
            }
        }
        if (this.f215) {
            C0185 c0185 = this.f202;
            if (c0185 == null) {
                String str = f200;
                this.f202 = new C0185(c0185, str, this.f213 - 1);
                m3208(str);
            }
        } else if (this.f223 == null) {
            this.f223 = new C0337();
            m3208(f200);
        }
        if (i == 2) {
            if (this.f215) {
                this.f202 = new C0185(this.f202, this.f213);
            }
            if (this.f221 && z) {
                if (!this.f215 && this.f208 && this.f223.m4385().equals("[")) {
                    this.f223.m4384();
                }
                m3208("{");
            }
            this.f226 = 4;
        } else {
            if (this.f215) {
                this.f202 = new C0185(this.f202, "", this.f213);
            }
            if (!this.f221) {
                m3208("");
            } else if (z) {
                if (!this.f215 && this.f208 && this.f223.m4385().equals("[")) {
                    this.f223.m4384();
                }
                m3208("[");
            }
            this.f226 = 5;
        }
        this.f214 = this.f213;
    }

    public final void m3218(int i, int i2) {
        if (!this.f215 && i == 0) {
            C0337 c0337 = this.f223;
            c0337.f1816 = i2;
            if (this.f218) {
                this.f220 = i2;
                String strM4385 = c0337.m4385();
                if (strM4385.equals("{") || strM4385.equals("[")) {
                    strM4385 = "";
                }
                this.f227 = strM4385;
            }
        }
        m3213(i);
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0611 interfaceC0611;
        InterfaceC0518 interfaceC0518 = this.f232;
        if (interfaceC0518 == null || (interfaceC0611 = ((C0190) interfaceC0518).f674) == null) {
            return;
        }
        interfaceC0611.m5635(i, str);
    }

    public static String m3193(String str, boolean z, boolean z2) {
        StringBuilder sb = new StringBuilder();
        String strM3241 = C0128.m3241(1476, 16, 63);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"' || cCharAt == '\\' || (z2 && cCharAt == '/')) {
                sb.append('\\');
            }
            if (cCharAt == '\b') {
                sb.append("\\b");
            } else if (cCharAt == '\f') {
                sb.append("\\f");
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\t') {
                sb.append("\\t");
            } else {
                int i2 = 65535 & cCharAt;
                if (i2 >= 32 && (!z || i2 <= 126 || i2 >= 255)) {
                    sb.append(cCharAt);
                } else {
                    sb.append("\\u00");
                    sb.append(strM3241.charAt((cCharAt & 255) >> 4));
                    sb.append(strM3241.charAt(cCharAt & 15));
                }
            }
        }
        return sb.toString();
    }
}
