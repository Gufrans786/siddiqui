package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;

public class C0580 extends C0445 {

    public InterfaceC0330 f3247;

    public C0387 f3248;

    public C0580(Object obj, Object obj2) {
        super(obj, obj2);
        C0387 c0387 = new C0387();
        this.f3248 = c0387;
        if (obj instanceof InterfaceC0330) {
            this.f3247 = (InterfaceC0330) obj;
        }
        c0387.m4541();
        m5025(true);
        this.f2417.m4531("01");
        C0320.f1713 = 2;
    }

    public String m5565() {
        this.f3248.m4541();
        m4878(C0259.m3867());
        this.f2400 = new C0648();
        C0648 c0648 = this.f2400;
        try {
            C0163 c0163 = (C0163) C0308.m4239(C0128.m3230(15620, 4, 52));
            c0163.m3483(0);
            c0648.f3629.m3445(c0163.m3481(true), true);
            m5076(this.f2400);
            if (this.f2497 && m5006(3)) {
                C0387 c0387 = new C0387();
                C0577.m5533(this.f2400, c0387);
                mo4875(c0387.m4571(), C0128.m3230(3464, 12, 95));
            }
            this.f2447.m4541();
            m4951(this.f2447);
            C0387 c0388 = this.f3248;
            C0387 c0389 = new C0387();
            C0190 c0190 = new C0190(null, this.f1721);
            m5070(c0190);
            c0190.m3635();
            m5072(c0190, C0128.m3230(3858, 11, 105), C0445.f2300);
            m5072(c0190, C0128.m3230(3869, 14, 116), this.f2477.m4571());
            m5072(c0190, C0128.m3230(3883, 13, 26), this.f2417.m4571());
            m5072(c0190, C0128.m3230(3896, 10, 75), this.f2469.m4571());
            m5072(c0190, C0128.m3230(3906, 8, 79), this.f2525.m4571());
            m5072(c0190, C0128.m3230(3914, 18, 80), this.f2359.m4571());
            m5072(c0190, C0128.m3230(3932, 14, 93), this.f2450.m4571());
            m5072(c0190, C0128.m3230(3946, 10, 113), this.f2447.m4571());
            m5072(c0190, C0128.m3230(3956, 13, 36), this.f2389.m4571());
            m5072(c0190, C0128.m3230(3969, 12, 81), this.f2345.m4571());
            c0389.m4558(this.f2459);
            m5072(c0190, C0128.m3230(3981, 9, 20), c0389.m4571());
            c0190.m3649();
            c0190.m3639();
            c0388.m4531(c0190.m3647());
            if (this.f2497) {
                mo4950(c0388.m4571(), C0445.f2311);
            }
            return this.f3248.m4571();
        } catch (C0537 e) {
            throw new C0414(601, C0128.m3230(15624, 34, 70) + e.getMessage());
        }
    }

    public void m5566(String str) {
        if (str != null && str.length() > 0) {
            mo5012(1, str, C0445.f2311);
            C0387 c0387 = new C0387();
            m4834(this.f2395);
            C0190 c0190 = this.f2395;
            c0190.f686 = str;
            try {
                c0190.m3648();
                this.f2395.m3642();
                m5073(this.f2395, C0128.m3230(4259, 13, 0), c0387);
                m5073(this.f2395, C0128.m3230(4272, 16, 78), this.f2477);
                m5073(this.f2395, C0128.m3230(4288, 12, 66), this.f2469);
                m5073(this.f2395, C0128.m3230(4300, 10, 35), this.f2525);
                m5073(this.f2395, C0128.m3230(4310, 15, 125), this.f2389);
                if (c0387.m4552(C0445.f2300)) {
                    C0387 c0388 = new C0387();
                    m5073(this.f2395, C0128.m3230(4325, 15, 7), this.f2417);
                    m5073(this.f2395, C0128.m3230(4340, 20, 119), this.f2359);
                    m5073(this.f2395, C0128.m3230(4360, 16, 44), this.f2450);
                    m5073(this.f2395, C0128.m3230(4376, 12, 17), this.f2447);
                    m5073(this.f2395, C0128.m3230(4388, 14, 72), this.f2345);
                    m5073(this.f2395, C0128.m3230(4402, 11, 16), c0388);
                    if (c0388.m4533() > 0) {
                        this.f2459 = c0388.m4536();
                    }
                } else {
                    if (!c0387.m4552(C0445.f2296)) {
                        m4988(TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, C0128.m3230(4618, 24, 9), C0128.m3230(4642, 21, 23));
                        throw null;
                    }
                    m5073(this.f2395, C0128.m3230(4413, 22, 29), this.f2483);
                    m5073(this.f2395, C0128.m3230(4435, 12, 47), this.f2429);
                    m5073(this.f2395, C0128.m3230(4447, 18, 111), this.f2399);
                    m5073(this.f2395, C0128.m3230(4465, 13, 28), this.f2476);
                    m5073(this.f2395, C0128.m3230(4478, 19, 121), this.f2470);
                    m5073(this.f2395, C0128.m3230(4497, 22, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), this.f2405);
                    m5073(this.f2395, C0128.m3230(4519, 15, 116), this.f2339);
                    m5073(this.f2395, C0128.m3230(4534, 20, 36), this.f2385);
                    m5073(this.f2395, C0128.m3230(4554, 23, 95), this.f2465);
                    m5073(this.f2395, C0128.m3230(4577, 20, 65), this.f2326);
                    m5073(this.f2395, C0128.m3230(4597, 21, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), this.f2518);
                }
            } catch (C0414 e) {
                m4988(TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, C0128.m3230(4241, 18, 94), e.getMessage());
                throw null;
            }
        }
        m4852();
    }

    @Override
    public java.lang.String mo3151(nts.C0440 r11) throws nts.C0414 {
        throw new UnsupportedOperationException("Method not decompiled: nts.C0580.mo3151(nts.ᢞ):java.lang.String");
    }

    @Override
    public void mo3384(int i, String str, String str2) {
        int i2;
        if (this.f3247 != null) {
            if (this.f2337) {
                String[] strArr = {C0128.m3230(4663, 12, 125), C0128.m3230(4675, 24, 61), C0128.m3230(4699, 20, 125)};
                String strM3230 = C0128.m3230(4719, 6, 41);
                int i3 = 0;
                while (i3 < 3) {
                    String str3 = strArr[i3];
                    int length = str3.length();
                    String str4 = str;
                    int length2 = 0;
                    while (true) {
                        int iIndexOf = str4.indexOf(str3, length2);
                        if (iIndexOf < 0) {
                            break;
                        }
                        int i4 = iIndexOf + length;
                        while (true) {
                            if (str4.charAt(i4) != ' ' && str4.charAt(i4) != '\t') {
                                break;
                            } else {
                                i4++;
                            }
                        }
                        if (str4.charAt(i4) != ':') {
                            break;
                        }
                        while (true) {
                            i2 = i4 + 1;
                            if (str4.charAt(i2) != ' ' && str4.charAt(i2) != '\t') {
                                break;
                            } else {
                                i4 = i2;
                            }
                        }
                        if (str4.charAt(i2) != '\"') {
                            break;
                        }
                        int i5 = i4 + 2;
                        int i6 = i5;
                        while (i6 < str4.length()) {
                            if (str4.charAt(i6) == '\\') {
                                i6 += 2;
                            } else if (str4.charAt(i6) == '\"') {
                                break;
                            } else {
                                i6++;
                            }
                        }
                        if (i6 < 0) {
                            break;
                        }
                        str4 = str4.substring(0, i5) + strM3230 + str4.substring(i6);
                        length2 = i5 + strM3230.length();
                    }
                    i3++;
                    str = str4;
                }
            }
            C0600 c0600 = (C0600) this.f3247;
            if (c0600.f3315 != null) {
                C0582 c0582 = new C0582(c0600);
                c0582.f3254 = i;
                c0582.f3253 = str;
                c0582.f3252 = str2;
                try {
                    c0600.f3315.mo5429(c0582);
                } catch (Throwable th) {
                    C0414 c0414 = new C0414(th, -1, C0558.m5456(500, 54, 70) + th.getMessage());
                    C0105 c0105 = new C0105(c0600);
                    c0105.f141 = c0414.f2136;
                    c0105.f140 = c0414.getMessage();
                    c0600.f3315.mo5425(c0105);
                    c0600.f3316.m4312((Exception) c0414);
                }
            }
        }
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0330 interfaceC0330 = this.f3247;
        if (interfaceC0330 != null) {
            C0600 c0600 = (C0600) interfaceC0330;
            if (c0600.f3315 != null) {
                C0105 c0105 = new C0105(c0600);
                c0105.f141 = i;
                c0105.f140 = str;
                try {
                    c0600.f3315.mo5425(c0105);
                } catch (Throwable th) {
                    c0600.f3316.m4312((Exception) new C0414(th, -1, C0558.m5456(444, 56, 65) + th.getMessage()));
                }
            }
        }
    }

    @Override
    public void mo4406(int i, long j, byte[] bArr) {
        InterfaceC0330 interfaceC0330;
        if (i == 1) {
            InterfaceC0330 interfaceC0331 = this.f3247;
            if (interfaceC0331 != null) {
                C0600 c0600 = (C0600) interfaceC0331;
                if (c0600.f3315 != null) {
                    C0532 c0532 = new C0532(c0600);
                    c0532.f3102 = bArr;
                    try {
                        c0600.f3315.mo5427(c0532);
                        return;
                    } catch (Throwable th) {
                        C0414 c0414 = new C0414(th, -1, C0558.m5456(TypedValues.AttributesType.TYPE_EASING, 63, 117) + th.getMessage());
                        C0105 c0105 = new C0105(c0600);
                        c0105.f141 = c0414.f2136;
                        c0105.f140 = c0414.getMessage();
                        c0600.f3315.mo5425(c0105);
                        c0600.f3316.m4312((Exception) c0414);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (i != 0 || (interfaceC0330 = this.f3247) == null) {
            return;
        }
        C0600 c0601 = (C0600) interfaceC0330;
        if (c0601.f3315 != null) {
            C0656 c0656 = new C0656(c0601);
            c0656.f3644 = bArr;
            try {
                c0601.f3315.mo5430(c0656);
            } catch (Throwable th2) {
                C0414 c0415 = new C0414(th2, -1, C0558.m5456(380, 64, 96) + th2.getMessage());
                C0105 c0106 = new C0105(c0601);
                c0106.f141 = c0415.f2136;
                c0106.f140 = c0415.getMessage();
                c0601.f3315.mo5425(c0106);
                c0601.f3316.m4312((Exception) c0415);
            }
        }
    }
}
