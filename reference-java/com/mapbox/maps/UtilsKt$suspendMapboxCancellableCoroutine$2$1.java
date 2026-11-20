package com.mapbox.maps;

import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.net.SyslogConstants;
import com.mapbox.common.Cancelable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001\"\u0006\b\u0001\u0010\u0003\u0018\u0001\"\u0016\b\u0002\u0010\u0004\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.GPS_DIRECTION_TRUE, "Lcom/mapbox/bindgen/Expected;", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = SyslogConstants.LOG_LOCAL6)
public final class UtilsKt$suspendMapboxCancellableCoroutine$2$1 extends Lambda implements Function1<Throwable, Unit> {
    final Cancelable $cancelable;

    public UtilsKt$suspendMapboxCancellableCoroutine$2$1(Cancelable cancelable) {
        super(1);
        this.$cancelable = cancelable;
    }

    @Override
    public Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    public final void invoke2(Throwable th) {
        this.$cancelable.cancel();
    }
}
