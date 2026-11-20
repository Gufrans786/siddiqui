package kotlinx.coroutines.flow;

import ch.qos.logback.core.net.SyslogConstants;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = SyslogConstants.LOG_LOCAL6)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2", f = "Reduce.kt", i = {}, l = {41}, m = "emit", n = {}, s = {})
public final class FlowKt__ReduceKt$fold$2$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final FlowKt__ReduceKt.AnonymousClass2<T> this$0;

    public FlowKt__ReduceKt$fold$2$emit$1(FlowKt__ReduceKt.AnonymousClass2<? super T> anonymousClass2, Continuation<? super FlowKt__ReduceKt$fold$2$emit$1> continuation) {
        super(continuation);
        this.this$0 = anonymousClass2;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
