package nts;

import ch.qos.logback.core.net.SyslogConstants;
import java.util.Vector;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

public class C0574 {

    public String f3195;

    public String f3196;

    public C0433 f3197;

    public C0538 f3200;

    public Vector f3201 = new Vector();

    public Vector f3199 = new Vector();

    public Vector f3194 = new Vector();

    public Vector f3198 = new Vector();

    public Vector f3192 = new Vector();

    public Vector f3193 = new Vector();

    public C0574() {
        byte[] bArr = C0320.f1706;
        this.f3197 = null;
        this.f3200 = null;
        this.f3195 = "";
        this.f3196 = "";
    }

    public final byte[] m5522(byte[] bArr, String str, C0418 c0418) {
        byte[] bArrM5527 = m5527(bArr, str, c0418);
        if ((this.f3195.equals("") || this.f3195.equals(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR)) && !C0530.m5357(bArrM5527)) {
            String str2 = this.f3195;
            try {
                this.f3195 = str2.equals("") ? WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR : "";
                byte[] bArrM5528 = m5527(bArr, str, c0418);
                if (C0530.m5357(bArrM5528)) {
                    bArrM5527 = bArrM5528;
                }
                return bArrM5527;
            } catch (Exception unused) {
            } finally {
                this.f3195 = str2;
            }
        }
        return bArrM5527;
    }

    public void m5526(byte[] bArr, String str) throws C0414 {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        if (!C0259.m3861(bArr)) {
            bArr = C0259.m3900(1, bArr, 0, bArr.length);
        }
        this.f3195 = str;
        C0228 c0228 = new C0228();
        c0228.m4680(bArr);
        C0525 c0525 = new C0525();
        C0418 c0418 = c0228.f821.f1618.f1271;
        if (c0418 instanceof C0226) {
            c0525.m4680(((C0226) c0418).f2148);
        }
        for (int i = 0; i < c0525.m5510(); i++) {
            C0418 c0419 = ((C0302) c0525.m5511(i)).f1618.f1271;
            if (c0419 instanceof C0226) {
                m5525(((C0226) c0419).f2148);
            } else if (c0419 instanceof C0271) {
                C0094 c0094 = ((C0271) c0419).f1380;
                C0286 c0286 = c0094.f77;
                m5525(m5522(c0094.f78.f2148, c0286.f811.f2701, c0286.f812));
            }
        }
        C0433 c0433 = this.f3201.size() == 0 ? null : new C0433((C0213) this.f3201.get(0));
        this.f3197 = c0433;
        if (c0433 == null) {
            throw new C0414(C0164.m3495(17730, 5, 51));
        }
        for (int i2 = 0; i2 < this.f3199.size(); i2++) {
            if (!C0259.m3856(m5523((String) this.f3199.get(i2)))) {
                C0538 c0538 = new C0538();
                this.f3200 = c0538;
                C0671.m5907(c0538, m5523((String) this.f3199.get(i2)));
                return;
            }
        }
    }

    public final void m5525(byte[] bArr) {
        byte[] bArrM5522;
        C0399 c0399 = new C0399();
        c0399.m4680(bArr);
        for (int i = 0; i < c0399.m5510(); i++) {
            C0412 c0412 = (C0412) c0399.m5511(i);
            C0418 c0418 = c0412.f2129.f1271;
            if (c0418 instanceof C0123) {
                C0123 c0123 = (C0123) c0418;
                if (c0123.f243.f2701.equals(C0458.f2649)) {
                    C0213 c0213 = new C0213();
                    c0213.m4680(((C0101) c0123.f244.f1271).f2148);
                    this.f3199.add(m5524(c0412.f2130.f3176, C0458.f2616));
                    this.f3194.add(m5524(c0412.f2130.f3176, C0458.f2633));
                    this.f3201.add(c0213);
                }
            } else if (c0418 instanceof C0426) {
                this.f3192.add(m5524(c0412.f2130.f3176, C0458.f2616));
                this.f3193.add(m5524(c0412.f2130.f3176, C0458.f2633));
                Vector vector = this.f3198;
                C0426 c0426 = (C0426) c0412.f2129.f1271;
                byte[] bArrM3845 = null;
                if (c0426 != null) {
                    C0374 c0374 = c0426.f2189;
                    bArrM5522 = m5522(c0426.f2190.f2148, c0374.f811.f2701, c0374.f812);
                } else {
                    bArrM5522 = null;
                }
                C0593 c0593 = new C0593();
                try {
                    c0593.m4680(bArrM5522);
                    String str = c0593.f3283.f811.f2701;
                    this.f3196 = str;
                    if (str.equals(C0458.f2620)) {
                        byte[] bArrM3846 = C0259.m3845(c0593.f3284.f2148);
                        C0593 c0594 = new C0593();
                        c0594.f3281.f1869 = 0;
                        c0594.f3283.f811.f2701 = this.f3196;
                        c0594.f3284.f2148 = bArrM3846;
                        bArrM3845 = C0259.m3845(c0594.mo3690());
                    } else if (this.f3196.equals(C0458.f2668)) {
                        byte[] bArrM3847 = C0259.m3845(c0593.f3284.f2148);
                        C0593 c0595 = new C0593();
                        c0595.f3281.f1869 = 0;
                        c0595.f3283 = c0593.f3283;
                        c0595.f3284.f2148 = bArrM3847;
                        bArrM3845 = C0259.m3845(c0595.mo3690());
                    } else if (this.f3196.equals(C0458.f2650)) {
                        byte[] bArrM3848 = C0259.m3845(c0593.f3284.f2148);
                        C0593 c0596 = new C0593();
                        c0596.f3281.f1869 = 0;
                        c0596.f3283 = c0593.f3283;
                        c0596.f3284.f2148 = bArrM3848;
                        bArrM3845 = C0259.m3845(c0596.mo3690());
                    } else if (this.f3196.equals(C0458.f2646) || this.f3196.equals(C0458.f2658)) {
                        byte[] bArrM3849 = C0259.m3845(c0593.f3284.f2148);
                        C0593 c0597 = new C0593();
                        c0597.f3281.f1869 = 1;
                        c0597.f3283 = c0593.f3283;
                        c0597.f3284.f2148 = bArrM3849;
                        byte[] bArr2 = c0593.f3282;
                        if (bArr2 == null || bArr2.length == 0) {
                            C0158 c0158 = new C0158();
                            c0158.m3444(c0593.f3283.f811.f2701);
                            c0158.f486 = new C0530(bArrM3849).m5373();
                            c0158.m3443();
                            C0530 c0530 = new C0530();
                            c0530.m5379(c0158.f485, 129);
                            c0593.f3282 = c0530.m5376();
                        }
                        c0597.f3282 = c0593.f3282;
                        bArrM3845 = C0259.m3845(c0597.mo3690());
                    }
                    vector.add(C0259.m3892(C0259.m3878(bArrM3845, C0164.m3495(17735, 11, 82))));
                } catch (Exception unused) {
                    throw new C0414(500, C0164.m3495(18170, 32, 52));
                }
            } else {
                continue;
            }
        }
    }

    public final String m5524(Vector vector, String str) {
        for (int i = 0; i < vector.size(); i++) {
            C0401 c0401 = (C0401) vector.get(i);
            if (c0401.f1381.f2701.equals(str)) {
                C0418 c0418M5511 = c0401.f1382.m5511(0);
                byte[] bArr = c0418M5511.f2148;
                if (str.equals(C0458.f2616) && c0418M5511.f2150 == 4) {
                    return C0663.m5891("").append(C0259.m3846(bArr, 0, bArr.length)).toString();
                }
                if (str.equals(C0458.f2633) && c0418M5511.f2150 == 30) {
                    String strM3848 = C0259.m3848(bArr, C0164.m3495(17746, 8, 91));
                    while (strM3848.length() > 0 && strM3848.charAt(strM3848.length() - 1) == 0) {
                        strM3848 = strM3848.substring(0, strM3848.length() - 1);
                    }
                    return strM3848;
                }
            }
        }
        return "";
    }

    public final byte[] m5527(byte[] bArr, String str, C0418 c0418) {
        int i;
        String strM3495;
        if (str.equals(C0164.m3495(17754, 21, 27))) {
            C0530 c0530 = new C0530(c0418.f2148);
            C0530 c0530M5361 = c0530.m5361(0).m5361(1);
            byte[] bArrM5373 = c0530M5361.m5373();
            int iM5389 = c0530M5361.m5389();
            String strM5380 = c0530M5361.m5390().m5380();
            C0530 c0530M5362 = c0530.m5361(1);
            String strM5381 = c0530M5362.m5380();
            byte[] bArrM5374 = c0530M5362.m5373();
            if (strM5380.equals(C0164.m3495(17775, 18, 32))) {
                String strM3496 = C0164.m3495(17793, 10, 18);
                if (strM5381.equals(C0164.m3495(17895, 23, 0))) {
                    strM3495 = C0164.m3495(17918, 11, 59);
                } else if (strM5381.equals(C0164.m3495(17929, 22, 9))) {
                    strM3495 = C0164.m3495(17951, 11, SyslogConstants.LOG_CLOCK);
                } else if (strM5381.equals(C0164.m3495(17962, 18, 122))) {
                    strM3495 = C0164.m3495(17980, 12, 16);
                } else {
                    throw new C0414(271, C0164.m3495(17992, 98, 86) + strM5381);
                }
                return C0671.m5990(bArr, this.f3195, strM3495, bArrM5373, false, strM3496, iM5389, bArrM5374);
            }
            throw new C0414(271, C0164.m3495(17803, 92, 97) + strM5380);
        }
        if (str.equals(C0458.f2653)) {
            i = 128;
        } else if (str.equals(C0458.f2642)) {
            i = 40;
        } else if (str.equals(C0458.f2605)) {
            i = 192;
        } else if (str.equals(C0458.f2643) || str.equals(C0458.f2638)) {
            i = 128;
        } else if (str.equals(C0458.f2645)) {
            i = 40;
        } else {
            i = 0;
        }
        byte[] bArrMo3690 = c0418.mo3690();
        C0183 c0183 = new C0183();
        c0183.m4680(bArrMo3690);
        C0277 c0277 = new C0277();
        c0277.f1402 = c0183.f617.f2148;
        c0277.f1404 = C0164.m3495(18090, 4, 20);
        c0277.f1403 = this.f3195;
        try {
            byte[] bArrM3995 = c0277.m3995(c0183.f618.f1869, i / 8);
            byte[] bArrM3996 = c0277.m3996(c0183.f618.f1869, 8);
            if (!str.equals(C0458.f2653) && !str.equals(C0458.f2642)) {
                if (!str.equals(C0458.f2605) && !str.equals(C0458.f2643)) {
                    if (!str.equals(C0458.f2638) && !str.equals(C0458.f2645)) {
                        return C0320.f1706;
                    }
                    AbstractC0313 abstractC0313M4220 = C0308.m4220(C0164.m3495(18098, 3, 85));
                    abstractC0313M4220.f1686 = 2;
                    abstractC0313M4220.f1690 = 1;
                    abstractC0313M4220.m4284(i);
                    return abstractC0313M4220.mo3118(bArrM3995, bArrM3996).mo3122(bArr, 0, bArr.length);
                }
                AbstractC0313 abstractC0313M4221 = C0308.m4220(C0164.m3495(18094, 4, 37));
                abstractC0313M4221.f1686 = 2;
                abstractC0313M4221.f1690 = 1;
                return abstractC0313M4221.mo3118(bArrM3995, bArrM3996).mo3122(bArr, 0, bArr.length);
            }
            return C0558.m5508(bArr, bArrM3995);
        } catch (Exception e) {
            throw new C0414(e, 271, C0164.m3495(18101, 69, 22));
        }
    }

    public String m5523(String str) {
        for (int i = 0; i < this.f3192.size(); i++) {
            if (((String) this.f3192.get(i)).equals(str)) {
                return (String) this.f3198.get(i);
            }
        }
        return "";
    }
}
