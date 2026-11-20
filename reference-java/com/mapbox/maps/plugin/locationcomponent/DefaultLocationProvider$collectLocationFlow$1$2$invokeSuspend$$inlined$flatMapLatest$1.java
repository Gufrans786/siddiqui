package com.mapbox.maps.plugin.locationcomponent;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.imageutils.JfifUtil;
import com.mapbox.common.location.Location;
import com.mapbox.maps.plugin.PuckBearing;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¨\u0006\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1", f = "DefaultLocationProvider.kt", i = {}, l = {190}, m = "invokeSuspend", n = {}, s = {})
public final class DefaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super Double>, PuckBearing, Continuation<? super Unit>, Object> {
    final Flow $locationFlow$inlined;
    private Object L$0;
    Object L$1;
    int label;
    final DefaultLocationProvider this$0;

    public DefaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1(Continuation continuation, DefaultLocationProvider defaultLocationProvider, Flow flow) {
        super(3, continuation);
        this.this$0 = defaultLocationProvider;
        this.$locationFlow$inlined = flow;
    }

    @Override
    public final Object invoke(FlowCollector<? super Double> flowCollector, PuckBearing puckBearing, Continuation<? super Unit> continuation) {
        DefaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1 defaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1 = new DefaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1(continuation, this.this$0, this.$locationFlow$inlined);
        defaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1.L$0 = flowCollector;
        defaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1.L$1 = puckBearing;
        return defaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Flow<Double> flowEmptyFlow;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            DefaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1 defaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1 = this;
            PuckBearing puckBearing = (PuckBearing) this.L$1;
            int i2 = puckBearing == null ? -1 : DefaultLocationProvider.C08281.AnonymousClass2.WhenMappings.$EnumSwitchMapping$0[puckBearing.ordinal()];
            if (i2 == -1) {
                flowEmptyFlow = FlowKt.emptyFlow();
            } else if (i2 == 1) {
                flowEmptyFlow = this.this$0.deviceOrientationFlow;
            } else {
                if (i2 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                final Flow flow = this.$locationFlow$inlined;
                flowEmptyFlow = new Flow<Double>() {

                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 7, 1}, xi = 48)
                    public static final class AnonymousClass2<T> implements FlowCollector, SuspendFunction {
                        final FlowCollector $this_unsafeFlow;

                        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                        @DebugMetadata(c = "com.mapbox.maps.plugin.locationcomponent.DefaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$lambda$1$$inlined$mapNotNull$1$2", f = "DefaultLocationProvider.kt", i = {}, l = {JfifUtil.MARKER_APP1}, m = "emit", n = {}, s = {})
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            int label;
                            Object result;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override
                            public final Object invokeSuspend(Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.$this_unsafeFlow = flowCollector;
                        }

                        @Override
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.label -= Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.result;
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i = anonymousClass1.label;
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj2);
                                FlowCollector flowCollector = this.$this_unsafeFlow;
                                Double bearing = ((Location) obj).getBearing();
                                if (bearing != null) {
                                    anonymousClass1.label = 1;
                                    if (flowCollector.emit(bearing, anonymousClass1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                            } else {
                                if (i != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.throwOnFailure(obj2);
                            }
                            return Unit.INSTANCE;
                        }
                    }

                    @Override
                    public Object collect(FlowCollector<? super Double> flowCollector2, Continuation continuation) {
                        Object objCollect = flow.collect(new AnonymousClass2(flowCollector2), continuation);
                        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                    }
                };
            }
            this.label = 1;
            if (FlowKt.emitAll(flowCollector, flowEmptyFlow, defaultLocationProvider$collectLocationFlow$1$2$invokeSuspend$$inlined$flatMapLatest$1) == coroutine_suspended) {
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
}
