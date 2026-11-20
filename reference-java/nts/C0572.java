package nts;

import ch.qos.logback.core.net.SyslogConstants;
import com.google.common.base.Ascii;

public class C0572 extends C0173 {
    public C0572() {
        this.f1703 = 512;
        this.f570 = SyslogConstants.LOG_LOCAL1;
    }

    @Override
    public byte[] mo3413() {
        byte[] bArr = this.f567;
        int i = this.f569;
        int i2 = this.f570;
        byte[] bArr2 = new byte[(i + i2) - (i % i2)];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        bArr2[i] = Ascii.US;
        int i3 = this.f570 - 1;
        bArr2[i3] = (byte) (bArr2[i3] ^ (-128));
        this.f1702 = new byte[this.f1703 / 8];
        int i4 = 0;
        while (i4 < this.f1703 / 8) {
            m3536(bArr2, this.f570);
            for (int i5 = 0; i5 < 5; i5++) {
                for (int i6 = 0; i6 < 5; i6++) {
                    if ((i5 * 5) + i6 < this.f570 / 8) {
                        long j = this.f566[i6][i5];
                        for (int i7 = 0; i7 < 8 && i4 < this.f1703 / 8; i7++) {
                            this.f1702[i4] = (byte) j;
                            i4++;
                            j >>= 8;
                        }
                    }
                }
            }
            bArr2 = new byte[this.f570];
        }
        return this.f1702;
    }
}
