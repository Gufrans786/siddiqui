package nts;

import java.util.zip.Inflater;

public class C0566 {

    public int f3178 = 0;

    public Inflater f3177 = new Inflater(true);

    public int m5512(byte[] bArr, int i, int i2) {
        try {
            this.f3178 = 0;
            int iInflate = this.f3177.inflate(bArr, i, i2);
            this.f3178 = iInflate;
            return iInflate;
        } catch (Exception unused) {
            return 0;
        }
    }
}
