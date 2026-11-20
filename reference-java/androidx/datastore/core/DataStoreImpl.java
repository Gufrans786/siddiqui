package androidx.datastore.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.joran.action.Action;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import com.facebook.imageutils.JfifUtil;
import com.facebook.react.uimanager.ViewProps;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 V*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002VWBn\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012?\b\u0002\u0010\u0005\u001a9\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00070\u0006\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u000e\u00103\u001a\u00020\rH\u0082@¢\u0006\u0002\u00104JG\u00105\u001a\u0002H6\"\u0004\b\u0001\u001062\u0006\u00107\u001a\u0002082\u001c\u00109\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H60\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0:H\u0082@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u0010;J\u001c\u0010<\u001a\u00020\r2\f\u0010=\u001a\b\u0012\u0004\u0012\u00028\u000002H\u0082@¢\u0006\u0002\u0010>J\u000e\u0010?\u001a\u00020\rH\u0082@¢\u0006\u0002\u00104J\u000e\u0010@\u001a\u00020\rH\u0082@¢\u0006\u0002\u00104J\u001c\u0010A\u001a\b\u0012\u0004\u0012\u00028\u00000B2\u0006\u0010C\u001a\u000208H\u0082@¢\u0006\u0002\u0010DJ\u000e\u0010E\u001a\u00028\u0000H\u0082@¢\u0006\u0002\u00104J\u001c\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00000G2\u0006\u00107\u001a\u000208H\u0082@¢\u0006\u0002\u0010DJ\u001c\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00000B2\u0006\u0010C\u001a\u000208H\u0082@¢\u0006\u0002\u0010DJI\u0010I\u001a\u00028\u000021\u0010J\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(K\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00072\u0006\u0010L\u001a\u00020MH\u0082@¢\u0006\u0002\u0010NJA\u0010O\u001a\u00028\u000021\u0010J\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(K\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0007H\u0096@¢\u0006\u0002\u0010PJ \u0010Q\u001a\u00020\u00152\u0006\u0010R\u001a\u00028\u00002\u0006\u0010S\u001a\u000208H\u0080@¢\u0006\u0004\bT\u0010UR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000!X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010&\u001a\f0'R\b\u0012\u0004\u0012\u00028\u00000\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000)8@X\u0080\u0084\u0002¢\u0006\f\u001a\u0004\b,\u0010-*\u0004\b*\u0010+R\u001a\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000)0/X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000201X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006X"}, d2 = {"Landroidx/datastore/core/DataStoreImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/DataStore;", "storage", "Landroidx/datastore/core/Storage;", "initTasksList", "", "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lkotlin/ParameterName;", "name", "api", "Lkotlin/coroutines/Continuation;", "", "", "corruptionHandler", "Landroidx/datastore/core/CorruptionHandler;", Action.SCOPE_ATTRIBUTE, "Lkotlinx/coroutines/CoroutineScope;", "(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V", "collectorCounter", "", "collectorJob", "Lkotlinx/coroutines/Job;", "collectorMutex", "Lkotlinx/coroutines/sync/Mutex;", "coordinator", "Landroidx/datastore/core/InterProcessCoordinator;", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "coordinator$delegate", "Lkotlin/Lazy;", "data", "Lkotlinx/coroutines/flow/Flow;", "getData", "()Lkotlinx/coroutines/flow/Flow;", "inMemoryCache", "Landroidx/datastore/core/DataStoreInMemoryCache;", "readAndInit", "Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "storageConnection", "Landroidx/datastore/core/StorageConnection;", "getStorageConnection$datastore_core_release$delegate", "(Landroidx/datastore/core/DataStoreImpl;)Ljava/lang/Object;", "getStorageConnection$datastore_core_release", "()Landroidx/datastore/core/StorageConnection;", "storageConnectionDelegate", "Lkotlin/Lazy;", "writeActor", "Landroidx/datastore/core/SimpleActor;", "Landroidx/datastore/core/Message$Update;", "decrementCollector", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "doWithWriteFileLock", "R", "hasWriteFileLock", "", "block", "Lkotlin/Function1;", "(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleUpdate", "update", "(Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "incrementCollector", "readAndInitOrPropagateAndThrowFailure", "readDataAndUpdateCache", "Landroidx/datastore/core/State;", "requireLock", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readDataFromFileOrDefault", "readDataOrHandleCorruption", "Landroidx/datastore/core/Data;", "readState", "transformAndWrite", ViewProps.TRANSFORM, JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, "callerContext", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateData", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeData", "newData", "updateCache", "writeData$datastore_core_release", "(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "InitDataStore", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataStoreImpl<T> implements DataStore<T> {
    private static final String BUG_MESSAGE = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542";
    private int collectorCounter;
    private Job collectorJob;
    private final Mutex collectorMutex;

    private final Lazy coordinator;
    private final CorruptionHandler<T> corruptionHandler;
    private final Flow<T> data;
    private final DataStoreInMemoryCache<T> inMemoryCache;
    private final DataStoreImpl<T>.InitDataStore readAndInit;
    private final CoroutineScope scope;
    private final Storage<T> storage;
    private final Lazy<StorageConnection<T>> storageConnectionDelegate;
    private final SimpleActor<Message.Update<T>> writeActor;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", i = {0, 0}, l = {544}, m = "decrementCollector", n = {"this", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        AnonymousClass1(DataStoreImpl<T> dataStoreImpl, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.decrementCollector(this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", i = {1, 1}, l = {237, 243, 246}, m = "handleUpdate", n = {"update", "$this$handleUpdate_u24lambda_u242"}, s = {"L$0", "L$1"})
    static final class C06861 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        C06861(DataStoreImpl<T> dataStoreImpl, Continuation<? super C06861> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.handleUpdate(null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", i = {0, 0}, l = {544}, m = "incrementCollector", n = {"this", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1"})
    static final class C06871 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        C06871(DataStoreImpl<T> dataStoreImpl, Continuation<? super C06871> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.incrementCollector(this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", i = {0, 1, 1}, l = {264, 266}, m = "readAndInitOrPropagateAndThrowFailure", n = {"this", "this", "preReadVersion"}, s = {"L$0", "L$0", "I$0"})
    static final class C06881 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        C06881(DataStoreImpl<T> dataStoreImpl, Continuation<? super C06881> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readAndInitOrPropagateAndThrowFailure(this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", i = {0, 0, 0, 1, 2}, l = {287, 296, 304}, m = "readDataAndUpdateCache", n = {"this", "currentState", "requireLock", "this", "this"}, s = {"L$0", "L$1", "Z$0", "L$0", "L$0"})
    static final class C06891 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        C06891(DataStoreImpl<T> dataStoreImpl, Continuation<? super C06891> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readDataAndUpdateCache(false, this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 5}, l = {365, 366, 368, 369, 380, BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT}, m = "readDataOrHandleCorruption", n = {"this", "hasWriteFileLock", "this", "hasWriteFileLock", "this", "hasWriteFileLock", "this", "hasWriteFileLock", "this", "ex", "newData", "hasWriteFileLock", "ex", "newData", "version"}, s = {"L$0", "Z$0", "L$0", "Z$0", "L$0", "Z$0", "L$0", "Z$0", "L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "L$2"})
    static final class C06911 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        Object result;
        final DataStoreImpl<T> this$0;

        C06911(DataStoreImpl<T> dataStoreImpl, Continuation<? super C06911> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readDataOrHandleCorruption(false, this);
        }
    }

    public DataStoreImpl(Storage<T> storage, List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> initTasksList, CorruptionHandler<T> corruptionHandler, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(initTasksList, "initTasksList");
        Intrinsics.checkNotNullParameter(corruptionHandler, "corruptionHandler");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.storage = storage;
        this.corruptionHandler = corruptionHandler;
        this.scope = scope;
        this.data = FlowKt.flow(new DataStoreImpl$data$1(this, null));
        this.collectorMutex = MutexKt.Mutex$default(false, 1, null);
        this.inMemoryCache = new DataStoreInMemoryCache<>();
        this.readAndInit = new InitDataStore(this, initTasksList);
        this.storageConnectionDelegate = LazyKt.lazy(new Function0<StorageConnection<T>>(this) {
            final DataStoreImpl<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public final StorageConnection<T> invoke() {
                return ((DataStoreImpl) this.this$0).storage.createConnection();
            }
        });
        this.coordinator = LazyKt.lazy(new Function0<InterProcessCoordinator>(this) {
            final DataStoreImpl<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public final InterProcessCoordinator invoke() {
                return this.this$0.getStorageConnection$datastore_core_release().getCoordinator();
            }
        });
        this.writeActor = new SimpleActor<>(scope, new Function1<Throwable, Unit>(this) {
            final DataStoreImpl<T> this$0;

            {
                super(1);
                this.this$0 = this;
            }

            @Override
            public Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            public final void invoke2(Throwable th) {
                if (th != null) {
                    ((DataStoreImpl) this.this$0).inMemoryCache.tryUpdate(new Final(th));
                }
                if (((DataStoreImpl) this.this$0).storageConnectionDelegate.isInitialized()) {
                    this.this$0.getStorageConnection$datastore_core_release().close();
                }
            }
        }, new Function2<Message.Update<T>, Throwable, Unit>() {
            @Override
            public Unit invoke(Object obj, Throwable th) {
                invoke((Message.Update) obj, th);
                return Unit.INSTANCE;
            }

            public final void invoke(Message.Update<T> msg, Throwable th) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                CompletableDeferred<T> ack = msg.getAck();
                if (th == null) {
                    th = new CancellationException("DataStore scope was cancelled before updateData could complete");
                }
                ack.completeExceptionally(th);
            }
        }, new DataStoreImpl$writeActor$3(this, null));
    }

    public DataStoreImpl(Storage storage, List list, NoOpCorruptionHandler noOpCorruptionHandler, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(storage, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? new NoOpCorruptionHandler() : noOpCorruptionHandler, (i & 8) != 0 ? CoroutineScopeKt.CoroutineScope(Actual_jvmKt.ioDispatcher().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))) : coroutineScope);
    }

    @Override
    public Flow<T> getData() {
        return this.data;
    }

    public final Object incrementCollector(Continuation<? super Unit> continuation) {
        C06871 c06871;
        DataStoreImpl<T> dataStoreImpl;
        Mutex mutex;
        if (continuation instanceof C06871) {
            c06871 = (C06871) continuation;
            if ((c06871.label & Integer.MIN_VALUE) != 0) {
                c06871.label -= Integer.MIN_VALUE;
            } else {
                c06871 = new C06871(this, continuation);
            }
        } else {
            c06871 = new C06871(this, continuation);
        }
        Object obj = c06871.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c06871.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.collectorMutex;
            c06871.L$0 = this;
            c06871.L$1 = mutex2;
            c06871.label = 1;
            if (mutex2.lock(null, c06871) == coroutine_suspended) {
                return coroutine_suspended;
            }
            dataStoreImpl = this;
            mutex = mutex2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = (Mutex) c06871.L$1;
            dataStoreImpl = (DataStoreImpl) c06871.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            int i2 = dataStoreImpl.collectorCounter + 1;
            dataStoreImpl.collectorCounter = i2;
            if (i2 == 1) {
                dataStoreImpl.collectorJob = BuildersKt__Builders_commonKt.launch$default(dataStoreImpl.scope, null, null, new DataStoreImpl$incrementCollector$2$1(dataStoreImpl, null), 3, null);
            }
            Unit unit = Unit.INSTANCE;
            return Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    public final Object decrementCollector(Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        DataStoreImpl<T> dataStoreImpl;
        Mutex mutex;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.collectorMutex;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = mutex2;
            anonymousClass1.label = 1;
            if (mutex2.lock(null, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            dataStoreImpl = this;
            mutex = mutex2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = (Mutex) anonymousClass1.L$1;
            dataStoreImpl = (DataStoreImpl) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            int i2 = dataStoreImpl.collectorCounter - 1;
            dataStoreImpl.collectorCounter = i2;
            if (i2 == 0) {
                Job job = dataStoreImpl.collectorJob;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                }
                dataStoreImpl.collectorJob = null;
            }
            Unit unit = Unit.INSTANCE;
            return Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    @Override
    public Object updateData(Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        UpdatingDataContextElement updatingDataContextElement = (UpdatingDataContextElement) continuation.getContext().get(UpdatingDataContextElement.Companion.Key.INSTANCE);
        if (updatingDataContextElement != null) {
            updatingDataContextElement.checkNotUpdating(this);
        }
        return BuildersKt.withContext(new UpdatingDataContextElement(updatingDataContextElement, this), new C06952(this, function2, null), continuation);
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$updateData$2", f = "DataStoreImpl.kt", i = {}, l = {169}, m = "invokeSuspend", n = {}, s = {})
    static final class C06952 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final Function2<T, Continuation<? super T>, Object> $transform;
        private Object L$0;
        int label;
        final DataStoreImpl<T> this$0;

        C06952(DataStoreImpl<T> dataStoreImpl, Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super C06952> continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
            this.$transform = function2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C06952 c06952 = new C06952(this.this$0, this.$transform, continuation);
            c06952.L$0 = obj;
            return c06952;
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C06952) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            ((DataStoreImpl) this.this$0).writeActor.offer(new Message.Update(this.$transform, completableDeferredCompletableDeferred$default, ((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState(), coroutineScope.getCoroutineContext()));
            this.label = 1;
            Object objAwait = completableDeferredCompletableDeferred$default.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }
    }

    public final StorageConnection<T> getStorageConnection$datastore_core_release() {
        return this.storageConnectionDelegate.getValue();
    }

    public final InterProcessCoordinator getCoordinator() {
        return (InterProcessCoordinator) this.coordinator.getValue();
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/core/State;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readState$2", f = "DataStoreImpl.kt", i = {}, l = {JfifUtil.MARKER_SOS, 226}, m = "invokeSuspend", n = {}, s = {})
    static final class C06932 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super State<T>>, Object> {
        final boolean $requireLock;
        int label;
        final DataStoreImpl<T> this$0;

        C06932(DataStoreImpl<T> dataStoreImpl, boolean z, Continuation<? super C06932> continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
            this.$requireLock = z;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C06932(this.this$0, this.$requireLock, continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super State<T>> continuation) {
            return ((C06932) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.C06932.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Object readState(boolean z, Continuation<? super State<T>> continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new C06932(this, z, null), continuation);
    }

    public final java.lang.Object handleUpdate(androidx.datastore.core.Message.Update<T> r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.handleUpdate(androidx.datastore.core.Message$Update, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final java.lang.Object readAndInitOrPropagateAndThrowFailure(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) throws java.lang.Throwable {
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.readAndInitOrPropagateAndThrowFailure(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final java.lang.Object readDataAndUpdateCache(boolean r10, kotlin.coroutines.Continuation<? super androidx.datastore.core.State<T>> r11) {
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.readDataAndUpdateCache(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/datastore/core/State;", ExifInterface.GPS_DIRECTION_TRUE, ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", f = "DataStoreImpl.kt", i = {}, l = {298, 300}, m = "invokeSuspend", n = {}, s = {})
    static final class C06903 extends SuspendLambda implements Function1<Continuation<? super Pair<? extends State<T>, ? extends Boolean>>, Object> {
        Object L$0;
        int label;
        final DataStoreImpl<T> this$0;

        C06903(DataStoreImpl<T> dataStoreImpl, Continuation<? super C06903> continuation) {
            super(1, continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C06903(this.this$0, continuation);
        }

        @Override
        public final Object invoke(Continuation<? super Pair<? extends State<T>, Boolean>> continuation) {
            return ((C06903) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            ReadException readException;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = this.this$0.readDataOrHandleCorruption(true, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        th = (Throwable) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        readException = new ReadException(th, ((Number) obj).intValue());
                        return TuplesKt.to(readException, Boxing.boxBoolean(true));
                    }
                    ResultKt.throwOnFailure(obj);
                }
                readException = (State) obj;
            } catch (Throwable th2) {
                this.L$0 = th2;
                this.label = 2;
                Object version = this.this$0.getCoordinator().getVersion(this);
                if (version != coroutine_suspended) {
                    th = th2;
                    obj = version;
                }
                return coroutine_suspended;
            }
            return TuplesKt.to(readException, Boxing.boxBoolean(true));
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/datastore/core/State;", ExifInterface.GPS_DIRECTION_TRUE, "", "locked"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4", f = "DataStoreImpl.kt", i = {0, 1}, l = {306, 309}, m = "invokeSuspend", n = {"locked", "locked"}, s = {"Z$0", "Z$0"})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<Boolean, Continuation<? super Pair<? extends State<T>, ? extends Boolean>>, Object> {
        final int $cachedVersion;
        Object L$0;
        boolean Z$0;
        int label;
        final DataStoreImpl<T> this$0;

        AnonymousClass4(DataStoreImpl<T> dataStoreImpl, int i, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
            this.$cachedVersion = i;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.this$0, this.$cachedVersion, continuation);
            anonymousClass4.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass4;
        }

        @Override
        public Object invoke(Boolean bool, Object obj) {
            return invoke(bool.booleanValue(), (Continuation) obj);
        }

        public final Object invoke(boolean z, Continuation<? super Pair<? extends State<T>, Boolean>> continuation) {
            return ((AnonymousClass4) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            int iIntValue;
            ?? r0;
            ?? r1;
            ReadException readException;
            ?? r2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ?? r3 = this.label;
            try {
                if (r3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    boolean z = this.Z$0;
                    this.Z$0 = z;
                    this.label = 1;
                    obj = this.this$0.readDataOrHandleCorruption(z, this);
                    r3 = z;
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (r3 != 1) {
                        if (r3 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        boolean z2 = this.Z$0;
                        th = (Throwable) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        r1 = z2;
                        iIntValue = ((Number) obj).intValue();
                        r0 = r1;
                        readException = new ReadException(th, iIntValue);
                        r2 = r0;
                        return TuplesKt.to(readException, Boxing.boxBoolean(r2));
                    }
                    boolean z3 = this.Z$0;
                    ResultKt.throwOnFailure(obj);
                    r3 = z3;
                }
                readException = (State) obj;
                r2 = r3;
            } catch (Throwable th2) {
                if (r3 != 0) {
                    this.L$0 = th2;
                    this.Z$0 = r3;
                    this.label = 2;
                    Object version = this.this$0.getCoordinator().getVersion(this);
                    if (version != coroutine_suspended) {
                        r1 = r3;
                        th = th2;
                        obj = version;
                    }
                    return coroutine_suspended;
                }
                ?? r5 = r3;
                th = th2;
                iIntValue = this.$cachedVersion;
                r0 = r5 == true ? 1 : 0;
            }
            return TuplesKt.to(readException, Boxing.boxBoolean(r2));
        }
    }

    public final Object readDataFromFileOrDefault(Continuation<? super T> continuation) {
        return StorageConnectionKt.readData(getStorageConnection$datastore_core_release(), continuation);
    }

    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\u008a@"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2", f = "DataStoreImpl.kt", i = {1, 2}, l = {330, 331, 337}, m = "invokeSuspend", n = {"curData", "newData"}, s = {"L$0", "L$0"})
    static final class C06942 extends SuspendLambda implements Function1<Continuation<? super T>, Object> {
        final CoroutineContext $callerContext;
        final Function2<T, Continuation<? super T>, Object> $transform;
        Object L$0;
        int label;
        final DataStoreImpl<T> this$0;

        C06942(DataStoreImpl<T> dataStoreImpl, CoroutineContext coroutineContext, Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super C06942> continuation) {
            super(1, continuation);
            this.this$0 = dataStoreImpl;
            this.$callerContext = coroutineContext;
            this.$transform = function2;
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C06942(this.this$0, this.$callerContext, this.$transform, continuation);
        }

        @Override
        public final Object invoke(Continuation<? super T> continuation) {
            return ((C06942) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws CorruptionException {
            Data data;
            DataStoreImpl<T> dataStoreImpl;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.this$0.readDataOrHandleCorruption(true, this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Object obj2 = this.L$0;
                    ResultKt.throwOnFailure(obj);
                    return obj2;
                }
                data = (Data) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            data.checkHashCode();
            if (!Intrinsics.areEqual(data.getValue(), obj)) {
                dataStoreImpl = this.this$0;
                this.L$0 = obj;
                this.label = 3;
                if (dataStoreImpl.writeData$datastore_core_release((T) obj, true, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return obj;
            data = (Data) obj;
            this.L$0 = data;
            this.label = 2;
            obj = BuildersKt.withContext(this.$callerContext, new DataStoreImpl$transformAndWrite$2$newData$1(this.$transform, data, null), this);
            if (obj != coroutine_suspended) {
                data.checkHashCode();
                if (!Intrinsics.areEqual(data.getValue(), obj)) {
                    dataStoreImpl = this.this$0;
                    this.L$0 = obj;
                    this.label = 3;
                    if (dataStoreImpl.writeData$datastore_core_release((T) obj, true, this) == coroutine_suspended) {
                    }
                }
                return obj;
            }
            return coroutine_suspended;
        }
    }

    public final Object transformAndWrite(Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, CoroutineContext coroutineContext, Continuation<? super T> continuation) {
        return getCoordinator().lock(new C06942(this, coroutineContext, function2, null), continuation);
    }

    public final Object writeData$datastore_core_release(T t, boolean z, Continuation<? super Integer> continuation) {
        DataStoreImpl$writeData$1 dataStoreImpl$writeData$1;
        Ref.IntRef intRef;
        if (continuation instanceof DataStoreImpl$writeData$1) {
            dataStoreImpl$writeData$1 = (DataStoreImpl$writeData$1) continuation;
            if ((dataStoreImpl$writeData$1.label & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$writeData$1.label -= Integer.MIN_VALUE;
            } else {
                dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, continuation);
            }
        } else {
            dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, continuation);
        }
        Object obj = dataStoreImpl$writeData$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = dataStoreImpl$writeData$1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.IntRef intRef2 = new Ref.IntRef();
            StorageConnection<T> storageConnection$datastore_core_release = getStorageConnection$datastore_core_release();
            DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(intRef2, this, t, z, null);
            dataStoreImpl$writeData$1.L$0 = intRef2;
            dataStoreImpl$writeData$1.label = 1;
            if (storageConnection$datastore_core_release.writeScope(dataStoreImpl$writeData$2, dataStoreImpl$writeData$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            intRef = intRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            intRef = (Ref.IntRef) dataStoreImpl$writeData$1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxInt(intRef.element);
    }

    public final Object readDataOrHandleCorruption(boolean z, Continuation<? super Data<T>> continuation) throws CorruptionException {
        C06911 c06911;
        ?? r7;
        Ref.ObjectRef objectRef;
        Object objHandleCorruption;
        CorruptionException corruptionException;
        Ref.ObjectRef objectRef2;
        ?? r8;
        Ref.IntRef intRef;
        CorruptionException corruptionException2;
        C06923 c06923;
        Ref.IntRef intRef2;
        Ref.ObjectRef objectRef3;
        ?? r2;
        ?? r6;
        int iHashCode;
        Object version;
        boolean z2;
        int i;
        Object obj;
        ?? r9;
        ?? r10;
        if (continuation instanceof C06911) {
            c06911 = (C06911) continuation;
            if ((c06911.label & Integer.MIN_VALUE) != 0) {
                c06911.label -= Integer.MIN_VALUE;
            } else {
                c06911 = new C06911(this, continuation);
            }
        } else {
            c06911 = new C06911(this, continuation);
        }
        Object obj2 = (T) c06911.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r3 = c06911.label;
        try {
            switch (r3) {
                case 0:
                    ResultKt.throwOnFailure(obj2);
                    try {
                        if (z) {
                            c06911.L$0 = this;
                            c06911.Z$0 = z;
                            c06911.label = 1;
                            obj2 = (T) readDataFromFileOrDefault(c06911);
                            if (obj2 != coroutine_suspended) {
                                r6 = this;
                                if (obj2 != null) {
                                    try {
                                        iHashCode = obj2.hashCode();
                                    } catch (CorruptionException e) {
                                        e = e;
                                        r9 = r6;
                                        r7 = r9;
                                        objectRef = new Ref.ObjectRef();
                                        CorruptionHandler<T> corruptionHandler = r7.corruptionHandler;
                                        c06911.L$0 = r7;
                                        c06911.L$1 = e;
                                        c06911.L$2 = objectRef;
                                        c06911.L$3 = objectRef;
                                        c06911.Z$0 = z;
                                        c06911.label = 5;
                                        objHandleCorruption = corruptionHandler.handleCorruption(e, c06911);
                                        if (objHandleCorruption != coroutine_suspended) {
                                            corruptionException = e;
                                            obj2 = (T) objHandleCorruption;
                                            objectRef2 = objectRef;
                                            r8 = r7;
                                            objectRef2.element = (T) obj2;
                                            intRef = new Ref.IntRef();
                                            try {
                                                c06923 = new C06923(objectRef, r8, intRef, null);
                                                c06911.L$0 = corruptionException;
                                                c06911.L$1 = objectRef;
                                                c06911.L$2 = intRef;
                                                c06911.L$3 = null;
                                                c06911.label = 6;
                                                if (r8.doWithWriteFileLock(z, c06923, c06911) != coroutine_suspended) {
                                                    intRef2 = intRef;
                                                    objectRef3 = objectRef;
                                                    T t = objectRef3.element;
                                                    T t2 = objectRef3.element;
                                                    return new Data(t, t2 != null ? t2.hashCode() : 0, intRef2.element);
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                corruptionException2 = corruptionException;
                                                ExceptionsKt.addSuppressed(corruptionException2, th);
                                                throw corruptionException2;
                                            }
                                        }
                                    }
                                } else {
                                    iHashCode = 0;
                                }
                                InterProcessCoordinator coordinator = r6.getCoordinator();
                                c06911.L$0 = r6;
                                c06911.L$1 = obj2;
                                c06911.Z$0 = z;
                                c06911.I$0 = iHashCode;
                                c06911.label = 2;
                                version = coordinator.getVersion(c06911);
                                if (version != coroutine_suspended) {
                                    int i2 = iHashCode;
                                    z2 = z;
                                    i = i2;
                                    obj = obj2;
                                    obj2 = (T) version;
                                    r10 = r6;
                                    return new Data(obj, i, ((Number) obj2).intValue());
                                }
                            }
                        } else {
                            InterProcessCoordinator coordinator2 = getCoordinator();
                            c06911.L$0 = this;
                            c06911.Z$0 = z;
                            c06911.label = 3;
                            obj2 = (T) coordinator2.getVersion(c06911);
                            if (obj2 != coroutine_suspended) {
                                r2 = this;
                                int iIntValue = ((Number) obj2).intValue();
                                InterProcessCoordinator coordinator3 = r2.getCoordinator();
                                AnonymousClass2 anonymousClass2 = new AnonymousClass2(r2, iIntValue, null);
                                c06911.L$0 = r2;
                                c06911.Z$0 = z;
                                c06911.label = 4;
                                obj2 = (T) coordinator3.tryLock(anonymousClass2, c06911);
                                if (obj2 == coroutine_suspended) {
                                }
                                return (Data) obj2;
                            }
                        }
                    } catch (CorruptionException e2) {
                        e = e2;
                        r7 = this;
                        objectRef = new Ref.ObjectRef();
                        CorruptionHandler<T> corruptionHandler2 = r7.corruptionHandler;
                        c06911.L$0 = r7;
                        c06911.L$1 = e;
                        c06911.L$2 = objectRef;
                        c06911.L$3 = objectRef;
                        c06911.Z$0 = z;
                        c06911.label = 5;
                        objHandleCorruption = corruptionHandler2.handleCorruption(e, c06911);
                        if (objHandleCorruption != coroutine_suspended) {
                            corruptionException = e;
                            obj2 = (T) objHandleCorruption;
                            objectRef2 = objectRef;
                            r8 = r7;
                            objectRef2.element = (T) obj2;
                            intRef = new Ref.IntRef();
                            c06923 = new C06923(objectRef, r8, intRef, null);
                            c06911.L$0 = corruptionException;
                            c06911.L$1 = objectRef;
                            c06911.L$2 = intRef;
                            c06911.L$3 = null;
                            c06911.label = 6;
                            if (r8.doWithWriteFileLock(z, c06923, c06911) != coroutine_suspended) {
                                intRef2 = intRef;
                                objectRef3 = objectRef;
                                T t3 = objectRef3.element;
                                T t4 = objectRef3.element;
                                return new Data(t3, t4 != null ? t4.hashCode() : 0, intRef2.element);
                            }
                        }
                    }
                    return coroutine_suspended;
                case 1:
                    z = c06911.Z$0;
                    DataStoreImpl dataStoreImpl = (DataStoreImpl) c06911.L$0;
                    ResultKt.throwOnFailure(obj2);
                    r6 = dataStoreImpl;
                    if (obj2 != null) {
                        iHashCode = obj2.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    InterProcessCoordinator coordinator4 = r6.getCoordinator();
                    c06911.L$0 = r6;
                    c06911.L$1 = obj2;
                    c06911.Z$0 = z;
                    c06911.I$0 = iHashCode;
                    c06911.label = 2;
                    version = coordinator4.getVersion(c06911);
                    if (version != coroutine_suspended) {
                        int i3 = iHashCode;
                        z2 = z;
                        i = i3;
                        obj = obj2;
                        obj2 = (T) version;
                        r10 = r6;
                        return new Data(obj, i, ((Number) obj2).intValue());
                    }
                    return coroutine_suspended;
                case 2:
                    i = c06911.I$0;
                    z2 = c06911.Z$0;
                    obj = c06911.L$1;
                    r10 = (DataStoreImpl) c06911.L$0;
                    try {
                        ResultKt.throwOnFailure(obj2);
                        r10 = r10;
                        return new Data(obj, i, ((Number) obj2).intValue());
                    } catch (CorruptionException e3) {
                        e = e3;
                        z = z2;
                        r9 = r10;
                        r7 = r9;
                        objectRef = new Ref.ObjectRef();
                        CorruptionHandler<T> corruptionHandler3 = r7.corruptionHandler;
                        c06911.L$0 = r7;
                        c06911.L$1 = e;
                        c06911.L$2 = objectRef;
                        c06911.L$3 = objectRef;
                        c06911.Z$0 = z;
                        c06911.label = 5;
                        objHandleCorruption = corruptionHandler3.handleCorruption(e, c06911);
                        if (objHandleCorruption != coroutine_suspended) {
                            corruptionException = e;
                            obj2 = (T) objHandleCorruption;
                            objectRef2 = objectRef;
                            r8 = r7;
                            objectRef2.element = (T) obj2;
                            intRef = new Ref.IntRef();
                            c06923 = new C06923(objectRef, r8, intRef, null);
                            c06911.L$0 = corruptionException;
                            c06911.L$1 = objectRef;
                            c06911.L$2 = intRef;
                            c06911.L$3 = null;
                            c06911.label = 6;
                            if (r8.doWithWriteFileLock(z, c06923, c06911) != coroutine_suspended) {
                                intRef2 = intRef;
                                objectRef3 = objectRef;
                                T t5 = objectRef3.element;
                                T t6 = objectRef3.element;
                                return new Data(t5, t6 != null ? t6.hashCode() : 0, intRef2.element);
                            }
                        }
                        return coroutine_suspended;
                    }
                case 3:
                    z = c06911.Z$0;
                    DataStoreImpl dataStoreImpl2 = (DataStoreImpl) c06911.L$0;
                    ResultKt.throwOnFailure(obj2);
                    r2 = dataStoreImpl2;
                    int iIntValue2 = ((Number) obj2).intValue();
                    InterProcessCoordinator coordinator5 = r2.getCoordinator();
                    AnonymousClass2 anonymousClass3 = new AnonymousClass2(r2, iIntValue2, null);
                    c06911.L$0 = r2;
                    c06911.Z$0 = z;
                    c06911.label = 4;
                    obj2 = (T) coordinator5.tryLock(anonymousClass3, c06911);
                    if (obj2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return (Data) obj2;
                case 4:
                    boolean z3 = c06911.Z$0;
                    ResultKt.throwOnFailure(obj2);
                    return (Data) obj2;
                case 5:
                    z = c06911.Z$0;
                    Ref.ObjectRef objectRef4 = (Ref.ObjectRef) c06911.L$3;
                    Ref.ObjectRef objectRef5 = (Ref.ObjectRef) c06911.L$2;
                    corruptionException = (CorruptionException) c06911.L$1;
                    DataStoreImpl dataStoreImpl3 = (DataStoreImpl) c06911.L$0;
                    ResultKt.throwOnFailure(obj2);
                    objectRef2 = objectRef4;
                    objectRef = objectRef5;
                    r8 = dataStoreImpl3;
                    objectRef2.element = (T) obj2;
                    intRef = new Ref.IntRef();
                    c06923 = new C06923(objectRef, r8, intRef, null);
                    c06911.L$0 = corruptionException;
                    c06911.L$1 = objectRef;
                    c06911.L$2 = intRef;
                    c06911.L$3 = null;
                    c06911.label = 6;
                    if (r8.doWithWriteFileLock(z, c06923, c06911) != coroutine_suspended) {
                        intRef2 = intRef;
                        objectRef3 = objectRef;
                        T t7 = objectRef3.element;
                        T t8 = objectRef3.element;
                        return new Data(t7, t8 != null ? t8.hashCode() : 0, intRef2.element);
                    }
                    return coroutine_suspended;
                case 6:
                    intRef2 = (Ref.IntRef) c06911.L$2;
                    objectRef3 = (Ref.ObjectRef) c06911.L$1;
                    corruptionException2 = (CorruptionException) c06911.L$0;
                    try {
                        ResultKt.throwOnFailure(obj2);
                        T t9 = objectRef3.element;
                        T t10 = objectRef3.element;
                        return new Data(t9, t10 != null ? t10.hashCode() : 0, intRef2.element);
                    } catch (Throwable th2) {
                        th = th2;
                        ExceptionsKt.addSuppressed(corruptionException2, th);
                        throw corruptionException2;
                    }
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (CorruptionException e4) {
            e = e4;
            r7 = r3;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/core/Data;", ExifInterface.GPS_DIRECTION_TRUE, "locked", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2", f = "DataStoreImpl.kt", i = {0, 1}, l = {370, 371}, m = "invokeSuspend", n = {"locked", "data"}, s = {"Z$0", "L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Boolean, Continuation<? super Data<T>>, Object> {
        final int $preLockVersion;
        Object L$0;
        boolean Z$0;
        int label;
        final DataStoreImpl<T> this$0;

        AnonymousClass2(DataStoreImpl<T> dataStoreImpl, int i, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
            this.$preLockVersion = i;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$preLockVersion, continuation);
            anonymousClass2.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass2;
        }

        @Override
        public Object invoke(Boolean bool, Object obj) {
            return invoke(bool.booleanValue(), (Continuation) obj);
        }

        public final Object invoke(boolean z, Continuation<? super Data<T>> continuation) {
            return ((AnonymousClass2) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            boolean z;
            Object obj2;
            int iIntValue;
            int iHashCode;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                z = this.Z$0;
                this.Z$0 = z;
                this.label = 1;
                obj = this.this$0.readDataFromFileOrDefault(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                z = this.Z$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj2 = this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            iIntValue = ((Number) obj).intValue();
            if (obj2 != null) {
                iHashCode = obj2.hashCode();
            } else {
                iHashCode = 0;
            }
            return new Data(obj2, iHashCode, iIntValue);
            if (z) {
                this.L$0 = obj;
                this.label = 2;
                Object version = this.this$0.getCoordinator().getVersion(this);
                if (version != coroutine_suspended) {
                    obj2 = obj;
                    obj = version;
                    iIntValue = ((Number) obj).intValue();
                }
                return coroutine_suspended;
            }
            obj2 = obj;
            iIntValue = this.$preLockVersion;
            if (obj2 != null) {
                iHashCode = obj2.hashCode();
            } else {
                iHashCode = 0;
            }
            return new Data(obj2, iHashCode, iIntValue);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3", f = "DataStoreImpl.kt", i = {}, l = {387, 388, 390}, m = "invokeSuspend", n = {}, s = {})
    static final class C06923 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final Ref.ObjectRef<T> $newData;
        final Ref.IntRef $version;
        Object L$0;
        int label;
        final DataStoreImpl<T> this$0;

        C06923(Ref.ObjectRef<T> objectRef, DataStoreImpl<T> dataStoreImpl, Ref.IntRef intRef, Continuation<? super C06923> continuation) {
            super(1, continuation);
            this.$newData = objectRef;
            this.this$0 = dataStoreImpl;
            this.$version = intRef;
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C06923(this.$newData, this.this$0, this.$version, continuation);
        }

        @Override
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C06923) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Ref.IntRef intRef;
            Ref.ObjectRef<T> objectRef;
            Ref.IntRef intRef2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    objectRef = this.$newData;
                    this.L$0 = objectRef;
                    this.label = 1;
                    obj = (T) this.this$0.readDataFromFileOrDefault(this);
                    if (obj == coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                if (i == 1) {
                    objectRef = (Ref.ObjectRef) this.L$0;
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i != 2) {
                        if (i != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        intRef = (Ref.IntRef) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        intRef.element = ((Number) obj).intValue();
                        return Unit.INSTANCE;
                    }
                    intRef2 = (Ref.IntRef) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                intRef2.element = ((Number) obj).intValue();
                return Unit.INSTANCE;
                objectRef.element = (T) obj;
                intRef2 = this.$version;
                this.L$0 = intRef2;
                this.label = 2;
                obj = (T) this.this$0.getCoordinator().getVersion(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                intRef2.element = ((Number) obj).intValue();
            } catch (CorruptionException unused) {
                Ref.IntRef intRef3 = this.$version;
                this.L$0 = intRef3;
                this.label = 3;
                Object objWriteData$datastore_core_release = this.this$0.writeData$datastore_core_release(this.$newData.element, true, this);
                if (objWriteData$datastore_core_release != coroutine_suspended) {
                    intRef = intRef3;
                    obj = (T) objWriteData$datastore_core_release;
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final <R> Object doWithWriteFileLock(boolean z, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        if (z) {
            return function1.invoke(continuation);
        }
        return getCoordinator().lock(new AnonymousClass3(function1, null), continuation);
    }

    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "R", ExifInterface.GPS_DIRECTION_TRUE}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$3", f = "DataStoreImpl.kt", i = {}, l = {TypedValues.CycleType.TYPE_PATH_ROTATE}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3<R> extends SuspendLambda implements Function1<Continuation<? super R>, Object> {
        final Function1<Continuation<? super R>, Object> $block;
        int label;

        AnonymousClass3(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super AnonymousClass3> continuation) {
            super(1, continuation);
            this.$block = function1;
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass3(this.$block, continuation);
        }

        @Override
        public final Object invoke(Continuation<? super R> continuation) {
            return ((AnonymousClass3) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
            Function1<Continuation<? super R>, Object> function1 = this.$block;
            this.label = 1;
            Object objInvoke = function1.invoke(this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001BD\u0012=\u0010\u0002\u001a9\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00040\u0003¢\u0006\u0002\u0010\fJ\u000e\u0010\u000e\u001a\u00020\nH\u0094@¢\u0006\u0002\u0010\u000fRG\u0010\r\u001a;\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "Landroidx/datastore/core/RunOnce;", "initTasksList", "", "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lkotlin/ParameterName;", "name", "api", "Lkotlin/coroutines/Continuation;", "", "", "(Landroidx/datastore/core/DataStoreImpl;Ljava/util/List;)V", "initTasks", "doRun", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    final class InitDataStore extends RunOnce {
        private List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> initTasks;
        final DataStoreImpl<T> this$0;

        public InitDataStore(DataStoreImpl dataStoreImpl, List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> initTasksList) {
            Intrinsics.checkNotNullParameter(initTasksList, "initTasksList");
            this.this$0 = dataStoreImpl;
            this.initTasks = CollectionsKt.toList(initTasksList);
        }

        @Override
        protected Object doRun(Continuation<? super Unit> continuation) throws CorruptionException {
            DataStoreImpl$InitDataStore$doRun$1 dataStoreImpl$InitDataStore$doRun$1;
            InitDataStore initDataStore;
            Data data;
            if (continuation instanceof DataStoreImpl$InitDataStore$doRun$1) {
                dataStoreImpl$InitDataStore$doRun$1 = (DataStoreImpl$InitDataStore$doRun$1) continuation;
                if ((dataStoreImpl$InitDataStore$doRun$1.label & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$InitDataStore$doRun$1.label -= Integer.MIN_VALUE;
                } else {
                    dataStoreImpl$InitDataStore$doRun$1 = new DataStoreImpl$InitDataStore$doRun$1(this, continuation);
                }
            } else {
                dataStoreImpl$InitDataStore$doRun$1 = new DataStoreImpl$InitDataStore$doRun$1(this, continuation);
            }
            Object dataOrHandleCorruption = dataStoreImpl$InitDataStore$doRun$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = dataStoreImpl$InitDataStore$doRun$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(dataOrHandleCorruption);
                List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> list = this.initTasks;
                if (list != null) {
                    Intrinsics.checkNotNull(list);
                    if (!list.isEmpty()) {
                        InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                        DataStoreImpl$InitDataStore$doRun$initData$1 dataStoreImpl$InitDataStore$doRun$initData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1(this.this$0, this, null);
                        dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                        dataStoreImpl$InitDataStore$doRun$1.label = 2;
                        dataOrHandleCorruption = coordinator.lock(dataStoreImpl$InitDataStore$doRun$initData$1, dataStoreImpl$InitDataStore$doRun$1);
                        if (dataOrHandleCorruption != coroutine_suspended) {
                            initDataStore = this;
                            data = (Data) dataOrHandleCorruption;
                        }
                    } else {
                        DataStoreImpl<T> dataStoreImpl = this.this$0;
                        dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                        dataStoreImpl$InitDataStore$doRun$1.label = 1;
                        dataOrHandleCorruption = dataStoreImpl.readDataOrHandleCorruption(false, dataStoreImpl$InitDataStore$doRun$1);
                        if (dataOrHandleCorruption != coroutine_suspended) {
                            initDataStore = this;
                            data = (Data) dataOrHandleCorruption;
                        }
                    }
                } else {
                    DataStoreImpl<T> dataStoreImpl2 = this.this$0;
                    dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                    dataStoreImpl$InitDataStore$doRun$1.label = 1;
                    dataOrHandleCorruption = dataStoreImpl2.readDataOrHandleCorruption(false, dataStoreImpl$InitDataStore$doRun$1);
                    if (dataOrHandleCorruption != coroutine_suspended) {
                        initDataStore = this;
                        data = (Data) dataOrHandleCorruption;
                    }
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                initDataStore = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                ResultKt.throwOnFailure(dataOrHandleCorruption);
                data = (Data) dataOrHandleCorruption;
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                initDataStore = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                ResultKt.throwOnFailure(dataOrHandleCorruption);
                data = (Data) dataOrHandleCorruption;
            }
            ((DataStoreImpl) initDataStore.this$0).inMemoryCache.tryUpdate(data);
            return Unit.INSTANCE;
        }
    }
}
