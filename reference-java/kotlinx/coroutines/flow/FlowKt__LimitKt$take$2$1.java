package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.internal.Ref;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class FlowKt__LimitKt$take$2$1<T> implements FlowCollector {
    final Ref.IntRef $consumed;
    final int $count;
    final Object $ownershipMarker;
    final FlowCollector<T> $this_flow;

    FlowKt__LimitKt$take$2$1(Ref.IntRef intRef, int i, FlowCollector<? super T> flowCollector, Object obj) {
        this.$consumed = intRef;
        this.$count = i;
        this.$this_flow = flowCollector;
        this.$ownershipMarker = obj;
    }

    @Override
    public final java.lang.Object emit(T r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
