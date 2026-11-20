package nts;

import com.nimbusds.jose.HeaderParameterNames;
import java.util.Vector;

public abstract class AbstractC0103 extends AbstractC0095 {

    public C0387 f114 = new C0387();

    public C0387 f104 = new C0387();

    public C0387 f105 = new C0387();

    public C0387 f109 = new C0387();

    public C0387 f122 = new C0387();

    public C0387 f107 = new C0387();

    public C0387 f108 = new C0387();

    public C0387 f112 = new C0387();

    public C0387 f117 = new C0387();

    public C0387 f119 = new C0387();

    public C0387 f111 = new C0387();

    public C0387 f115 = new C0387();

    public C0387 f120 = new C0387();

    public Vector f110 = new Vector();

    public C0200 f121 = new C0200();

    public C0200 f118 = new C0200();

    public C0200 f113 = new C0200();

    public Vector f116 = new Vector();

    public C0335 f106 = null;

    public AbstractC0103() {
        m3128();
    }

    public String toString() {
        C0387 c0387 = new C0387();
        if (this.f120.m4533() > 0) {
            C0558.m5498(this.f120.m4571(), c0387);
            return c0387.m4571();
        }
        Vector vector = new Vector();
        mo3144(vector);
        if (this.f107.m4533() > 0) {
            m3125(vector, C0642.m5855(24, 3, 43), this.f107.m4571(), 2);
        }
        if (this.f114.m4533() > 0) {
            m3125(vector, C0642.m5855(27, 3, 45), this.f114.m4571(), 2);
        }
        if (this.f104.m4533() > 0) {
            m3125(vector, C0642.m5855(30, 4, 106), this.f104.m4571(), 1);
        }
        if (this.f122.m4533() > 0) {
            m3125(vector, C0642.m5855(34, 3, 52), this.f122.m4571(), 2);
        }
        if (this.f109.m4533() > 0) {
            m3125(vector, C0642.m5855(37, 3, 110), this.f109.m4571(), 2);
        }
        if (this.f105.m4533() > 0) {
            m3125(vector, C0642.m5855(40, 3, 45), this.f105.m4571(), 2);
        }
        if (this.f119.m4533() > 0) {
            m3125(vector, C0642.m5855(43, 3, 25), this.f119.m4571(), 2);
        }
        if (this.f112.m4533() > 0) {
            m3125(vector, C0642.m5855(46, 3, 61), this.f112.m4571(), 2);
        }
        if (this.f117.m4533() > 0) {
            m3125(vector, C0642.m5855(49, 8, 85), this.f117.m4571(), 2);
        }
        if (this.f108.m4533() > 0) {
            m3125(vector, C0642.m5855(57, 3, 64), this.f108.m4571(), 1);
        }
        if (this.f111.m4533() > 0) {
            C0387 c0388 = new C0387();
            C0558.m5504(this.f111.m4554(), 0, this.f111.m4533(), c0388);
            m3125(vector, HeaderParameterNames.INITIALIZATION_VECTOR, c0388.m4571(), 2);
        }
        if (this.f115.m4533() > 0) {
            C0387 c0389 = new C0387();
            C0558.m5504(this.f115.m4554(), 0, this.f115.m4533(), c0389);
            m3125(vector, C0642.m5855(60, 3, 57), c0389.m4571(), 2);
        }
        for (int i = 0; i < this.f110.size(); i++) {
            C0385 c0385 = (C0385) this.f110.get(i);
            m3125(vector, c0385.f1989.m4571(), c0385.f1987.m4571(), c0385.f1988);
        }
        C0190 c0190 = new C0190(this, this);
        c0190.m3635();
        for (int i2 = 0; i2 < vector.size(); i2++) {
            C0385 c0386 = (C0385) vector.get(i2);
            c0190.m3654(c0386.f1989.m4571(), c0386.f1987.m4571(), c0386.f1988);
        }
        c0190.m3649();
        c0387.m4531(c0190.m3647());
        return c0387.m4571();
    }

    public void m3126(String str) {
        this.f109.m4531(str);
    }

    public void m3127(String str) {
        this.f122.m4531(str);
    }

    public void m3129(String str) {
        this.f104.m4531(str);
    }

    public void m3130(String str) {
        this.f108.m4531(str);
    }

    public void m3131(String str) {
        this.f112.m4531(str);
    }

    public void m3132(String str) {
        this.f120.m4531(str);
    }

    public void m3133(String str) {
        this.f117.m4531(str);
    }

    public void m3134(String str) {
        this.f105.m4531(str);
    }

    public void m3137(String str) {
        this.f114.m4531(str);
    }

    public void m3139(String str) {
        this.f119.m4531(str);
    }

    public void m3140(String str) {
        this.f107.m4531(str);
    }

    public abstract void mo3144(Vector vector);

    public void m3146(byte[] bArr) {
        this.f111.m4543(bArr);
    }

    public final void m3128() {
        this.f114.m4541();
        this.f104.m4541();
        this.f105.m4541();
        this.f109.m4541();
        this.f122.m4541();
        this.f107.m4541();
        this.f108.m4541();
        this.f112.m4541();
        this.f117.m4541();
        this.f119.m4541();
        this.f111.m4541();
        this.f115.m4541();
        this.f120.m4541();
        this.f110.clear();
        this.f113.m3671();
        this.f121.m3671();
        this.f118.m3671();
        this.f106 = null;
    }

    public boolean m3135() {
        if (this.f121.m3672() <= 0) {
            return true;
        }
        for (int i = 0; i < this.f121.m3672(); i++) {
            if (this.f118.f715.indexOf(this.f121.m3675(i)) < 0) {
                return false;
            }
        }
        return true;
    }

    public String m3136() {
        return this.f122.m4571();
    }

    public void m3141(String str) {
        this.f116.add(new C0335(9, str, "", "*"));
    }

    public void m3138(byte[] bArr) {
        this.f115.m4543(bArr);
    }

    public void m3142(String str, String str2, int i) {
        m3125(this.f110, str, str2, i);
    }

    public void m3145(C0387 c0387) {
        if (this.f120.m4533() > 0) {
            c0387.m4549(this.f120.m4571(), this.f120.m4533());
        } else {
            byte[] bArrM3858 = C0259.m3858(toString());
            C0558.m5504(bArrM3858, 0, bArrM3858.length, c0387);
        }
    }

    public static void m3125(Vector vector, String str, String str2, int i) {
        C0385 c0385 = new C0385();
        c0385.f1989.m4531(str);
        c0385.f1987.m4531(str2);
        c0385.f1988 = i;
        vector.add(c0385);
    }

    public final void m3143(String str, C0387 c0387) {
        C0387 c0388 = new C0387();
        c0387.m4541();
        C0558.m5450(str, c0388);
        C0558.m5504(c0388.m4554(), 0, c0388.m4533(), c0387);
    }
}
