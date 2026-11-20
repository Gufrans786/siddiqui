package nts;

import org.bouncycastle.crypto.tls.CipherSuite;

public class C0204 extends AbstractC0373 {

    public class C0205 extends AbstractC0527 implements InterfaceC0614 {

        public byte[] f723;

        public int f724;

        public C0114 f725;

        public byte[] f726;

        public C0205(C0204 c0204, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2) throws C0537 {
            super(bArr2, 16, 16, 1, 1, i2);
            this.f725 = new C0114();
            this.f726 = null;
            this.f723 = null;
            this.f724 = 96;
            this.f3374 = true;
            this.f3373 = true;
            C0114 c0114 = this.f725;
            c0114.f190 = new int[64];
            this.f726 = bArr2;
            this.f723 = bArr3;
            this.f724 = i;
            c0114.f184 = C0422.m4686(bArr, 0, bArr.length, c0114.f190, new int[64]);
        }

        @Override
        public void mo3119() throws Exception {
            this.f3371 = m3676(this.f3371);
        }

        @Override
        public void mo3659(byte[] bArr) {
        }

        @Override
        public void mo3660(byte[] bArr, byte[] bArr2, int i) throws C0537 {
            this.f726 = bArr;
            this.f723 = bArr2;
            this.f724 = i;
        }

        public byte[] m3676(byte[] bArr) throws Exception {
            C0114 c0114 = this.f725;
            if (c0114.f179 != 2) {
                C0432.m4794(c0114);
                C0432.m4795(this.f725, this.f726);
                C0432.m4799(this.f725, this.f723);
            }
            byte[] bArr2 = new byte[bArr.length];
            C0432.m4800(this.f725, bArr, bArr2, true);
            return bArr2;
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            if (i + i2 <= bArr.length) {
                byte[] bArr2 = new byte[i2];
                byte[] bArr3 = new byte[i2];
                System.arraycopy(bArr, i, bArr3, 0, i2);
                byte[] bArrM3676 = m3676(bArr3);
                byte[] bArr4 = new byte[this.f724 / 8];
                C0432.m4792(this.f725, bArr4);
                this.f725.f189 = bArr4;
                return bArrM3676;
            }
            throw new Exception(C0164.m3499(0, 58, 106));
        }

        @Override
        public byte[] mo3661() {
            return this.f725.f189;
        }
    }

    public class C0206 extends AbstractC0606 implements InterfaceC0614 {

        public byte[] f727;

        public byte[] f728;

        public C0114 f729;

        public byte[] f730;

        public int f731;

        public C0206(C0204 c0204, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, int i2) throws C0537 {
            super(bArr2, 16, 16, 1, 1, i2);
            this.f729 = new C0114();
            this.f730 = null;
            this.f727 = null;
            this.f728 = null;
            this.f731 = 96;
            this.f3374 = true;
            this.f3373 = true;
            C0114 c0114 = this.f729;
            c0114.f190 = new int[64];
            this.f730 = bArr2;
            this.f727 = bArr3;
            this.f728 = bArr4;
            this.f731 = i;
            c0114.f184 = C0422.m4686(bArr, 0, bArr.length, c0114.f190, new int[64]);
        }

        @Override
        public void mo3123() throws Exception {
            this.f3371 = m3677(this.f3371);
        }

        @Override
        public void mo3663(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) throws C0537 {
            this.f730 = bArr;
            this.f727 = bArr2;
            this.f728 = bArr3;
            this.f731 = i;
        }

        public byte[] m3677(byte[] bArr) throws Exception {
            C0114 c0114 = this.f729;
            if (c0114.f179 != 2) {
                C0432.m4794(c0114);
                C0432.m4795(this.f729, this.f730);
                C0432.m4799(this.f729, this.f727);
            }
            byte[] bArr2 = new byte[bArr.length];
            C0432.m4800(this.f729, bArr2, bArr, false);
            return bArr2;
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            if (i + i2 <= bArr.length) {
                if (this.f728.length <= 0 && this.f731 != 0) {
                    throw new C0414(C0164.m3499(116, 22, 51));
                }
                String strM3499 = C0164.m3499(CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 38, 105);
                if (this.f731 / 8 == this.f728.length) {
                    byte[] bArr2 = new byte[i2];
                    int i3 = 0;
                    System.arraycopy(bArr, i, bArr2, 0, i2);
                    byte[] bArrM3677 = m3677(bArr2);
                    byte[] bArr3 = new byte[this.f728.length];
                    C0432.m4792(this.f729, bArr3);
                    while (true) {
                        byte[] bArr4 = this.f728;
                        if (i3 >= bArr4.length) {
                            return bArrM3677;
                        }
                        if (bArr3[i3] != bArr4[i3]) {
                            throw new C0414(2001, strM3499);
                        }
                        i3++;
                    }
                } else {
                    throw new C0414(2001, strM3499);
                }
            } else {
                throw new Exception(C0164.m3499(58, 58, 65));
            }
        }

        @Override
        public byte[] mo3661() {
            return this.f728;
        }

        @Override
        public void mo3659(byte[] bArr) {
            this.f728 = bArr;
        }
    }

    public C0204() throws C0537 {
        this.f1684 = new C0509[]{new C0509(128, 128, 0)};
        this.f1687 = new C0509[]{new C0509(128, 256, 8)};
        this.f1952 = new C0509[]{new C0509(96, 128, 8)};
        this.f1691 = 256;
        this.f1689 = 128;
        this.f1685 = 128;
        m4469(96);
    }

    @Override
    public void mo3115() throws C0537 {
        mo3994(C0308.m4227(12));
    }

    @Override
    public void mo3116() throws C0537 {
        mo3267(C0308.m4227(this.f1691 / 8));
    }

    @Override
    public InterfaceC0614 mo3656(byte[] bArr, byte[] bArr2, byte[] bArr3) throws C0537 {
        return new C0205(this, bArr, bArr2, bArr3, this.f1951, this.f1685);
    }

    @Override
    public InterfaceC0614 mo3657(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws C0537 {
        return new C0206(this, bArr, bArr2, bArr3, bArr4, this.f1951, this.f1685);
    }
}
