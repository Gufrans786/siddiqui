package nts;

import com.nsoftware.ipworks3ds.sdk.event.CompletionEvent;

public class C0227 implements CompletionEvent {

    public final String f817;

    public final String f818;

    public C0227(String str, String str2) {
        this.f818 = str;
        this.f817 = str2;
    }

    @Override
    public String getSDKTransactionID() {
        return this.f818;
    }

    @Override
    public String getTransactionStatus() {
        return this.f817;
    }
}
