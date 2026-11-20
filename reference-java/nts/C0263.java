package nts;

public class C0263 extends C0418 {

    public C0418 f1271 = null;

    public C0263(int i) {
        this.f2150 = i;
    }

    @Override
    public int mo3411(byte[] bArr, int i) throws C0414 {
        if (this.f2145) {
            return i;
        }
        int iMo3411 = super.mo3411(bArr, i);
        if (this.f1271 == null) {
            this.f1271 = new C0418();
        }
        int iMo3412 = this.f1271.mo3411(bArr, iMo3411);
        return !this.f1271.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        return i;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f1271.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }

    public int m3943(byte[] bArr, int i, C0418 c0418) throws C0414 {
        int iMo3411 = super.mo3411(bArr, i);
        if (this.f1271 == null) {
            this.f1271 = c0418;
        }
        int iMo3412 = this.f1271.mo3411(bArr, iMo3411);
        return !this.f1271.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }
}
