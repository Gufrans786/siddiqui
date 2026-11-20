package nts;

public class C0281 implements Cloneable {

    public C0335 f1416;

    public C0281() {
        this.f1416 = null;
        this.f1416 = new C0335();
    }

    public Object clone() throws CloneNotSupportedException {
        return new C0281((C0335) this.f1416.clone());
    }

    public C0281(int i, String str, String str2, String str3) throws C0369 {
        this.f1416 = null;
        try {
            this.f1416 = new C0335(i, str, str2, str3);
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public C0281(C0335 c0335) {
        this.f1416 = c0335;
    }
}
