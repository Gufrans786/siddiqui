package nts;

public class C0514 extends AbstractC0444 {
    public C0514() {
        C0509[] c0509Arr = new C0509[1];
        c0509Arr[0] = new C0509(C0320.f1711 ? 40 : 112, 128, 8);
        this.f1687 = c0509Arr;
        this.f1684 = new C0509[]{new C0509(64, 64, 0)};
        this.f1689 = 64;
        this.f1685 = 64;
        this.f1691 = 128;
        this.f1690 = 1;
        this.f1686 = 1;
    }

    @Override
    public void mo3115() throws C0537 {
        mo3994(C0308.m4227(this.f1689 / 8));
    }

    @Override
    public void mo3116() throws C0537 {
        super.mo3267(C0308.m4227(this.f1691 / 8));
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) throws C0537 {
        return new C0241(bArr, bArr2, this.f1690, this.f1686, this.f1685);
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) throws C0537 {
        return new C0560(bArr, bArr2, this.f1690, this.f1686, this.f1685);
    }

    @Override
    public void mo3267(byte[] bArr) throws C0537 {
        super.mo3267(bArr);
    }
}
