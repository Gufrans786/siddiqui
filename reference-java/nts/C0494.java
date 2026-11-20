package nts;

public class C0494 extends AbstractC0373 {

    public long f2807 = 0;

    public Boolean f2808;

    public class C0495 extends AbstractC0527 implements InterfaceC0614 {

        public C0189 f2809;

        public C0495(C0494 c0494, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, long j, boolean z) throws C0537 {
            super(bArr2, 16, 16, 1, 1, 16);
            this.f2809 = new C0189();
            this.f3374 = true;
            this.f3373 = true;
            this.f2809.m3627(bArr, bArr2, bArr3, null, i, j, true);
            this.f2809.f671 = z;
        }

        @Override
        public void mo3119() throws Exception {
            C0189 c0189 = this.f2809;
            byte[] bArrM3629 = c0189.m3629(this.f3371, true);
            c0189.f662 = true;
            this.f3371 = bArrM3629;
        }

        @Override
        public void mo3660(byte[] bArr, byte[] bArr2, int i) throws C0537 {
            this.f2809.m3626(bArr, bArr2, null, i);
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            return this.f2809.m3628(bArr, i, i2);
        }

        @Override
        public byte[] mo3661() {
            return this.f2809.f663;
        }

        @Override
        public void mo3659(byte[] bArr) {
            throw new C0414(C0558.m5481("\u0002(&6:25`,/#\"$>i;2\"u 25\u007f", 0, 23, 80));
        }
    }

    public class C0496 extends AbstractC0606 implements InterfaceC0614 {

        public C0189 f2810;

        public C0496(C0494 c0494, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, long j, boolean z) throws C0537 {
            super(bArr2, 16, 16, 1, 1, 16);
            this.f2810 = new C0189();
            this.f3374 = true;
            this.f3373 = true;
            this.f2810.m3627(bArr, bArr2, bArr3, bArr4, 16, j, false);
            this.f2810.f671 = z;
        }

        @Override
        public void mo3123() throws Exception {
            C0189 c0189 = this.f2810;
            byte[] bArrM3629 = c0189.m3629(this.f3371, false);
            c0189.f662 = false;
            this.f3371 = bArrM3629;
        }

        @Override
        public void mo3663(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) throws C0537 {
            this.f2810.m3626(bArr, bArr2, bArr3, i);
        }

        @Override
        public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
            return this.f2810.m3628(bArr, i, i2);
        }

        @Override
        public byte[] mo3661() {
            return this.f2810.f663;
        }

        @Override
        public void mo3659(byte[] bArr) {
            this.f2810.f663 = bArr;
        }
    }

    public C0494() throws C0537 {
        this.f2808 = false;
        this.f1684 = new C0509[]{new C0509(128, 128, 0)};
        this.f1687 = new C0509[]{new C0509(256, 256, 0)};
        this.f1952 = new C0509[]{new C0509(128, 128, 64)};
        this.f1691 = 256;
        this.f1689 = 128;
        this.f1685 = 128;
        this.f2808 = false;
        m4469(128);
    }

    @Override
    public boolean mo4467(int i) {
        return i == 64 || i == 96;
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
        return new C0495(this, bArr, bArr2, bArr3, this.f1951, this.f2807, this.f2808.booleanValue());
    }

    @Override
    public InterfaceC0614 mo3657(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws C0537 {
        return new C0496(this, bArr, bArr2, bArr3, bArr4, this.f2807, this.f2808.booleanValue());
    }
}
