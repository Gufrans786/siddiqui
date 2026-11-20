package com.mapbox.maps.coroutine;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlinx.coroutines.channels.SendChannel;

@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
class MapboxMapExtKt$cameraChangedEvents$1$cancelable$2 extends AdaptedFunctionReference implements Function0<Unit> {
    MapboxMapExtKt$cameraChangedEvents$1$cancelable$2(Object obj) {
        super(0, obj, SendChannel.class, "close", "close(Ljava/lang/Throwable;)Z", 8);
    }

    @Override
    public Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    public final void invoke2() {
        SendChannel.DefaultImpls.close$default((SendChannel) this.receiver, null, 1, null);
    }
}
