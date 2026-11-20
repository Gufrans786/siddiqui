package nts;

public class C0567 {

    public int f3182;

    public C0510 f3183;

    public boolean f3180 = false;

    public long f3181 = 0;

    public boolean f3179 = true;

    public boolean m5513() {
        return this.f3180;
    }

    public long m5514() {
        long j = this.f3181;
        this.f3181 = 1 + j;
        return j;
    }

    public byte[] m5515() {
        return this.f3183.f2952;
    }

    public void m5517(int i) throws Exception {
        this.f3183 = C0510.m5207(i, this.f3179);
    }

    public void m5516() {
        this.f3180 = true;
        this.f3181 = 0L;
    }

    public void m5518(byte[] bArr) throws C0537 {
        C0510 c0510 = this.f3183;
        C0308.m4245(c0510.f2949, bArr);
        c0510.f2950 = bArr;
    }
}
