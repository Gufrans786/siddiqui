package io.grpc.internal;

import java.nio.ByteBuffer;

public abstract class AbstractReadableBuffer implements ReadableBuffer {
    @Override
    public boolean byteBufferSupported() {
        return false;
    }

    @Override
    public void close() {
    }

    @Override
    public boolean hasArray() {
        return false;
    }

    @Override
    public void mark() {
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    @Override
    public final int readInt() {
        checkReadable(4);
        return (readUnsignedByte() << 24) | (readUnsignedByte() << 16) | (readUnsignedByte() << 8) | readUnsignedByte();
    }

    @Override
    public byte[] array() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int arrayOffset() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void reset() {
        throw new UnsupportedOperationException();
    }

    @Override
    public ByteBuffer getByteBuffer() {
        throw new UnsupportedOperationException();
    }

    protected final void checkReadable(int i) {
        if (readableBytes() < i) {
            throw new IndexOutOfBoundsException();
        }
    }
}
