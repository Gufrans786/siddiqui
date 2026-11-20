package com.facebook.imagepipeline.cache;

import com.facebook.common.internal.Predicate;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.references.CloseableReference;
import javax.annotation.Nullable;

public class InstrumentedMemoryCache<K, V> implements MemoryCache<K, V> {
    private final MemoryCache<K, V> mDelegate;
    private final MemoryCacheTracker mTracker;

    public InstrumentedMemoryCache(MemoryCache<K, V> memoryCache, MemoryCacheTracker memoryCacheTracker) {
        this.mDelegate = memoryCache;
        this.mTracker = memoryCacheTracker;
    }

    @Override
    @Nullable
    public CloseableReference<V> get(K k) {
        CloseableReference<V> closeableReference = this.mDelegate.get(k);
        if (closeableReference == null) {
            this.mTracker.onCacheMiss(k);
            return closeableReference;
        }
        this.mTracker.onCacheHit(k);
        return closeableReference;
    }

    @Override
    @Nullable
    public V inspect(K k) {
        return this.mDelegate.inspect(k);
    }

    @Override
    public void probe(K k) {
        this.mDelegate.probe(k);
    }

    @Override
    @Nullable
    public CloseableReference<V> cache(K k, CloseableReference<V> closeableReference) {
        this.mTracker.onCachePut(k);
        return this.mDelegate.cache(k, closeableReference);
    }

    @Override
    public int removeAll(Predicate<K> predicate) {
        return this.mDelegate.removeAll(predicate);
    }

    @Override
    public boolean contains(Predicate<K> predicate) {
        return this.mDelegate.contains((Predicate) predicate);
    }

    @Override
    public boolean contains(K k) {
        return this.mDelegate.contains(k);
    }

    @Override
    public int getCount() {
        return this.mDelegate.getCount();
    }

    @Override
    public int getSizeInBytes() {
        return this.mDelegate.getSizeInBytes();
    }

    @Override
    public void trim(MemoryTrimType memoryTrimType) {
        this.mDelegate.trim(memoryTrimType);
    }

    @Override
    @Nullable
    public String getDebugData() {
        return this.mDelegate.getDebugData();
    }
}
