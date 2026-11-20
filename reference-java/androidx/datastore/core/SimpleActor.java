package androidx.datastore.core;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.joran.action.Action;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ClosedSendChannelException;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Bc\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\n\u0012\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\n¢\u0006\u0002\u0010\rJ\u0013\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0002\u0010\u0015R,\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Landroidx/datastore/core/SimpleActor;", ExifInterface.GPS_DIRECTION_TRUE, "", Action.SCOPE_ATTRIBUTE, "Lkotlinx/coroutines/CoroutineScope;", "onComplete", "Lkotlin/Function1;", "", "", "onUndeliveredElement", "Lkotlin/Function2;", "consumeMessage", "Lkotlin/coroutines/Continuation;", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "messageQueue", "Lkotlinx/coroutines/channels/Channel;", "remainingMessages", "Landroidx/datastore/core/AtomicInt;", "offer", NotificationCompat.CATEGORY_MESSAGE, "(Ljava/lang/Object;)V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SimpleActor<T> {
    private final Function2<T, Continuation<? super Unit>, Object> consumeMessage;
    private final Channel<T> messageQueue;
    private final AtomicInt remainingMessages;
    private final CoroutineScope scope;

    public SimpleActor(CoroutineScope scope, final Function1<? super Throwable, Unit> onComplete, final Function2<? super T, ? super Throwable, Unit> onUndeliveredElement, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> consumeMessage) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        Intrinsics.checkNotNullParameter(onUndeliveredElement, "onUndeliveredElement");
        Intrinsics.checkNotNullParameter(consumeMessage, "consumeMessage");
        this.scope = scope;
        this.consumeMessage = consumeMessage;
        this.messageQueue = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        this.remainingMessages = new AtomicInt(0);
        Job job = (Job) scope.getCoroutineContext().get(Job.INSTANCE);
        if (job != null) {
            job.invokeOnCompletion(new Function1<Throwable, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                public final void invoke2(Throwable th) {
                    Unit unit;
                    onComplete.invoke(th);
                    ((SimpleActor) this).messageQueue.close(th);
                    do {
                        Object objM2991getOrNullimpl = ChannelResult.m2991getOrNullimpl(((SimpleActor) this).messageQueue.mo2979tryReceivePtdJZtk());
                        if (objM2991getOrNullimpl != null) {
                            onUndeliveredElement.invoke((T) objM2991getOrNullimpl, th);
                            unit = Unit.INSTANCE;
                        } else {
                            unit = null;
                        }
                    } while (unit != null);
                }
            });
        }
    }

    public final void offer(T msg) {
        Object obj = this.messageQueue.mo2971trySendJP2dKIU(msg);
        if (obj instanceof ChannelResult.Closed) {
            Throwable thM2990exceptionOrNullimpl = ChannelResult.m2990exceptionOrNullimpl(obj);
            if (thM2990exceptionOrNullimpl != null) {
                throw thM2990exceptionOrNullimpl;
            }
            throw new ClosedSendChannelException("Channel was closed normally");
        }
        if (!ChannelResult.m2996isSuccessimpl(obj)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (this.remainingMessages.getAndIncrement() == 0) {
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass2(this, null), 3, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", i = {}, l = {121, 121}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;
        final SimpleActor<T> this$0;

        AnonymousClass2(SimpleActor<T> simpleActor, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = simpleActor;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
