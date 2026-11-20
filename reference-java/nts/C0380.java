package nts;

public class C0380 extends AbstractC0444 {

    public int f1965;

    public long f1964 = 0;

    public int f1966 = 1;

    public C0380() {
        this.f1965 = 0;
        this.f1687 = new C0509[]{new C0509(128, 256, 128)};
        this.f1684 = new C0509[]{new C0509(512, 512, 0)};
        this.f1689 = 512;
        this.f1685 = 512;
        this.f1691 = 256;
        this.f1965 = 20;
        this.f1686 = 1;
    }

    @Override
    public void mo3115() throws C0537 {
        mo3994(C0308.m4227(this.f1685 / 8));
    }

    public void m4480(int i) throws C0537 {
        if (i != 8 && i != 12 && i != 20) {
            throw new C0537(C0558.m5481("*\u0017\u0019]\u0014\u000e\u0015\u001b\u0013\u0005T\u001a\u0014S\u0002\u001e\u001b\u0001\b\u001eJ\u0006\u001d\u001a\u0012G\u0006\u0000B[LAomp}5)xkfy", 0, 42, 84));
        }
        this.f1965 = i;
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) throws C0537 {
        return new C0547(bArr, bArr2, this.f1690, this.f1686, this.f1964, this.f1965, this.f1966);
    }

    @Override
    public void mo3994(byte[] bArr) {
        this.f1688 = (byte[]) bArr.clone();
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) throws C0537 {
        return new C0459(bArr, bArr2, this.f1690, this.f1686, this.f1964, this.f1965, this.f1966);
    }

    @Override
    public void mo3116() throws C0537 {
        mo3267(C0308.m4227(this.f1691 / 8));
    }
}
