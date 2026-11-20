package com.google.common.io;

import java.io.DataInput;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public interface ByteArrayDataInput extends DataInput {
    @Override
    boolean readBoolean();

    @Override
    byte readByte();

    @Override
    char readChar();

    @Override
    double readDouble();

    @Override
    float readFloat();

    @Override
    void readFully(byte[] b);

    @Override
    void readFully(byte[] b, int off, int len);

    @Override
    int readInt();

    @Override
    @CheckForNull
    String readLine();

    @Override
    long readLong();

    @Override
    short readShort();

    @Override
    String readUTF();

    @Override
    int readUnsignedByte();

    @Override
    int readUnsignedShort();

    @Override
    int skipBytes(int n2);
}
