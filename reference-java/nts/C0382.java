package nts;

public class C0382 {

    public boolean f1968;

    public AbstractC0318 f1969;

    public int f1970;

    public int f1971;

    public byte[] f1972;

    public C0382() {
        this.f1972 = C0320.f1706;
        this.f1971 = 0;
        this.f1969 = null;
        this.f1970 = 0;
        this.f1968 = false;
        this.f1969 = mo4508();
    }

    public int m4481(int i) {
        return (short) this.f1969.mo3838(this.f1972, i, 2);
    }

    public byte[] m4484(int i) {
        m4510(i);
        byte[] bArr = new byte[i];
        int iMin = Math.min(this.f1971 - this.f1970, i);
        System.arraycopy(this.f1972, this.f1970, bArr, 0, iMin);
        this.f1970 += iMin;
        return bArr;
    }

    public byte m4485(int i) {
        return this.f1972[i];
    }

    public void m4487(int i) {
        m4509((byte) i);
    }

    public void m4489(int i) {
        m4513(i, 2);
    }

    public long m4492(int i) {
        m4510(i);
        long jMo3838 = this.f1969.mo3838(this.f1972, this.f1970, i);
        this.f1970 += i;
        return jMo3838;
    }

    public void m4493() {
        this.f1970 = 0;
    }

    public void m4495(int i) {
        m4513(i, 3);
    }

    public byte[] m4497(int i) {
        return C0259.m3865(this.f1972, i, this.f1971 - i);
    }

    public void m4499(int i, int i2) {
        this.f1969.mo3839(i2, this.f1972, i, 3);
    }

    public void m4503(int i) {
        m4513(i, 4);
    }

    public void m4505() {
        this.f1972 = C0320.f1706;
        this.f1971 = 0;
        this.f1970 = 0;
    }

    public void m4507(int i) {
        this.f1970 += i;
    }

    public AbstractC0318 mo4508() {
        return new C0258();
    }

    public String m4482() {
        int i;
        int i2 = this.f1970;
        while (true) {
            i = this.f1971;
            if (i2 >= i || this.f1972[i2] == 0) {
                break;
            }
            i2++;
        }
        if (i2 > i) {
            throw new C0414(0, C0558.m5481("^nofo\u007f(}ih$vjlru0^sjr}8uua4q\u007f\u007ft3|x`c.}mygljfrnr#dRN\u001fMMJRTR\u001a", 17, 42, 38));
        }
        byte[] bArr = this.f1972;
        int i3 = this.f1970;
        String strM3842 = C0259.m3842(bArr, i3, i2 - i3);
        this.f1970 = i2 + 1;
        return strM3842;
    }

    public int m4486() {
        return this.f1971 - this.f1970;
    }

    public byte[] m4488() {
        return m4484(m4506());
    }

    public byte[] m4490() {
        return m4484((m4506() + 7) / 8);
    }

    public String m4494() {
        return C0259.m3882(m4488());
    }

    public byte m4496() {
        m4510(1);
        byte[] bArr = this.f1972;
        int i = this.f1970;
        this.f1970 = i + 1;
        return bArr[i];
    }

    public byte[] m4502() {
        int i = this.f1971;
        byte[] bArr = this.f1972;
        return i == bArr.length ? bArr : C0259.m3865(bArr, 0, i);
    }

    public byte[] m4504() {
        return m4484(this.f1971 - this.f1970);
    }

    public int m4506() {
        return (int) m4492(4);
    }

    public void m4516(byte[] bArr) {
        this.f1972 = bArr;
        this.f1971 = bArr.length;
    }

    public int m4491() {
        return (int) m4492(3);
    }

    public void m4517(byte[] bArr, int i, int i2) {
        if (i == 0 && i2 == bArr.length) {
            this.f1972 = bArr;
            this.f1971 = bArr.length;
        } else {
            m4516(C0259.m3865(bArr, i, i2));
        }
    }

    public short m4483() {
        return (short) m4492(2);
    }

    public void m4498(int i) {
        int i2 = this.f1970;
        byte[] bArr = this.f1972;
        int length = (i + i2) - bArr.length;
        if (length > 0) {
            if (this.f1968) {
                byte[] bArr2 = new byte[((bArr.length + length) / 2) + bArr.length + length];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                this.f1972 = bArr2;
                return;
            }
            byte[] bArr3 = new byte[bArr.length + length];
            System.arraycopy(bArr, 0, bArr3, 0, i2);
            this.f1972 = bArr3;
        }
    }

    public void m4511(int i, long j) {
        this.f1969.mo3839(j, this.f1972, i, 2);
    }

    public byte[] m4518(int i, int i2) {
        return C0259.m3865(this.f1972, i, i2);
    }

    public void m4514(String str) {
        byte[] bArrM3858 = C0259.m3858(str);
        int i = 0;
        while (i < bArrM3858.length && bArrM3858[i] != 0) {
            i++;
        }
        m4501(bArrM3858, 0, i);
        if (i == bArrM3858.length) {
            m4487(0);
        }
    }

    public C0382(byte[] bArr, int i, int i2) {
        this();
        m4517(bArr, i, i2);
    }

    public C0382(byte[] bArr) {
        this();
        int length = bArr.length;
        m4517(bArr, 0, length);
    }

    public void m4500(byte[] bArr) {
        m4501(bArr, 0, bArr.length);
    }

    public C0382(int i) {
        this(new byte[i]);
        this.f1971 = 0;
    }

    public void m4501(byte[] bArr, int i, int i2) {
        m4498(i2);
        System.arraycopy(bArr, i, this.f1972, this.f1970, i2);
        this.f1970 += i2;
        this.f1971 += i2;
    }

    public void m4509(byte b) {
        m4498(1);
        byte[] bArr = this.f1972;
        int i = this.f1970;
        this.f1970 = i + 1;
        bArr[i] = b;
        this.f1971++;
    }

    public void m4515(short s) {
        m4513(s, 2);
    }

    public void m4512(long j) {
        m4513(j, 8);
    }

    public final void m4513(long j, int i) {
        m4498(i);
        this.f1969.mo3839(j, this.f1972, this.f1970, i);
        this.f1970 += i;
        this.f1971 += i;
    }

    public void m4510(int i) {
        if (this.f1970 + i > this.f1971) {
            throw new C0414(0, C0558.m5481("^nofo\u007f(}ih$vjlru0^sjr}8uua4q\u007f\u007ft3|x`c.}mygljfrnr#dRN\u001fMMJRTR\u001a", 0, 17, 31));
        }
    }
}
