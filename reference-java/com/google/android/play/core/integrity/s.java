package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;

public final class s implements t {
    s() {
    }

    @Override
    public final ApiException a(Bundle bundle) {
        int i = bundle.getInt("error");
        if (i == 0) {
            return null;
        }
        return new StandardIntegrityException(i, bundle.getBoolean("is.error.remediable"), null);
    }
}
