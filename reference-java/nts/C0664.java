package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0664 extends AbstractC0527 {

    public int f3676;

    public int[] f3677;

    public int f3678;

    public C0664(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        super(bArr2, i3, i3, i, i2, i4);
        int[] iArr = new int[SyslogConstants.LOG_CLOCK];
        this.f3677 = iArr;
        this.f3676 = 10;
        this.f3678 = i3;
        this.f3676 = C0450.m5094(bArr, i3, iArr, new int[SyslogConstants.LOG_CLOCK]);
        this.f3374 = true;
    }

    @Override
    public void mo3119() throws Exception {
        C0450.m5092(this.f3371, this.f3677, this.f3676, this.f3678);
    }
}
