package nts;

import ch.qos.logback.core.CoreConstants;

public class C0124 extends AbstractC0095 {

    public String f245;

    public String f246;

    public String f247;

    public String f248;

    public C0124(String str, String str2, String str3, String str4) {
        this.f248 = str;
        this.f245 = str2;
        this.f246 = str3;
        this.f247 = str4;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            return str.indexOf(":") > 0 ? str.equals(this.f246 + ":" + this.f248) : str.equals(this.f248);
        }
        if (!(obj instanceof C0124)) {
            return super.equals(obj);
        }
        C0124 c0124 = (C0124) obj;
        return this.f245.equals(c0124.f245) && this.f248.equals(c0124.f248);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.f246.length() > 0) {
            stringBuffer.append(this.f246 + ":");
        }
        char c = this.f247.indexOf("\"") > 0 ? CoreConstants.SINGLE_QUOTE_CHAR : '\"';
        stringBuffer.append(this.f248 + "=" + c + this.f247 + c);
        return stringBuffer.toString();
    }

    public C0124() {
        this.f248 = "";
        this.f245 = "";
        this.f246 = "";
        this.f247 = "";
    }
}
