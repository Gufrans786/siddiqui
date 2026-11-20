package nts;

import org.bouncycastle.crypto.tls.CipherSuite;

public abstract class AbstractC0437 extends AbstractC0403 {

    public boolean f2250;

    public String f2251;

    public byte[] f2252;

    public AbstractC0317 f2253;

    public int f2254;

    public byte[] f2255;

    public byte[] f2256 = null;

    public int f2257 = 0;

    public AbstractC0317 f2258;

    public AbstractC0437(String str, byte[] bArr) throws C0537 {
        this.f2250 = false;
        this.f2253 = null;
        this.f2258 = null;
        this.f2254 = 64;
        if (C0259.m3872(str, C0642.m5847(111, 4, 75)) || str.equalsIgnoreCase(C0642.m5847(115, 6, 64)) || str.equalsIgnoreCase(C0642.m5847(121, 6, 85))) {
            this.f2254 = 64;
        } else if (str.equalsIgnoreCase(C0642.m5847(127, 6, 39)) || str.equalsIgnoreCase(C0642.m5847(133, 6, 116))) {
            this.f2254 = 128;
        } else {
            if (!str.equalsIgnoreCase(C0642.m5847(CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 3, 59)) && !str.equalsIgnoreCase(C0642.m5847(CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA, 9, 32))) {
                throw new C0537(C0642.m5847(151, 21, 124) + str + C0642.m5847(172, 18, 93));
            }
            this.f2254 = 64;
        }
        int i = this.f2254;
        this.f2252 = new byte[i];
        this.f2255 = new byte[i];
        this.f2251 = str;
        this.f2253 = mo4075(str);
        AbstractC0317 abstractC0317Mo4075 = mo4075(this.f2251);
        this.f2258 = abstractC0317Mo4075;
        this.f2250 = false;
        this.f1703 = C0308.m4221(abstractC0317Mo4075);
        this.f1702 = new byte[this.f1703 / 8];
        mo4637(bArr);
    }

    @Override
    public void mo4637(byte[] bArr) throws C0537 {
        if (this.f2250) {
            throw new C0537(C0642.m5847(190, 38, 106));
        }
        if (bArr == null) {
            this.f2102 = new byte[0];
        } else if (bArr.length > this.f2254) {
            this.f2102 = this.f2253.m4300(bArr);
        } else {
            this.f2102 = (byte[]) bArr.clone();
        }
        for (int i = 0; i < this.f2254; i++) {
            byte[] bArr2 = this.f2252;
            this.f2255[i] = 0;
            bArr2[i] = 0;
        }
        byte[] bArr3 = this.f2102;
        System.arraycopy(bArr3, 0, this.f2252, 0, bArr3.length);
        byte[] bArr4 = this.f2102;
        System.arraycopy(bArr4, 0, this.f2255, 0, bArr4.length);
        for (int i2 = 0; i2 < this.f2254; i2++) {
            byte[] bArr5 = this.f2252;
            bArr5[i2] = (byte) (bArr5[i2] ^ 54);
            byte[] bArr6 = this.f2255;
            bArr6[i2] = (byte) (bArr6[i2] ^ 92);
        }
    }

    @Override
    public void mo3250() throws C0537 {
        this.f2250 = false;
        this.f2257 = 0;
        this.f2253.mo3250();
        this.f2258.mo3250();
    }

    public AbstractC0317 mo4075(String str) throws C0537 {
        return C0308.m4217(str);
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) throws C0537 {
        if (!this.f2250) {
            this.f2253.mo3250();
            AbstractC0317 abstractC0317 = this.f2253;
            byte[] bArr2 = this.f2252;
            abstractC0317.mo3121(bArr2, 0, this.f2254, bArr2, 0);
            this.f2256 = new byte[this.f2254];
            this.f2250 = true;
        }
        int i3 = 0;
        while (i3 < i2) {
            int iMin = Math.min(this.f2256.length - this.f2257, i2 - i3);
            System.arraycopy(bArr, i + i3, this.f2256, this.f2257, iMin);
            int i4 = this.f2257 + iMin;
            this.f2257 = i4;
            i3 += iMin;
            byte[] bArr3 = this.f2256;
            if (i4 == bArr3.length) {
                this.f2253.mo3121(bArr3, 0, bArr3.length, bArr3, 0);
                this.f2257 = 0;
            }
        }
    }

    @Override
    public byte[] mo3413() throws C0537 {
        this.f2253.mo3122(this.f2256, 0, this.f2257);
        this.f2257 = 0;
        byte[] bArrM4264 = C0308.m4264(this.f2253);
        this.f2258.mo3250();
        AbstractC0317 abstractC0317 = this.f2258;
        byte[] bArr = this.f2255;
        abstractC0317.mo3121(bArr, 0, this.f2254, bArr, 0);
        this.f2258.mo3122(bArrM4264, 0, bArrM4264.length);
        System.arraycopy(this.f2258.f1702, 0, this.f1702, 0, this.f1703 / 8);
        return this.f1702;
    }
}
