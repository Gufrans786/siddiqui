package nts;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;

public class C0505 extends C0207 {

    public static byte[] f2819 = {Ascii.US, -117};

    public long f2820;

    public String f2822;

    public long f2821 = 0;

    public String f2824 = "";

    public String f2825 = "";

    public C0391 f2823 = new C0391();

    public C0505(OutputStream outputStream) {
        this.f2822 = "";
        this.f734 = new C0662(outputStream);
        this.f735 = new C0150(this.f734);
        this.f732 = false;
        this.f2820 = 0L;
        this.f2822 = "";
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        super.write(bArr, i, i2);
        this.f2823.mo4592(bArr, i, i2);
        this.f2820 += (long) i2;
    }

    @Override
    public void mo3664() throws IOException {
        this.f734.m5878(f2819, 0, 2);
        this.f734.m5877(8);
        int i = this.f2824.length() > 0 ? 16 : 0;
        if (this.f2825.length() > 0) {
            i |= 8;
        }
        this.f734.m5877(i);
        if (this.f2821 == 0) {
            this.f2821 = new Date().getTime() / 1000;
        }
        m3678((int) this.f2821);
        this.f734.m5877(0);
        this.f734.m5877(255);
        if (this.f2825.length() > 0) {
            byte[] bytes = C0259.m3856(this.f2822) ? this.f2825.getBytes() : C0259.m3903(this.f2825, this.f2822);
            this.f734.m5878(bytes, 0, bytes.length);
            this.f734.m5877(0);
        }
        if (this.f2824.length() > 0) {
            byte[] bytes2 = C0259.m3856(this.f2822) ? this.f2824.getBytes() : C0259.m3903(this.f2824, this.f2822);
            this.f734.m5878(bytes2, 0, bytes2.length);
            this.f734.m5877(0);
        }
    }

    @Override
    public void mo3665() throws IOException {
        m3678((int) this.f2823.mo4590());
        m3678((int) this.f2820);
    }
}
