package nts;

import com.nsoftware.ipworks3ds.sdk.Warning;

public final class C0113 implements Warning {
    @Override
    public String getID() {
        return C0542.f3130;
    }

    @Override
    public String getMessage() {
        return C0558.m5457(84, 41, 5);
    }

    @Override
    public Warning.Severity getSeverity() {
        return Warning.Severity.HIGH;
    }
}
