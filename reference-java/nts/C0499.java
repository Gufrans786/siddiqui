package nts;

public class C0499 {

    public String[] f2815;

    public String[] f2816;

    public C0499(C0231 c0231) {
        this.f2816 = null;
        this.f2815 = null;
        if (c0231.size() == 0) {
            return;
        }
        this.f2816 = new String[c0231.size()];
        this.f2815 = new String[c0231.size()];
        for (int i = 0; i < c0231.size(); i++) {
            this.f2816[i] = c0231.get(i).f1870.f3639.m4571();
            this.f2815[i] = c0231.get(i).f1870.f3640.m4571();
        }
    }
}
