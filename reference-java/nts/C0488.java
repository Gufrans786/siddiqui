package nts;

public class C0488 extends AbstractC0095 {

    public C0387 f2758;

    public C0387 f2759;

    public int f2760;

    public int f2761;

    public C0488() {
        this.f2758 = new C0387();
        this.f2759 = new C0387();
        this.f2761 = 0;
        this.f2760 = 2;
    }

    public String m5162() {
        return this.f2759.m4571();
    }

    public String m5163() {
        return this.f2758.m4571();
    }

    public C0488(String str, String str2, int i, int i2) {
        this.f2758 = new C0387();
        this.f2759 = new C0387();
        this.f2758.m4531(str);
        this.f2759.m4531(str2);
        this.f2761 = i2;
        this.f2760 = i;
    }
}
