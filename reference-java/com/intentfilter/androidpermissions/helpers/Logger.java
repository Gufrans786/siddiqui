package com.intentfilter.androidpermissions.helpers;

import android.util.Log;

public class Logger {
    private final String LOG_TAG;

    public void i(String str) {
    }

    private Logger(Class cls) {
        this.LOG_TAG = cls.getSimpleName();
    }

    public static Logger loggerFor(Class cls) {
        return new Logger(cls);
    }

    public void e(String str) {
        Log.e(this.LOG_TAG, str);
    }
}
