package com.facebook.common.activitylistener;

import android.app.Activity;

public class BaseActivityListener implements ActivityListener {
    @Override
    public int getPriority() {
        return 1;
    }

    @Override
    public void onActivityCreate(Activity activity) {
    }

    @Override
    public void onDestroy(Activity activity) {
    }

    @Override
    public void onPause(Activity activity) {
    }

    @Override
    public void onResume(Activity activity) {
    }

    @Override
    public void onStart(Activity activity) {
    }

    @Override
    public void onStop(Activity activity) {
    }
}
