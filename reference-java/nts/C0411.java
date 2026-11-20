package nts;

import com.nsoftware.ipworks3ds.sdk.event.ErrorMessage;

public class C0411 implements ErrorMessage {

    public final String f2123;

    public final String f2124;

    public final String f2125;

    public final String f2126;

    public C0411(String str, String str2, String str3, String str4) {
        this.f2126 = str;
        this.f2125 = str2;
        this.f2123 = str3;
        this.f2124 = str4;
    }

    @Override
    public String getErrorCode() {
        return this.f2125;
    }

    @Override
    public String getErrorDescription() {
        return this.f2123;
    }

    @Override
    public String getErrorDetails() {
        return this.f2124;
    }

    @Override
    public String getTransactionID() {
        return this.f2126;
    }

    public String toString() {
        return String.format(C0558.m5481("sTDJPCBTFACeo\u0010\t\rD\u001a\u0015qA@^B|QYY\u0001\u001a\u001cK+&Aapasi\u007fzdce0)-d:5Pvfpysm'<>i", 0, 62, 25), this.f2126, this.f2125, this.f2123, this.f2124);
    }
}
