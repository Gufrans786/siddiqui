package com.mapbox.maps;

import android.content.Context;
import android.util.TypedValue;
import androidx.core.app.NotificationCompat;
import androidx.core.text.HtmlCompat;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.Cancelable;
import com.mapbox.common.logger.LogPriority;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.TimeoutKt;

@Metadata(d1 = {"\u0000Z\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a[\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u001c\u0010\t\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nH\u0080@ø\u0001\u0000¢\u0006\u0002\u0010\r\u001ay\u0010\u000e\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\u001c\u0010\t\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\n2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u000f0\nH\u0080@ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001aU\u0010\u0013\u001a\u0002H\u0001\"\u0006\b\u0000\u0010\u0014\u0018\u0001\"\u0006\b\u0001\u0010\u0015\u0018\u0001\"\u0016\b\u0002\u0010\u0001\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150\u00162\u001a\b\u0004\u0010\u0017\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u000b\u0012\u0004\u0012\u00020\u00180\nH\u0080Hø\u0001\u0000¢\u0006\u0002\u0010\u0019\u001a<\u0010\u001a\u001a\u0002H\u001b\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u00010\u001c2\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u001b0\n¢\u0006\u0002\b\u001eH\u0000¢\u0006\u0002\u0010\u001f\u001a#\u0010 \u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020!*\u0002H\u00012\u0006\u0010\"\u001a\u00020#H\u0000¢\u0006\u0002\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"safeSystemCall", ExifInterface.GPS_DIRECTION_TRUE, "timeoutMs", "", "fallback", "logTag", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "operation", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(JLjava/lang/Object;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "safeSystemCallWithCallback", "", "mainDispatcher", "onResult", "(JLjava/lang/Object;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "suspendMapboxCancellableCoroutine", ExifInterface.LONGITUDE_EAST, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/mapbox/bindgen/Expected;", "block", "Lcom/mapbox/common/Cancelable;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", NotificationCompat.CATEGORY_CALL, "R", "Ljava/lang/ref/WeakReference;", "method", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "toDP", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Ljava/lang/Number;Landroid/content/Context;)Ljava/lang/Number;", "maps-sdk_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class UtilsKt {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.UtilsKt", f = "Utils.kt", i = {0, 0, 0}, l = {HtmlCompat.FROM_HTML_MODE_COMPACT}, m = "safeSystemCall", n = {"fallback", "logTag", "timeoutMs"}, s = {"L$0", "L$1", "J$0"})
    static final class AnonymousClass1<T> extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UtilsKt.safeSystemCall(0L, null, null, null, null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.UtilsKt", f = "Utils.kt", i = {0, 0}, l = {98, LogPriority.NONE}, m = "safeSystemCallWithCallback", n = {"mainDispatcher", "onResult"}, s = {"L$0", "L$1"})
    static final class C07861<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        C07861(Continuation<? super C07861> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UtilsKt.safeSystemCallWithCallback(0L, null, null, null, null, null, null, this);
        }
    }

    public static final <T, R> R call(WeakReference<T> weakReference, Function1<? super T, ? extends R> method) {
        Intrinsics.checkNotNullParameter(weakReference, "<this>");
        Intrinsics.checkNotNullParameter(method, "method");
        T t = weakReference.get();
        if (t != null) {
            return method.invoke(t);
        }
        throw new IllegalStateException();
    }

    public static final <T extends Number> T toDP(T t, Context context) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        return Float.valueOf(TypedValue.applyDimension(1, t.floatValue(), context.getResources().getDisplayMetrics()));
    }

    public static final <T> Object safeSystemCall(long j, T t, String str, CoroutineDispatcher coroutineDispatcher, Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objWithTimeoutOrNull = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objWithTimeoutOrNull);
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(coroutineDispatcher, function1, null);
                anonymousClass1.L$0 = t;
                anonymousClass1.L$1 = str;
                anonymousClass1.J$0 = j;
                anonymousClass1.label = 1;
                objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(j, anonymousClass2, anonymousClass1);
                if (objWithTimeoutOrNull == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j = anonymousClass1.J$0;
                str = (String) anonymousClass1.L$1;
                t = (T) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objWithTimeoutOrNull);
            }
            if (objWithTimeoutOrNull != null) {
                return objWithTimeoutOrNull;
            }
            MapboxLogger.logW(str, "System call timed out after " + j + "ms, using fallback");
            return t;
        } catch (Exception e) {
            MapboxLogger.logE(str, "System call failed: " + e.getMessage() + ", using fallback");
            return t;
        }
    }

    public static Object safeSystemCall$default(long j, Object obj, String str, CoroutineDispatcher coroutineDispatcher, Function1 function1, Continuation continuation, int i, Object obj2) {
        if ((i & 1) != 0) {
            j = 5000;
        }
        if ((i & 4) != 0) {
            str = "SystemCall";
        }
        if ((i & 8) != 0) {
            coroutineDispatcher = Dispatchers.getDefault();
        }
        return safeSystemCall(j, obj, str, coroutineDispatcher, function1, continuation);
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.UtilsKt$safeSystemCall$2", f = "Utils.kt", i = {}, l = {64}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final CoroutineDispatcher $dispatcher;
        final Function1<Continuation<? super T>, Object> $operation;
        int label;

        AnonymousClass2(CoroutineDispatcher coroutineDispatcher, Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$dispatcher = coroutineDispatcher;
            this.$operation = function1;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$dispatcher, this.$operation, continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
        @DebugMetadata(c = "com.mapbox.maps.UtilsKt$safeSystemCall$2$1", f = "Utils.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
            final Function1<Continuation<? super T>, Object> $operation;
            int label;

            AnonymousClass1(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$operation = function1;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$operation, continuation);
            }

            @Override
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                Function1<Continuation<? super T>, Object> function1 = this.$operation;
                this.label = 1;
                Object objInvoke = function1.invoke(this);
                return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
            }
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
            Object objWithContext = BuildersKt.withContext(this.$dispatcher, new AnonymousClass1(this.$operation, null), this);
            return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
        }
    }

    public static final <T> java.lang.Object safeSystemCallWithCallback(long r11, T r13, java.lang.String r14, kotlinx.coroutines.CoroutineDispatcher r15, kotlinx.coroutines.CoroutineDispatcher r16, kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super T>, ? extends java.lang.Object> r17, kotlin.jvm.functions.Function1<? super T, kotlin.Unit> r18, kotlin.coroutines.Continuation<? super kotlin.Unit> r19) {
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.maps.UtilsKt.safeSystemCallWithCallback(long, java.lang.Object, java.lang.String, kotlinx.coroutines.CoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static Object safeSystemCallWithCallback$default(long j, Object obj, String str, CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, Function1 function1, Function1 function2, Continuation continuation, int i, Object obj2) {
        if ((i & 1) != 0) {
            j = 5000;
        }
        if ((i & 4) != 0) {
            str = "SystemCall";
        }
        if ((i & 8) != 0) {
            coroutineDispatcher = Dispatchers.getDefault();
        }
        if ((i & 16) != 0) {
            coroutineDispatcher2 = Dispatchers.getMain();
        }
        return safeSystemCallWithCallback(j, obj, str, coroutineDispatcher, coroutineDispatcher2, function1, function2, continuation);
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.UtilsKt$safeSystemCallWithCallback$2", f = "Utils.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07872 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final Function1<T, Unit> $onResult;
        final T $result;
        int label;

        C07872(Function1<? super T, Unit> function1, T t, Continuation<? super C07872> continuation) {
            super(2, continuation);
            this.$onResult = function1;
            this.$result = t;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C07872(this.$onResult, this.$result, continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07872) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$onResult.invoke(this.$result);
            return Unit.INSTANCE;
        }
    }

    public static final <E, V, T extends Expected<E, V>> Object suspendMapboxCancellableCoroutine(Function1<? super Continuation<? super T>, ? extends Cancelable> function1, Continuation<? super T> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        cancellableContinuationImpl2.invokeOnCancellation(new UtilsKt$suspendMapboxCancellableCoroutine$2$1(function1.invoke(cancellableContinuationImpl2)));
        Unit unit = Unit.INSTANCE;
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
