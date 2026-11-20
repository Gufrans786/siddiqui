package nts;

public class C0218 extends AbstractC0373 {

    public class C0219 {

        public byte[] f804 = null;

        public byte[] f803 = null;

        public byte[] f801 = null;

        public byte[] f802 = null;

        public int f800 = 12;

        public C0219(C0218 c0218) {
        }
    }

    public class C0220 extends AbstractC0527 implements InterfaceC0614 {

        public C0301 f806;

        public C0219 f807;

        public C0220(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2) {
            super(bArr2, 16, 16, 1, 1, i2);
            this.f806 = new C0301();
            this.f807 = new C0219(C0218.this);
            this.f3374 = true;
            this.f3373 = true;
            C0219 c0219 = this.f807;
            c0219.f803 = bArr2;
            c0219.f804 = bArr;
            c0219.f801 = bArr3;
            c0219.f800 = i / 8;
        }

        @Override
        public void mo3119() throws Exception {
        }

        @Override
        public void mo3691(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
            this.f806.m4181(bArr, i, i2);
        }

        @Override
        public byte[] mo3661() {
            return this.f807.f802;
        }

        @Override
        public void mo3659(byte[] bArr) {
            this.f807.f802 = bArr;
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            this.f806.m4181(bArr, i, i2);
            C0219 c0219 = this.f807;
            c0219.f802 = new byte[c0219.f800];
            C0301 c0301 = this.f806;
            C0463.m5111(c0219, c0301.f1616, 0, c0301.f1615, true);
            return this.f806.m4182();
        }
    }

    public class C0221 extends AbstractC0606 implements InterfaceC0614 {

        public C0301 f809;

        public C0219 f810;

        public C0221(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, int i2) {
            super(bArr2, 16, 16, 1, 1, i2);
            this.f809 = new C0301();
            this.f810 = new C0219(C0218.this);
            this.f3374 = true;
            this.f3373 = true;
            C0219 c0219 = this.f810;
            c0219.f803 = bArr2;
            c0219.f804 = bArr;
            c0219.f801 = bArr3;
            c0219.f800 = i / 8;
            c0219.f802 = bArr4;
        }

        @Override
        public void mo3123() throws Exception {
        }

        @Override
        public void mo3691(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
            this.f809.m4181(bArr, i, i2);
        }

        @Override
        public byte[] mo3661() {
            return this.f810.f802;
        }

        @Override
        public void mo3659(byte[] bArr) {
            this.f810.f802 = bArr;
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            this.f809.m4181(bArr, i, i2);
            C0463.m5111(this.f810, this.f809.f1616, 0, i2, false);
            return this.f809.m4182();
        }
    }

    public C0218() throws C0537 {
        this.f1684 = new C0509[]{new C0509(128, 128, 0)};
        this.f1687 = new C0509[]{new C0509(128, 256, 64)};
        this.f1952 = new C0509[]{new C0509(8, 128, 8)};
        this.f1691 = 256;
        this.f1689 = 128;
        this.f1685 = 128;
        m4469(128);
    }

    @Override
    public void mo3115() throws C0537 {
        mo3994(C0308.m4227(11));
    }

    @Override
    public void mo3116() throws C0537 {
        mo3267(C0308.m4227(this.f1691 / 8));
    }

    @Override
    public InterfaceC0614 mo3656(byte[] bArr, byte[] bArr2, byte[] bArr3) throws C0537 {
        return new C0220(bArr, bArr2, bArr3, this.f1951, this.f1685);
    }

    @Override
    public InterfaceC0614 mo3657(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws C0537 {
        return new C0221(bArr, bArr2, bArr3, bArr4, this.f1951, this.f1685);
    }
}
