package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", i = {}, l = {759}, m = "receiveCatching-JP2dKIU$suspendImpl", n = {}, s = {})
final class BufferedChannel$receiveCatching$1<E> extends ContinuationImpl {
    int label;
    Object result;
    final BufferedChannel<E> this$0;

    BufferedChannel$receiveCatching$1(BufferedChannel<E> bufferedChannel, Continuation<? super BufferedChannel$receiveCatching$1> continuation) {
        super(continuation);
        this.this$0 = bufferedChannel;
    }

    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM2976receiveCatchingJP2dKIU$suspendImpl = BufferedChannel.m2976receiveCatchingJP2dKIU$suspendImpl(this.this$0, this);
        return objM2976receiveCatchingJP2dKIU$suspendImpl == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM2976receiveCatchingJP2dKIU$suspendImpl : ChannelResult.m2986boximpl(objM2976receiveCatchingJP2dKIU$suspendImpl);
    }
}
