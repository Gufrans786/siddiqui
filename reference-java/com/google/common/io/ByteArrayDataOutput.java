package com.google.common.io;

import java.io.DataOutput;

@ElementTypesAreNonnullByDefault
public interface ByteArrayDataOutput extends DataOutput {
    byte[] toByteArray();

    @Override
    void write(int b);

    @Override
    void write(byte[] b);

    @Override
    void write(byte[] b, int off, int len);

    @Override
    void writeBoolean(boolean v);

    @Override
    void writeByte(int v);

    @Override
    @Deprecated
    void writeBytes(String s);

    @Override
    void writeChar(int v);

    @Override
    void writeChars(String s);

    @Override
    void writeDouble(double v);

    @Override
    void writeFloat(float v);

    @Override
    void writeInt(int v);

    @Override
    void writeLong(long v);

    @Override
    void writeShort(int v);

    @Override
    void writeUTF(String s);
}
