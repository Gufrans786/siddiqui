package nts;

public class C0428 implements Cloneable {

    public C0488 f2224;

    public C0428() {
        this.f2224 = null;
        this.f2224 = new C0488();
    }

    public Object clone() throws CloneNotSupportedException {
        return new C0428((C0488) this.f2224.clone());
    }

    public C0428(String str, String str2, int i, int i2) {
        this.f2224 = null;
        this.f2224 = new C0488(str, str2, i, i2);
    }

    public C0428(C0488 c0488) {
        this.f2224 = c0488;
    }
}
