package nts;

public class C0109 extends AbstractC0444 {
    public C0109() {
        this.f1687 = new C0509[]{new C0509(128, 256, 64)};
        this.f1684 = new C0509[]{new C0509(128, 128, 0)};
        this.f1689 = 128;
        this.f1685 = 128;
        this.f1691 = 256;
        this.f1690 = 1;
        this.f1686 = 1;
    }

    @Override
    public void mo3115() throws C0537 {
        mo3994(C0308.m4227(this.f1689 / 8));
    }

    @Override
    public void mo3116() throws C0537 {
        mo3267(C0308.m4227(this.f1691 / 8));
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) throws C0537 {
        int i = this.f1690;
        return i == 7 ? new C0292(bArr, true) : new C0102(bArr, bArr2, i, this.f1686, this.f1685);
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) throws C0537 {
        int i = this.f1690;
        return i == 7 ? new C0292(bArr, false) : new C0471(bArr, bArr2, i, this.f1686, this.f1685);
    }
}
