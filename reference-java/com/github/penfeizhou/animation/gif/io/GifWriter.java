package com.github.penfeizhou.animation.gif.io;

import androidx.work.Data;
import com.github.penfeizhou.animation.io.Writer;
import java.nio.IntBuffer;

public class GifWriter implements Writer {
    protected IntBuffer intBuffer;

    @Override
    public void close() {
    }

    @Override
    public void putByte(byte b) {
    }

    @Override
    public void putBytes(byte[] bArr) {
    }

    @Override
    public byte[] toByteArray() {
        return null;
    }

    public GifWriter() {
        reset(Data.MAX_DATA_BYTES);
    }

    @Override
    public int position() {
        return this.intBuffer.position();
    }

    @Override
    public void skip(int i) {
        this.intBuffer.position(i + position());
    }

    @Override
    public void reset(int i) {
        IntBuffer intBuffer = this.intBuffer;
        if (intBuffer == null || i > intBuffer.capacity()) {
            this.intBuffer = IntBuffer.allocate(i);
        }
        this.intBuffer.clear();
        this.intBuffer.limit(i);
        this.intBuffer.position(0);
    }

    public int[] asIntArray() {
        return this.intBuffer.array();
    }

    public IntBuffer asBuffer() {
        return this.intBuffer;
    }
}
