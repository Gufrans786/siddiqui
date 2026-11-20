package nts;

public class C0242 {

    public int f896;

    public int f897;

    public C0387 f898;

    public C0242() {
        C0387 c0387 = new C0387();
        this.f898 = c0387;
        c0387.m4541();
        this.f897 = 0;
        this.f896 = 0;
    }

    public void mo3790(byte[] bArr, int i, int i2) {
    }

    public int m3791(byte[] bArr, int i, int i2) {
        this.f898.m4569(bArr, i2);
        int i3 = i;
        while (this.f897 > 0 && i2 > 0) {
            int iM4533 = this.f898.m4533();
            int i4 = this.f896;
            int i5 = iM4533 - i4;
            int i6 = this.f897;
            if (i6 > i5) {
                i3 += i2;
                break;
            }
            int iM4534 = ((i6 + i2) + i4) - this.f898.m4533();
            i3 += iM4534;
            i2 -= iM4534;
            int i7 = this.f897;
            mo3790(this.f898.m4554(), this.f896, i7);
            this.f896 += i7;
        }
        return i3 - i;
    }
}
