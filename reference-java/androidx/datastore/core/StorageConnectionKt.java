package androidx.datastore.core;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

@Metadata(d1 = {"\u0000\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@¢\u0006\u0002\u0010\u0003\u001a&\u0010\u0004\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0006\u001a\u0002H\u0001H\u0086@¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"readData", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/StorageConnection;", "(Landroidx/datastore/core/StorageConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeData", "", "value", "(Landroidx/datastore/core/StorageConnection;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class StorageConnectionKt {

    @Metadata(d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/ReadScope;", "it", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.StorageConnectionKt$readData$2", f = "StorageConnection.kt", i = {}, l = {74}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2<T> extends SuspendLambda implements Function3<ReadScope<T>, Boolean, Continuation<? super T>, Object> {
        private Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        public final Object invoke(ReadScope<T> readScope, boolean z, Continuation<? super T> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = readScope;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public Object invoke(Object obj, Boolean bool, Object obj2) {
            return invoke((ReadScope) obj, bool.booleanValue(), (Continuation) obj2);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object data = ((ReadScope) this.L$0).readData(this);
            return data == coroutine_suspended ? coroutine_suspended : data;
        }
    }

    public static final <T> Object readData(StorageConnection<T> storageConnection, Continuation<? super T> continuation) {
        return storageConnection.readScope(new AnonymousClass2(null), continuation);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/WriteScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.StorageConnectionKt$writeData$2", f = "StorageConnection.kt", i = {}, l = {77}, m = "invokeSuspend", n = {}, s = {})
    static final class C06992<T> extends SuspendLambda implements Function2<WriteScope<T>, Continuation<? super Unit>, Object> {
        final T $value;
        private Object L$0;
        int label;

        C06992(T t, Continuation<? super C06992> continuation) {
            super(2, continuation);
            this.$value = t;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C06992 c06992 = new C06992(this.$value, continuation);
            c06992.L$0 = obj;
            return c06992;
        }

        @Override
        public final Object invoke(WriteScope<T> writeScope, Continuation<? super Unit> continuation) {
            return ((C06992) create(writeScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (((WriteScope) this.L$0).writeData(this.$value, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static final <T> Object writeData(StorageConnection<T> storageConnection, T t, Continuation<? super Unit> continuation) {
        Object objWriteScope = storageConnection.writeScope(new C06992(t, null), continuation);
        return objWriteScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteScope : Unit.INSTANCE;
    }
}
