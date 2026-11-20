package nts;

public abstract class AbstractC0256 {

    public int f1248;

    public int f1249;

    public int f1250;

    public int f1251;

    public long f1252;

    public byte[] f1253;

    public int f1254;

    public C0299 f1255;

    public byte[] f1256;

    public boolean m3824() {
        return this.f1248 == this.f1249 && this.f1255.m4158();
    }

    public boolean m3826() {
        return this.f1251 == 0 && this.f1255.m4158();
    }

    public int m3825(byte[] bArr, int i, int i2) {
        int iM4160 = this.f1255.m4160(bArr, i, i2);
        this.f1252 += (long) iM4160;
        return iM4160;
    }
}
