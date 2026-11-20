package nts;

public class C0276 extends AbstractC0444 {

    public long f1401 = 0;

    public C0276() {
        this.f1687 = new C0509[]{new C0509(256, 256, 0)};
        this.f1684 = new C0509[]{new C0509(512, 512, 0)};
        this.f1689 = 512;
        this.f1685 = 512;
        this.f1691 = 256;
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
        return new C0386(bArr, bArr2, this.f1690, this.f1686, this.f1401);
    }

    @Override
    public void mo3994(byte[] bArr) {
        this.f1688 = (byte[]) bArr.clone();
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) throws C0537 {
        return new C0655(bArr, bArr2, this.f1690, this.f1686, this.f1401);
    }
}
