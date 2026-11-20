package nts;

import java.io.IOException;
import java.io.OutputStream;

public class C0207 extends OutputStream {

    public boolean f732;

    public boolean f733;

    public C0662 f734;

    public C0150 f735;

    public C0207() {
        this.f732 = false;
        this.f734 = null;
        this.f735 = null;
        this.f733 = false;
    }

    @Override
    public void close() throws IOException {
        if (this.f733) {
            return;
        }
        if (!this.f732) {
            mo3664();
        }
        C0150 c0150 = this.f735;
        c0150.f445.f1251 = 1;
        while (true) {
            AbstractC0256 abstractC0256 = c0150.f445;
            if (abstractC0256.f1251 == 2 && abstractC0256.f1255.m4158()) {
                break;
            } else {
                c0150.m3408();
            }
        }
        c0150.f444.m5876();
        mo3665();
        this.f734.m5876();
        C0662 c0662 = this.f734;
        c0662.m5878(null, 0, 0);
        OutputStream outputStream = c0662.f3675;
        if (outputStream != null && c0662.f3673) {
            outputStream.close();
        }
        this.f733 = true;
    }

    @Override
    public void flush() throws IOException {
        if (this.f733) {
            throw new IOException(C0642.m5848(59, 33, 38));
        }
        C0150 c0150 = this.f735;
        c0150.f445.f1251 = 3;
        while (!c0150.f445.m3826()) {
            if (c0150.m3408() <= 0 && !c0150.f445.m3826()) {
                throw new C0414(199, C0642.m5841(24, 28, 16));
            }
        }
        AbstractC0256 abstractC0256 = c0150.f445;
        byte[] bArr = c0150.f446;
        int length = bArr.length;
        C0299 c0299 = abstractC0256.f1255;
        if (c0299.f1606 > 0) {
            c0299.m4162(0, 3);
            abstractC0256.f1255.m4161();
            abstractC0256.f1255.m4162(0, 16);
            abstractC0256.f1255.m4162(65535, 16);
        }
        int iM4160 = abstractC0256.f1255.m4160(bArr, 0, length);
        if (iM4160 > 0) {
            c0150.f444.m5878(c0150.f446, 0, iM4160);
        }
        c0150.f444.m5876();
        this.f734.m5876();
    }

    public void mo3664() throws IOException {
    }

    public void mo3665() throws IOException {
    }

    public void m3678(int i) throws IOException {
        C0150 c0150 = this.f735;
        c0150.m3409(i);
        c0150.m3409(i >> 16);
    }

    @Override
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f733) {
            if (i >= 0 && i + i2 <= bArr.length) {
                if (!this.f732) {
                    mo3664();
                    this.f732 = true;
                }
                this.f735.m3410(bArr, i, i2);
                return;
            }
            throw new ArrayIndexOutOfBoundsException(C0642.m5848(33, 26, 79));
        }
        throw new IOException(C0642.m5848(0, 33, 127));
    }

    public C0207(OutputStream outputStream) {
        this.f735 = null;
        this.f734 = null;
        this.f732 = false;
        this.f733 = true;
        this.f734 = new C0662(outputStream);
        this.f735 = new C0150(this.f734);
        this.f732 = false;
        this.f733 = false;
    }
}
