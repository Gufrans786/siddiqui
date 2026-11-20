package com.transistorsoft.locationmanager.adapter.callback;

public interface TSGetCountCallback {
    void onFailure(String str);

    void onSuccess(Integer num);
}
