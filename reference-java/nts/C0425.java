package nts;

import com.nsoftware.ipworks3ds.sdk.Warning;

public final class C0425 implements Warning {
    @Override
    public String getID() {
        return C0542.f3127;
    }

    @Override
    public String getMessage() {
        return C0558.m5457(125, 34, 112);
    }

    @Override
    public Warning.Severity getSeverity() {
        return Warning.Severity.MEDIUM;
    }
}
