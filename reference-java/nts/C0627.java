package nts;

public class C0627 {

    public C0301 f3462 = new C0301();

    public boolean equals(Object obj) {
        if (!(obj instanceof String)) {
            return super.equals(obj);
        }
        String str = (String) obj;
        if (str == null) {
            str = "";
        }
        return m5730().equals(str);
    }

    public int m5720() {
        return this.f3462.f1615;
    }

    public int m5722() {
        this.f3462.m4169();
        return 0;
    }

    public int m5723(byte[] bArr) {
        if (bArr == null) {
            m5722();
            return 0;
        }
        this.f3462.m4173(bArr);
        return 0;
    }

    public int m5728(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        this.f3462.m4180(bArr);
        return 0;
    }

    public int m5729(byte[] bArr, int i) {
        if (i > 0) {
            this.f3462.m4181(bArr, 0, i);
        }
        return 0;
    }

    public int m5721(int i) {
        int i2 = this.f3462.f1615;
        if (i > i2) {
            i = i2;
        }
        C0301 c0301 = this.f3462;
        c0301.m4173(c0301.m4171(i));
        return 0;
    }

    public int m5724(byte[] bArr, int i) {
        if (bArr == null) {
            m5722();
            return 0;
        }
        if (i >= 0) {
            this.f3462.m4174(bArr, 0, i);
        }
        return 0;
    }

    public String m5730() {
        return C0259.m3882(this.f3462.m4182());
    }

    public char m5727(int i) {
        C0301 c0301 = this.f3462;
        if (i >= c0301.f1615) {
            return (char) 0;
        }
        return (char) c0301.f1616[i];
    }

    public byte[] m5725() {
        return this.f3462.m4182();
    }

    public byte[] m5726(int i) {
        if (i < 0 || i >= m5720()) {
            return null;
        }
        C0301 c0301 = this.f3462;
        return c0301.m4176(i, c0301.f1615);
    }
}
