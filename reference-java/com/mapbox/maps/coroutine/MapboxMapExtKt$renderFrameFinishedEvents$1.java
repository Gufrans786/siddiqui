package com.mapbox.maps.coroutine;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mapbox.common.Cancelable;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.NativeObserver;
import com.mapbox.maps.RenderFrameFinished;
import com.mapbox.maps.RenderFrameFinishedCallback;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/mapbox/maps/RenderFrameFinished;"}, k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.mapbox.maps.coroutine.MapboxMapExtKt$renderFrameFinishedEvents$1", f = "MapboxMapExt.kt", i = {}, l = {TypedValues.CycleType.TYPE_VISIBILITY}, m = "invokeSuspend", n = {}, s = {})
final class MapboxMapExtKt$renderFrameFinishedEvents$1 extends SuspendLambda implements Function2<ProducerScope<? super RenderFrameFinished>, Continuation<? super Unit>, Object> {
    final MapboxMap $this_renderFrameFinishedEvents;
    private Object L$0;
    int label;

    MapboxMapExtKt$renderFrameFinishedEvents$1(MapboxMap mapboxMap, Continuation<? super MapboxMapExtKt$renderFrameFinishedEvents$1> continuation) {
        super(2, continuation);
        this.$this_renderFrameFinishedEvents = mapboxMap;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MapboxMapExtKt$renderFrameFinishedEvents$1 mapboxMapExtKt$renderFrameFinishedEvents$1 = new MapboxMapExtKt$renderFrameFinishedEvents$1(this.$this_renderFrameFinishedEvents, continuation);
        mapboxMapExtKt$renderFrameFinishedEvents$1.L$0 = obj;
        return mapboxMapExtKt$renderFrameFinishedEvents$1;
    }

    @Override
    public final Object invoke(ProducerScope<? super RenderFrameFinished> producerScope, Continuation<? super Unit> continuation) {
        return ((MapboxMapExtKt$renderFrameFinishedEvents$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new AnonymousClass1(NativeObserver.subscribeRenderFrameFinished$default(this.$this_renderFrameFinishedEvents.getNativeObserver(), new RenderFrameFinishedCallback() {
                @Override
                public final void run(RenderFrameFinished renderFrameFinished) {
                    MapboxMapExtKt$renderFrameFinishedEvents$1.invokeSuspend$trySendBlocking(producerScope, renderFrameFinished);
                }
            }, new MapboxMapExtKt$renderFrameFinishedEvents$1$cancelable$2(producerScope.getChannel()), null, 4, null)), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    class AnonymousClass1 extends FunctionReferenceImpl implements Function0<Unit> {
        AnonymousClass1(Object obj) {
            super(0, obj, Cancelable.class, "cancel", "cancel()V", 0);
        }

        @Override
        public Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        public final void invoke2() {
            ((Cancelable) this.receiver).cancel();
        }
    }

    public static final void invokeSuspend$trySendBlocking(ProducerScope producerScope, RenderFrameFinished renderFrameFinished) {
        ChannelsKt.trySendBlocking(producerScope, renderFrameFinished);
    }
}
