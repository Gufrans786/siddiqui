package nts;

public class C0595 extends AbstractC0095 {

    public C0387 f3300;

    public C0387 f3301;

    public boolean f3302;

    public C0387 f3303;

    public C0595() {
        this.f3303 = new C0387();
        this.f3300 = new C0387();
        this.f3301 = new C0387();
        this.f3302 = false;
    }

    public String m5592() {
        return this.f3300.m4571();
    }

    public String m5593() {
        return this.f3301.m4571();
    }

    public String m5594() {
        return this.f3303.m4571();
    }

    public boolean m5595() {
        return this.f3302;
    }

    public C0595(String str, String str2, boolean z, String str3) {
        this.f3303 = new C0387();
        this.f3300 = new C0387();
        this.f3301 = new C0387();
        this.f3303.m4531(str);
        this.f3300.m4531(str2);
        this.f3301.m4531(str3);
        this.f3302 = z;
    }
}
