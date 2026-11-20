package com.github.penfeizhou.animation.io;

import java.io.IOException;
import java.io.InputStream;

public class FilterReader implements Reader {
    protected Reader reader;

    public FilterReader(Reader reader) {
        this.reader = reader;
    }

    @Override
    public long skip(long j) throws IOException {
        return this.reader.skip(j);
    }

    @Override
    public byte peek() throws IOException {
        return this.reader.peek();
    }

    @Override
    public void reset() throws IOException {
        this.reader.reset();
    }

    @Override
    public int position() {
        return this.reader.position();
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.reader.read(bArr, i, i2);
    }

    @Override
    public int available() throws IOException {
        return this.reader.available();
    }

    @Override
    public void close() throws IOException {
        this.reader.close();
    }

    @Override
    public InputStream toInputStream() throws IOException {
        reset();
        return this.reader.toInputStream();
    }
}
