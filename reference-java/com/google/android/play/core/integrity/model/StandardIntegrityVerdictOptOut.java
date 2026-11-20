package com.google.android.play.core.integrity.model;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface StandardIntegrityVerdictOptOut {
    public static final int APP_ACCESS_RISK = 1;
}
