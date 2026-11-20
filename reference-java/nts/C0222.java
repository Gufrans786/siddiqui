package nts;

public class C0222 extends C0418 {

    public C0472 f811 = new C0472();

    public C0418 f812 = new C0418();

    public boolean f813 = false;

    public C0222() {
        this.f2150 = 48;
        C0418 c0418 = this.f812;
        c0418.f2143 = false;
        c0418.f2147 = true;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f811.mo3411(bArr, i);
        if (!this.f811.f2145 || (this.f2149 && iMo3411 + 1 >= bArr.length)) {
            return iMo3411;
        }
        if (!this.f813) {
            C0472 c0472 = this.f811;
            int i2 = c0472.f2141 + c0472.f2146;
            if (this.f2149) {
                if ((bArr[iMo3411] & 255) == 0 && m4677(bArr, iMo3411 + 1) == 0) {
                    this.f812.f2147 = false;
                }
            } else if (i2 >= this.f2146) {
                this.f812.f2147 = false;
            }
            this.f813 = true;
        }
        if (this.f812.f2147) {
            if (this.f811.f2701.equals(C0458.f2623)) {
                this.f812 = new C0395();
            } else if (this.f811.f2701.equals(C0458.f2650)) {
                this.f812 = new C0472();
            } else if (this.f811.f2701.equals(C0458.f2635)) {
                this.f812 = new C0127();
            } else if (this.f811.f2701.equals(C0458.f2665)) {
                this.f812 = new C0591();
            } else if (this.f811.f2701.equals(C0458.f2610)) {
                this.f812 = new C0210();
            }
            iMo3411 = this.f812.mo3411(bArr, iMo3411);
            C0418 c0418 = this.f812;
            if (!c0418.f2145) {
                return iMo3411;
            }
            c0418.m4679();
        }
        return m4678(bArr, iMo3411);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f811.mo3111(c0531);
        C0418 c0418 = this.f812;
        if (c0418.f2147) {
            c0418.mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
