package nts;

import ch.qos.logback.classic.spi.CallerData;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class C0515 extends InputStream {

    public boolean f2964 = false;

    public int f2965 = 0;

    public String f2966;

    public InputStream f2967;

    public C0515(String str) throws C0414 {
        this.f2966 = str;
        m5240(str);
    }

    @Override
    public int available() throws IOException {
        if (this.f2964 && this.f2967.available() == 0) {
            m5240(this.f2966);
        }
        InputStream inputStream = this.f2967;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    @Override
    public void close() throws IOException {
        InputStream inputStream = this.f2967;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override
    public void mark(int i) {
        this.f2967.mark(i);
    }

    @Override
    public boolean markSupported() {
        return this.f2967.markSupported();
    }

    @Override
    public int read() throws IOException {
        if (this.f2964 && available() == 0) {
            m5240(this.f2966);
        }
        InputStream inputStream = this.f2967;
        if (inputStream == null) {
            return -1;
        }
        return inputStream.read();
    }

    @Override
    public void reset() throws IOException {
        this.f2967.reset();
    }

    @Override
    public long skip(long j) throws IOException {
        return this.f2967.skip(j);
    }

    public final void m5240(String str) throws C0414 {
        try {
            InputStream inputStream = this.f2967;
            if (inputStream != null) {
                inputStream.close();
            }
            if (str.indexOf(CallerData.NA) > 0) {
                this.f2964 = true;
                int iIndexOf = str.indexOf(CallerData.NA);
                int i = 0;
                for (int i2 = iIndexOf; i2 < str.length() && str.charAt(i2) == '?'; i2++) {
                    i++;
                }
                String string = C0663.m5891("").append(this.f2965).toString();
                while (i > string.length()) {
                    string = C0663.m5880("0", string);
                }
                str = str.substring(0, iIndexOf) + string + str.substring(iIndexOf + i);
                this.f2965++;
            }
            boolean zExists = new File(str).exists();
            if (this.f2965 == 0 && !zExists) {
                throw new C0414(4, C0128.m3236(1468, 6, 60) + str + C0128.m3236(1474, 17, 26));
            }
            try {
                this.f2967 = new BufferedInputStream(new FileInputStream(str));
            } catch (IOException unused) {
                int i3 = this.f2965;
                if (i3 <= 0) {
                    throw new C0414(4, C0128.m3236(1491, 18, 125) + str + C0128.m3236(1509, 14, 5));
                }
                this.f2967 = null;
                this.f2964 = false;
                this.f2965 = i3 - 1;
            }
        } catch (IOException unused2) {
            throw new C0414(304, C0128.m3236(1448, 20, 105) + str + "\".");
        }
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        bArr.getClass();
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        int i4 = read();
        if (i4 == -1) {
            return -1;
        }
        bArr[i] = (byte) i4;
        int i5 = 1;
        while (i5 < i2) {
            try {
                int i6 = read();
                if (i6 == -1) {
                    break;
                }
                bArr[i + i5] = (byte) i6;
                i5++;
            } catch (IOException unused) {
            }
        }
        return i5;
    }
}
