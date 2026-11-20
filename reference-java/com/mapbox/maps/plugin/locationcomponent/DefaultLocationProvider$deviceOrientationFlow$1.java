package com.mapbox.maps.plugin.locationcomponent;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider$deviceOrientationFlow$1", f = "DefaultLocationProvider.kt", i = {}, l = {91}, m = "invokeSuspend", n = {}, s = {})
final class DefaultLocationProvider$deviceOrientationFlow$1 extends SuspendLambda implements Function2<ProducerScope<? super Double>, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final DefaultLocationProvider this$0;

    DefaultLocationProvider$deviceOrientationFlow$1(DefaultLocationProvider defaultLocationProvider, Continuation<? super DefaultLocationProvider$deviceOrientationFlow$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultLocationProvider;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultLocationProvider$deviceOrientationFlow$1 defaultLocationProvider$deviceOrientationFlow$1 = new DefaultLocationProvider$deviceOrientationFlow$1(this.this$0, continuation);
        defaultLocationProvider$deviceOrientationFlow$1.L$0 = obj;
        return defaultLocationProvider$deviceOrientationFlow$1;
    }

    @Override
    public final Object invoke(ProducerScope<? super Double> producerScope, Continuation<? super Unit> continuation) {
        return ((DefaultLocationProvider$deviceOrientationFlow$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final LocationCompassEngine.CompassListener compassListener = new LocationCompassEngine.CompassListener() {
                @Override
                public final void onCompassChanged(float f) {
                    DefaultLocationProvider$deviceOrientationFlow$1.invokeSuspend$lambda$0(producerScope, f);
                }
            };
            this.this$0.locationCompassEngine.addCompassListener$plugin_locationcomponent_release(compassListener);
            final DefaultLocationProvider defaultLocationProvider = this.this$0;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                public final void invoke2() {
                    defaultLocationProvider.locationCompassEngine.removeCompassListener$plugin_locationcomponent_release(compassListener);
                }
            }, this) == coroutine_suspended) {
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

    public static final void invokeSuspend$lambda$0(ProducerScope producerScope, float f) {
        ChannelsKt.trySendBlocking(producerScope, Double.valueOf(f));
    }
}
