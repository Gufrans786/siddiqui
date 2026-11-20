package androidx.work;

import ch.qos.logback.core.net.SyslogConstants;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "R", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = SyslogConstants.LOG_LOCAL6)
final class ListenableFutureKt$await$2$2 extends Lambda implements Function1<Throwable, Unit> {
    final ListenableFuture<R> $this_await;

    public ListenableFutureKt$await$2$2(ListenableFuture<R> listenableFuture) {
        super(1);
        this.$this_await = listenableFuture;
    }

    @Override
    public Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    public final void invoke2(Throwable th) {
        this.$this_await.cancel(false);
    }
}
