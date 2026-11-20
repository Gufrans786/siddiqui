package nts;

public class C0536 {

    public C0536 f3107;

    public C0536 f3108;

    public int f3109;

    public int f3110;

    public C0536(int i, int i2) {
        this.f3110 = i;
        this.f3109 = i2;
        this.f3107 = null;
        this.f3108 = null;
    }

    public void m5408(byte[] bArr, int i) {
        C0536 c0536 = this.f3107;
        if (c0536 == null) {
            bArr[this.f3109] = (byte) i;
            return;
        }
        int i2 = i + 1;
        c0536.m5408(bArr, i2);
        this.f3108.m5408(bArr, i2);
    }

    public C0536(C0536 c0536, C0536 c0537) {
        this.f3107 = c0536;
        this.f3108 = c0537;
        this.f3110 = c0536.f3110 + c0537.f3110;
        this.f3109 = -1;
    }
}
