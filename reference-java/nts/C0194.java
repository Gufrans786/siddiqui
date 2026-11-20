package nts;

import java.io.IOException;
import java.io.OutputStream;

public class C0194 extends C0207 {

    public static byte[] f705 = {120, -100};

    public C0419 f706;

    public C0194(OutputStream outputStream) {
        super(outputStream);
        this.f706 = new C0419();
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        super.write(bArr, i, i2);
        this.f706.mo4592(bArr, i, i2);
    }

    @Override
    public void mo3664() throws IOException {
        this.f734.m5878(f705, 0, 2);
    }

    @Override
    public void mo3665() throws IOException {
        byte[] bArrM4681 = this.f706.m4681();
        this.f734.m5878(bArrM4681, 0, bArrM4681.length);
    }
}
