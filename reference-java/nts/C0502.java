package nts;

public class C0502 extends AbstractC0444 {
    public C0502() {
        C0509[] c0509Arr = new C0509[1];
        c0509Arr[0] = new C0509(C0320.f1711 ? 8 : 112, 2048, 8);
        this.f1687 = c0509Arr;
        this.f1684 = new C0509[]{new C0509(8, 2048, 8)};
        this.f1689 = 64;
        this.f1685 = 64;
        this.f1691 = 128;
        this.f1686 = 1;
    }

    public static void m5186(byte[] bArr, C0112 c0112) {
        byte[] bArr2 = new byte[bArr.length];
        c0112.mo3180(bArr2);
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
    }

    @Override
    public void mo3115() {
        mo3994(C0308.m4227(this.f1689 / 8));
    }

    @Override
    public void mo3116() throws C0537 {
        mo3267(C0308.m4227(this.f1691 / 8));
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) throws C0537 {
        if (C0320.f1715) {
            return new C0503(bArr, bArr2, this.f1690, this.f1686);
        }
        throw new C0537(C0177.m3559(18, 18, 54));
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) throws C0537 {
        if (C0320.f1715) {
            return new C0393(bArr, bArr2, this.f1690, this.f1686);
        }
        throw new C0537(C0177.m3559(0, 18, 94));
    }
}
