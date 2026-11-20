package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0489 extends C0320 {

    public static final String f2762 = C0164.m3489(0, 4, 119);

    public String f2763;

    public int f2764;

    public String f2765;

    public String f2766;

    public InterfaceC0550 f2767;

    public int f2768;

    public byte[] f2769;

    public int f2770;

    public int f2771;

    public String f2772;

    public String f2773;

    public StringBuffer f2774;

    public boolean f2775;

    public boolean f2776;

    public int f2777;

    public String f2778;

    public C0335 f2779;

    public String f2780;

    public int f2781;

    public byte[] f2782;

    public int f2783;

    public String f2784;

    public C0579 f2785;

    public C0489(Object obj, Object obj2) {
        super(obj2);
        this.f2770 = 0;
        this.f2779 = null;
        this.f2783 = 4;
        this.f2769 = C0320.f1706;
        this.f2766 = "";
        this.f2774 = null;
        this.f2764 = 365;
        this.f2781 = 0;
        this.f2784 = C0164.m3489(4, 6, 71);
        this.f2772 = C0164.m3489(10, 3, 73);
        new Vector();
        this.f2771 = 2048;
        this.f2780 = "";
        this.f2782 = C0320.f1706;
        this.f2776 = false;
        this.f2765 = "";
        this.f2777 = 0;
        this.f2773 = "";
        this.f2778 = C0164.m3489(13, 3, 65);
        this.f2763 = C0164.m3489(16, 3, 123);
        this.f2775 = false;
        this.f2785 = new C0579();
        this.f2768 = 1;
        this.f2767 = null;
        if (obj instanceof InterfaceC0550) {
            this.f2767 = (InterfaceC0550) obj;
        }
    }

    public void m5164(int r13) {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0489.m5164(int):void");
    }

    public final InterfaceC0224 m5165() throws Throwable {
        InterfaceC0224 c0589;
        String str = C0164.m3489(60, 40, 122) + C0671.m5949(this.f2783) + C0164.m3489(100, 11, 59) + this.f2766;
        String str2 = f2762;
        m5168(1, str, str2);
        byte[] bArrM3901 = this.f2769;
        String strM3489 = C0164.m3489(111, 14, 95);
        if (this.f2768 >= 3) {
            if (new File(C0259.m3892(bArrM3901)).exists()) {
                bArrM3901 = C0671.m5919(C0259.m3892(bArrM3901));
            }
            if (C0259.m3861(bArrM3901)) {
                bArrM3901 = C0259.m3901(1, bArrM3901, 0, bArrM3901.length, false);
            }
            m5168(3, C0663.m5891(strM3489).append(C0164.m3489(421, 3, 45)).append(C0259.m3892(bArrM3901)).toString(), C0164.m3489(TypedValues.CycleType.TYPE_WAVE_OFFSET, 17, 48));
        }
        int i = this.f2783;
        if (i == 11 || i == 12) {
            c0589 = new C0589();
        } else if (C0320.f1708 || i == 5 || i == 4) {
            c0589 = new C0265();
        } else if (i == 3 || i == 2) {
            c0589 = new C0469();
        } else {
            if (i < 6) {
                throw new C0414(271, C0164.m3489(125, 25, 39));
            }
            c0589 = new C0283();
        }
        c0589.mo3700(this.f2783, this.f2769, this.f2766);
        m5168(1, C0164.m3489(150, 37, 33), str2);
        return c0589;
    }

    public final void m5166() {
        synchronized (this.f1721) {
            if (this.f2770 != 0) {
                throw new C0414(CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, C0164.m3489(31, 29, 75));
            }
            m4306();
        }
    }

    public void m5167() {
        synchronized (this.f1721) {
            if (this.f2770 != 0) {
                m4312((Exception) new C0414(301, C0164.m3489(19, 12, 46)));
            }
        }
    }

    public void m5170(byte[] bArr, String str, String str2, String str3, boolean z) {
        InterfaceC0550 interfaceC0550 = this.f2767;
        if (interfaceC0550 != null) {
            C0176 c0176 = (C0176) interfaceC0550;
            if (!c0176.f610.containsKey(str)) {
                Hashtable hashtable = c0176.f610;
                C0530 c0530 = new C0530();
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                boolean z2 = true;
                boolean z3 = false;
                boolean z4 = false;
                for (int i = 0; i < str.length(); i++) {
                    char cCharAt = str.charAt(i);
                    if (!z2) {
                        if (z3) {
                            if (cCharAt == '\"') {
                                z3 = false;
                            } else {
                                stringBuffer2.append(cCharAt);
                            }
                        } else if (cCharAt == '\"') {
                            z3 = true;
                        } else if (cCharAt == ',') {
                            z2 = true;
                            z4 = true;
                        } else {
                            stringBuffer2.append(cCharAt);
                        }
                        if (i == str.length() - 1) {
                            z4 = true;
                        }
                        if (z4) {
                            String string = stringBuffer.toString();
                            String string2 = stringBuffer2.toString();
                            C0530 c0531 = new C0530();
                            String str4 = (String) c0176.f606.get(string);
                            if (str4 != null) {
                                string = str4;
                            }
                            c0531.m5384(string);
                            c0531.m5379(C0259.m3883(string2), (string.equals(C0176.f598) || string.equals(C0176.f593) || string.equals(C0176.f599)) ? 19 : (string.equals(C0176.f597) || string.equals(C0176.f589) || string.equals(C0176.f595) || string.equals(C0176.f594)) ? 22 : 12);
                            c0531.m5370();
                            new Vector();
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                if (c0531.f3091 != 0) {
                                    C0530.m5358(byteArrayOutputStream, c0531.f3091, c0531.f3095.size());
                                }
                                byteArrayOutputStream.write(c0531.f3095.toByteArray());
                                try {
                                    C0530.m5358(c0530.f3095, 49, byteArrayOutputStream.size());
                                    c0530.f3095.write(byteArrayOutputStream.toByteArray());
                                    stringBuffer2.setLength(0);
                                    stringBuffer.setLength(0);
                                    z4 = false;
                                } catch (IOException e) {
                                    throw new C0414(e);
                                }
                            } catch (IOException e2) {
                                throw new C0414(e2);
                            }
                        } else {
                            continue;
                        }
                    } else if (cCharAt == '=') {
                        z2 = false;
                    } else if (cCharAt != ' ') {
                        stringBuffer.append(cCharAt);
                    }
                }
                c0530.f3091 = 48;
                hashtable.put(str, c0530.m5376());
                if (c0176.f608) {
                    C0176.f587.add(C0671.m5942(bArr));
                }
            }
        }
        this.f2774.append(str + '\t' + str2 + '\t' + str3 + '\t' + z + C0212.m3689());
    }

    public void m5169(byte[] bArr, String str, String str2, String str3, int i, int i2) {
        String str4;
        String str5;
        String str6;
        int i3;
        int i4;
        synchronized (this.f1721) {
            InterfaceC0550 interfaceC0550 = this.f2767;
            if (interfaceC0550 != null) {
                str4 = str;
                str5 = str2;
                str6 = str3;
                i3 = i;
                i4 = i2;
                ((C0176) interfaceC0550).m3547(bArr, str4, str5, str6, i3, i4);
            } else {
                str4 = str;
                str5 = str2;
                str6 = str3;
                i3 = i;
                i4 = i2;
            }
            this.f2774.append(str4 + '\t' + str5 + '\t' + str6 + '\t' + Integer.toHexString(i3) + '\t' + Integer.toHexString(i4) + C0212.m3689());
        }
    }

    public void m5168(int i, String str, String str2) {
        if (i > this.f2768) {
            return;
        }
        if (str.endsWith("\r\n")) {
            str = str.substring(0, str.length() - 2);
        }
        InterfaceC0550 interfaceC0550 = this.f2767;
        if (interfaceC0550 != null) {
            ((C0176) interfaceC0550).m3545(i, str, str2);
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        C0538 c0538;
        C0590 c0590;
        C0335 c0335;
        C0590 c0591;
        if (c0440.m4813(C0164.m3489(2258, 16, 62))) {
            return (!c0440.f2269 || (c0335 = this.f2779) == null || (c0591 = c0335.f1804) == null) ? "" : c0591.f3275;
        }
        if (c0440.m4813(C0164.m3489(2274, 16, 93))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2764).toString();
            }
            this.f2764 = c0440.m4805();
        } else if (c0440.m4813(C0164.m3489(2290, 18, 102))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2781).toString();
            }
            this.f2781 = c0440.m4805();
        } else if (c0440.m4813(C0164.m3489(2308, 13, 51))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2771).toString();
            }
            this.f2771 = c0440.m4805();
        } else if (c0440.m4813(C0164.m3489(2321, 22, RNMBXStyleValue.InterpolationModeIdentity))) {
            if (c0440.f2269) {
                return this.f2784;
            }
            String str = c0440.f2271;
            if (str == null) {
                str = "";
            }
            this.f2784 = str;
        } else if (c0440.m4813(C0164.m3489(2343, 22, 7))) {
            if (c0440.f2269) {
                return this.f2772;
            }
            String str2 = c0440.f2271;
            if (str2 == null) {
                str2 = "";
            }
            this.f2772 = str2;
        } else if (c0440.m4813(C0164.m3489(2365, 9, 56))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(C0671.f3703).toString();
            }
            C0671.f3703 = c0440.m4805();
        } else {
            if (c0440.m4813(C0164.m3489(2374, 14, 32))) {
                if (c0440.f2269) {
                    return this.f2779 == null ? "0" : C0663.m5891("").append(this.f2779.m4372()).toString();
                }
                C0335 c0336 = this.f2779;
                if (c0336 != null) {
                    boolean z = c0336.f1807;
                    try {
                        c0336.f1807 = true;
                        c0336.m4378(c0440.m4805());
                    } finally {
                        this.f2779.f1807 = z;
                    }
                }
            } else if (c0440.m4813(C0164.m3489(2388, 9, 71))) {
                if (c0440.f2269) {
                    C0335 c0337 = this.f2779;
                    return c0337 == null ? "" : C0671.m5928(c0337.m4372());
                }
                C0335 c0338 = this.f2779;
                if (c0338 != null) {
                    boolean z2 = c0338.f1807;
                    try {
                        c0338.f1807 = true;
                        String str3 = c0440.f2271;
                        if (c0338.f1807) {
                            c0338.m4378(C0671.m5941(str3));
                            this.f2779.f1807 = z2;
                        } else {
                            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3511(1109, 58, 57));
                        }
                    } catch (Throwable th) {
                        this.f2779.f1807 = z2;
                        throw th;
                    }
                }
            } else if (c0440.m4813(C0164.m3489(2397, 15, 32))) {
                if (c0440.f2269) {
                    C0335 c0339 = this.f2779;
                    return c0339 == null ? "" : c0339.m4355();
                }
                C0335 c03310 = this.f2779;
                if (c03310 != null) {
                    boolean z3 = c03310.f1807;
                    try {
                        c03310.f1807 = true;
                        c03310.m4357(c0440.f2271);
                    } finally {
                        this.f2779.f1807 = z3;
                    }
                }
            } else if (c0440.m4813(C0164.m3489(2412, 20, 19)) && c0440.f2269) {
                C0335 c03311 = this.f2779;
                if (c03311 != null) {
                    return C0259.m3841(c03311.m4364());
                }
            } else {
                int i = 0;
                if (c0440.m4813(C0164.m3489(2432, 15, 67)) && c0440.f2269) {
                    StringBuilder sbM5891 = C0663.m5891("");
                    C0335 c03312 = this.f2779;
                    return sbM5891.append((c03312 == null || (c0590 = c03312.f1804) == null || !c0590.f3276) ? false : true).toString();
                }
                if (c0440.m4813(C0164.m3489(2447, 23, 107))) {
                    if (c0440.f2269) {
                        return this.f2763;
                    }
                    this.f2763 = c0440.f2271;
                } else if (c0440.m4813(C0164.m3489(2470, 12, 4))) {
                    if (c0440.f2269) {
                        return this.f2778;
                    }
                    this.f2778 = c0440.f2271;
                } else if (c0440.m4813(C0164.m3489(2482, 11, 35))) {
                    if (c0440.f2269) {
                        return this.f2780;
                    }
                    this.f2780 = c0440.f2271;
                } else {
                    if (c0440.m4813(C0164.m3489(2493, 12, 82)) && c0440.f2269) {
                        return C0259.m3892(C0259.m3861(this.f2782) ? C0259.m3874(8, this.f2782) : this.f2782);
                    }
                    if (c0440.m4813(C0164.m3489(2505, 9, 43)) && c0440.f2269) {
                        return C0259.m3892(C0259.m3861(this.f2782) ? C0259.m3874(8, this.f2782) : this.f2782);
                    }
                    if (c0440.m4813(C0164.m3489(2514, 12, 94))) {
                        if (c0440.f2269) {
                            C0335 c03313 = this.f2779;
                            return c03313 == null ? "" : (String) c03313.m4366().get(C0164.m3489(2526, 9, 75));
                        }
                        C0335 c03314 = this.f2779;
                        if (c03314 != null) {
                            c03314.m4366().put(C0164.m3489(2604, 9, 30), c0440.f2271);
                        } else {
                            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3489(2535, 69, 117));
                        }
                    } else if (c0440.m4813(C0164.m3489(2613, 8, 43))) {
                        if (c0440.f2269) {
                            C0335 c03315 = this.f2779;
                            return c03315 == null ? "" : (String) c03315.m4366().get(C0164.m3489(2621, 9, 124));
                        }
                        C0335 c03316 = this.f2779;
                        if (c03316 != null) {
                            c03316.m4366().put(C0164.m3489(2699, 9, 116), c0440.f2271);
                        } else {
                            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3489(2630, 69, 91));
                        }
                    } else if (c0440.m4813(C0164.m3489(2708, 9, 96))) {
                        if (c0440.f2269) {
                            C0335 c03317 = this.f2779;
                            return c03317 == null ? "" : (String) c03317.m4366().get(C0164.m3489(2717, 13, 69));
                        }
                        C0335 c03318 = this.f2779;
                        if (c03318 != null) {
                            c03318.m4366().put(C0164.m3489(2799, 13, 76), c0440.f2271);
                        } else {
                            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3489(2730, 69, 14));
                        }
                    } else if (c0440.m4813(C0164.m3489(2812, 6, 92))) {
                        if (c0440.f2269) {
                            C0335 c03319 = this.f2779;
                            return c03319 == null ? "" : (String) c03319.m4366().get(C0164.m3489(2818, 9, 80));
                        }
                        C0335 c03320 = this.f2779;
                        if (c03320 != null) {
                            c03320.m4366().put(C0164.m3489(2896, 9, 95), c0440.f2271);
                        } else {
                            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3489(2827, 69, 35));
                        }
                    } else if (c0440.m4813(C0164.m3489(2905, 12, 54))) {
                        if (c0440.f2269) {
                            return C0663.m5891("").append(this.f2775).toString();
                        }
                        this.f2775 = c0440.m4809();
                    } else {
                        if (c0440.m4813(C0164.m3489(2917, 16, 17)) && c0440.f2269) {
                            return "";
                        }
                        if (c0440.m4813(C0164.m3489(2933, 6, 50))) {
                            if (c0440.f2269) {
                                C0579 c0579 = this.f2785;
                                String strM3489 = C0164.m3489(2939, 6, 24);
                                while (i < c0579.f3246.size()) {
                                    C0120 c0120 = (C0120) c0579.f3246.get(i);
                                    C0538 c0539 = c0120.f242;
                                    if (c0539 != null && c0539.m5416().equals(strM3489)) {
                                        c0538 = c0120.f242;
                                        if (c0538 == null) {
                                            return "";
                                        }
                                        return C0671.m5961(c0538);
                                    }
                                    i++;
                                }
                                c0538 = null;
                                if (c0538 == null) {
                                    return "";
                                }
                                return C0671.m5961(c0538);
                            }
                            C0538 c05310 = new C0538();
                            try {
                                C0671.m5907(c05310, c0440.f2271);
                                if (c05310.m5410()) {
                                    C0579 c05710 = this.f2785;
                                    String strM34810 = C0164.m3489(AuthApiStatusCodes.AUTH_API_CLIENT_ERROR, 6, 0);
                                    while (i < c05710.f3246.size()) {
                                        C0538 c05311 = ((C0120) c05710.f3246.get(i)).f242;
                                        if (c05311 != null && c05311.m5416().equals(strM34810)) {
                                            c05710.f3246.removeElementAt(i);
                                            break;
                                        }
                                        i++;
                                    }
                                    c05310.f3112.put(C0164.m3495(21039, 12, 56), C0164.m3489(3008, 6, 38));
                                    this.f2785.m5563(c05310);
                                } else {
                                    throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3489(2961, 41, 92));
                                }
                            } catch (Exception e) {
                                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3489(2945, 16, 20) + C0414.m4672(e));
                            }
                        } else {
                            if (c0440.m4813(C0164.m3489(3014, 10, 122)) && c0440.f2269) {
                                C0579 c05711 = this.f2785;
                                return (c05711.m5557() == null || !c05711.m5557().m5410()) ? "" : C0671.m5932(this.f2785.m5557(), "") + "\r\n" + C0671.m5931(this.f2785.m5557());
                            }
                            if (c0440.m4813(C0164.m3489(3024, 22, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY))) {
                                if (c0440.f2269) {
                                    return this.f2765;
                                }
                                this.f2765 = c0440.f2271;
                            } else if (c0440.m4813(C0164.m3489(3046, 17, 55))) {
                                if (c0440.f2269) {
                                    return C0663.m5891("").append(this.f2777).toString();
                                }
                                this.f2777 = c0440.m4805();
                            } else if (c0440.m4813(C0164.m3489(3063, 23, 127))) {
                                if (c0440.f2269) {
                                    return this.f2773;
                                }
                                this.f2773 = c0440.f2271;
                            } else if (c0440.m4813(C0164.m3489(3086, 8, 112))) {
                                if (c0440.f2269) {
                                    return C0663.m5891("").append(this.f2768).toString();
                                }
                                this.f2768 = c0440.m4805();
                            } else if (c0440.m4813(C0164.m3489(3094, 18, 24))) {
                                if (c0440.f2269) {
                                    return C0663.m5891("").append(this.f2776).toString();
                                }
                                this.f2776 = c0440.m4809();
                            } else if (c0440.m4813(C0164.m3489(3112, 13, 15)) && c0440.f2269) {
                                C0335 c03321 = this.f2779;
                                if (c03321 != null) {
                                    return c03321.m4356();
                                }
                            } else if (c0440.m4813(C0164.m3489(3125, 22, 70)) && c0440.f2269) {
                                C0335 c03322 = this.f2779;
                                if (c03322 != null) {
                                    return c03322.m4365();
                                }
                            } else {
                                return super.mo3151(c0440);
                            }
                        }
                    }
                }
            }
        }
        return "";
    }
}
