package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.location.ActivityRecognition;

abstract class zzv extends BaseImplementation.ApiMethodImpl {
    public zzv(GoogleApiClient googleApiClient) {
        super(ActivityRecognition.API, googleApiClient);
    }

    @Override
    public final Result createFailedResult(Status status) {
        return status;
    }

    @Override
    public final void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
