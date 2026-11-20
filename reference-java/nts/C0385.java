package nts;

public class C0385 extends AbstractC0095 {

    public C0387 f1989 = new C0387();

    public C0387 f1987 = new C0387();

    public int f1988 = 2;

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof C0385)) {
            return super.equals(obj);
        }
        C0385 c0385 = (C0385) obj;
        return c0385.f1989.m4540(this.f1989.m4554()) && c0385.f1987.m4540(this.f1987.m4554()) && c0385.f1988 == this.f1988;
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }
}
