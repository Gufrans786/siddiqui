package nts;

public class C0353 implements Cloneable {

    public C0652 f1870;

    public C0353() {
        this.f1870 = null;
        this.f1870 = new C0652();
    }

    public Object clone() throws CloneNotSupportedException {
        return new C0353((C0652) this.f1870.clone());
    }

    public C0353(C0652 c0652) {
        this.f1870 = c0652;
    }
}
