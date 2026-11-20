package nts;

public class C0563 extends AbstractC0095 {

    public String f3173;

    public String f3174;

    public C0563() {
        this.f3174 = "";
        this.f3173 = "";
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof String)) {
            return super.equals(obj);
        }
        String str = (String) obj;
        return str.indexOf(":") > 0 ? (this.f3173 + ":" + str).equals(this.f3173 + ":" + this.f3174) : str.equals(this.f3174);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(C0558.m5481("@TVUOrfdg}", 0, 5, 61));
        if (!this.f3173.equals(C0558.m5481("@TVUOrfdg}", 5, 5, 10))) {
            stringBuffer.append(C0663.m5891(":").append(this.f3173).toString());
        }
        stringBuffer.append(C0663.m5891("=\"").append(this.f3174).append("\"").toString());
        return stringBuffer.toString();
    }

    public C0563(String str, String str2) {
        this.f3174 = str;
        this.f3173 = str2;
    }
}
