package nts;

import java.util.Locale;
import java.util.Vector;

public class C0625 extends C0259 {

    public static Vector f3455;

    public Vector f3456 = new Vector();

    public int f3457;

    public String f3458;

    public String f3459;

    static {
        Vector vector = new Vector();
        f3455 = vector;
        vector.addElement("");
        f3455.addElement(C0259.f1262);
    }

    public C0625(boolean z) {
        if (z) {
            Locale locale = Locale.getDefault();
            if (locale.equals(Locale.JAPAN) || locale.equals(Locale.JAPANESE)) {
                m5714(1);
            } else {
                m5714(0);
            }
        }
    }

    public void m5714(int i) {
        if (i < 0 || i >= 2) {
            i = 0;
        }
        this.f3457 = i;
        Vector vector = new Vector();
        this.f3456 = vector;
        int i2 = this.f3457;
        if (i2 == 0) {
            this.f3458 = null;
            this.f3459 = null;
            vector.addElement("");
            this.f3456.addElement(C0259.f1262);
            return;
        }
        if (i2 != 1) {
            return;
        }
        this.f3459 = C0259.f1264;
        this.f3458 = "";
        this.f3456.addElement("");
        this.f3456.addElement(C0259.f1262);
        this.f3456.addElement(C0259.f1264);
    }

    public String m5715() {
        String str = this.f3458;
        return str == null ? "" : str;
    }

    public void m5717(String str) {
        if (str == null) {
            str = "";
        }
        int iIndexOf = str.indexOf("/");
        this.f3458 = iIndexOf == -1 ? str : str.substring(0, iIndexOf);
        if (iIndexOf != -1) {
            str = str.substring(iIndexOf + 1);
        }
        this.f3459 = str;
    }

    public byte[] m5718(String str) throws C0414 {
        String str2 = this.f3459;
        return (str2 == null || str2.length() <= 0) ? str.getBytes() : C0259.m3903(str, this.f3459);
    }

    public String m5716(byte[] bArr) {
        String str = this.f3458;
        if (str != null && str.length() > 0) {
            return C0259.m3894(bArr, 0, bArr.length, this.f3458);
        }
        return C0259.m3882(bArr);
    }
}
