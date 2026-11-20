package nts;

import java.util.regex.Pattern;

public class C0571 {

    public Pattern f3187;

    public int f3188;

    public C0571(String str, int i) {
        this.f3187 = null;
        this.f3188 = 0;
        if ((i & 1) == 1) {
            this.f3188 = 32;
        } else if ((i & 2) == 2) {
            this.f3188 = 8;
        }
        if ((i & 4) == 4) {
            this.f3188 |= 2;
        }
        this.f3187 = Pattern.compile(str, this.f3188);
    }

    public C0548 m5521(String str) {
        return new C0548(str, this.f3187.matcher(str));
    }
}
