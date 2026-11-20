package nts;

public class C0181 {

    public C0376 f616 = new C0376(null, null, null);

    public C0181() {
        for (int i = 0; i < C0498.f2813.size(); i++) {
            byte[] bArr = (byte[]) C0498.f2813.get(i);
            char cCharValue = ((Character) C0498.f2811.get(i)).charValue();
            C0376 c0376 = this.f616;
            for (byte b : bArr) {
                if (b != 1) {
                    if (c0376.f1955 == null) {
                        c0376.f1955 = new C0376(c0376, null, null);
                    }
                    c0376 = c0376.f1955;
                } else {
                    if (c0376.f1954 == null) {
                        c0376.f1954 = new C0376(c0376, null, null);
                    }
                    c0376 = c0376.f1954;
                }
            }
            c0376.f1953 = cCharValue;
        }
    }
}
