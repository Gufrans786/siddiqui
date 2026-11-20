package nts;

import java.math.BigInteger;

public class C0587 {

    public int[] f3258;

    public boolean[] f3259;

    public BigInteger f3260;

    public int f3261 = 0;

    public BigInteger f3262;

    public BigInteger f3263;

    public C0587(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) throws C0537 {
        int[] iArr = new int[3511];
        this.f3258 = iArr;
        this.f3263 = bigInteger;
        this.f3262 = bigInteger2;
        this.f3260 = bigInteger3;
        iArr[0] = 1;
        int i = 1;
        int i2 = 1;
        for (int i3 = 3; i3 <= 32719; i3 += 2) {
            int i4 = 1;
            while (i4 < i && i3 % this.f3258[i4] != 0) {
                i4++;
            }
            if (i4 == i) {
                this.f3258[i2] = i3;
                i = 54 >= i2 ? i2 : 54;
                i2++;
            }
        }
        m5571();
    }

    public BigInteger m5570() throws C0537 {
        boolean[] zArr;
        int i = this.f3261;
        while (true) {
            zArr = this.f3259;
            if (i >= zArr.length) {
                break;
            }
            if (!zArr[i]) {
                this.f3261 = i;
                break;
            }
            i++;
        }
        int i2 = this.f3261;
        if (i2 != zArr.length) {
            this.f3261 = i2 + 1;
            return this.f3263.add(this.f3260.multiply(BigInteger.valueOf(i2)));
        }
        BigInteger bigIntegerAdd = this.f3263.add(this.f3260.multiply(BigInteger.valueOf(zArr.length)));
        this.f3263 = bigIntegerAdd;
        if (bigIntegerAdd.compareTo(this.f3262) > 0) {
            return null;
        }
        this.f3261 = 0;
        m5571();
        return m5570();
    }

    public void m5571() throws C0537 {
        if (this.f3260.equals(BigInteger.ZERO)) {
            throw new C0537(C0558.m5481("H{tRDP\u0003QECZBM\bEEA\u0014US\u0011jv`r\u0012", 0, 26, 63));
        }
        int iIntValue = this.f3262.subtract(this.f3263).divide(this.f3260).add(BigInteger.ONE).intValue();
        if (iIntValue >= 32768) {
            iIntValue = 32768;
        }
        this.f3259 = new boolean[iIntValue];
        for (int i = 0; i < 3511; i++) {
            BigInteger bigIntegerModInverse = this.f3260.modInverse(BigInteger.valueOf(this.f3258[i]));
            boolean[] zArr = this.f3259;
            int i2 = this.f3258[i];
            BigInteger bigInteger = this.f3263;
            BigInteger bigInteger2 = this.f3260;
            int iIntValue2 = bigIntegerModInverse.intValue();
            if (iIntValue2 > 0) {
                int iIntValue3 = ((i2 - bigInteger.mod(BigInteger.valueOf(i2)).intValue()) * iIntValue2) % i2;
                if ((bigInteger.bitLength() + 31) / 32 <= 1) {
                    if (bigInteger.add(bigInteger2.multiply(BigInteger.valueOf(iIntValue3))).intValue() == i2) {
                        iIntValue3 += i2;
                    } else {
                        iIntValue3 += i2;
                    }
                    while (iIntValue3 < this.f3259.length) {
                        zArr[iIntValue3] = true;
                        iIntValue3 += i2;
                    }
                }
                while (iIntValue3 < this.f3259.length) {
                    zArr[iIntValue3] = true;
                    iIntValue3 += i2;
                }
            }
        }
    }
}
