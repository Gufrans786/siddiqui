package nts;

public abstract class AbstractC0373 extends AbstractC0444 {

    public int f1951;

    public byte[] f1949 = new byte[0];

    public byte[] f1950 = new byte[0];

    public C0509[] f1952 = null;

    static {
        C0164.m3488(0, 7, 54);
        C0164.m3488(7, 17, 48);
        C0164.m3488(24, 7, 53);
    }

    public boolean mo4467(int i) {
        return true;
    }

    public void m4468(byte[] bArr) {
        this.f1950 = (byte[]) bArr.clone();
    }

    public boolean m4470(byte[] bArr) {
        if (!mo4467(bArr.length * 8)) {
            return false;
        }
        this.f1688 = (byte[]) bArr.clone();
        return true;
    }

    @Override
    public InterfaceC0126 mo4285() throws C0537 {
        if (this.f1683 == null) {
            mo3116();
        }
        return mo3656(this.f1683, this.f1688, this.f1950);
    }

    public abstract InterfaceC0614 mo3656(byte[] bArr, byte[] bArr2, byte[] bArr3) throws C0537;

    public abstract InterfaceC0614 mo3657(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws C0537;

    @Override
    public void mo3994(byte[] bArr) {
        this.f1688 = (byte[]) bArr.clone();
    }

    @Override
    public InterfaceC0126 mo4287() throws C0537 {
        return mo3657(this.f1683, this.f1688, this.f1950, this.f1949);
    }

    public void m4469(int i) throws C0537 {
        if (i != 0) {
            int i2 = 0;
            while (true) {
                C0509[] c0509Arr = this.f1952;
                if (i2 < c0509Arr.length) {
                    C0509 c0509 = c0509Arr[i2];
                    for (int i3 = c0509.f2860; i3 <= c0509.f2859; i3 += c0509.f2858) {
                        if (i3 != i) {
                        }
                    }
                    i2++;
                } else {
                    throw new C0537(C0164.m3488(31, 24, 107));
                }
            }
        }
        this.f1951 = i;
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) throws C0537 {
        return mo3657(bArr, bArr2, this.f1950, this.f1949);
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) throws C0537 {
        return mo3656(bArr, bArr2, this.f1950);
    }
}
