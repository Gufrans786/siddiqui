package nts;

import java.security.SecureRandom;

public class C0384 extends AbstractC0264 {

    public static final byte[] f1975 = {0};

    public static final byte[] f1976 = {1};

    public byte[] f1980;

    public byte[] f1985;

    public SecureRandom f1986 = null;

    public AbstractC0317 f1984 = C0308.m4217(C0558.m5481(">$.||~\b\u0012\u0018I8\"(z}z\u0019\u0003\t[[Y\u0007\u001d\u0017BAC]ANI-7=hkiwkcaa{q\".#0* uvtm@YAN\u000bFFR\u0007GWGBTD\u001ew]NRd|ktp\u000e\u0015\u0010HK\u0006\u0006\u001aO\u001f\u0018\u0012\u0013\u000f\u0013\u0012\u0002\u0000KX~esy}s6}yo{=pzpftk", 0, 6, 75));

    public int f1979 = 440;

    public int f1983 = 32;

    public byte[] f1977 = null;

    public byte[] f1978 = null;

    public boolean f1982 = false;

    public long f1981 = 0;

    public final void m4519(byte[] bArr, byte[] bArr2) throws C0537 {
        if (bArr.length * 8 > 524288) {
            throw new C0537(C0558.m5481(">$.||~\b\u0012\u0018I8\"(z}z\u0019\u0003\t[[Y\u0007\u001d\u0017BAC]ANI-7=hkiwkcaa{q\".#0* uvtm@YAN\u000bFFR\u0007GWGBTD\u001ew]NRd|ktp\u000e\u0015\u0010HK\u0006\u0006\u001aO\u001f\u0018\u0012\u0013\u000f\u0013\u0012\u0002\u0000KX~esy}s6}yo{=pzpftk", 99, 19, 97));
        }
        if (this.f1981 > 281474976710656L || this.f1982) {
            byte[] bArr3 = new byte[this.f1983];
            this.f1986.nextBytes(bArr3);
            m4520(f1976, this.f1985, bArr3, bArr2);
        }
        byte[] bArr4 = new byte[1];
        if (bArr2 != null) {
            bArr4[0] = 2;
            this.f1984.mo3250();
            this.f1984.mo3412(bArr4, 0, 1);
            AbstractC0317 abstractC0317 = this.f1984;
            byte[] bArr5 = this.f1985;
            abstractC0317.mo3412(bArr5, 0, bArr5.length);
            this.f1984.mo3122(bArr2, 0, bArr2.length);
            C0308.m4264(this.f1984);
            m4521(this.f1985, this.f1984.f1702);
        }
        int length = bArr.length;
        int iM4221 = C0308.m4221(this.f1984) / 8;
        int i = ((length + iM4221) - 1) / iM4221;
        byte[] bArr6 = this.f1985;
        byte[] bArr7 = new byte[bArr6.length];
        System.arraycopy(bArr6, 0, bArr7, 0, bArr6.length);
        this.f1984.mo3250();
        int i2 = 0;
        for (int i3 = 0; i3 <= i; i3++) {
            int i4 = iM4221 + i2 > length ? length - i2 : iM4221;
            System.arraycopy(this.f1984.m4300(bArr7), 0, bArr, i2, i4);
            i2 += i4;
            m4521(bArr7, f1976);
        }
        bArr4[0] = 3;
        this.f1984.mo3250();
        this.f1984.mo3412(bArr4, 0, 1);
        AbstractC0317 abstractC0318 = this.f1984;
        byte[] bArr8 = this.f1985;
        abstractC0318.mo3122(bArr8, 0, bArr8.length);
        long j = this.f1981;
        m4521(this.f1985, this.f1984.f1702);
        m4521(this.f1985, this.f1980);
        m4521(this.f1985, new byte[]{(byte) (j >> 24), (byte) (j >> 16), (byte) (j >> 8), (byte) j});
        this.f1981++;
    }

    @Override
    public void mo3180(byte[] bArr) {
        if (bArr.length != 0) {
            try {
                if (this.f1986 == null) {
                    this.f1986 = new SecureRandom();
                    m4520(m4522(), this.f1977, this.f1978, null);
                }
                m4519(bArr, null);
            } catch (Exception e) {
                throw new C0414(e.getMessage());
            }
        }
    }

    public final byte[] m4522() {
        byte[] bArr = new byte[this.f1983];
        this.f1986.nextBytes(bArr);
        return bArr;
    }

    public final byte[] m4523(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws C0537 {
        int iM4221 = C0308.m4221(this.f1984) / 8;
        int i = this.f1979 / 8;
        char c = 1;
        int i2 = ((i + iM4221) - 1) / iM4221;
        byte[] bArr5 = new byte[i];
        int i3 = 1;
        byte b = 1;
        int i4 = 0;
        while (i3 <= i2) {
            int i5 = this.f1979;
            char c2 = c;
            int i6 = iM4221;
            int i7 = i2;
            byte[] bArr6 = new byte[5];
            bArr6[0] = b;
            bArr6[c2] = (byte) (i5 >> 24);
            bArr6[2] = (byte) (i5 >> 16);
            bArr6[3] = (byte) (i5 >> 8);
            bArr6[4] = (byte) i5;
            this.f1984.mo3250();
            this.f1984.mo3412(bArr6, 0, 5);
            if (bArr != null) {
                this.f1984.mo3412(bArr, 0, bArr.length);
            }
            if (bArr2 != null) {
                this.f1984.mo3412(bArr2, 0, bArr2.length);
            }
            if (bArr3 != null) {
                this.f1984.mo3412(bArr3, 0, bArr3.length);
            }
            if (bArr4 != null) {
                this.f1984.mo3412(bArr4, 0, bArr4.length);
            }
            int i8 = i6 + i4 > i ? i - i4 : i6;
            this.f1984.mo3122(C0320.f1706, 0, 0);
            System.arraycopy(this.f1984.f1702, 0, bArr5, i4, i8);
            i4 += i8;
            b = (byte) (b + 1);
            i3++;
            c = c2;
            iM4221 = i6;
            i2 = i7;
        }
        return bArr5;
    }

    public final void m4521(byte[] bArr, byte[] bArr2) {
        int i = 0;
        for (int i2 = 1; i2 <= bArr2.length; i2++) {
            int i3 = (bArr[bArr.length - i2] & 255) + (bArr2[bArr2.length - i2] & 255) + i;
            i = i3 > 255 ? 1 : 0;
            bArr[bArr.length - i2] = (byte) i3;
        }
        for (int length = bArr2.length + 1; length <= bArr.length; length++) {
            int i4 = (bArr[bArr.length - length] & 255) + i;
            i = i4 > 255 ? 1 : 0;
            bArr[bArr.length - length] = (byte) i4;
        }
    }

    public final void m4520(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws C0537 {
        byte[] bArrM4523 = m4523(bArr, bArr2, bArr3, bArr4);
        this.f1985 = bArrM4523;
        this.f1980 = m4523(f1975, bArrM4523, null, null);
        this.f1981 = 1L;
    }
}
