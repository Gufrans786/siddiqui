package kotlinx.coroutines.flow;

import ch.qos.logback.core.net.SyslogConstants;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = SyslogConstants.LOG_LOCAL6)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$unsafeTransform$1$1", f = "Emitters.kt", i = {}, l = {49}, m = "emit", n = {}, s = {})
public final class FlowKt__EmittersKt$unsafeTransform$1$1$emit$1 extends ContinuationImpl {
    int label;
    Object result;
    final FlowKt__EmittersKt$unsafeTransform$1$1<T> this$0;

    public FlowKt__EmittersKt$unsafeTransform$1$1$emit$1(FlowKt__EmittersKt$unsafeTransform$1$1<? super T> flowKt__EmittersKt$unsafeTransform$1$1, Continuation<? super FlowKt__EmittersKt$unsafeTransform$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = flowKt__EmittersKt$unsafeTransform$1$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
