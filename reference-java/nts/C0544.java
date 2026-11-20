package nts;

public class C0544 {

    public byte[] f3134;

    public int f3136;

    public int f3137;

    public int f3135 = 0;

    public int f3133 = 0;

    public C0544(int i) {
        this.f3134 = null;
        this.f3137 = i;
        this.f3136 = i - 1;
        this.f3134 = new byte[i];
    }

    public int m5431(C0328 c0328, int i) throws C0414 {
        int iM4348;
        int i2 = this.f3137 - this.f3135;
        if (i2 < i) {
            i = i2;
        }
        if (c0328.m4343() < i) {
            i = c0328.m4343();
        }
        int i3 = this.f3137;
        int i4 = this.f3133;
        int i5 = i3 - i4;
        if (i > i5) {
            iM4348 = c0328.m4348(this.f3134, i4, i5);
            if (iM4348 == i5) {
                iM4348 += c0328.m4348(this.f3134, 0, i - i5);
            }
        } else {
            iM4348 = c0328.m4348(this.f3134, i4, i);
        }
        this.f3133 = (this.f3133 + iM4348) & this.f3136;
        this.f3135 += iM4348;
        return iM4348;
    }
}
