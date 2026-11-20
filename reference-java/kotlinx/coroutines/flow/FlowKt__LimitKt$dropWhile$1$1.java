package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class FlowKt__LimitKt$dropWhile$1$1<T> implements FlowCollector {
    final Ref.BooleanRef $matched;
    final Function2<T, Continuation<? super Boolean>, Object> $predicate;
    final FlowCollector<T> $this_flow;

    FlowKt__LimitKt$dropWhile$1$1(Ref.BooleanRef booleanRef, FlowCollector<? super T> flowCollector, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        this.$matched = booleanRef;
        this.$this_flow = flowCollector;
        this.$predicate = function2;
    }

    @Override
    public final java.lang.Object emit(T r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
