package n.o.t.i.f.e.e;

import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class h<T> implements ListenableFuture<T> {
    public final ListenableFuture<T> a;

    public class a implements FutureCallback<T> {
        public final b a;

        public a(h hVar, b bVar) {
            this.a = bVar;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.a(new Exception(th), null);
        }

        @Override
        public void onSuccess(T t) {
            this.a.a(null, t);
        }
    }

    public h(ListenableFuture<T> listenableFuture) {
        this.a = listenableFuture;
    }

    public <O> h<O> a(AsyncFunction<T, O> asyncFunction, Executor executor) {
        return new h<>(Futures.transformAsync(this, asyncFunction, executor));
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        this.a.addListener(runnable, executor);
    }

    @Override
    public boolean cancel(boolean z) {
        return this.a.cancel(z);
    }

    @Override
    public T get() throws ExecutionException, InterruptedException {
        return this.a.get();
    }

    @Override
    public boolean isCancelled() {
        return this.a.isCancelled();
    }

    @Override
    public boolean isDone() {
        return this.a.isDone();
    }

    @Override
    public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.a.get(j, timeUnit);
    }

    public h<T> a(b<T> bVar, Executor executor) {
        Futures.addCallback(this, new a(this, bVar), executor);
        return this;
    }
}
