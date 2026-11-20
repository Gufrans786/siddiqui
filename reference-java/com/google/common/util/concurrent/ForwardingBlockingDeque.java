package com.google.common.util.concurrent;

import com.google.common.collect.ForwardingDeque;
import java.util.Collection;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingBlockingDeque<E> extends ForwardingDeque<E> implements BlockingDeque<E> {
    @Override
    public abstract BlockingDeque<E> delegate();

    protected ForwardingBlockingDeque() {
    }

    @Override
    public int remainingCapacity() {
        return delegate().remainingCapacity();
    }

    @Override
    public void putFirst(E e) throws InterruptedException {
        delegate().putFirst(e);
    }

    @Override
    public void putLast(E e) throws InterruptedException {
        delegate().putLast(e);
    }

    @Override
    public boolean offerFirst(E e, long timeout, TimeUnit unit) throws InterruptedException {
        return delegate().offerFirst(e, timeout, unit);
    }

    @Override
    public boolean offerLast(E e, long timeout, TimeUnit unit) throws InterruptedException {
        return delegate().offerLast(e, timeout, unit);
    }

    @Override
    public E takeFirst() throws InterruptedException {
        return delegate().takeFirst();
    }

    @Override
    public E takeLast() throws InterruptedException {
        return delegate().takeLast();
    }

    @Override
    @CheckForNull
    public E pollFirst(long timeout, TimeUnit unit) throws InterruptedException {
        return delegate().pollFirst(timeout, unit);
    }

    @Override
    @CheckForNull
    public E pollLast(long timeout, TimeUnit unit) throws InterruptedException {
        return delegate().pollLast(timeout, unit);
    }

    @Override
    public void put(E e) throws InterruptedException {
        delegate().put(e);
    }

    @Override
    public boolean offer(E e, long timeout, TimeUnit unit) throws InterruptedException {
        return delegate().offer(e, timeout, unit);
    }

    @Override
    public E take() throws InterruptedException {
        return delegate().take();
    }

    @Override
    @CheckForNull
    public E poll(long timeout, TimeUnit unit) throws InterruptedException {
        return delegate().poll(timeout, unit);
    }

    @Override
    public int drainTo(Collection<? super E> c) {
        return delegate().drainTo(c);
    }

    @Override
    public int drainTo(Collection<? super E> c, int maxElements) {
        return delegate().drainTo(c, maxElements);
    }
}
