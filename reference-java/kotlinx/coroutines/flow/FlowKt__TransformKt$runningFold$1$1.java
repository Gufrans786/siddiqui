package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class FlowKt__TransformKt$runningFold$1$1<T> implements FlowCollector {
    final Ref.ObjectRef<R> $accumulator;
    final Function3<R, T, Continuation<? super R>, Object> $operation;
    final FlowCollector<R> $this_flow;

    FlowKt__TransformKt$runningFold$1$1(Ref.ObjectRef<R> objectRef, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, FlowCollector<? super R> flowCollector) {
        this.$accumulator = objectRef;
        this.$operation = function3;
        this.$this_flow = flowCollector;
    }

    @Override
    public final java.lang.Object emit(T r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$1$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
