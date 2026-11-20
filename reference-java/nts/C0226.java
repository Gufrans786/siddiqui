package nts;

public class C0226 extends C0591 {

    public int f816;

    public C0226() {
        this.f816 = 0;
        this.f2150 = 4;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int i2;
        int i3;
        if (this.f2149) {
            while (!this.f2145) {
                this.f2144 = false;
                int iM4675 = m4675(bArr, i);
                this.f2149 = true;
                boolean z = this.f2145;
                if (z) {
                    break;
                }
                if (!this.f2144) {
                    this.f2144 = true;
                    return i;
                }
                if (z) {
                    break;
                }
                if (this.f2142 <= 0 || this.f2146 + iM4675 >= bArr.length) {
                    return i;
                }
                byte[] bArrM3845 = C0259.m3845(this.f2148);
                this.f2148 = new byte[bArrM3845.length + this.f2146];
                System.arraycopy(bArrM3845, 0, this.f2148, 0, bArrM3845.length);
                System.arraycopy(bArr, iM4675, this.f2148, bArrM3845.length, this.f2146);
                i = this.f2146 + iM4675;
            }
        } else {
            if (!this.f2144 || (i3 = i + (i2 = this.f2146)) > bArr.length) {
                boolean z2 = this.f2144;
                return i;
            }
            if ((this.f2142 & 32) == 32) {
                while (!this.f2145 && i < i3) {
                    this.f2144 = false;
                    int iM4676 = m4675(bArr, i);
                    if (this.f2145 || iM4676 > i3) {
                        break;
                    }
                    if (!this.f2144) {
                        this.f2144 = true;
                        break;
                    }
                    if (this.f2142 <= 0 || this.f2146 + iM4676 > bArr.length) {
                        break;
                    }
                    byte[] bArrM3846 = C0259.m3845(this.f2148);
                    this.f2148 = new byte[bArrM3846.length + this.f2146];
                    System.arraycopy(bArrM3846, 0, this.f2148, 0, bArrM3846.length);
                    System.arraycopy(bArr, iM4676, this.f2148, bArrM3846.length, this.f2146);
                    i = iM4676 + this.f2146;
                }
                this.f2145 = true;
                return i3;
            }
            this.f2148 = C0259.m3865(bArr, i, i2);
            i += this.f2146;
        }
        return m4678(bArr, i);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        byte[] bArr = this.f2148;
        if (bArr.length != 0) {
            c0530.m5379(bArr, this.f2150);
            return;
        }
        C0530 c0531 = new C0530();
        c0531.f3090 = false;
        c0531.f3091 = this.f2150 | 32;
        c0530.m5397(c0531.m5388());
    }

    public C0226(InterfaceC0559 interfaceC0559) {
        this.f816 = 0;
        this.f2150 = 4;
        this.f816 = 0;
    }
}
