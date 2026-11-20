package com.google.android.play.core.integrity.model;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface StandardIntegrityWebViewRequestMode {
    public static final int UNSPECIFIED = 0;
    public static final int WITHOUT_APP_BINDING = 2;
    public static final int WITH_APP_BINDING = 1;
}
