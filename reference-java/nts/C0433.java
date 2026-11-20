package nts;

public class C0433 {

    public C0538 f2240;

    public C0213 f2241;

    public C0433(C0213 c0213) {
        this.f2240 = null;
        this.f2241 = c0213;
        C0538 c0538 = new C0538();
        this.f2240 = c0538;
        C0671.m5976(c0538, this.f2241.f793.f1731.f575);
    }

    public C0433(byte[] bArr) {
        this.f2241 = null;
        this.f2240 = null;
        this.f2241 = new C0213();
        this.f2240 = new C0538();
        this.f2241.m4680(bArr);
        C0671.m5976(this.f2240, this.f2241.f793.f1731.f575);
    }
}
