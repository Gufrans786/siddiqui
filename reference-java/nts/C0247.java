package nts;

public class C0247 extends C0418 {

    public String f902;

    public C0247() {
        this.f902 = "";
        this.f2150 = 23;
        this.f2143 = false;
    }

    public String m3795() {
        String string;
        if (this.f2150 == 23 && this.f902.length() == 13) {
            string = Integer.parseInt(C0259.m3889(this.f902, 0, 2)) < 50 ? C0663.m5891("20").append(this.f902).toString() : C0663.m5891("19").append(this.f902).toString();
        } else {
            if (this.f2150 != 24 || this.f902.length() != 15) {
                throw new C0414(C0164.m3506(304, 31, 91));
            }
            string = this.f902;
        }
        if (!string.endsWith("Z")) {
            return string;
        }
        char[] cArr = {'Z'};
        if (C0259.m3856(string)) {
            return "";
        }
        int i = 0;
        while (true) {
            if (i >= string.length()) {
                i = 0;
                break;
            }
            if (string.charAt(i) != cArr[0]) {
                break;
            }
            i++;
        }
        int length = string.length() - 1;
        for (int length2 = string.length() - 1; length2 >= 0; length2--) {
            if (string.charAt(length2) != cArr[0]) {
                length = length2;
                break;
            }
        }
        return string.substring(i, length + 1);
    }

    @Override
    public void mo3155() {
        this.f902 = C0259.m3882(this.f2148);
        this.f2150 = this.f2142;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        c0530.m5379(C0259.m3858(this.f902), this.f2150);
    }

    public C0247(String str) {
        this.f902 = "";
        this.f2150 = 23;
        this.f902 = str;
        this.f2143 = false;
    }
}
