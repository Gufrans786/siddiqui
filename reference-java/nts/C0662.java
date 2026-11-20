package nts;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Vector;

public class C0662 {

    public int f3672;

    public boolean f3673;

    public byte[] f3674;

    public OutputStream f3675;

    public C0662(OutputStream outputStream) {
        new Vector();
        new Vector();
        this.f3674 = new byte[1000];
        this.f3672 = 0;
        this.f3673 = false;
        this.f3675 = outputStream;
    }

    public void m5878(byte[] bArr, int i, int i2) throws IOException {
        OutputStream outputStream;
        int i3 = this.f3672;
        if (i3 != 0) {
            OutputStream outputStream2 = this.f3675;
            if (outputStream2 != null) {
                outputStream2.write(this.f3674, 0, i3);
            }
            this.f3672 = 0;
        }
        if (i2 == 0 || (outputStream = this.f3675) == null) {
            return;
        }
        outputStream.write(bArr, i, i2);
    }

    public void m5877(int i) throws IOException {
        int i2 = this.f3672;
        byte[] bArr = this.f3674;
        if (i2 == bArr.length) {
            OutputStream outputStream = this.f3675;
            if (outputStream != null) {
                outputStream.write(bArr, 0, bArr.length);
            }
            this.f3672 = 0;
        }
        byte[] bArr2 = this.f3674;
        int i3 = this.f3672;
        this.f3672 = i3 + 1;
        bArr2[i3] = (byte) i;
    }

    public void m5876() throws IOException {
        m5878(null, 0, 0);
        OutputStream outputStream = this.f3675;
        if (outputStream != null) {
            outputStream.flush();
        }
    }
}
