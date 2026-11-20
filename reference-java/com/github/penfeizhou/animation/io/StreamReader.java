package com.github.penfeizhou.animation.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class StreamReader extends FilterInputStream implements Reader {
    private int position;

    @Override
    public InputStream toInputStream() throws IOException {
        return this;
    }

    public StreamReader(InputStream inputStream) {
        super(inputStream);
        try {
            inputStream.reset();
        } catch (IOException unused) {
        }
    }

    @Override
    public byte peek() throws IOException {
        byte b = (byte) read();
        this.position++;
        return b;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = super.read(bArr, i, i2);
        this.position += Math.max(0, i3);
        return i3;
    }

    @Override
    public synchronized void reset() throws IOException {
        super.reset();
        this.position = 0;
    }

    @Override
    public long skip(long j) throws IOException {
        long j2 = j;
        while (j2 > 0) {
            long jSkip = super.skip(j2);
            if (jSkip > 0) {
                j2 -= jSkip;
            } else {
                if (super.read() == -1) {
                    break;
                }
                j2--;
            }
        }
        long j3 = j - j2;
        this.position = (int) (((long) this.position) + j3);
        return j3;
    }

    @Override
    public int position() {
        return this.position;
    }
}
