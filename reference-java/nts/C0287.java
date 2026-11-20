package nts;

import com.facebook.imagepipeline.memory.BitmapCounterConfig;

public class C0287 extends C0409 {
    public C0287() {
        this.f1703 = BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT;
        mo3250();
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        C0287 c0287 = new C0287();
        m4648(c0287);
        return c0287;
    }

    @Override
    public void mo3250() {
        super.mo3250();
        long[] jArr = this.f2113;
        jArr[0] = -3766243637369397544L;
        jArr[1] = 7105036623409894663L;
        jArr[2] = -7973340178411365097L;
        jArr[3] = 1526699215303891257L;
        jArr[4] = 7436329637833083697L;
        jArr[5] = -8163818279084223215L;
        jArr[6] = -2662702644619276377L;
        jArr[7] = 5167115440072839076L;
    }
}
