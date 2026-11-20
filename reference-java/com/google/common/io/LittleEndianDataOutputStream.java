package com.google.common.io;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

@ElementTypesAreNonnullByDefault
public final class LittleEndianDataOutputStream extends FilterOutputStream implements DataOutput {
    public LittleEndianDataOutputStream(OutputStream out) {
        super(new DataOutputStream((OutputStream) Preconditions.checkNotNull(out)));
    }

    @Override
    public void write(byte[] b, int off, int len) throws IOException {
        this.out.write(b, off, len);
    }

    @Override
    public void writeBoolean(boolean v) throws IOException {
        ((DataOutputStream) this.out).writeBoolean(v);
    }

    @Override
    public void writeByte(int v) throws IOException {
        ((DataOutputStream) this.out).writeByte(v);
    }

    @Override
    @Deprecated
    public void writeBytes(String s) throws IOException {
        ((DataOutputStream) this.out).writeBytes(s);
    }

    @Override
    public void writeChar(int v) throws IOException {
        writeShort(v);
    }

    @Override
    public void writeChars(String s) throws IOException {
        for (int i = 0; i < s.length(); i++) {
            writeChar(s.charAt(i));
        }
    }

    @Override
    public void writeDouble(double v) throws IOException {
        writeLong(Double.doubleToLongBits(v));
    }

    @Override
    public void writeFloat(float v) throws IOException {
        writeInt(Float.floatToIntBits(v));
    }

    @Override
    public void writeInt(int v) throws IOException {
        this.out.write(v & 255);
        this.out.write((v >> 8) & 255);
        this.out.write((v >> 16) & 255);
        this.out.write((v >> 24) & 255);
    }

    @Override
    public void writeLong(long v) throws IOException {
        byte[] byteArray = Longs.toByteArray(Long.reverseBytes(v));
        write(byteArray, 0, byteArray.length);
    }

    @Override
    public void writeShort(int v) throws IOException {
        this.out.write(v & 255);
        this.out.write((v >> 8) & 255);
    }

    @Override
    public void writeUTF(String str) throws IOException {
        ((DataOutputStream) this.out).writeUTF(str);
    }

    @Override
    public void close() throws IOException {
        this.out.close();
    }
}
