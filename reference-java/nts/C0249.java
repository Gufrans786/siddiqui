package nts;

import com.nsoftware.ipworks3ds.sdk.Warning;

public final class C0249 implements Warning {
    @Override
    public String getID() {
        return C0542.f3129;
    }

    @Override
    public String getMessage() {
        return C0558.m5457(41, 43, 48);
    }

    @Override
    public Warning.Severity getSeverity() {
        return Warning.Severity.HIGH;
    }
}
