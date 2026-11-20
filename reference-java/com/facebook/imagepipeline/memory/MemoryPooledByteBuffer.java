package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.Preconditions;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

public class MemoryPooledByteBuffer implements PooledByteBuffer {

    @Nullable
    CloseableReference<MemoryChunk> mBufRef;
    private final int mSize;

    public MemoryPooledByteBuffer(CloseableReference<MemoryChunk> closeableReference, int i) {
        Preconditions.checkNotNull(closeableReference);
        Preconditions.checkArgument(Boolean.valueOf(i >= 0 && i <= closeableReference.get().getSize()));
        this.mBufRef = closeableReference.mo232clone();
        this.mSize = i;
    }

    @Override
    public synchronized int size() {
        ensureValid();
        return this.mSize;
    }

    @Override
    public synchronized byte read(int i) {
        ensureValid();
        boolean z = true;
        Preconditions.checkArgument(Boolean.valueOf(i >= 0));
        if (i >= this.mSize) {
            z = false;
        }
        Preconditions.checkArgument(Boolean.valueOf(z));
        Preconditions.checkNotNull(this.mBufRef);
        return this.mBufRef.get().read(i);
    }

    @Override
    public synchronized int read(int i, byte[] bArr, int i2, int i3) {
        ensureValid();
        Preconditions.checkArgument(Boolean.valueOf(i + i3 <= this.mSize));
        Preconditions.checkNotNull(this.mBufRef);
        return this.mBufRef.get().read(i, bArr, i2, i3);
    }

    @Override
    public synchronized long getNativePtr() throws UnsupportedOperationException {
        ensureValid();
        Preconditions.checkNotNull(this.mBufRef);
        return this.mBufRef.get().getNativePtr();
    }

    @Override
    @Nullable
    public synchronized ByteBuffer getByteBuffer() {
        Preconditions.checkNotNull(this.mBufRef);
        return this.mBufRef.get().getByteBuffer();
    }

    @Override
    public synchronized boolean isClosed() {
        return !CloseableReference.isValid(this.mBufRef);
    }

    @Override
    public synchronized void close() {
        CloseableReference.closeSafely(this.mBufRef);
        this.mBufRef = null;
    }

    synchronized void ensureValid() {
        if (isClosed()) {
            throw new PooledByteBuffer.ClosedException();
        }
    }

    @Nullable
    CloseableReference<MemoryChunk> getCloseableReference() {
        return this.mBufRef;
    }
}
