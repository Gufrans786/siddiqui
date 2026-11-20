package nts;

public class C0615 extends C0239 {

    public C0639 f3375;

    public C0615(Object obj, Object obj2, C0639 c0639) {
        super(obj, obj2);
        this.f3375 = c0639;
    }

    @Override
    public void mo3762(int i, String str) {
        C0639 c0639 = this.f3375;
        if (c0639 != null) {
            c0639.mo5012(3, C0164.m3497(19, 22, 25) + i + C0164.m3497(41, 15, 110) + str, C0164.m3497(56, 8, 58));
        }
    }

    @Override
    public void mo3781(int i, String str, String str2) {
        C0639 c0639 = this.f3375;
        if (c0639 != null) {
            c0639.mo5012(i, C0164.m3497(0, 11, 69) + str, C0164.m3497(11, 8, 82));
        }
    }
}
