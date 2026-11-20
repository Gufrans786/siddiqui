package nts;

import ch.qos.logback.core.net.SyslogConstants;

public abstract class AbstractC0313 {

    public C0509[] f1684;

    public int f1685;

    public int f1686;

    public C0509[] f1687;

    public int f1689;

    public int f1690;

    public int f1691;

    public byte[] f1688 = null;

    public byte[] f1683 = null;

    public abstract void mo3115() throws C0537;

    public void m4284(int i) throws C0537 {
        int i2 = 0;
        while (true) {
            C0509[] c0509Arr = this.f1687;
            if (i2 >= c0509Arr.length) {
                throw new C0537(C0465.m5121(0, 41, SyslogConstants.LOG_CLOCK));
            }
            C0509 c0509 = c0509Arr[i2];
            int i3 = c0509.f2860;
            while (true) {
                if (i3 == i) {
                    this.f1691 = i;
                    return;
                } else if (i3 == c0509.f2859) {
                    break;
                } else {
                    i3 += c0509.f2858;
                }
            }
            i2++;
        }
    }

    public abstract void mo3116() throws C0537;

    public abstract InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) throws C0537;

    public void m4286(int i) {
        this.f1685 = i;
    }

    public abstract InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) throws C0537;

    public void mo3994(byte[] bArr) {
        this.f1685 = bArr.length * 8;
        this.f1688 = (byte[]) bArr.clone();
    }

    public void mo3267(byte[] bArr) throws C0537 {
        m4284(bArr.length * 8);
        this.f1683 = (byte[]) bArr.clone();
    }

    public InterfaceC0126 mo4285() throws C0537 {
        if (this.f1683 == null) {
            mo3116();
        }
        if (this.f1688 == null) {
            mo3115();
        }
        return mo3117(this.f1683, this.f1688);
    }

    public InterfaceC0126 mo4287() throws C0537 {
        return mo3118(this.f1683, this.f1688);
    }

    public void m4288(int i) throws C0537 {
        for (int i2 = 0; i2 < this.f1687.length; i2++) {
            C0509 c0509 = this.f1684[i2];
            if (c0509.f2858 > 0) {
                for (int i3 = c0509.f2860; i3 <= c0509.f2859; i3 += c0509.f2858) {
                    if (i3 == i) {
                        this.f1689 = i;
                        return;
                    }
                }
            } else {
                if (i == c0509.f2860 || i == c0509.f2859) {
                    this.f1689 = i;
                    return;
                }
            }
        }
        throw new C0537(C0465.m5121(41, 43, 24));
    }
}
