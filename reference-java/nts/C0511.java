package nts;

import com.facebook.imageutils.JfifUtil;

public class C0511 extends C0418 {

    public C0222 f2961 = new C0222();

    public C0446 f2962 = new C0446();

    public C0418 f2963 = null;

    public C0511() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f2961.mo3411(bArr, i);
        if (!this.f2961.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f2962.mo3411(bArr, iMo3411);
        C0446 c0446 = this.f2962;
        if (!c0446.f2145) {
            return iMo3412;
        }
        byte[] bArr2 = c0446.f2148;
        if (bArr2[0] != 0) {
            throw new C0414(JfifUtil.MARKER_APP1, C0177.m3555(342, 31, 96));
        }
        int length = bArr2.length - 1;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr2, 1, bArr3, 0, length);
        if (this.f2961.f811.f2701.equals(C0458.f2620)) {
            C0319 c0319 = new C0319();
            this.f2963 = c0319;
            c0319.mo3411(bArr3, 0);
        } else if (this.f2961.f811.f2701.equals(C0458.f2668)) {
            C0211 c0211 = new C0211();
            this.f2963 = c0211;
            c0211.mo3411(bArr3, 0);
        } else {
            if (!this.f2961.f811.f2701.equals(C0458.f2650) && !this.f2961.f811.f2701.equals(C0458.f2646) && !this.f2961.f811.f2701.equals(C0458.f2658)) {
                throw new C0414(JfifUtil.MARKER_APP1, C0663.m5888(new StringBuilder().append(C0177.m3555(373, 43, 19)), this.f2961.f811.f2701, ")."));
            }
            this.f2963 = new C0446(bArr3);
        }
        return m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f2961.mo3111(c0531);
        C0446 c0446 = this.f2962;
        c0531.m5368(c0446.f2148, c0446.f2150);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
