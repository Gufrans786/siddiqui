package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imagepipeline.common.RotationOptions;
import java.math.BigInteger;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.util.Vector;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

public class C0469 extends C0283 {

    public boolean f2693;

    public String f2694;

    public Vector f2695;

    public C0469() {
        this.f2694 = "";
        this.f2695 = new Vector();
        this.f2693 = false;
    }

    public final void m5136(byte[] bArr) {
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
                    C0136 c0136 = new C0136();
                    c0136.f291 = m5140(c0412.f2130.f3176, C0458.f2616);
                    c0136.f290 = m5140(c0412.f2130.f3176, C0458.f2633);
                    c0136.f286 = c0213;
                    this.f1480.add(c0136);
                }
            } else if (c0418 instanceof C0426) {
                C0526 c0526 = new C0526();
                c0526.f3074 = m5140(c0412.f2130.f3176, C0458.f2616);
                c0526.f3073 = m5140(c0412.f2130.f3176, C0458.f2633);
                c0526.f3071 = (C0426) c0412.f2129.f1271;
                this.f2695.add(c0526);
            } else if (c0418 instanceof C0539) {
                C0526 c0527 = new C0526();
                c0527.f3074 = m5140(c0412.f2130.f3176, C0458.f2616);
                c0527.f3073 = m5140(c0412.f2130.f3176, C0458.f2633);
                c0527.f3072 = (C0539) c0412.f2129.f1271;
                this.f2695.add(c0527);
            }
        }
    }

    public final C0526 m5137(String str) {
        for (int i = 0; i < this.f2695.size(); i++) {
            C0526 c0526 = (C0526) this.f2695.get(i);
            if (c0526.f3074.equals(str)) {
                return c0526;
            }
        }
        if (!this.f2693 || this.f2695.size() <= 0) {
            return null;
        }
        return (C0526) this.f2695.get(0);
    }

    @Override
    public PrivateKey mo3694(String str) {
        C0593 c0593;
        byte[] bArrM5139;
        byte[] bArr;
        String str2;
        C0526 c0526M5137 = m5137(str);
        if (c0526M5137 == null) {
            throw new C0414(289, C0128.m3245(655, 27, 45));
        }
        try {
            C0426 c0426 = c0526M5137.f3071;
            if (c0426 == null) {
                c0593 = c0526M5137.f3072;
                if (c0593 != null) {
                    bArr = null;
                } else {
                    bArrM5139 = null;
                }
                if (c0593 == null) {
                    c0593 = new C0593();
                    c0593.m4680(bArr);
                }
                str2 = c0593.f3283.f811.f2701;
                this.f2694 = str2;
                if (str2.equals(C0458.f2620)) {
                    C0348 c0348 = new C0348();
                    c0348.m4680(c0593.f3284.f2148);
                    return C0671.m5905(C0128.m3245(682, 3, 101)).generatePrivate(new RSAPrivateCrtKeySpec(new BigInteger(1, c0348.f1859.f2148), new BigInteger(1, c0348.f1861.f2148), new BigInteger(1, c0348.f1854.f2148), new BigInteger(1, c0348.f1857.f2148), new BigInteger(1, c0348.f1862.f2148), new BigInteger(1, c0348.f1853.f2148), new BigInteger(1, c0348.f1863.f2148), new BigInteger(1, c0348.f1860.f2148)));
                }
                if (this.f2694.equals(C0458.f2668)) {
                    C0470 c0470 = new C0470();
                    c0470.m4680(c0593.f3283.f812.mo3690());
                    C0646 c0646 = new C0646();
                    c0646.m4680(c0593.f3284.f2148);
                    return C0671.m5905(C0128.m3245(685, 3, 93)).generatePrivate(new DSAPrivateKeySpec(new BigInteger(1, c0646.f2148), new BigInteger(1, c0470.f2696.f2148), new BigInteger(1, c0470.f2697.f2148), new BigInteger(1, c0470.f2698.f2148)));
                }
                if (this.f2694.equals(C0458.f2650)) {
                    C0538 c0538 = new C0538();
                    C0671.m5973(c0538, 3, bArr);
                    return C0671.m5967(c0538, this.f1478).f2122;
                }
                if (!this.f2694.equals(C0458.f2646) && !this.f2694.equals(C0458.f2658)) {
                    return null;
                }
                C0538 c0539 = new C0538();
                C0671.m5973(c0539, 4, bArr);
                return C0671.m5967(c0539, this.f1478).f2122;
            }
            C0374 c0374 = c0426.f2189;
            bArrM5139 = m5139(c0426.f2190.f2148, c0374.f811.f2701, c0374.f812);
            bArr = bArrM5139;
            c0593 = null;
            if (c0593 == null) {
                c0593 = new C0593();
                c0593.m4680(bArr);
            }
            str2 = c0593.f3283.f811.f2701;
            this.f2694 = str2;
            if (str2.equals(C0458.f2620)) {
                C0348 c0349 = new C0348();
                c0349.m4680(c0593.f3284.f2148);
                return C0671.m5905(C0128.m3245(682, 3, 101)).generatePrivate(new RSAPrivateCrtKeySpec(new BigInteger(1, c0349.f1859.f2148), new BigInteger(1, c0349.f1861.f2148), new BigInteger(1, c0349.f1854.f2148), new BigInteger(1, c0349.f1857.f2148), new BigInteger(1, c0349.f1862.f2148), new BigInteger(1, c0349.f1853.f2148), new BigInteger(1, c0349.f1863.f2148), new BigInteger(1, c0349.f1860.f2148)));
            }
            if (this.f2694.equals(C0458.f2668)) {
                C0470 c0471 = new C0470();
                c0471.m4680(c0593.f3283.f812.mo3690());
                C0646 c0647 = new C0646();
                c0647.m4680(c0593.f3284.f2148);
                return C0671.m5905(C0128.m3245(685, 3, 93)).generatePrivate(new DSAPrivateKeySpec(new BigInteger(1, c0647.f2148), new BigInteger(1, c0471.f2696.f2148), new BigInteger(1, c0471.f2697.f2148), new BigInteger(1, c0471.f2698.f2148)));
            }
            if (this.f2694.equals(C0458.f2650)) {
                C0538 c05310 = new C0538();
                C0671.m5973(c05310, 3, bArr);
                return C0671.m5967(c05310, this.f1478).f2122;
            }
            if (!this.f2694.equals(C0458.f2646)) {
                return null;
            }
            C0538 c05311 = new C0538();
            C0671.m5973(c05311, 4, bArr);
            return C0671.m5967(c05311, this.f1478).f2122;
        } catch (Exception unused) {
            throw new C0414(289, C0128.m3245(688, 27, 59));
        }
    }

    public final void m5138(byte[] bArr) throws C0414 {
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
                m5136(((C0226) c0419).f2148);
            } else if (c0419 instanceof C0271) {
                C0094 c0094 = ((C0271) c0419).f1380;
                C0286 c0286 = c0094.f77;
                m5136(m5139(c0094.f78.f2148, c0286.f811.f2701, c0286.f812));
            }
        }
    }

    @Override
    public void mo3700(int i, byte[] bArr, String str) throws Throwable {
        this.f1477 = str;
        C0259.m3845(bArr);
        this.f1473 = i;
        if (i == 2) {
            bArr = C0671.m5919(C0259.m3853(bArr));
            if (bArr == null || bArr.length == 0) {
                return;
            }
        } else if (bArr.length == 0) {
            return;
        }
        if (!C0259.m3861(bArr)) {
            bArr = C0259.m3900(1, bArr, 0, bArr.length);
        }
        try {
            m5138(bArr);
        } catch (C0414 e) {
            throw new C0414(e, C0128.m3245(0, 87, 19));
        }
    }

    public C0469(boolean z) {
        this.f2694 = "";
        this.f2695 = new Vector();
        this.f2693 = z;
    }

    public final String m5140(Vector vector, String str) {
        for (int i = 0; i < vector.size(); i++) {
            C0401 c0401 = (C0401) vector.get(i);
            if (c0401.f1381.f2701.equals(str)) {
                C0418 c0418M5511 = c0401.f1382.m5511(0);
                byte[] bArr = c0418M5511.f2148;
                if (str.equals(C0458.f2616) && c0418M5511.f2150 == 4) {
                    return C0663.m5891("").append(C0259.m3846(bArr, 0, bArr.length)).toString();
                }
                if (str.equals(C0458.f2633) && c0418M5511.f2150 == 30) {
                    String strM3848 = C0259.m3848(bArr, C0128.m3245(87, 8, 74));
                    while (strM3848.length() > 0 && strM3848.charAt(strM3848.length() - 1) == 0) {
                        strM3848 = strM3848.substring(0, strM3848.length() - 1);
                    }
                    return strM3848;
                }
            }
        }
        return "";
    }

    public final byte[] m5139(byte[] bArr, String str, C0418 c0418) {
        byte[] bArrM5141 = m5141(bArr, str, c0418);
        if ((this.f1477.equals("") || this.f1477.equals(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR)) && !C0530.m5357(bArrM5141)) {
            String str2 = this.f1477;
            try {
                this.f1477 = str2.equals("") ? WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR : "";
                byte[] bArrM5142 = m5141(bArr, str, c0418);
                if (C0530.m5357(bArrM5142)) {
                    bArrM5141 = bArrM5142;
                }
                return bArrM5141;
            } catch (Exception unused) {
            } finally {
                this.f1477 = str2;
            }
        }
        return bArrM5141;
    }

    @Override
    public String mo3692(String str, byte[] bArr) {
        C0136 c0136 = null;
        for (int i = 0; i < this.f1480.size(); i++) {
            C0136 c0137 = (C0136) this.f1480.get(i);
            if (str.equals("*") || C0671.m5950(C0283.m4048(c0137.f286)).indexOf(C0671.m5950(str)) > -1) {
                c0136 = c0137;
            }
            if (C0259.m3896(bArr, m4063(c0137.f286))) {
                c0136 = c0137;
            }
        }
        return C0671.m5960(c0136.f286.f793.f1731.f575);
    }

    public final byte[] m5141(byte[] bArr, String str, C0418 c0418) {
        int i;
        String strM3245;
        if (str.equals(C0128.m3245(95, 21, 110))) {
            C0530 c0530 = new C0530(c0418.f2148);
            C0530 c0530M5361 = c0530.m5361(0).m5361(1);
            byte[] bArrM5373 = c0530M5361.m5373();
            int iM5389 = c0530M5361.m5389();
            String strM5380 = c0530M5361.m5390().m5380();
            C0530 c0530M5362 = c0530.m5361(1);
            String strM5381 = c0530M5362.m5380();
            byte[] bArrM5374 = c0530M5362.m5373();
            if (strM5380.equals(C0128.m3245(116, 18, 33))) {
                String strM3246 = C0128.m3245(134, 10, 11);
                if (strM5381.equals(C0128.m3245(236, 23, 66))) {
                    strM3245 = C0128.m3245(259, 11, 44);
                } else if (strM5381.equals(C0128.m3245(RotationOptions.ROTATE_270, 22, 99))) {
                    strM3245 = C0128.m3245(292, 11, 116);
                } else if (strM5381.equals(C0128.m3245(303, 18, 16))) {
                    strM3245 = C0128.m3245(321, 12, 6);
                } else {
                    throw new C0414(271, C0128.m3245(333, 98, 92) + strM5381);
                }
                return C0671.m5990(bArr, this.f1477, strM3245, bArrM5373, false, strM3246, iM5389, bArrM5374);
            }
            throw new C0414(271, C0128.m3245(144, 92, 13) + strM5380);
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
        c0277.f1404 = C0128.m3245(431, 4, 16);
        c0277.f1403 = this.f1477;
        try {
            byte[] bArrM3995 = c0277.m3995(c0183.f618.f1869, i / 8);
            byte[] bArrM3996 = c0277.m3996(c0183.f618.f1869, 8);
            if (!str.equals(C0458.f2653) && !str.equals(C0458.f2642)) {
                if (!str.equals(C0458.f2605) && !str.equals(C0458.f2643)) {
                    if (!str.equals(C0458.f2638) && !str.equals(C0458.f2645)) {
                        return C0320.f1706;
                    }
                    AbstractC0313 abstractC0313M4220 = C0308.m4220(C0128.m3245(TypedValues.PositionType.TYPE_DRAWPATH, 3, 76));
                    abstractC0313M4220.f1686 = 2;
                    abstractC0313M4220.f1690 = 1;
                    abstractC0313M4220.m4284(i);
                    return abstractC0313M4220.mo3118(bArrM3995, bArrM3996).mo3122(bArr, 0, bArr.length);
                }
                AbstractC0313 abstractC0313M4221 = C0308.m4220(C0128.m3245(498, 4, 80));
                abstractC0313M4221.f1686 = 2;
                abstractC0313M4221.f1690 = 1;
                return abstractC0313M4221.mo3118(bArrM3995, bArrM3996).mo3122(bArr, 0, bArr.length);
            }
            if (!C0320.f1718) {
                return C0558.m5508(bArr, bArrM3995);
            }
            throw new C0537(C0128.m3245(435, 63, 106));
        } catch (Exception e) {
            throw new C0414(e, 271, C0128.m3245(TypedValues.PositionType.TYPE_SIZE_PERCENT, 69, 96));
        }
    }

    @Override
    public String mo3695(String str) {
        C0526 c0526M5137 = m5137(str);
        return c0526M5137 == null ? "" : c0526M5137.f3073;
    }

    @Override
    public boolean mo3693(String str) {
        return m5137(str) != null;
    }

    @Override
    public int mo3698() {
        if (this.f2695.size() <= 0) {
            return -1;
        }
        C0426 c0426 = ((C0526) this.f2695.get(0)).f3071;
        C0374 c0374 = c0426.f2189;
        byte[] bArrM5139 = m5139(c0426.f2190.f2148, c0374.f811.f2701, c0374.f812);
        C0593 c0593 = new C0593();
        c0593.m4680(bArrM5139);
        String str = c0593.f3283.f811.f2701;
        this.f2694 = str;
        if (str.equals(C0458.f2620)) {
            return 1;
        }
        if (this.f2694.equals(C0458.f2668)) {
            return 2;
        }
        if (this.f2694.equals(C0458.f2650)) {
            return 3;
        }
        return (this.f2694.equals(C0458.f2646) || this.f2694.equals(C0458.f2658)) ? 4 : -1;
    }

    @Override
    public void mo3702(C0489 c0489) throws Exception {
        for (int i = 0; i < this.f1480.size(); i++) {
            C0213 c0213 = ((C0136) this.f1480.get(i)).f286;
            c0489.m5170(C0259.m3878(m4063(c0213), C0128.m3245(715, 11, 19)), C0671.m5958(c0213.f793.f1731.f585.f714), m4053(c0213), m4060(c0213), mo3693(((C0136) this.f1480.get(i)).f291));
        }
    }

    @Override
    public PublicKey mo3699(String str, byte[] bArr) {
        C0671.m5935(this.f1480);
        C0136 c0136 = null;
        for (int i = 0; i < this.f1480.size(); i++) {
            C0136 c0137 = (C0136) this.f1480.get(i);
            if (str.equals("*") || C0283.m4048(c0137.f286).indexOf(str) > -1) {
                c0136 = c0137;
            }
            if (C0259.m3896(bArr, m4063(c0137.f286))) {
                c0136 = c0137;
            }
        }
        if (c0136 == null) {
            return null;
        }
        return m4057(c0136.f286);
    }
}
