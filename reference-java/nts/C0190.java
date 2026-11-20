package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.internal.ws.WebSocketProtocol;

public class C0190 extends C0610 implements InterfaceC0518 {

    public InterfaceC0611 f674;

    public StringBuilder f675;

    public InputStream f676;

    public boolean f677;

    public boolean f678;

    public C0174 f679;

    public String f680;

    public OutputStream f681;

    public boolean f682;

    public C0117 f683;

    public String f684;

    public boolean f685;

    public String f686;

    public boolean f687;

    public String f688;

    public boolean f689;

    public boolean f690;

    public C0190(Object obj, Object obj2) {
        super(obj2);
        this.f686 = "";
        this.f675 = new StringBuilder();
        this.f688 = "";
        this.f680 = "";
        this.f687 = false;
        this.f690 = false;
        this.f676 = null;
        this.f681 = null;
        this.f678 = true;
        this.f685 = true;
        this.f689 = false;
        this.f684 = "";
        this.f677 = true;
        this.f682 = true;
        this.f679 = new C0174();
        if (obj instanceof InterfaceC0611) {
            this.f674 = (InterfaceC0611) obj;
        }
        this.f683 = new C0117(this, this.f1721);
        this.f1725.m5717(C0128.m3249(0, 5, 71));
        try {
            m3643();
        } catch (C0414 unused) {
        }
    }

    public String m3630() {
        return this.f683.m3207();
    }

    public void m3631(boolean z) {
        this.f683.f215 = z;
    }

    public int m3632() {
        return this.f683.m3204();
    }

    public void m3633(boolean z) {
        this.f683.f222 = z;
    }

    public String m3634() {
        C0117 c0117 = this.f683;
        if (c0117.f218) {
            return c0117.f227;
        }
        C0185 c0185 = c0117.f228;
        return c0185 == null ? "" : c0185.f635;
    }

    public void m3635() throws C0414 {
        m3646("{", 0);
    }

    public boolean m3636(String str) {
        return this.f683.m3206(str);
    }

    public void m3637(String str) throws C0414 {
        this.f683.m3201(str);
    }

    public String m3638(int i) {
        return this.f683.f223.f1820[i];
    }

    public void m3639() throws C0414 {
        this.f683.m3205();
        C0174 c0174 = this.f679;
        if ((c0174.f572 != null || c0174.f573.size() != 0 || c0174.f571 != 0) && this.f679.m3539() != 4) {
            throw new C0414(10232, C0128.m3249(132, 70, 99));
        }
        OutputStream outputStream = this.f681;
        if (outputStream != null) {
            try {
                outputStream.flush();
            } catch (IOException e) {
                throw new C0414(304, C0414.m4672(e));
            }
        }
    }

    public String m3640() {
        return this.f683.f204;
    }

    public final void m3641(String str) {
        InterfaceC0611 interfaceC0611 = this.f674;
        if (interfaceC0611 != null) {
            ((C0445) interfaceC0611).m4835(str);
        }
        OutputStream outputStream = this.f681;
        if (outputStream == null) {
            this.f675.append(str);
            return;
        }
        try {
            String str2 = this.f1725.f3459;
            if (str2 == null) {
                str2 = "";
            }
            outputStream.write(C0259.m3903(str, str2));
        } catch (IOException e) {
            throw new C0414(305, C0128.m3249(1084, 19, 17) + this.f680 + C0128.m3249(1103, 3, 123) + C0414.m4672(e));
        }
    }

    public void m3642() throws C0414 {
        this.f683.m3205();
    }

    public void m3643() throws C0414 {
        this.f684 = "";
        this.f686 = "";
        this.f675 = new StringBuilder();
        this.f688 = "";
        this.f680 = "";
        this.f687 = false;
        this.f690 = false;
        this.f683.m3211();
        C0174 c0174 = this.f679;
        c0174.f573.clear();
        c0174.f572 = null;
        c0174.f571 = 0;
    }

    public void m3644() throws C0414 {
        m3646("]", 3);
    }

    public void m3645() throws C0414 {
        m3646("[", 2);
    }

    public final void m3646(String str, int i) {
        OutputStream outputStream;
        boolean z = i >= 5 && i <= 9;
        int iM3539 = this.f679.m3539();
        if (iM3539 != 0) {
            if (iM3539 != 1) {
                if (iM3539 != 2) {
                    if (iM3539 != 3) {
                        if (iM3539 == 4) {
                            throw new C0414(10232, C0128.m3249(1002, 60, 115));
                        }
                    } else if (i == 1 || i == 4) {
                        throw new C0414(10232, C0128.m3249(915, 87, 33));
                    }
                } else if (i == 1 || i == 3 || i == 4) {
                    throw new C0414(10232, C0128.m3249(818, 97, 76));
                }
            } else if (i != 4 && i != 1) {
                throw new C0414(10232, C0128.m3249(750, 68, 63));
            }
        } else if (i == 1 || i == 3 || i == 4) {
            throw new C0414(10232, C0128.m3249(651, 99, 4));
        }
        if (iM3539 == 0) {
            if (this.f681 != null || this.f680.length() > 0) {
                try {
                    if (this.f680.length() > 0) {
                        this.f681 = new FileOutputStream(this.f680);
                        this.f690 = true;
                    } else {
                        this.f690 = this.f685;
                    }
                } catch (IOException e) {
                    throw new C0414(305, C0128.m3249(1062, 19, RNMBXStyleValue.InterpolationModeIdentity) + this.f680 + C0128.m3249(1081, 3, 94) + C0414.m4672(e));
                }
            } else {
                this.f675.setLength(0);
            }
        }
        if ((iM3539 == 1 && i == 4 && this.f679.f572.f3451 > 0) || (iM3539 == 3 && ((z || i == 0 || i == 2) && this.f679.f572.f3451 > 0))) {
            m3641(",");
        }
        switch (i) {
            case 0:
                if (this.f679.m3537()) {
                    this.f679.m3541();
                }
                this.f679.m3542(0);
                this.f679.m3540(1);
                break;
            case 1:
                this.f679.m3538();
                break;
            case 2:
                if (this.f679.m3537()) {
                    this.f679.m3541();
                }
                this.f679.m3542(1);
                break;
            case 3:
                this.f679.m3538();
                break;
            case 4:
                str = C0663.m5891("\"").append(C0117.m3193(str, this.f677, this.f682)).append("\":").toString();
                break;
            case 5:
                str = C0663.m5891("\"").append(C0117.m3193(str, this.f677, this.f682)).append("\"").toString();
                break;
            case 6:
                str = C0117.m3192(str);
                break;
            case 7:
                if (!str.equals(C0128.m3249(593, 4, 7)) && !str.equals(C0128.m3249(597, 5, 14))) {
                    throw new C0414(10232, C0128.m3249(TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, 45, 48));
                }
                break;
            case 8:
                str = C0128.m3249(647, 4, 91);
                break;
        }
        if (this.f689) {
            if (iM3539 != 2) {
                int size = this.f679.f573.size();
                if (i == 0 || i == 2) {
                    size--;
                }
                String strM5880 = "";
                for (int i2 = 0; i2 < size; i2++) {
                    strM5880 = C0663.m5880(strM5880, TSLog.TAB);
                }
                str = C0663.m5880(strM5880, str);
            } else {
                str = C0663.m5880(" ", str);
            }
            if (iM3539 != 0 && iM3539 != 2) {
                str = C0663.m5880("\r\n", str);
            }
        }
        m3641(str);
        if (z || i == 1 || i == 3) {
            if (!this.f679.m3537()) {
                this.f679.m3540(4);
            } else if (this.f679.m3539() == 2) {
                this.f679.m3540(1);
            }
        }
        if (i == 4) {
            this.f679.m3540(2);
        }
        if (this.f679.m3537() && z) {
            this.f679.m3541();
        }
        if (this.f679.m3539() == 4) {
            OutputStream outputStream2 = this.f681;
            if (outputStream2 != null) {
                try {
                    outputStream2.flush();
                } catch (IOException unused) {
                }
            }
            if (!this.f690 || (outputStream = this.f681) == null) {
                return;
            }
            try {
                outputStream.close();
            } catch (IOException unused2) {
            }
            this.f681 = null;
        }
    }

    public String m3647() {
        return this.f675.toString();
    }

    public void m3648() throws nts.C0414 {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0190.m3648():void");
    }

    public void m3649() throws C0414 {
        m3646("}", 1);
    }

    public int m3650() {
        return this.f683.f223.f1815;
    }

    public void m3651(int i) {
        this.f683.m3197(i);
    }

    public void m3654(String str, String str2, int i) throws C0414 {
        m3646(str, 4);
        m3653(str2, i);
    }

    public void m3652(String str) throws C0414 {
        m3646(str, 4);
    }

    public void m3653(String str, int i) throws C0414 {
        int i2 = 9;
        switch (i) {
            case 2:
                i2 = 5;
                break;
            case 3:
                i2 = 6;
                break;
            case 4:
                str = str.toLowerCase().trim();
                i2 = 7;
                break;
            case 5:
                i2 = 8;
                break;
        }
        m3646(str, i2);
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        String strM5887;
        String str = "";
        if (c0440.m4813(C0128.m3249(222, 12, 11))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f683.f231).toString();
            }
            this.f683.f231 = c0440.m4809();
        } else {
            if (c0440.m4813(C0128.m3249(234, 15, 89))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append((this.f683.f219 == 3 ? 1 : 0) ^ 1).toString();
                }
                this.f683.m3197(c0440.m4809() ? 0 : 3);
            } else if (c0440.m4813(C0128.m3249(249, 16, RNMBXStyleValue.InterpolationModeIdentity))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f683.f211).toString();
                }
                this.f683.f211 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(265, 20, 64))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f683.f221).toString();
                }
                this.f683.f221 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(285, 14, 29))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f683.f233).toString();
                }
                this.f683.f233 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(299, 21, 119))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f683.f208).toString();
                }
                this.f683.f208 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(320, 31, 102))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f683.f235).toString();
                }
                this.f683.f235 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(351, 23, 5))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f683.f219).toString();
                }
                m3651(c0440.m4805());
            } else if (c0440.m4813(C0128.m3249(374, 13, 11))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f683.f209).toString();
                }
                this.f683.f209 = c0440.m4805();
            } else if (c0440.m4813(C0128.m3249(387, 28, 82))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f678).toString();
                }
                this.f678 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(415, 29, 19))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f685).toString();
                }
                this.f685 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(444, 15, 38))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f677).toString();
                }
                this.f677 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(459, 26, 54))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f683.f222).toString();
                }
                this.f683.f222 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(485, 20, WebSocketProtocol.PAYLOAD_SHORT))) {
                if (c0440.f2269) {
                    return this.f683.f203;
                }
                this.f683.f203 = c0440.f2271;
            } else if (c0440.m4813(C0128.m3249(TypedValues.PositionType.TYPE_SIZE_PERCENT, 18, 102))) {
                if (c0440.f2269) {
                    return this.f683.f229;
                }
                this.f683.f229 = c0440.f2271;
            } else if (c0440.m4813(C0128.m3249(523, 11, 59))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f683.f207).toString();
                }
                this.f683.m3195(c0440.m4805());
            } else if (c0440.m4813(C0128.m3249(534, 11, 3))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f689).toString();
                }
                this.f689 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3249(545, 20, 125))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f682).toString();
                }
                this.f682 = c0440.m4809();
            } else {
                if (c0440.m4813(C0128.m3249(565, 12, 116)) && c0440.f2269) {
                    C0117 c0117 = this.f683;
                    if (c0117.f215) {
                        return "";
                    }
                    C0337 c0337 = c0117.f223;
                    for (int i = 0; i < c0337.f1815; i++) {
                        if (c0337.f1820[i].length() > 0) {
                            strM5887 = C0663.m5892(str, "/").append(c0337.f1820[i]).toString();
                        } else {
                            strM5887 = C0663.m5887(C0663.m5892(str, "/["), c0337.f1817[i], "]");
                        }
                        str = strM5887;
                    }
                    return str;
                }
                if (c0440.m4813(C0128.m3249(577, 16, 101))) {
                    if (c0440.f2269) {
                        return C0663.m5891("").append(this.f683.f218).toString();
                    }
                    this.f683.f221 = c0440.m4809();
                    this.f683.f218 = c0440.m4809();
                } else {
                    return super.mo3151(c0440);
                }
            }
        }
        return "";
    }

    @Override
    public void mo3392(boolean z) {
        C0117 c0117 = this.f683;
        if (c0117 != null) {
            c0117.m4308();
        }
        super.mo3392(z);
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0611 interfaceC0611 = this.f674;
        if (interfaceC0611 != null) {
            interfaceC0611.m5635(i, str);
        }
    }
}
