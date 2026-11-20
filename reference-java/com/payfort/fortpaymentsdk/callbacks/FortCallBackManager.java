package com.payfort.fortpaymentsdk.callbacks;

import android.content.Intent;

public interface FortCallBackManager {
    boolean onActivityResult(int i, int i2, Intent intent);

    public static class Factory {
        public static FortCallBackManager create() {
            return new FortCallback();
        }
    }
}
