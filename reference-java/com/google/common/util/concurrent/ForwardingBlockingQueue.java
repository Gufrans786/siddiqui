package com.google.common.util.concurrent;

import com.google.common.collect.ForwardingQueue;
import java.util.Collection;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingBlockingQueue<E> extends ForwardingQueue<E> implements BlockingQueue<E> {
    @Override
    public abstract BlockingQueue<E> delegate();

    protected ForwardingBlockingQueue() {
    }

    @Override
    public int drainTo(Collection<? super E> c, int maxElements) {
        return delegate().drainTo(c, maxElements);
    }

    @Override
    public int drainTo(Collection<? super E> c) {
        return delegate().drainTo(c);
    }

    @Override
    public boolean offer(E e, long timeout, TimeUnit unit) throws InterruptedException {
        return delegate().offer(e, timeout, unit);
    }

    @Override
    @CheckForNull
    public E poll(long timeout, TimeUnit unit) throws InterruptedException {
        return delegate().poll(timeout, unit);
    }

    @Override
    public void put(E e) throws InterruptedException {
        delegate().put(e);
    }

    @Override
    public int remainingCapacity() {
        return delegate().remainingCapacity();
    }

    @Override
    public E take() throws InterruptedException {
        return delegate().take();
    }
}
