package nts;

import ch.qos.logback.classic.spi.CallerData;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class C0142 extends OutputStream {

    public String f321;

    public long f322;

    public boolean f323;

    public OutputStream f324 = null;

    public long f319 = 0;

    public int f320 = 0;

    public C0142(String str, long j, boolean z) throws C0414 {
        this.f322 = j;
        this.f321 = str;
        this.f323 = z;
        m3284(str);
    }

    @Override
    public void close() throws IOException {
        this.f324.close();
    }

    @Override
    public void flush() throws IOException {
        this.f324.flush();
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public final void m3284(String str) throws C0414 {
        try {
            OutputStream outputStream = this.f324;
            if (outputStream != null) {
                outputStream.close();
            }
            this.f319 = 0L;
            if (this.f322 > 0 && str.indexOf(CallerData.NA) > 0) {
                int iIndexOf = str.indexOf(CallerData.NA);
                int i = 0;
                for (int i2 = iIndexOf; i2 < str.length() && str.charAt(i2) == '?'; i2++) {
                    i++;
                }
                String string = C0663.m5891("").append(this.f320).toString();
                while (i > string.length()) {
                    string = C0663.m5880("0", string);
                }
                str = str.substring(0, iIndexOf) + string + str.substring(iIndexOf + i);
                this.f320++;
            }
            boolean zExists = new File(str).exists();
            if (!this.f323 && zExists) {
                throw new C0414(8, C0128.m3236(1363, 6, 55) + str + C0128.m3236(1369, 39, 66));
            }
            try {
                this.f324 = new BufferedOutputStream(new FileOutputStream(str));
            } catch (IOException unused) {
                throw new C0414(3, C0128.m3236(1408, 20, 85) + str + "\".");
            }
        } catch (IOException unused2) {
            throw new C0414(304, C0128.m3236(1343, 20, 14) + str + "\".");
        }
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        bArr.getClass();
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        while (i2 > 0) {
            long j = this.f322;
            int iMin = j > 0 ? (int) Math.min(i2, j - this.f319) : i2;
            this.f324.write(bArr, i, iMin);
            i += iMin;
            i2 -= iMin;
            long j2 = this.f319 + ((long) iMin);
            this.f319 = j2;
            long j3 = this.f322;
            if (j3 > 0 && j2 >= j3) {
                m3284(this.f321);
            }
        }
    }

    @Override
    public void write(int i) throws C0414 {
        long j = this.f322;
        if (j > 0 && this.f319 >= j) {
            m3284(this.f321);
        }
        try {
            this.f324.write(i);
            this.f319++;
        } catch (IOException unused) {
            throw new C0414(3, C0663.m5888(new StringBuilder().append(C0128.m3236(1428, 20, 79)), this.f321, "\"."));
        }
    }
}
