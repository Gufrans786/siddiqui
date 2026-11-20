package nts;

import com.nsoftware.ipworks3ds.sdk.event.RuntimeErrorEvent;

public class C0250 implements RuntimeErrorEvent {

    public final String f913;

    public final String f914;

    public C0250(C0369 c0369) {
        this.f914 = C0663.m5891("").append(c0369.f1933).toString();
        this.f913 = c0369.getMessage();
    }

    @Override
    public String getErrorCode() {
        return this.f914;
    }

    @Override
    public String getErrorMessage() {
        return this.f913;
    }

    public C0250(String str, String str2) {
        this.f914 = str;
        this.f913 = str2;
    }
}
