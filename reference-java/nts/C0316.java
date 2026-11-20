package nts;

import java.io.IOException;
import java.io.InputStream;

public class C0316 extends C0622 {

    public C0419 f1698;

    public boolean f1699;

    public C0316(InputStream inputStream, boolean z) throws IOException {
        super(inputStream, new C0423(), 4096);
        this.f1699 = false;
        this.f1698 = new C0419();
        if (z) {
            m4298();
        }
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f1699) {
            m4298();
        }
        int i3 = super.read(bArr, i, i2);
        if (i3 > 0) {
            this.f1698.mo4592(bArr, i, i3);
        }
        return i3;
    }

    public void m4298() throws IOException {
        int i = this.f3442.read();
        if (i == -1) {
            throw new IOException(C0465.m5118(0, 27, 20));
        }
        int i2 = this.f3442.read();
        if (i2 == -1) {
            throw new IOException(C0465.m5118(27, 27, 31));
        }
        if ((i & 15) != 8) {
            throw new IOException(C0465.m5118(54, 67, 9));
        }
        if (i > 127) {
            throw new IOException(C0465.m5118(121, 29, 18));
        }
        if ((i2 & 32) == 32) {
            throw new IOException(C0465.m5118(150, 31, 107));
        }
        if (((i << 8) + i2) % 31 != 0) {
            throw new IOException(C0465.m5118(181, 26, 65));
        }
        this.f3438 += 2;
        this.f1699 = true;
    }

    @Override
    public void mo4299() throws IOException {
        byte[] bArrM5713 = m5713(4);
        byte[] bArrM4681 = this.f1698.m4681();
        for (int i = 0; i < bArrM5713.length; i++) {
            if (bArrM5713[i] != bArrM4681[i]) {
                throw new C0414(127, C0465.m5118(207, 35, 31));
            }
        }
    }
}
