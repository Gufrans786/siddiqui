package com.facebook.imagepipeline.memory;

import android.util.Log;
import com.facebook.common.internal.Preconditions;
import com.facebook.imagepipeline.nativecode.ImagePipelineNativeLoader;
import com.facebook.soloader.nativeloader.NativeLoader;
import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

public class NativeMemoryChunk implements MemoryChunk, Closeable {
    private static final String TAG = "NativeMemoryChunk";
    private boolean mIsClosed;
    private final long mNativePtr;
    private final int mSize;

    private static native long nativeAllocate(int i);

    private static native void nativeCopyFromByteArray(long j, byte[] bArr, int i, int i2);

    private static native void nativeCopyToByteArray(long j, byte[] bArr, int i, int i2);

    private static native void nativeFree(long j);

    private static native void nativeMemcpy(long j, long j2, int i);

    private static native byte nativeReadByte(long j);

    @Override
    @Nullable
    public ByteBuffer getByteBuffer() {
        return null;
    }

    static {
        NativeLoader.loadLibrary(ImagePipelineNativeLoader.DSO_NAME);
    }

    public NativeMemoryChunk(int i) {
        Preconditions.checkArgument(Boolean.valueOf(i > 0));
        this.mSize = i;
        this.mNativePtr = nativeAllocate(i);
        this.mIsClosed = false;
    }

    public NativeMemoryChunk() {
        this.mSize = 0;
        this.mNativePtr = 0L;
        this.mIsClosed = true;
    }

    @Override
    public synchronized void close() {
        if (!this.mIsClosed) {
            this.mIsClosed = true;
            nativeFree(this.mNativePtr);
        }
    }

    @Override
    public synchronized boolean isClosed() {
        return this.mIsClosed;
    }

    @Override
    public int getSize() {
        return this.mSize;
    }

    @Override
    public synchronized int write(int i, byte[] bArr, int i2, int i3) {
        int iAdjustByteCount;
        Preconditions.checkNotNull(bArr);
        Preconditions.checkState(!isClosed());
        iAdjustByteCount = MemoryChunkUtil.adjustByteCount(i, i3, this.mSize);
        MemoryChunkUtil.checkBounds(i, bArr.length, i2, iAdjustByteCount, this.mSize);
        nativeCopyFromByteArray(this.mNativePtr + ((long) i), bArr, i2, iAdjustByteCount);
        return iAdjustByteCount;
    }

    @Override
    public synchronized int read(int i, byte[] bArr, int i2, int i3) {
        int iAdjustByteCount;
        Preconditions.checkNotNull(bArr);
        Preconditions.checkState(!isClosed());
        iAdjustByteCount = MemoryChunkUtil.adjustByteCount(i, i3, this.mSize);
        MemoryChunkUtil.checkBounds(i, bArr.length, i2, iAdjustByteCount, this.mSize);
        nativeCopyToByteArray(this.mNativePtr + ((long) i), bArr, i2, iAdjustByteCount);
        return iAdjustByteCount;
    }

    @Override
    public synchronized byte read(int i) {
        boolean z = true;
        Preconditions.checkState(!isClosed());
        Preconditions.checkArgument(Boolean.valueOf(i >= 0));
        if (i >= this.mSize) {
            z = false;
        }
        Preconditions.checkArgument(Boolean.valueOf(z));
        return nativeReadByte(this.mNativePtr + ((long) i));
    }

    @Override
    public long getNativePtr() {
        return this.mNativePtr;
    }

    @Override
    public long getUniqueId() {
        return this.mNativePtr;
    }

    @Override
    public void copy(int i, MemoryChunk memoryChunk, int i2, int i3) {
        Preconditions.checkNotNull(memoryChunk);
        if (memoryChunk.getUniqueId() == getUniqueId()) {
            Log.w(TAG, "Copying from NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(this)) + " to NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(memoryChunk)) + " which share the same address " + Long.toHexString(this.mNativePtr));
            Preconditions.checkArgument(false);
        }
        if (memoryChunk.getUniqueId() < getUniqueId()) {
            synchronized (memoryChunk) {
                synchronized (this) {
                    doCopy(i, memoryChunk, i2, i3);
                }
            }
        } else {
            synchronized (this) {
                synchronized (memoryChunk) {
                    doCopy(i, memoryChunk, i2, i3);
                }
            }
        }
    }

    private void doCopy(int i, MemoryChunk memoryChunk, int i2, int i3) {
        if (!(memoryChunk instanceof NativeMemoryChunk)) {
            throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
        }
        Preconditions.checkState(!isClosed());
        Preconditions.checkState(!memoryChunk.isClosed());
        MemoryChunkUtil.checkBounds(i, memoryChunk.getSize(), i2, i3, this.mSize);
        nativeMemcpy(memoryChunk.getNativePtr() + ((long) i2), this.mNativePtr + ((long) i), i3);
    }

    protected void finalize() throws Throwable {
        if (isClosed()) {
            return;
        }
        Log.w(TAG, "finalize: Chunk " + Integer.toHexString(System.identityHashCode(this)) + " still active. ");
        try {
            close();
        } finally {
            super.finalize();
        }
    }
}
