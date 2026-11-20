package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2", f = "Reduce.kt", i = {}, l = {21}, m = "emit", n = {}, s = {})
final class FlowKt__ReduceKt$reduce$2$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final FlowKt__ReduceKt.C10212<T> this$0;

    FlowKt__ReduceKt$reduce$2$emit$1(FlowKt__ReduceKt.C10212<? super T> c10212, Continuation<? super FlowKt__ReduceKt$reduce$2$emit$1> continuation) {
        super(continuation);
        this.this$0 = c10212;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
