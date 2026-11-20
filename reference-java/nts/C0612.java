package nts;

import java.math.BigInteger;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;

public class C0612 extends AbstractC0410 {

    public BigInteger f3363 = null;

    public BigInteger f3360 = null;

    public BigInteger f3361 = null;

    public int f3362 = -1;

    public C0612() {
        this.f2120 = 3;
    }

    public static ECParameterSpec m5636(int i) {
        try {
            return m5639(i);
        } catch (C0537 e) {
            throw new C0414(280, e.getMessage());
        }
    }

    public static ECParameterSpec m5639(int i) throws C0537 {
        int i2;
        if (i == 0) {
            i2 = 0;
        } else if (i == 1) {
            i2 = 1;
        } else {
            int i3 = 2;
            if (i == 2) {
                i2 = i3;
            } else {
                i3 = 10;
                if (i == 10) {
                    i2 = 14;
                } else if (i == 9) {
                    i2 = 12;
                } else if (i == 8) {
                    i2 = i3;
                } else {
                    i3 = 7;
                    if (i == 7) {
                        i2 = i3;
                    } else {
                        i2 = -1;
                    }
                }
            }
        }
        C0253 c0253 = (C0253) C0253.f1189.get(Integer.valueOf(i2));
        if (c0253 != null) {
            return new ECParameterSpec(new EllipticCurve(new ECFieldFp(new BigInteger(1, c0253.f1239)), new BigInteger(1, c0253.f1235), new BigInteger(1, c0253.f1227), null), new ECPoint(new BigInteger(1, c0253.f1233), new BigInteger(1, c0253.f1225)), new BigInteger(1, c0253.f1226), c0253.f1238);
        }
        throw new C0537(C0164.m3495(19986, 41, 107));
    }

    @Override
    public int mo3181() {
        BigInteger bigInteger = this.f3361;
        if (bigInteger != null) {
            return bigInteger.bitLength();
        }
        BigInteger bigInteger2 = this.f3363;
        if (bigInteger2 != null) {
            return bigInteger2.bitLength();
        }
        return 0;
    }

    public static int m5637(String str) {
        if (str == null) {
            return -1;
        }
        if (str.equalsIgnoreCase(C0164.m3495(20027, 8, 57))) {
            return 0;
        }
        if (str.equalsIgnoreCase(C0164.m3495(20035, 8, 23))) {
            return 1;
        }
        return str.equalsIgnoreCase(C0164.m3495(20043, 8, 44)) ? 2 : -1;
    }

    public static int m5638(ECParameterSpec eCParameterSpec) {
        if (eCParameterSpec == null) {
            return -1;
        }
        int iM3814 = new C0253(m5640(((ECFieldFp) eCParameterSpec.getCurve().getField()).getP()), m5640(eCParameterSpec.getCurve().getA()), m5640(eCParameterSpec.getCurve().getB()), m5640(eCParameterSpec.getGenerator().getAffineX()), m5640(eCParameterSpec.getGenerator().getAffineY()), m5640(eCParameterSpec.getOrder()), eCParameterSpec.getCurve().getSeed()).m3814();
        if (iM3814 == 0) {
            return 0;
        }
        if (iM3814 == 1) {
            return 1;
        }
        if (iM3814 == 2) {
            return 2;
        }
        if (iM3814 == 14) {
            return 10;
        }
        if (iM3814 == 12) {
            return 9;
        }
        if (iM3814 == 10) {
            return 8;
        }
        return iM3814 == 7 ? 7 : -1;
    }

    public static byte[] m5640(BigInteger bigInteger) {
        if (bigInteger == null) {
            return null;
        }
        return bigInteger.toByteArray();
    }
}
