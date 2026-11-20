package kotlinx.coroutines.flow;

import ch.qos.logback.core.net.SyslogConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {2, 0, 0}, xi = SyslogConstants.LOG_LOCAL6)
public final class FlowKt__ZipKt$combine$6$1<T> implements Function0<T[]> {
    final Flow<T>[] $flowArray;

    public FlowKt__ZipKt$combine$6$1(Flow<T>[] flowArr) {
        this.$flowArray = flowArr;
    }

    @Override
    public final T[] invoke() {
        int length = this.$flowArray.length;
        Intrinsics.reifiedOperationMarker(0, "T?");
        return (T[]) new Object[length];
    }
}
