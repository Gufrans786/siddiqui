package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0390 extends AbstractC0606 {

    public int f1997;

    public int[] f1998;

    public int f1999;

    public C0390(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        super(bArr2, i3, i3, i, i2, i4);
        this.f1998 = new int[SyslogConstants.LOG_CLOCK];
        this.f1997 = 10;
        this.f1999 = i3;
        int i5 = this.f3365;
        if (i5 == 4 || i5 == 3) {
            this.f1997 = C0450.m5094(bArr, i3, this.f1998, new int[SyslogConstants.LOG_CLOCK]);
        } else {
            this.f1997 = C0450.m5094(bArr, i3, new int[SyslogConstants.LOG_CLOCK], this.f1998);
        }
        this.f3374 = true;
    }

    @Override
    public void mo3123() throws Exception {
        int i = this.f3365;
        if (i == 4 || i == 3) {
            C0450.m5092(this.f3371, this.f1998, this.f1997, this.f1999);
        } else {
            C0450.m5095(this.f3371, this.f1998, this.f1997, this.f1999);
        }
    }
}
