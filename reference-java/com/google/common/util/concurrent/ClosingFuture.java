package com.google.common.util.concurrent;

import androidx.lifecycle.LifecycleKt$$ExternalSyntheticBackportWithForwarding0;
import com.google.common.base.Function;
import com.google.common.base.Functions;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.errorprone.annotations.DoNotMock;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.io.Closeable;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import javax.annotation.CheckForNull;
import kotlin.UByte$$ExternalSyntheticBackport0;

@DoNotMock("Use ClosingFuture.from(Futures.immediate*Future)")
@ElementTypesAreNonnullByDefault
public final class ClosingFuture<V> {
    private static final LazyLogger logger = new LazyLogger(ClosingFuture.class);
    private final CloseableList closeables;
    private final FluentFuture<V> future;
    private final AtomicReference<State> state;

    public interface AsyncClosingCallable<V> {
        ClosingFuture<V> call(DeferredCloser closer) throws Exception;
    }

    public interface AsyncClosingFunction<T, U> {
        ClosingFuture<U> apply(DeferredCloser closer, @ParametricNullness T input) throws Exception;
    }

    public interface ClosingCallable<V> {
        @ParametricNullness
        V call(DeferredCloser closer) throws Exception;
    }

    public interface ClosingFunction<T, U> {
        @ParametricNullness
        U apply(DeferredCloser closer, @ParametricNullness T input) throws Exception;
    }

    enum State {
        OPEN,
        SUBSUMED,
        WILL_CLOSE,
        CLOSING,
        CLOSED,
        WILL_CREATE_VALUE_AND_CLOSER
    }

    public interface ValueAndCloserConsumer<V> {
        void accept(ValueAndCloser<V> valueAndCloser);
    }

    public static final class DeferredCloser {
        private final CloseableList list;

        DeferredCloser(CloseableList list) {
            this.list = list;
        }

        @ParametricNullness
        public <C extends AutoCloseable> C eventuallyClose(@ParametricNullness C closeable, Executor closingExecutor) {
            Preconditions.checkNotNull(closingExecutor);
            if (closeable != null) {
                this.list.add(closeable, closingExecutor);
            }
            return closeable;
        }
    }

    public static final class ValueAndCloser<V> {
        private final ClosingFuture<? extends V> closingFuture;

        ValueAndCloser(ClosingFuture<? extends V> closingFuture) {
            this.closingFuture = (ClosingFuture) Preconditions.checkNotNull(closingFuture);
        }

        @ParametricNullness
        public V get() throws ExecutionException {
            return (V) Futures.getDone(((ClosingFuture) this.closingFuture).future);
        }

        public void closeAsync() {
            this.closingFuture.close();
        }
    }

    public static <V> ClosingFuture<V> submit(final ClosingCallable<V> callable, Executor executor) {
        Preconditions.checkNotNull(callable);
        final CloseableList closeableList = new CloseableList();
        TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(new Callable<V>() {
            @Override
            @ParametricNullness
            public V call() throws Exception {
                return (V) callable.call(closeableList.closer);
            }

            public String toString() {
                return callable.toString();
            }
        });
        executor.execute(trustedListenableFutureTaskCreate);
        return new ClosingFuture<>(trustedListenableFutureTaskCreate, closeableList);
    }

    public static <V> ClosingFuture<V> submitAsync(final AsyncClosingCallable<V> callable, Executor executor) {
        Preconditions.checkNotNull(callable);
        final CloseableList closeableList = new CloseableList();
        TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(new AsyncCallable<V>() {
            @Override
            public ListenableFuture<V> call() throws Exception {
                CloseableList closeableList2 = new CloseableList();
                try {
                    ClosingFuture<V> closingFutureCall = callable.call(closeableList2.closer);
                    closingFutureCall.becomeSubsumedInto(closeableList);
                    return ((ClosingFuture) closingFutureCall).future;
                } finally {
                    closeableList.add(closeableList2, MoreExecutors.directExecutor());
                }
            }

            public String toString() {
                return callable.toString();
            }
        });
        executor.execute(trustedListenableFutureTaskCreate);
        return new ClosingFuture<>(trustedListenableFutureTaskCreate, closeableList);
    }

    public static <V> ClosingFuture<V> from(ListenableFuture<V> future) {
        return new ClosingFuture<>(future);
    }

    @Deprecated
    public static <C extends AutoCloseable> ClosingFuture<C> eventuallyClosing(ListenableFuture<C> future, final Executor closingExecutor) {
        Preconditions.checkNotNull(closingExecutor);
        ClosingFuture<C> closingFuture = new ClosingFuture<>(Futures.nonCancellationPropagating(future));
        Futures.addCallback(future, new FutureCallback<AutoCloseable>() {
            @Override
            public void onFailure(Throwable t) {
            }

            @Override
            public void onSuccess(@CheckForNull AutoCloseable result) {
                ClosingFuture.this.closeables.closer.eventuallyClose(result, closingExecutor);
            }
        }, MoreExecutors.directExecutor());
        return closingFuture;
    }

    public static Combiner whenAllComplete(Iterable<? extends ClosingFuture<?>> futures) {
        return new Combiner(false, futures);
    }

    public static Combiner whenAllComplete(ClosingFuture<?> future1, ClosingFuture<?>... moreFutures) {
        return whenAllComplete(Lists.asList(future1, moreFutures));
    }

    public static Combiner whenAllSucceed(Iterable<? extends ClosingFuture<?>> futures) {
        return new Combiner(true, futures);
    }

    public static <V1, V2> Combiner2<V1, V2> whenAllSucceed(ClosingFuture<V1> future1, ClosingFuture<V2> future2) {
        return new Combiner2<>(future2);
    }

    public static <V1, V2, V3> Combiner3<V1, V2, V3> whenAllSucceed(ClosingFuture<V1> future1, ClosingFuture<V2> future2, ClosingFuture<V3> future3) {
        return new Combiner3<>(future2, future3);
    }

    public static <V1, V2, V3, V4> Combiner4<V1, V2, V3, V4> whenAllSucceed(ClosingFuture<V1> future1, ClosingFuture<V2> future2, ClosingFuture<V3> future3, ClosingFuture<V4> future4) {
        return new Combiner4<>(future2, future3, future4);
    }

    public static <V1, V2, V3, V4, V5> Combiner5<V1, V2, V3, V4, V5> whenAllSucceed(ClosingFuture<V1> future1, ClosingFuture<V2> future2, ClosingFuture<V3> future3, ClosingFuture<V4> future4, ClosingFuture<V5> future5) {
        return new Combiner5<>(future2, future3, future4, future5);
    }

    public static Combiner whenAllSucceed(ClosingFuture<?> future1, ClosingFuture<?> future2, ClosingFuture<?> future3, ClosingFuture<?> future4, ClosingFuture<?> future5, ClosingFuture<?> future6, ClosingFuture<?>... moreFutures) {
        return whenAllSucceed(FluentIterable.of(future1, future2, future3, future4, future5, future6).append(moreFutures));
    }

    private ClosingFuture(ListenableFuture<V> future) {
        this(future, new CloseableList());
    }

    private ClosingFuture(ListenableFuture<V> future, CloseableList closeables) {
        this.state = new AtomicReference<>(State.OPEN);
        this.future = FluentFuture.from(future);
        this.closeables = closeables;
    }

    public ListenableFuture<?> statusFuture() {
        return Futures.nonCancellationPropagating(this.future.transform(Functions.constant(null), MoreExecutors.directExecutor()));
    }

    public <U> ClosingFuture<U> transform(final ClosingFunction<? super V, U> function, Executor executor) {
        Preconditions.checkNotNull(function);
        return derive(this.future.transformAsync(new AsyncFunction<V, U>(this) {
            final ClosingFuture this$0;

            {
                this.this$0 = this;
            }

            @Override
            public ListenableFuture<U> apply(V input) throws Exception {
                return this.this$0.closeables.applyClosingFunction(function, input);
            }

            public String toString() {
                return function.toString();
            }
        }, executor));
    }

    public <U> ClosingFuture<U> transformAsync(final AsyncClosingFunction<? super V, U> function, Executor executor) {
        Preconditions.checkNotNull(function);
        return derive(this.future.transformAsync(new AsyncFunction<V, U>(this) {
            final ClosingFuture this$0;

            {
                this.this$0 = this;
            }

            @Override
            public ListenableFuture<U> apply(V input) throws Exception {
                return this.this$0.closeables.applyAsyncClosingFunction(function, input);
            }

            public String toString() {
                return function.toString();
            }
        }, executor));
    }

    public static <V, U> AsyncClosingFunction<V, U> withoutCloser(final AsyncFunction<V, U> function) {
        Preconditions.checkNotNull(function);
        return new AsyncClosingFunction<V, U>() {
            @Override
            public ClosingFuture<U> apply(DeferredCloser closer, V input) throws Exception {
                return ClosingFuture.from(function.apply(input));
            }
        };
    }

    public <X extends Throwable> ClosingFuture<V> catching(Class<X> exceptionType, ClosingFunction<? super X, ? extends V> fallback, Executor executor) {
        return catchingMoreGeneric(exceptionType, fallback, executor);
    }

    private <X extends Throwable, W extends V> ClosingFuture<V> catchingMoreGeneric(Class<X> cls, final ClosingFunction<? super X, W> closingFunction, Executor executor) {
        Preconditions.checkNotNull(closingFunction);
        return (ClosingFuture<V>) derive(this.future.catchingAsync(cls, new AsyncFunction<X, W>(this) {
            final ClosingFuture this$0;

            {
                this.this$0 = this;
            }

            @Override
            public ListenableFuture apply(Throwable exception) throws Exception {
                return this.this$0.closeables.applyClosingFunction(closingFunction, exception);
            }

            public String toString() {
                return closingFunction.toString();
            }
        }, executor));
    }

    public <X extends Throwable> ClosingFuture<V> catchingAsync(Class<X> exceptionType, AsyncClosingFunction<? super X, ? extends V> fallback, Executor executor) {
        return catchingAsyncMoreGeneric(exceptionType, fallback, executor);
    }

    private <X extends Throwable, W extends V> ClosingFuture<V> catchingAsyncMoreGeneric(Class<X> cls, final AsyncClosingFunction<? super X, W> asyncClosingFunction, Executor executor) {
        Preconditions.checkNotNull(asyncClosingFunction);
        return (ClosingFuture<V>) derive(this.future.catchingAsync(cls, new AsyncFunction<X, W>(this) {
            final ClosingFuture this$0;

            {
                this.this$0 = this;
            }

            @Override
            public ListenableFuture apply(Throwable exception) throws Exception {
                return this.this$0.closeables.applyAsyncClosingFunction(asyncClosingFunction, exception);
            }

            public String toString() {
                return asyncClosingFunction.toString();
            }
        }, executor));
    }

    public FluentFuture<V> finishToFuture() {
        if (compareAndUpdateState(State.OPEN, State.WILL_CLOSE)) {
            logger.get().log(Level.FINER, "will close {0}", this);
            this.future.addListener(new Runnable() {
                @Override
                public void run() {
                    ClosingFuture.this.checkAndUpdateState(State.WILL_CLOSE, State.CLOSING);
                    ClosingFuture.this.close();
                    ClosingFuture.this.checkAndUpdateState(State.CLOSING, State.CLOSED);
                }
            }, MoreExecutors.directExecutor());
        } else {
            int iOrdinal = this.state.get().ordinal();
            if (iOrdinal == 0) {
                throw new AssertionError();
            }
            if (iOrdinal == 1) {
                throw new IllegalStateException("Cannot call finishToFuture() after deriving another step");
            }
            if (iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 4) {
                throw new IllegalStateException("Cannot call finishToFuture() twice");
            }
            if (iOrdinal == 5) {
                throw new IllegalStateException("Cannot call finishToFuture() after calling finishToValueAndCloser()");
            }
        }
        return this.future;
    }

    public void finishToValueAndCloser(final ValueAndCloserConsumer<? super V> consumer, Executor executor) {
        Preconditions.checkNotNull(consumer);
        if (!compareAndUpdateState(State.OPEN, State.WILL_CREATE_VALUE_AND_CLOSER)) {
            int iOrdinal = this.state.get().ordinal();
            if (iOrdinal == 1) {
                throw new IllegalStateException("Cannot call finishToValueAndCloser() after deriving another step");
            }
            if (iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 4) {
                throw new IllegalStateException("Cannot call finishToValueAndCloser() after calling finishToFuture()");
            }
            if (iOrdinal == 5) {
                throw new IllegalStateException("Cannot call finishToValueAndCloser() twice");
            }
            throw new AssertionError(this.state);
        }
        this.future.addListener(new Runnable(this) {
            final ClosingFuture this$0;

            {
                this.this$0 = this;
            }

            @Override
            public void run() {
                ClosingFuture.provideValueAndCloser(consumer, this.this$0);
            }
        }, executor);
    }

    public static <C, V extends C> void provideValueAndCloser(ValueAndCloserConsumer<C> consumer, ClosingFuture<V> closingFuture) {
        consumer.accept(new ValueAndCloser<>(closingFuture));
    }

    public boolean cancel(boolean mayInterruptIfRunning) {
        logger.get().log(Level.FINER, "cancelling {0}", this);
        boolean zCancel = this.future.cancel(mayInterruptIfRunning);
        if (zCancel) {
            close();
        }
        return zCancel;
    }

    public void close() {
        logger.get().log(Level.FINER, "closing {0}", this);
        this.closeables.close();
    }

    private <U> ClosingFuture<U> derive(FluentFuture<U> future) {
        ClosingFuture<U> closingFuture = new ClosingFuture<>(future);
        becomeSubsumedInto(closingFuture.closeables);
        return closingFuture;
    }

    public void becomeSubsumedInto(CloseableList otherCloseables) {
        checkAndUpdateState(State.OPEN, State.SUBSUMED);
        otherCloseables.add(this.closeables, MoreExecutors.directExecutor());
    }

    public static final class Peeker {
        private volatile boolean beingCalled;
        private final ImmutableList<ClosingFuture<?>> futures;

        private Peeker(ImmutableList<ClosingFuture<?>> futures) {
            this.futures = (ImmutableList) Preconditions.checkNotNull(futures);
        }

        @ParametricNullness
        public final <D> D getDone(ClosingFuture<D> closingFuture) throws ExecutionException {
            Preconditions.checkState(this.beingCalled);
            Preconditions.checkArgument(this.futures.contains(closingFuture));
            return (D) Futures.getDone(((ClosingFuture) closingFuture).future);
        }

        @ParametricNullness
        public <V> V call(Combiner.CombiningCallable<V> combiner, CloseableList closeables) throws Exception {
            this.beingCalled = true;
            CloseableList closeableList = new CloseableList();
            try {
                return combiner.call(closeableList.closer, this);
            } finally {
                closeables.add(closeableList, MoreExecutors.directExecutor());
                this.beingCalled = false;
            }
        }

        public <V> FluentFuture<V> callAsync(Combiner.AsyncCombiningCallable<V> combiner, CloseableList closeables) throws Exception {
            this.beingCalled = true;
            CloseableList closeableList = new CloseableList();
            try {
                ClosingFuture<V> closingFutureCall = combiner.call(closeableList.closer, this);
                closingFutureCall.becomeSubsumedInto(closeables);
                return ((ClosingFuture) closingFutureCall).future;
            } finally {
                closeables.add(closeableList, MoreExecutors.directExecutor());
                this.beingCalled = false;
            }
        }
    }

    @DoNotMock("Use ClosingFuture.whenAllSucceed() or .whenAllComplete() instead.")
    public static class Combiner {
        private final boolean allMustSucceed;
        private final CloseableList closeables;
        protected final ImmutableList<ClosingFuture<?>> inputs;

        public interface AsyncCombiningCallable<V> {
            ClosingFuture<V> call(DeferredCloser closer, Peeker peeker) throws Exception;
        }

        public interface CombiningCallable<V> {
            @ParametricNullness
            V call(DeferredCloser closer, Peeker peeker) throws Exception;
        }

        private Combiner(boolean allMustSucceed, Iterable<? extends ClosingFuture<?>> inputs) {
            this.closeables = new CloseableList();
            this.allMustSucceed = allMustSucceed;
            this.inputs = ImmutableList.copyOf(inputs);
            Iterator<? extends ClosingFuture<?>> it = inputs.iterator();
            while (it.hasNext()) {
                it.next().becomeSubsumedInto(this.closeables);
            }
        }

        public <V> ClosingFuture<V> call(final CombiningCallable<V> combiningCallable, Executor executor) {
            ClosingFuture<V> closingFuture = new ClosingFuture<>(futureCombiner().call(new Callable<V>(this) {
                final Combiner this$0;

                {
                    this.this$0 = this;
                }

                @Override
                @ParametricNullness
                public V call() throws Exception {
                    return (V) new Peeker(this.this$0.inputs).call(combiningCallable, this.this$0.closeables);
                }

                public String toString() {
                    return combiningCallable.toString();
                }
            }, executor));
            ((ClosingFuture) closingFuture).closeables.add(this.closeables, MoreExecutors.directExecutor());
            return closingFuture;
        }

        public <V> ClosingFuture<V> callAsync(final AsyncCombiningCallable<V> asyncCombiningCallable, Executor executor) {
            ClosingFuture<V> closingFuture = new ClosingFuture<>(futureCombiner().callAsync(new AsyncCallable<V>(this) {
                final Combiner this$0;

                {
                    this.this$0 = this;
                }

                @Override
                public ListenableFuture<V> call() throws Exception {
                    return new Peeker(this.this$0.inputs).callAsync(asyncCombiningCallable, this.this$0.closeables);
                }

                public String toString() {
                    return asyncCombiningCallable.toString();
                }
            }, executor));
            ((ClosingFuture) closingFuture).closeables.add(this.closeables, MoreExecutors.directExecutor());
            return closingFuture;
        }

        private Futures.FutureCombiner<Object> futureCombiner() {
            if (this.allMustSucceed) {
                return Futures.whenAllSucceed(inputFutures());
            }
            return Futures.whenAllComplete(inputFutures());
        }

        private ImmutableList<FluentFuture<?>> inputFutures() {
            return FluentIterable.from(this.inputs).transform(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((ClosingFuture) obj).future;
                }
            }).toList();
        }
    }

    public static final class Combiner2<V1, V2> extends Combiner {
        private final ClosingFuture<V1> future1;
        private final ClosingFuture<V2> future2;

        public interface AsyncClosingFunction2<V1, V2, U> {
            ClosingFuture<U> apply(DeferredCloser closer, @ParametricNullness V1 value1, @ParametricNullness V2 value2) throws Exception;
        }

        public interface ClosingFunction2<V1, V2, U> {
            @ParametricNullness
            U apply(DeferredCloser closer, @ParametricNullness V1 value1, @ParametricNullness V2 value2) throws Exception;
        }

        private Combiner2(ClosingFuture<V1> future1, ClosingFuture<V2> future2) {
            super(true, ImmutableList.of((ClosingFuture<V2>) future1, future2));
            this.future1 = future1;
            this.future2 = future2;
        }

        public <U> ClosingFuture<U> call(final ClosingFunction2<V1, V2, U> function, Executor executor) {
            return call(new Combiner.CombiningCallable<U>(this) {
                final Combiner2 this$0;

                {
                    this.this$0 = this;
                }

                @Override
                @ParametricNullness
                public U call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                    return (U) function.apply(deferredCloser, peeker.getDone(this.this$0.future1), peeker.getDone(this.this$0.future2));
                }

                public String toString() {
                    return function.toString();
                }
            }, executor);
        }

        public <U> ClosingFuture<U> callAsync(final AsyncClosingFunction2<V1, V2, U> function, Executor executor) {
            return callAsync(new Combiner.AsyncCombiningCallable<U>(this) {
                final Combiner2 this$0;

                {
                    this.this$0 = this;
                }

                @Override
                public ClosingFuture<U> call(DeferredCloser closer, Peeker peeker) throws Exception {
                    return function.apply(closer, peeker.getDone(this.this$0.future1), peeker.getDone(this.this$0.future2));
                }

                public String toString() {
                    return function.toString();
                }
            }, executor);
        }
    }

    public static final class Combiner3<V1, V2, V3> extends Combiner {
        private final ClosingFuture<V1> future1;
        private final ClosingFuture<V2> future2;
        private final ClosingFuture<V3> future3;

        public interface AsyncClosingFunction3<V1, V2, V3, U> {
            ClosingFuture<U> apply(DeferredCloser closer, @ParametricNullness V1 value1, @ParametricNullness V2 value2, @ParametricNullness V3 value3) throws Exception;
        }

        public interface ClosingFunction3<V1, V2, V3, U> {
            @ParametricNullness
            U apply(DeferredCloser closer, @ParametricNullness V1 value1, @ParametricNullness V2 value2, @ParametricNullness V3 value3) throws Exception;
        }

        private Combiner3(ClosingFuture<V1> future1, ClosingFuture<V2> future2, ClosingFuture<V3> future3) {
            super(true, ImmutableList.of((ClosingFuture<V3>) future1, (ClosingFuture<V3>) future2, future3));
            this.future1 = future1;
            this.future2 = future2;
            this.future3 = future3;
        }

        public <U> ClosingFuture<U> call(final ClosingFunction3<V1, V2, V3, U> function, Executor executor) {
            return call(new Combiner.CombiningCallable<U>(this) {
                final Combiner3 this$0;

                {
                    this.this$0 = this;
                }

                @Override
                @ParametricNullness
                public U call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                    return (U) function.apply(deferredCloser, peeker.getDone(this.this$0.future1), peeker.getDone(this.this$0.future2), peeker.getDone(this.this$0.future3));
                }

                public String toString() {
                    return function.toString();
                }
            }, executor);
        }

        public <U> ClosingFuture<U> callAsync(final AsyncClosingFunction3<V1, V2, V3, U> function, Executor executor) {
            return callAsync(new Combiner.AsyncCombiningCallable<U>(this) {
                final Combiner3 this$0;

                {
                    this.this$0 = this;
                }

                @Override
                public ClosingFuture<U> call(DeferredCloser closer, Peeker peeker) throws Exception {
                    return function.apply(closer, peeker.getDone(this.this$0.future1), peeker.getDone(this.this$0.future2), peeker.getDone(this.this$0.future3));
                }

                public String toString() {
                    return function.toString();
                }
            }, executor);
        }
    }

    public static final class Combiner4<V1, V2, V3, V4> extends Combiner {
        private final ClosingFuture<V1> future1;
        private final ClosingFuture<V2> future2;
        private final ClosingFuture<V3> future3;
        private final ClosingFuture<V4> future4;

        public interface AsyncClosingFunction4<V1, V2, V3, V4, U> {
            ClosingFuture<U> apply(DeferredCloser closer, @ParametricNullness V1 value1, @ParametricNullness V2 value2, @ParametricNullness V3 value3, @ParametricNullness V4 value4) throws Exception;
        }

        public interface ClosingFunction4<V1, V2, V3, V4, U> {
            @ParametricNullness
            U apply(DeferredCloser closer, @ParametricNullness V1 value1, @ParametricNullness V2 value2, @ParametricNullness V3 value3, @ParametricNullness V4 value4) throws Exception;
        }

        private Combiner4(ClosingFuture<V1> future1, ClosingFuture<V2> future2, ClosingFuture<V3> future3, ClosingFuture<V4> future4) {
            super(true, ImmutableList.of((ClosingFuture<V4>) future1, (ClosingFuture<V4>) future2, (ClosingFuture<V4>) future3, future4));
            this.future1 = future1;
            this.future2 = future2;
            this.future3 = future3;
            this.future4 = future4;
        }

        public <U> ClosingFuture<U> call(final ClosingFunction4<V1, V2, V3, V4, U> function, Executor executor) {
            return call(new Combiner.CombiningCallable<U>(this) {
                final Combiner4 this$0;

                {
                    this.this$0 = this;
                }

                @Override
                @ParametricNullness
                public U call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                    return (U) function.apply(deferredCloser, peeker.getDone(this.this$0.future1), peeker.getDone(this.this$0.future2), peeker.getDone(this.this$0.future3), peeker.getDone(this.this$0.future4));
                }

                public String toString() {
                    return function.toString();
                }
            }, executor);
        }

        public <U> ClosingFuture<U> callAsync(final AsyncClosingFunction4<V1, V2, V3, V4, U> function, Executor executor) {
            return callAsync(new Combiner.AsyncCombiningCallable<U>(this) {
                final Combiner4 this$0;

                {
                    this.this$0 = this;
                }

                @Override
                public ClosingFuture<U> call(DeferredCloser closer, Peeker peeker) throws Exception {
                    return function.apply(closer, peeker.getDone(this.this$0.future1), peeker.getDone(this.this$0.future2), peeker.getDone(this.this$0.future3), peeker.getDone(this.this$0.future4));
                }

                public String toString() {
                    return function.toString();
                }
            }, executor);
        }
    }

    public static final class Combiner5<V1, V2, V3, V4, V5> extends Combiner {
        private final ClosingFuture<V1> future1;
        private final ClosingFuture<V2> future2;
        private final ClosingFuture<V3> future3;
        private final ClosingFuture<V4> future4;
        private final ClosingFuture<V5> future5;

        public interface AsyncClosingFunction5<V1, V2, V3, V4, V5, U> {
            ClosingFuture<U> apply(DeferredCloser closer, @ParametricNullness V1 value1, @ParametricNullness V2 value2, @ParametricNullness V3 value3, @ParametricNullness V4 value4, @ParametricNullness V5 value5) throws Exception;
        }

        public interface ClosingFunction5<V1, V2, V3, V4, V5, U> {
            @ParametricNullness
            U apply(DeferredCloser closer, @ParametricNullness V1 value1, @ParametricNullness V2 value2, @ParametricNullness V3 value3, @ParametricNullness V4 value4, @ParametricNullness V5 value5) throws Exception;
        }

        private Combiner5(ClosingFuture<V1> future1, ClosingFuture<V2> future2, ClosingFuture<V3> future3, ClosingFuture<V4> future4, ClosingFuture<V5> future5) {
            super(true, ImmutableList.of((ClosingFuture<V5>) future1, (ClosingFuture<V5>) future2, (ClosingFuture<V5>) future3, (ClosingFuture<V5>) future4, future5));
            this.future1 = future1;
            this.future2 = future2;
            this.future3 = future3;
            this.future4 = future4;
            this.future5 = future5;
        }

        public <U> ClosingFuture<U> call(final ClosingFunction5<V1, V2, V3, V4, V5, U> function, Executor executor) {
            return call(new Combiner.CombiningCallable<U>(this) {
                final Combiner5 this$0;

                {
                    this.this$0 = this;
                }

                @Override
                @ParametricNullness
                public U call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                    return (U) function.apply(deferredCloser, peeker.getDone(this.this$0.future1), peeker.getDone(this.this$0.future2), peeker.getDone(this.this$0.future3), peeker.getDone(this.this$0.future4), peeker.getDone(this.this$0.future5));
                }

                public String toString() {
                    return function.toString();
                }
            }, executor);
        }

        public <U> ClosingFuture<U> callAsync(final AsyncClosingFunction5<V1, V2, V3, V4, V5, U> function, Executor executor) {
            return callAsync(new Combiner.AsyncCombiningCallable<U>(this) {
                final Combiner5 this$0;

                {
                    this.this$0 = this;
                }

                @Override
                public ClosingFuture<U> call(DeferredCloser closer, Peeker peeker) throws Exception {
                    return function.apply(closer, peeker.getDone(this.this$0.future1), peeker.getDone(this.this$0.future2), peeker.getDone(this.this$0.future3), peeker.getDone(this.this$0.future4), peeker.getDone(this.this$0.future5));
                }

                public String toString() {
                    return function.toString();
                }
            }, executor);
        }
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add(RemoteConfigConstants.ResponseFieldKey.STATE, this.state.get()).addValue(this.future).toString();
    }

    protected void finalize() {
        if (this.state.get().equals(State.OPEN)) {
            logger.get().log(Level.SEVERE, "Uh oh! An open ClosingFuture has leaked and will close: {0}", this);
            finishToFuture();
        }
    }

    public static void closeQuietly(@CheckForNull final AutoCloseable closeable, Executor executor) {
        if (closeable == null) {
            return;
        }
        try {
            executor.execute(new Runnable() {
                @Override
                public final void run() {
                    ClosingFuture.lambda$closeQuietly$0(closeable);
                }
            });
        } catch (RejectedExecutionException e) {
            LazyLogger lazyLogger = logger;
            if (lazyLogger.get().isLoggable(Level.WARNING)) {
                lazyLogger.get().log(Level.WARNING, String.format("while submitting close to %s; will close inline", executor), (Throwable) e);
            }
            closeQuietly(closeable, MoreExecutors.directExecutor());
        }
    }

    static void lambda$closeQuietly$0(AutoCloseable autoCloseable) {
        try {
            UByte$$ExternalSyntheticBackport0.m1537m((Object) autoCloseable);
        } catch (Exception e) {
            Platform.restoreInterruptIfIsInterruptedException(e);
            logger.get().log(Level.WARNING, "thrown by close()", (Throwable) e);
        }
    }

    public void checkAndUpdateState(State oldState, State newState) {
        Preconditions.checkState(compareAndUpdateState(oldState, newState), "Expected state to be %s, but it was %s", oldState, newState);
    }

    private boolean compareAndUpdateState(State oldState, State newState) {
        return LifecycleKt$$ExternalSyntheticBackportWithForwarding0.m(this.state, oldState, newState);
    }

    private static final class CloseableList extends IdentityHashMap<AutoCloseable, Executor> implements Closeable {
        private volatile boolean closed;
        private final DeferredCloser closer;

        @CheckForNull
        private volatile CountDownLatch whenClosed;

        private CloseableList() {
            this.closer = new DeferredCloser(this);
        }

        <V, U> ListenableFuture<U> applyClosingFunction(ClosingFunction<? super V, U> transformation, @ParametricNullness V input) throws Exception {
            CloseableList closeableList = new CloseableList();
            try {
                return Futures.immediateFuture(transformation.apply(closeableList.closer, input));
            } finally {
                add(closeableList, MoreExecutors.directExecutor());
            }
        }

        <V, U> FluentFuture<U> applyAsyncClosingFunction(AsyncClosingFunction<V, U> transformation, @ParametricNullness V input) throws Exception {
            CloseableList closeableList = new CloseableList();
            try {
                ClosingFuture<U> closingFutureApply = transformation.apply(closeableList.closer, input);
                closingFutureApply.becomeSubsumedInto(closeableList);
                return ((ClosingFuture) closingFutureApply).future;
            } finally {
                add(closeableList, MoreExecutors.directExecutor());
            }
        }

        @Override
        public void close() {
            if (this.closed) {
                return;
            }
            synchronized (this) {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                for (Map.Entry<AutoCloseable, Executor> entry : entrySet()) {
                    ClosingFuture.closeQuietly(entry.getKey(), entry.getValue());
                }
                clear();
                if (this.whenClosed != null) {
                    this.whenClosed.countDown();
                }
            }
        }

        void add(@CheckForNull AutoCloseable closeable, Executor executor) {
            Preconditions.checkNotNull(executor);
            if (closeable == null) {
                return;
            }
            synchronized (this) {
                if (this.closed) {
                    ClosingFuture.closeQuietly(closeable, executor);
                } else {
                    put(closeable, executor);
                }
            }
        }

        CountDownLatch whenClosedCountDown() {
            if (this.closed) {
                return new CountDownLatch(0);
            }
            synchronized (this) {
                if (this.closed) {
                    return new CountDownLatch(0);
                }
                Preconditions.checkState(this.whenClosed == null);
                CountDownLatch countDownLatch = new CountDownLatch(1);
                this.whenClosed = countDownLatch;
                return countDownLatch;
            }
        }
    }

    CountDownLatch whenClosedCountDown() {
        return this.closeables.whenClosedCountDown();
    }
}
