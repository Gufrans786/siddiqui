package androidx.work;

import ch.qos.logback.core.net.SyslogConstants;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CancellableContinuation;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "R", "run"}, k = 3, mv = {1, 7, 1}, xi = SyslogConstants.LOG_LOCAL6)
public final class ListenableFutureKt$await$2$1 implements Runnable {
    final CancellableContinuation<R> $cancellableContinuation;
    final ListenableFuture<R> $this_await;

    public ListenableFutureKt$await$2$1(CancellableContinuation<? super R> cancellableContinuation, ListenableFuture<R> listenableFuture) {
        this.$cancellableContinuation = cancellableContinuation;
        this.$this_await = listenableFuture;
    }

    @Override
    public final void run() {
        try {
            Continuation continuation = this.$cancellableContinuation;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m1463constructorimpl(this.$this_await.get()));
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                cause = th;
            }
            if (th instanceof CancellationException) {
                this.$cancellableContinuation.cancel(cause);
                return;
            }
            Continuation continuation2 = this.$cancellableContinuation;
            Result.Companion companion2 = Result.INSTANCE;
            continuation2.resumeWith(Result.m1463constructorimpl(ResultKt.createFailure(cause)));
        }
    }
}
