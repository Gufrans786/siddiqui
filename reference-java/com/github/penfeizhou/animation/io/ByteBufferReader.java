package com.github.penfeizhou.animation.io;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class ByteBufferReader implements Reader {
    protected final ByteBuffer byteBuffer;

    @Override
    public void close() throws IOException {
    }

    public ByteBufferReader(ByteBuffer byteBuffer) {
        this.byteBuffer = byteBuffer;
        byteBuffer.position(0);
    }

    @Override
    public long skip(long j) throws IOException {
        ByteBuffer byteBuffer = this.byteBuffer;
        byteBuffer.position((int) (((long) byteBuffer.position()) + j));
        return j;
    }

    @Override
    public byte peek() throws IOException {
        return this.byteBuffer.get();
    }

    @Override
    public void reset() throws IOException {
        this.byteBuffer.position(0);
    }

    @Override
    public int position() {
        return this.byteBuffer.position();
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        this.byteBuffer.get(bArr, i, i2);
        return i2;
    }

    @Override
    public int available() throws IOException {
        return this.byteBuffer.limit() - this.byteBuffer.position();
    }

    @Override
    public InputStream toInputStream() throws IOException {
        return new ByteArrayInputStream(this.byteBuffer.array());
    }

    public ByteBuffer getByteBuffer() {
        return this.byteBuffer;
    }
}
