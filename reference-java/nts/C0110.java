package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.net.SyslogConstants;
import java.math.BigInteger;

public class C0110 extends AbstractC0122 {

    public static BigInteger f143;

    public BigInteger f144;

    public BigInteger f145;

    public BigInteger f146;

    public int f147;

    public BigInteger f148;

    public BigInteger f149;

    public boolean f150;

    static {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(2L);
        f143 = bigIntegerValueOf;
        bigIntegerValueOf.pow(SyslogConstants.LOG_LOCAL4);
    }

    public C0110() {
        new C0235();
        this.f146 = null;
        this.f149 = null;
        this.f144 = null;
        this.f145 = null;
        this.f148 = null;
        this.f147 = 0;
        this.f150 = false;
        this.f3625 = new C0509[]{new C0509(512, 4096, 64)};
        this.f3626 = 1024;
    }

    public void m3156(C0130 c0130) throws C0537 {
        byte[] bArr;
        byte[] bArr2 = c0130.f259;
        if (bArr2 != null) {
            BigInteger bigInteger = new BigInteger(1, bArr2);
            if (bigInteger.intValue() != 0 && (bArr = c0130.f258) != null) {
                BigInteger bigInteger2 = new BigInteger(1, bArr);
                if (bigInteger2.intValue() != 0 && c0130.f256 != null && (c0130.f257 != null || c0130.f255 != null)) {
                    if (this.f150 && !C0308.m4252(this.f3625, bigInteger.bitLength())) {
                        C0308.m4247(this.f3625);
                        throw null;
                    }
                    this.f3626 = bigInteger.bitLength();
                    this.f146 = bigInteger;
                    this.f149 = bigInteger2;
                    this.f144 = new BigInteger(1, c0130.f256);
                    byte[] bArr3 = c0130.f257;
                    if (bArr3 != null) {
                        this.f145 = new BigInteger(1, bArr3);
                    }
                    byte[] bArr4 = c0130.f255;
                    if (bArr4 != null) {
                        this.f148 = new BigInteger(1, bArr4);
                        return;
                    }
                    return;
                }
            }
        }
        throw new C0537(C0642.m5845(88, 37, 53));
    }

    public boolean m3157(byte[] bArr, String str, byte[] bArr2) throws C0537 {
        byte[] bArr3;
        int length;
        byte[] bArr4;
        BigInteger bigInteger;
        BigInteger bigInteger2;
        int i;
        int i2;
        int i3;
        if (bArr != null) {
            if (str == null || !(str.equals(C0642.m5845(351, 4, 79)) || str.equals(C0642.m5845(355, 13, 58)) || str.equals(C0642.m5845(368, 6, 118)) || str.equals(C0642.m5845(374, 22, 111)) || str.equals(C0642.m5845(396, 6, 67)) || str.equals(C0642.m5845(TypedValues.CycleType.TYPE_VISIBILITY, 22, 6)) || str.equals(C0642.m5845(TypedValues.CycleType.TYPE_WAVE_OFFSET, 6, 38)) || str.equals(C0642.m5845(430, 22, 20)) || str.equals(C0642.m5845(452, 6, 101)) || str.equals(C0642.m5845(458, 22, 107)) || str.equals(C0642.m5845(480, 9, 38)))) {
                throw new C0537(C0642.m5845(489, 74, 96));
            }
            if (bArr2 != 0) {
                if (this.f144 != null) {
                    if (bArr2.length >= bArr.length) {
                        if (bArr2.length >= 6 && bArr2[0] == '0') {
                            int i4 = bArr2[1];
                            if ((i4 & 255) + 1 <= bArr2.length && bArr2[2] == 2 && (i3 = (i2 = (i = bArr2[3]) & 255) + 4) < bArr2.length) {
                                int i5 = i2 + 5;
                                if (bArr2[i3] == 2 && i5 + (bArr2[i5] & 255) < bArr2.length) {
                                    bArr3 = new byte[i];
                                    System.arraycopy(bArr2, 4, bArr3, 0, i);
                                    int i6 = i + 6;
                                    int i7 = bArr2[i + 5];
                                    if (i7 > 0) {
                                        bArr4 = new byte[i7];
                                        System.arraycopy(bArr2, i6, bArr4, 0, i7);
                                        if (i4 == i7 + i + 4) {
                                            bigInteger = new BigInteger(1, bArr3);
                                            bigInteger2 = new BigInteger(1, bArr4);
                                            if (BigInteger.ZERO.compareTo(bigInteger) < 0 && this.f149.compareTo(bigInteger) > 0 && BigInteger.ZERO.compareTo(bigInteger2) < 0 && this.f149.compareTo(bigInteger2) > 0) {
                                                BigInteger bigInteger3 = new BigInteger(1, bArr);
                                                BigInteger bigIntegerModInverse = bigInteger2.modInverse(this.f149);
                                                return this.f144.modPow(bigInteger3.multiply(bigIntegerModInverse).mod(this.f149), this.f146).multiply(this.f145.modPow(bigInteger.multiply(bigIntegerModInverse).mod(this.f149), this.f146)).mod(this.f146).mod(this.f149).equals(bigInteger);
                                            }
                                        }
                                    }
                                } else {
                                    bArr3 = new byte[bArr.length];
                                    System.arraycopy(bArr2, 0, bArr3, 0, bArr.length);
                                    length = bArr2.length - bArr.length;
                                    if (length > 0) {
                                        bArr4 = new byte[length];
                                        System.arraycopy(bArr2, bArr.length, bArr4, 0, bArr2.length - bArr.length);
                                        bigInteger = new BigInteger(1, bArr3);
                                        bigInteger2 = new BigInteger(1, bArr4);
                                        if (BigInteger.ZERO.compareTo(bigInteger) < 0) {
                                            BigInteger bigInteger4 = new BigInteger(1, bArr);
                                            BigInteger bigIntegerModInverse2 = bigInteger2.modInverse(this.f149);
                                            return this.f144.modPow(bigInteger4.multiply(bigIntegerModInverse2).mod(this.f149), this.f146).multiply(this.f145.modPow(bigInteger.multiply(bigIntegerModInverse2).mod(this.f149), this.f146)).mod(this.f146).mod(this.f149).equals(bigInteger);
                                        }
                                    }
                                }
                            } else {
                                bArr3 = new byte[bArr.length];
                                System.arraycopy(bArr2, 0, bArr3, 0, bArr.length);
                                length = bArr2.length - bArr.length;
                                if (length > 0) {
                                    bArr4 = new byte[length];
                                    System.arraycopy(bArr2, bArr.length, bArr4, 0, bArr2.length - bArr.length);
                                    bigInteger = new BigInteger(1, bArr3);
                                    bigInteger2 = new BigInteger(1, bArr4);
                                    if (BigInteger.ZERO.compareTo(bigInteger) < 0) {
                                        BigInteger bigInteger5 = new BigInteger(1, bArr);
                                        BigInteger bigIntegerModInverse3 = bigInteger2.modInverse(this.f149);
                                        return this.f144.modPow(bigInteger5.multiply(bigIntegerModInverse3).mod(this.f149), this.f146).multiply(this.f145.modPow(bigInteger.multiply(bigIntegerModInverse3).mod(this.f149), this.f146)).mod(this.f146).mod(this.f149).equals(bigInteger);
                                    }
                                }
                            }
                        } else {
                            bArr3 = new byte[bArr.length];
                            System.arraycopy(bArr2, 0, bArr3, 0, bArr.length);
                            length = bArr2.length - bArr.length;
                            if (length > 0) {
                                bArr4 = new byte[length];
                                System.arraycopy(bArr2, bArr.length, bArr4, 0, bArr2.length - bArr.length);
                                bigInteger = new BigInteger(1, bArr3);
                                bigInteger2 = new BigInteger(1, bArr4);
                                if (BigInteger.ZERO.compareTo(bigInteger) < 0) {
                                    BigInteger bigInteger6 = new BigInteger(1, bArr);
                                    BigInteger bigIntegerModInverse4 = bigInteger2.modInverse(this.f149);
                                    return this.f144.modPow(bigInteger6.multiply(bigIntegerModInverse4).mod(this.f149), this.f146).multiply(this.f145.modPow(bigInteger.multiply(bigIntegerModInverse4).mod(this.f149), this.f146)).mod(this.f146).mod(this.f149).equals(bigInteger);
                                }
                            }
                        }
                    }
                    return false;
                }
                throw new C0537(C0642.m5845(582, 23, 5));
            }
            throw new C0304(C0642.m5845(570, 12, 14));
        }
        throw new C0304(C0642.m5845(344, 7, 66));
    }
}
