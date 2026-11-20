package nts;

import com.facebook.imagepipeline.memory.BitmapCounterConfig;

public class C0592 extends C0173 {
    public C0592() {
        this.f1703 = BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT;
        this.f570 = 104;
        mo3250();
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        C0592 c0592 = new C0592();
        m3535(c0592);
        return c0592;
    }
}
