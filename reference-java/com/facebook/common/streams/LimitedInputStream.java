package com.facebook.common.streams;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class LimitedInputStream extends FilterInputStream {
    private int mBytesToRead;
    private int mBytesToReadWhenMarked;

    public LimitedInputStream(InputStream inputStream, int i) {
        super(inputStream);
        inputStream.getClass();
        if (i < 0) {
            throw new IllegalArgumentException("limit must be >= 0");
        }
        this.mBytesToRead = i;
        this.mBytesToReadWhenMarked = -1;
    }

    @Override
    public int read() throws IOException {
        if (this.mBytesToRead == 0) {
            return -1;
        }
        int i = this.in.read();
        if (i != -1) {
            this.mBytesToRead--;
        }
        return i;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.mBytesToRead;
        if (i3 == 0) {
            return -1;
        }
        int i4 = this.in.read(bArr, i, Math.min(i2, i3));
        if (i4 > 0) {
            this.mBytesToRead -= i4;
        }
        return i4;
    }

    @Override
    public long skip(long j) throws IOException {
        long jSkip = this.in.skip(Math.min(j, this.mBytesToRead));
        this.mBytesToRead = (int) (((long) this.mBytesToRead) - jSkip);
        return jSkip;
    }

    @Override
    public int available() throws IOException {
        return Math.min(this.in.available(), this.mBytesToRead);
    }

    @Override
    public void mark(int i) {
        if (this.in.markSupported()) {
            this.in.mark(i);
            this.mBytesToReadWhenMarked = this.mBytesToRead;
        }
    }

    @Override
    public void reset() throws IOException {
        if (!this.in.markSupported()) {
            throw new IOException("mark is not supported");
        }
        if (this.mBytesToReadWhenMarked == -1) {
            throw new IOException("mark not set");
        }
        this.in.reset();
        this.mBytesToRead = this.mBytesToReadWhenMarked;
    }
}
