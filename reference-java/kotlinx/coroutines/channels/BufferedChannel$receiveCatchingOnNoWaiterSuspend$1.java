package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.nimbusds.jose.jwk.JWKParameterNames;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", i = {0, 0, 0, 0}, l = {3117}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk", n = {"this", "segment", FirebaseAnalytics.Param.INDEX, JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR}, s = {"L$0", "L$1", "I$0", "J$0"})
final class BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final BufferedChannel<E> this$0;

    BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(BufferedChannel<E> bufferedChannel, Continuation<? super BufferedChannel$receiveCatchingOnNoWaiterSuspend$1> continuation) {
        super(continuation);
        this.this$0 = bufferedChannel;
    }

    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM2977receiveCatchingOnNoWaiterSuspendGKJJFZk = this.this$0.m2977receiveCatchingOnNoWaiterSuspendGKJJFZk(null, 0, 0L, this);
        return objM2977receiveCatchingOnNoWaiterSuspendGKJJFZk == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM2977receiveCatchingOnNoWaiterSuspendGKJJFZk : ChannelResult.m2986boximpl(objM2977receiveCatchingOnNoWaiterSuspendGKJJFZk);
    }
}
