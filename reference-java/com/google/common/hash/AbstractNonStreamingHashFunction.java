package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;

@Immutable
@ElementTypesAreNonnullByDefault
abstract class AbstractNonStreamingHashFunction extends AbstractHashFunction {
    @Override
    public abstract HashCode hashBytes(byte[] input, int off, int len);

    AbstractNonStreamingHashFunction() {
    }

    @Override
    public Hasher newHasher() {
        return newHasher(32);
    }

    @Override
    public Hasher newHasher(int expectedInputSize) {
        Preconditions.checkArgument(expectedInputSize >= 0);
        return new BufferingHasher(expectedInputSize);
    }

    @Override
    public HashCode hashInt(int input) {
        return hashBytes(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(input).array());
    }

    @Override
    public HashCode hashLong(long input) {
        return hashBytes(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(input).array());
    }

    @Override
    public HashCode hashUnencodedChars(CharSequence input) {
        int length = input.length();
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(length * 2).order(ByteOrder.LITTLE_ENDIAN);
        for (int i = 0; i < length; i++) {
            byteBufferOrder.putChar(input.charAt(i));
        }
        return hashBytes(byteBufferOrder.array());
    }

    @Override
    public HashCode hashString(CharSequence input, Charset charset) {
        return hashBytes(input.toString().getBytes(charset));
    }

    @Override
    public HashCode hashBytes(ByteBuffer input) {
        return newHasher(input.remaining()).putBytes(input).hash();
    }

    private final class BufferingHasher extends AbstractHasher {
        final ExposedByteArrayOutputStream stream;

        BufferingHasher(int expectedInputSize) {
            this.stream = new ExposedByteArrayOutputStream(expectedInputSize);
        }

        @Override
        public Hasher putByte(byte b) {
            this.stream.write(b);
            return this;
        }

        @Override
        public Hasher putBytes(byte[] bytes, int off, int len) {
            this.stream.write(bytes, off, len);
            return this;
        }

        @Override
        public Hasher putBytes(ByteBuffer bytes) {
            this.stream.write(bytes);
            return this;
        }

        @Override
        public HashCode hash() {
            return AbstractNonStreamingHashFunction.this.hashBytes(this.stream.byteArray(), 0, this.stream.length());
        }
    }

    private static final class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        ExposedByteArrayOutputStream(int expectedInputSize) {
            super(expectedInputSize);
        }

        void write(ByteBuffer input) {
            int iRemaining = input.remaining();
            if (this.count + iRemaining > this.buf.length) {
                this.buf = Arrays.copyOf(this.buf, this.count + iRemaining);
            }
            input.get(this.buf, this.count, iRemaining);
            this.count += iRemaining;
        }

        byte[] byteArray() {
            return this.buf;
        }

        int length() {
            return this.count;
        }
    }
}
