package nts;

import java.util.Enumeration;

public class C0248 implements Enumeration {

    public boolean f906;

    public char f907;

    public String f909 = "";

    public int f912 = 0;

    public int f910 = -1;

    public boolean f908 = false;

    public int f905 = 0;

    public String f903 = C0558.m5481("+\u0003\u0003\u0005\u0003\t!!'!", 0, 5, 14);

    public boolean f904 = false;

    public boolean f911 = false;

    public C0248() {
        this.f906 = true;
        this.f906 = true;
    }

    @Override
    public boolean hasMoreElements() {
        return m3798();
    }

    @Override
    public Object nextElement() {
        return m3796();
    }

    public String m3796() {
        char cCharAt;
        int iM3797 = this.f910;
        if (iM3797 < 0 || this.f908) {
            iM3797 = m3797(this.f912);
        }
        this.f912 = iM3797;
        this.f908 = false;
        this.f910 = -1;
        if (iM3797 >= this.f905) {
            return "";
        }
        int i = iM3797;
        while (i < this.f905) {
            char cCharAt2 = this.f909.charAt(i);
            if (!this.f911 || (cCharAt2 != '\"' && cCharAt2 != '\'')) {
                if (cCharAt2 > this.f907 && this.f903.indexOf(cCharAt2) >= 0) {
                    break;
                }
                i++;
            } else {
                char cCharAt3 = this.f909.charAt(i);
                while (true) {
                    i++;
                    if (i >= this.f905) {
                        break;
                    }
                    char cCharAt4 = this.f909.charAt(i);
                    if (cCharAt4 == '\\') {
                        i++;
                    } else if (cCharAt4 == cCharAt3) {
                        i++;
                        break;
                    }
                }
                if (i >= this.f905) {
                    break;
                }
                if (cCharAt2 > this.f907) {
                }
                i++;
            }
        }
        if (this.f904 && iM3797 == i && (cCharAt = this.f909.charAt(i)) <= this.f907 && this.f903.indexOf(cCharAt) >= 0) {
            i++;
        }
        this.f912 = i;
        if (this.f906) {
            return this.f909.substring(iM3797, i);
        }
        this.f912 = i + 1;
        return this.f909.substring(iM3797, i);
    }

    public final int m3797(int i) {
        char cCharAt;
        if (this.f903 == null) {
            this.f903 = "";
        }
        if (!this.f906) {
            return i;
        }
        while (!this.f904 && i < this.f905 && (cCharAt = this.f909.charAt(i)) <= this.f907 && this.f903.indexOf(cCharAt) >= 0) {
            i++;
        }
        return i;
    }

    public boolean m3798() {
        int iM3797 = m3797(this.f912);
        this.f910 = iM3797;
        return iM3797 < this.f905;
    }
}
