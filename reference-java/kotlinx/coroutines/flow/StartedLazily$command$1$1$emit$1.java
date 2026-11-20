package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedLazily$command$1$1", f = "SharingStarted.kt", i = {}, l = {154}, m = "emit", n = {}, s = {})
final class StartedLazily$command$1$1$emit$1 extends ContinuationImpl {
    int label;
    Object result;
    final StartedLazily.AnonymousClass1.C00901<T> this$0;

    StartedLazily$command$1$1$emit$1(StartedLazily.AnonymousClass1.C00901<? super T> c00901, Continuation<? super StartedLazily$command$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = c00901;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(0, this);
    }
}
