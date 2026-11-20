package nts;

import com.nsoftware.ipworks3ds.sdk.Warning;

public final class C0106 implements Warning {
    @Override
    public String getID() {
        return C0542.f3128;
    }

    @Override
    public String getMessage() {
        return C0558.m5457(159, 42, 54);
    }

    @Override
    public Warning.Severity getSeverity() {
        return Warning.Severity.HIGH;
    }
}
