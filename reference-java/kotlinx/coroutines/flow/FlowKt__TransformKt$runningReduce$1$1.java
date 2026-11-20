package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class FlowKt__TransformKt$runningReduce$1$1<T> implements FlowCollector {
    final Ref.ObjectRef<Object> $accumulator;
    final Function3<T, T, Continuation<? super T>, Object> $operation;
    final FlowCollector<T> $this_flow;

    FlowKt__TransformKt$runningReduce$1$1(Ref.ObjectRef<Object> objectRef, Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3, FlowCollector<? super T> flowCollector) {
        this.$accumulator = objectRef;
        this.$operation = function3;
        this.$this_flow = flowCollector;
    }

    @Override
    public final java.lang.Object emit(T r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$runningReduce$1$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
