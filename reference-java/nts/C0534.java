package nts;

import ch.qos.logback.core.net.SyslogConstants;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0534 extends C0242 {

    public int f3105;

    public int f3106 = 0;

    public C0534() {
        this.f3105 = 100;
        new C0387();
        this.f897 = 3;
        this.f3105 = 100;
    }

    @Override
    public void mo3790(byte[] bArr, int i, int i2) {
        int i3 = this.f3105;
        if (i3 == 100) {
            this.f3105 = 110;
            this.f897 = 1;
            return;
        }
        if (i3 == 110) {
            this.f3106 = bArr[i];
            this.f3105 = SyslogConstants.LOG_CLOCK;
            this.f897 = 6;
            return;
        }
        if (i3 == 120) {
            int i4 = this.f3106;
            if ((i4 & 4) != 0) {
                this.f3105 = 130;
                this.f897 = 2;
                return;
            }
            if ((i4 & 8) != 0) {
                this.f3105 = CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA;
                this.f897 = 1;
                return;
            } else if ((i4 & 16) != 0) {
                this.f3105 = 150;
                this.f897 = 1;
                return;
            } else if ((i4 & 2) == 0) {
                this.f897 = 0;
                return;
            } else {
                this.f3105 = SyslogConstants.LOG_LOCAL4;
                this.f897 = 2;
                return;
            }
        }
        if (i3 == 140) {
            if (((byte) (bArr[i] & 255)) == 0) {
                int i5 = this.f3106;
                if ((i5 & 16) != 0) {
                    this.f3105 = 150;
                    this.f897 = 1;
                    return;
                } else if ((i5 & 2) == 0) {
                    this.f897 = 0;
                    return;
                } else {
                    this.f3105 = SyslogConstants.LOG_LOCAL4;
                    this.f897 = 2;
                    return;
                }
            }
            return;
        }
        if (i3 == 150) {
            if (((byte) (bArr[i] & 255)) == 0) {
                if ((this.f3106 & 2) == 0) {
                    this.f897 = 0;
                    return;
                } else {
                    this.f3105 = SyslogConstants.LOG_LOCAL4;
                    this.f897 = 2;
                    return;
                }
            }
            return;
        }
        if (i3 == 160) {
            this.f897 = 0;
            return;
        }
        if (i3 != 130) {
            if (i3 != 131) {
                return;
            }
            this.f897 = 0;
            int i6 = this.f3106;
            if ((i6 & 8) != 0) {
                this.f3105 = CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA;
                this.f897 = 1;
                return;
            } else if ((i6 & 16) != 0) {
                this.f3105 = 150;
                this.f897 = 1;
                return;
            } else if ((i6 & 2) == 0) {
                this.f897 = 0;
                return;
            } else {
                this.f3105 = SyslogConstants.LOG_LOCAL4;
                this.f897 = 2;
                return;
            }
        }
        int i7 = (bArr[i] & 255) + ((bArr[i + 1] & 255) << 8);
        if (i7 > 0) {
            this.f3105 = 131;
            this.f897 = i7;
            return;
        }
        int i8 = this.f3106;
        if ((i8 & 8) != 0) {
            this.f3105 = CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA;
            this.f897 = 1;
        } else if ((i8 & 16) != 0) {
            this.f3105 = 150;
            this.f897 = 1;
        } else if ((i8 & 2) == 0) {
            this.f897 = 0;
        } else {
            this.f3105 = SyslogConstants.LOG_LOCAL4;
            this.f897 = 2;
        }
    }
}
