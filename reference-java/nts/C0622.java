package nts;

import ch.qos.logback.core.net.SyslogConstants;
import java.io.IOException;
import java.io.InputStream;

public class C0622 extends InputStream implements InterfaceC0240 {

    public long f3438;

    public InterfaceC0452 f3439;

    public byte[] f3440;

    public boolean f3441;

    public InputStream f3442;

    public int f3443;

    public boolean f3444;

    public int f3445;

    public C0423 f3446;

    public boolean f3447;

    public byte[] f3448;

    public boolean f3449;

    public C0622(InputStream inputStream) {
        this.f3438 = 0L;
        this.f3439 = null;
        this.f3443 = 0;
        this.f3448 = new byte[1];
        this.f3441 = false;
        this.f3444 = false;
        this.f3447 = false;
        this.f3442 = inputStream;
        this.f3446 = new C0423();
        this.f3445 = 0;
        this.f3440 = new byte[4096];
        this.f3449 = false;
    }

    @Override
    public int available() throws IOException {
        if (this.f3449) {
            throw new IOException(C0177.m3568(0, 32, 1));
        }
        return this.f3446.m4689() ? 0 : 1;
    }

    @Override
    public void close() throws IOException {
        InterfaceC0452 interfaceC0452;
        if (this.f3449) {
            return;
        }
        int i = this.f3443;
        if (i != 0 && (interfaceC0452 = this.f3439) != null && i != interfaceC0452.mo4590()) {
            throw new C0414(127, C0177.m3568(32, 30, 89));
        }
        if (this.f3446.m4689()) {
            mo4299();
        }
        if (this.f3441) {
            this.f3442.close();
        }
        this.f3449 = true;
    }

    @Override
    public int read() throws IOException {
        if (read(this.f3448, 0, 1) > 0) {
            return this.f3448[0] & 255;
        }
        return -1;
    }

    @Override
    public long skip(long j) throws IOException {
        byte[] bArr = new byte[1000];
        long j2 = j;
        do {
            int i = read(bArr, 0, (int) (j2 <= 1000 ? j2 : 1000L));
            if (i <= 0) {
                return j - j2;
            }
            j2 -= (long) i;
        } while (j2 != 0);
        return j;
    }

    public int m5711() throws IOException {
        InputStream inputStream = this.f3442;
        byte[] bArr = this.f3440;
        int i = inputStream.read(bArr, 0, bArr.length);
        this.f3445 = i;
        this.f3438 += (long) i;
        if (this.f3447 && i <= 0) {
            return 0;
        }
        if (i < 0) {
            this.f3446.m4688();
            throw null;
        }
        if (i > -1) {
            this.f3446.m4691(this.f3440, 0, i);
        }
        return this.f3445;
    }

    public int m5712(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        for (int i4 = i2 - 1; i4 >= 0; i4--) {
            i3 = (i3 << 8) + (bArr[i + i4] & 255);
        }
        return i3;
    }

    public void mo4299() throws IOException {
    }

    public byte[] m5713(int i) throws C0414 {
        byte[] bArr = new byte[i];
        C0423 c0423 = this.f3446;
        int iM4690 = i > c0423.m4690() ? c0423.m4690() : i;
        byte[] bArr2 = new byte[iM4690];
        c0423.f2180.m4347();
        c0423.f2180.m4348(bArr2, 0, iM4690);
        System.arraycopy(bArr2, 0, bArr, 0, iM4690);
        if (iM4690 < i) {
            while (iM4690 < i) {
                try {
                    int i2 = this.f3442.read();
                    this.f3438++;
                    if (i2 == -1) {
                        throw new C0414(127, C0177.m3568(201, 34, 119));
                    }
                    bArr[iM4690] = (byte) i2;
                    iM4690++;
                } catch (IOException unused) {
                    throw new C0414(127, C0177.m3568(235, 34, 86));
                }
            }
        }
        return bArr;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int iM4693;
        if (!this.f3449) {
            if (i < 0 || i + i2 > bArr.length) {
                throw new ArrayIndexOutOfBoundsException(C0177.m3568(94, 26, SyslogConstants.LOG_CLOCK));
            }
            while (true) {
                iM4693 = this.f3446.m4693(bArr, i, i2);
                InterfaceC0452 interfaceC0452 = this.f3439;
                if (interfaceC0452 != null) {
                    interfaceC0452.mo4592(bArr, i, iM4693);
                }
                if (iM4693 > 0) {
                    break;
                }
                if (this.f3446.m4689()) {
                    return -1;
                }
                if (this.f3446.f2180.m4350()) {
                    try {
                        if (m5711() == 0 && this.f3444) {
                            return 0;
                        }
                    } catch (C0414 e) {
                        if (iM4693 <= 0) {
                            throw e;
                        }
                    }
                } else {
                    throw new C0414(199, C0177.m3568(SyslogConstants.LOG_CLOCK, 15, 104));
                }
            }
            return iM4693;
        }
        throw new IOException(C0177.m3568(62, 32, 15));
    }

    public C0622(InputStream inputStream, C0423 c0423, int i) {
        this.f3438 = 0L;
        this.f3439 = null;
        this.f3443 = 0;
        this.f3448 = new byte[1];
        this.f3441 = false;
        this.f3444 = false;
        this.f3447 = false;
        this.f3442 = inputStream;
        this.f3446 = c0423;
        this.f3445 = 0;
        this.f3440 = new byte[i];
        this.f3443 = 0;
        this.f3449 = false;
    }
}
