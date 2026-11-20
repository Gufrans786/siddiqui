package com.facebook.common.logging;

import android.util.Log;

public class FLogDefaultLoggingDelegate implements LoggingDelegate {
    public static final FLogDefaultLoggingDelegate sInstance = new FLogDefaultLoggingDelegate();
    private String mApplicationTag = "unknown";
    private int mMinimumLoggingLevel = 5;

    public static FLogDefaultLoggingDelegate getInstance() {
        return sInstance;
    }

    private FLogDefaultLoggingDelegate() {
    }

    public void setApplicationTag(String str) {
        this.mApplicationTag = str;
    }

    @Override
    public void setMinimumLoggingLevel(int i) {
        this.mMinimumLoggingLevel = i;
    }

    @Override
    public int getMinimumLoggingLevel() {
        return this.mMinimumLoggingLevel;
    }

    @Override
    public boolean isLoggable(int i) {
        return this.mMinimumLoggingLevel <= i;
    }

    @Override
    public void v(String str, String str2) {
        println(2, str, str2);
    }

    @Override
    public void v(String str, String str2, Throwable th) {
        println(2, str, str2, th);
    }

    @Override
    public void d(String str, String str2) {
        println(3, str, str2);
    }

    @Override
    public void d(String str, String str2, Throwable th) {
        println(3, str, str2, th);
    }

    @Override
    public void i(String str, String str2) {
        println(4, str, str2);
    }

    @Override
    public void i(String str, String str2, Throwable th) {
        println(4, str, str2, th);
    }

    @Override
    public void w(String str, String str2) {
        println(5, str, str2);
    }

    @Override
    public void w(String str, String str2, Throwable th) {
        println(5, str, str2, th);
    }

    @Override
    public void e(String str, String str2) {
        println(6, str, str2);
    }

    @Override
    public void e(String str, String str2, Throwable th) {
        println(6, str, str2, th);
    }

    @Override
    public void wtf(String str, String str2) {
        println(6, str, str2);
    }

    @Override
    public void wtf(String str, String str2, Throwable th) {
        println(6, str, str2, th);
    }

    @Override
    public void log(int i, String str, String str2) {
        println(i, str, str2);
    }

    private void println(int i, String str, String str2) {
        Log.println(i, prefixTag(str), str2);
    }

    private void println(int i, String str, String str2, Throwable th) {
        Log.println(i, prefixTag(str), getMsg(str2, th));
    }

    private String prefixTag(String str) {
        return this.mApplicationTag != null ? this.mApplicationTag + ":" + str : str;
    }

    private static String getMsg(String str, Throwable th) {
        return str + '\n' + getStackTraceString(th);
    }

    private static String getStackTraceString(Throwable th) {
        if (th == null) {
            return "";
        }
        return Log.getStackTraceString(th);
    }
}
