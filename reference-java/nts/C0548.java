package nts;

import java.util.regex.Matcher;

public class C0548 {

    public boolean f3143;

    public int f3144;

    public Matcher f3145;

    public C0548(String str, Matcher matcher) {
        this.f3144 = 0;
        this.f3143 = false;
        this.f3145 = matcher;
        if (matcher != null) {
            matcher.reset();
        }
        this.f3144 = 0;
        this.f3143 = m5433();
    }

    public boolean m5433() {
        Matcher matcher = this.f3145;
        if (matcher == null) {
            return false;
        }
        boolean zFind = matcher.find();
        if (zFind) {
            this.f3145.start();
            this.f3144 = this.f3145.end();
        }
        return zFind;
    }

    public String m5432(int i) {
        return this.f3145.group(i);
    }
}
