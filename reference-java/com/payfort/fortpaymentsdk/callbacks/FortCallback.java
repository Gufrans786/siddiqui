package com.payfort.fortpaymentsdk.callbacks;

import android.content.Intent;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\r¨\u0006\u0010"}, d2 = {"Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;", "Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;", "()V", "onActivityResult", "", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "registerCallback", "", "callback", "Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;", "Callback", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FortCallback implements FortCallBackManager {
    private static final Map<Integer, Callback> callbacks = new HashMap();

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, d2 = {"Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;", "", "onActivityResult", "", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface Callback {
        boolean onActivityResult(int requestCode, int resultCode, Intent data);
    }

    public final void registerCallback(int requestCode, Callback callback) {
        if (callback != null) {
            callbacks.put(Integer.valueOf(requestCode), callback);
            return;
        }
        throw new IllegalStateException("callback".toString());
    }

    @Override
    public boolean onActivityResult(int requestCode, int resultCode, Intent data) {
        Callback callback = callbacks.get(Integer.valueOf(requestCode));
        if (callback != null) {
            return callback.onActivityResult(requestCode, resultCode, data);
        }
        return false;
    }
}
