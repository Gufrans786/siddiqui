package nts;

public class C0626 extends AbstractC0095 {

    public String f3460;

    public String f3461;

    public C0626() {
        this("", "");
    }

    public void m5719(String str) {
        if (this.f3460.length() > 0) {
            this.f3460 = C0663.m5888(new StringBuilder(), this.f3460, " ");
        }
        this.f3460 = C0663.m5888(new StringBuilder(), this.f3460, str);
    }

    public C0626(String str, String str2) {
        this.f3461 = str;
        this.f3460 = str2;
    }
}
