package com.mapbox.maps.coroutine;

import com.mapbox.common.Cancelable;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.NativeObserver;
import com.mapbox.maps.SourceRemoved;
import com.mapbox.maps.SourceRemovedCallback;
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

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/mapbox/maps/SourceRemoved;"}, k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.mapbox.maps.coroutine.MapboxMapExtKt$sourceRemovedEvents$1", f = "MapboxMapExt.kt", i = {}, l = {348}, m = "invokeSuspend", n = {}, s = {})
final class MapboxMapExtKt$sourceRemovedEvents$1 extends SuspendLambda implements Function2<ProducerScope<? super SourceRemoved>, Continuation<? super Unit>, Object> {
    final MapboxMap $this_sourceRemovedEvents;
    private Object L$0;
    int label;

    MapboxMapExtKt$sourceRemovedEvents$1(MapboxMap mapboxMap, Continuation<? super MapboxMapExtKt$sourceRemovedEvents$1> continuation) {
        super(2, continuation);
        this.$this_sourceRemovedEvents = mapboxMap;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MapboxMapExtKt$sourceRemovedEvents$1 mapboxMapExtKt$sourceRemovedEvents$1 = new MapboxMapExtKt$sourceRemovedEvents$1(this.$this_sourceRemovedEvents, continuation);
        mapboxMapExtKt$sourceRemovedEvents$1.L$0 = obj;
        return mapboxMapExtKt$sourceRemovedEvents$1;
    }

    @Override
    public final Object invoke(ProducerScope<? super SourceRemoved> producerScope, Continuation<? super Unit> continuation) {
        return ((MapboxMapExtKt$sourceRemovedEvents$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new AnonymousClass1(NativeObserver.subscribeSourceRemoved$default(this.$this_sourceRemovedEvents.getNativeObserver(), new SourceRemovedCallback() {
                @Override
                public final void run(SourceRemoved sourceRemoved) {
                    MapboxMapExtKt$sourceRemovedEvents$1.invokeSuspend$trySendBlocking(producerScope, sourceRemoved);
                }
            }, new MapboxMapExtKt$sourceRemovedEvents$1$cancelable$2(producerScope.getChannel()), null, 4, null)), this) == coroutine_suspended) {
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

    public static final void invokeSuspend$trySendBlocking(ProducerScope producerScope, SourceRemoved sourceRemoved) {
        ChannelsKt.trySendBlocking(producerScope, sourceRemoved);
    }
}
