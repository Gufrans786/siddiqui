package kotlinx.coroutines.flow;

import ch.qos.logback.core.net.SyslogConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {2, 0, 0}, xi = SyslogConstants.LOG_LOCAL6)
public final class FlowKt__ZipKt$combine$5$1<T> implements Function0<T[]> {
    final Flow<T>[] $flows;

    public FlowKt__ZipKt$combine$5$1(Flow<? extends T>[] flowArr) {
        this.$flows = flowArr;
    }

    @Override
    public final T[] invoke() {
        int length = this.$flows.length;
        Intrinsics.reifiedOperationMarker(0, "T?");
        return (T[]) new Object[length];
    }
}
