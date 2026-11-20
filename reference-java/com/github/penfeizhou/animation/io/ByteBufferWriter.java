package com.github.penfeizhou.animation.io;

import androidx.work.Data;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class ByteBufferWriter implements Writer {
    protected ByteBuffer byteBuffer;

    @Override
    public void close() {
    }

    public ByteBufferWriter() {
        reset(Data.MAX_DATA_BYTES);
    }

    @Override
    public void putByte(byte b) {
        this.byteBuffer.put(b);
    }

    @Override
    public void putBytes(byte[] bArr) {
        this.byteBuffer.put(bArr);
    }

    @Override
    public int position() {
        return this.byteBuffer.position();
    }

    @Override
    public void skip(int i) {
        this.byteBuffer.position(i + position());
    }

    @Override
    public byte[] toByteArray() {
        return this.byteBuffer.array();
    }

    @Override
    public void reset(int i) {
        ByteBuffer byteBuffer = this.byteBuffer;
        if (byteBuffer == null || i > byteBuffer.capacity()) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
            this.byteBuffer = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        }
        this.byteBuffer.clear();
    }
}
