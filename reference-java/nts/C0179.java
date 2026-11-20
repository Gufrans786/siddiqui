package nts;

import java.io.IOException;
import java.io.InputStream;

public class C0179 extends InputStream {

    public C0301 f615 = new C0301();

    public int f614 = -1;

    @Override
    public int available() throws IOException {
        int i = this.f614;
        return i < 0 ? this.f615.f1615 : (this.f615.f1615 - i) - 1;
    }

    @Override
    public void close() throws IOException {
        this.f615.m4169();
        this.f614 = -1;
    }

    @Override
    public int read() throws IOException {
        int i = this.f614 + 1;
        this.f614 = i;
        if (i >= 0) {
            C0301 c0301 = this.f615;
            if (i < c0301.f1615) {
                return c0301.m4166(i) & 255;
            }
        }
        this.f614 = -1;
        this.f615.m4169();
        return -1;
    }
}
