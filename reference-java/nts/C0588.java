package nts;

import com.nsoftware.ipworks3ds.sdk.Warning;

public final class C0588 implements Warning {
    @Override
    public String getID() {
        return C0542.f3131;
    }

    @Override
    public String getMessage() {
        return C0558.m5457(20, 21, 27);
    }

    @Override
    public Warning.Severity getSeverity() {
        return Warning.Severity.HIGH;
    }
}
