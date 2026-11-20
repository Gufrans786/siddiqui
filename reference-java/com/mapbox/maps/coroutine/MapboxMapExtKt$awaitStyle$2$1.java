package com.mapbox.maps.coroutine;

import com.mapbox.maps.Style;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
class MapboxMapExtKt$awaitStyle$2$1 implements Style.OnStyleLoaded, FunctionAdapter {
    final Continuation<Style> $tmp0;

    MapboxMapExtKt$awaitStyle$2$1(Continuation<? super Style> continuation) {
        this.$tmp0 = continuation;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Style.OnStyleLoaded) && (obj instanceof FunctionAdapter)) {
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override
    public final Function<?> getFunctionDelegate() {
        return new FunctionReferenceImpl(1, this.$tmp0, ContinuationKt.class, "resume", "resume(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", 1);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override
    public final void onStyleLoaded(Style p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Continuation<Style> continuation = this.$tmp0;
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m1463constructorimpl(p0));
    }
}
