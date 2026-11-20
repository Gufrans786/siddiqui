package com.payfort.fortpaymentsdk.callbacks;

import java.util.Map;

public interface FortInterfaces {

    public interface InitializeCallback {
        void afterInitialized();
    }

    public interface OnTnxProcessed {
        void onCancel(Map<String, Object> map, Map<String, Object> map2);

        void onFailure(Map<String, Object> map, Map<String, Object> map2);

        void onSuccess(Map<String, Object> map, Map<String, Object> map2);
    }
}
