package nts;

public class C0301 {

    public String f1613;

    public int f1614;

    public int f1615;

    public byte[] f1616;

    public C0301() {
        this(256);
    }

    public String toString() {
        return C0259.m3842(this.f1616, 0, this.f1615);
    }

    public void m4165(int i) {
        this.f1614 = i;
        m4169();
    }

    public void m4169() {
        this.f1615 = 0;
        int length = this.f1616.length;
        int i = this.f1614;
        if (length != i) {
            this.f1616 = new byte[i];
        }
    }

    public void m4170() {
        this.f1615 = 0;
    }

    public C0301 m4174(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.f1616;
        if (bArr2.length > i2) {
            System.arraycopy(bArr, i, bArr2, 0, i2);
        } else {
            this.f1616 = C0259.m3865(bArr, i, i2);
        }
        this.f1615 = i2;
        return this;
    }

    public C0301 m4180(byte[] bArr) {
        return m4181(bArr, 0, bArr.length);
    }

    public C0301(int i) {
        this.f1616 = new byte[i];
        this.f1614 = i;
    }

    public byte[] m4171(int i) {
        return m4176(i, this.f1615);
    }

    public C0301 m4181(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int i3 = i2 - i;
            m4175(i3);
            System.arraycopy(bArr, i, this.f1616, this.f1615, i3);
            this.f1615 += i3;
        }
        return this;
    }

    public C0301 m4167(byte[] bArr) {
        return this.f1615 == 0 ? m4173(bArr) : m4180(bArr);
    }

    public C0301 m4168(byte[] bArr, int i, int i2) {
        return this.f1615 == 0 ? m4174(bArr, i, i2) : m4181(bArr, i, i2);
    }

    public C0301 m4178(int i) {
        return m4180(C0259.m3897(i));
    }

    public byte m4166(int i) {
        return this.f1616[i];
    }

    public C0301 m4177(byte b) {
        m4175(1);
        byte[] bArr = this.f1616;
        int i = this.f1615;
        this.f1615 = i + 1;
        bArr[i] = b;
        return this;
    }

    public C0301 m4173(byte[] bArr) {
        return m4174(bArr, 0, bArr.length);
    }

    public C0301 m4179(int i, int i2) {
        int i3;
        if (i >= 0 && i < i2 && i2 <= (i3 = this.f1615)) {
            byte[] bArr = this.f1616;
            System.arraycopy(bArr, i2, bArr, i, i3 - i2);
            this.f1615 -= i2 - i;
        }
        return this;
    }

    public final void m4175(int i) {
        int i2 = this.f1615;
        int i3 = i + i2;
        byte[] bArr = this.f1616;
        if (bArr.length < i3) {
            try {
                byte[] bArr2 = new byte[i3 + (i3 / 4)];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                this.f1616 = bArr2;
            } catch (OutOfMemoryError unused) {
                throw new C0414(C0558.m5481("\u00193'1w>05+z*(>=8|,75`( e).'&:6`", 0, 30, 77));
            }
        }
    }

    public static int m4163(byte[] bArr, byte[] bArr2, int i, int i2) {
        int length = (i2 - bArr2.length) + 1;
        if (bArr2.length != 0 && length >= 0) {
            byte b = bArr2[0];
            while (i < length) {
                if (bArr[i] == b) {
                    for (int i3 = 1; i3 < bArr2.length; i3++) {
                        if (bArr[i + i3] == bArr2[i3]) {
                        }
                    }
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public byte[] m4182() {
        int i = this.f1615;
        byte[] bArr = new byte[i];
        System.arraycopy(this.f1616, 0, bArr, 0, i);
        return bArr;
    }

    public byte[] m4176(int i, int i2) {
        int i3 = i2 - i;
        byte[] bArr = new byte[i3];
        System.arraycopy(this.f1616, i, bArr, 0, i3);
        return bArr;
    }

    public static boolean m4164(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public String m4172() throws C0414 {
        return C0259.m3894(this.f1616, 0, this.f1615, this.f1613);
    }
}
