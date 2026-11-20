package androidx.datastore.core;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$incrementCollector$2$1", f = "DataStoreImpl.kt", i = {}, l = {134, 135}, m = "invokeSuspend", n = {}, s = {})
final class DataStoreImpl$incrementCollector$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final DataStoreImpl<T> this$0;

    DataStoreImpl$incrementCollector$2$1(DataStoreImpl<T> dataStoreImpl, Continuation<? super DataStoreImpl$incrementCollector$2$1> continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DataStoreImpl$incrementCollector$2$1(this.this$0, continuation);
    }

    @Override
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((DataStoreImpl$incrementCollector$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$incrementCollector$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
