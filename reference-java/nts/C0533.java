package nts;

import com.nsoftware.ipworks3ds.sdk.event.ErrorMessage;
import com.nsoftware.ipworks3ds.sdk.event.ProtocolErrorEvent;

public class C0533 implements ProtocolErrorEvent {

    public final C0411 f3103;

    public final String f3104;

    public C0533(String str, C0411 c0411) {
        this.f3104 = str;
        this.f3103 = c0411;
    }

    @Override
    public ErrorMessage getErrorMessage() {
        return this.f3103;
    }

    @Override
    public String getSDKTransactionID() {
        return this.f3104;
    }
}
