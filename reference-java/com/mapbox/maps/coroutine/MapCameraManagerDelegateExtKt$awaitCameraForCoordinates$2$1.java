package com.mapbox.maps.coroutine;

import com.mapbox.maps.CameraOptions;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
class MapCameraManagerDelegateExtKt$awaitCameraForCoordinates$2$1 extends FunctionReferenceImpl implements Function1<CameraOptions, Unit> {
    MapCameraManagerDelegateExtKt$awaitCameraForCoordinates$2$1(Object obj) {
        super(1, obj, ContinuationKt.class, "resume", "resume(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", 1);
    }

    @Override
    public Unit invoke(CameraOptions cameraOptions) {
        invoke2(cameraOptions);
        return Unit.INSTANCE;
    }

    public final void invoke2(CameraOptions p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Continuation continuation = (Continuation) this.receiver;
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m1463constructorimpl(p0));
    }
}
