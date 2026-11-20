package com.google.firebase.crashlytics.internal.concurrency;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
class CrashlyticsWorkers$Companion$checkBlockingThread$1 extends FunctionReferenceImpl implements Function0<Boolean> {
    CrashlyticsWorkers$Companion$checkBlockingThread$1(Object obj) {
        super(0, obj, CrashlyticsWorkers.Companion.class, "isBlockingThread", "isBlockingThread()Z", 0);
    }

    @Override
    public final Boolean invoke() {
        return Boolean.valueOf(((CrashlyticsWorkers.Companion) this.receiver).isBlockingThread());
    }
}
