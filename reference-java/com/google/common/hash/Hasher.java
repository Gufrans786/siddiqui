package com.google.common.hash;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@ElementTypesAreNonnullByDefault
public interface Hasher extends PrimitiveSink {
    HashCode hash();

    @Deprecated
    int hashCode();

    @Override
    Hasher putBoolean(boolean b);

    @Override
    Hasher putByte(byte b);

    @Override
    Hasher putBytes(ByteBuffer bytes);

    @Override
    Hasher putBytes(byte[] bytes);

    @Override
    Hasher putBytes(byte[] bytes, int off, int len);

    @Override
    Hasher putChar(char c);

    @Override
    Hasher putDouble(double d);

    @Override
    Hasher putFloat(float f);

    @Override
    Hasher putInt(int i);

    @Override
    Hasher putLong(long l);

    <T> Hasher putObject(@ParametricNullness T instance, Funnel<? super T> funnel);

    @Override
    Hasher putShort(short s);

    @Override
    Hasher putString(CharSequence charSequence, Charset charset);

    @Override
    Hasher putUnencodedChars(CharSequence charSequence);
}
