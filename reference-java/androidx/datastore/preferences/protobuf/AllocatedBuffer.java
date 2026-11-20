package androidx.datastore.preferences.protobuf;

import java.nio.ByteBuffer;

@CheckReturnValue
abstract class AllocatedBuffer {
    public abstract byte[] array();

    public abstract int arrayOffset();

    public abstract boolean hasArray();

    public abstract boolean hasNioBuffer();

    public abstract int limit();

    public abstract ByteBuffer nioBuffer();

    public abstract int position();

    public abstract AllocatedBuffer position(int position);

    public abstract int remaining();

    AllocatedBuffer() {
    }

    public static AllocatedBuffer wrap(byte[] bytes) {
        return wrapNoCheck(bytes, 0, bytes.length);
    }

    public static AllocatedBuffer wrap(final byte[] bytes, final int offset, final int length) {
        if (offset < 0 || length < 0 || offset + length > bytes.length) {
            throw new IndexOutOfBoundsException(String.format("bytes.length=%d, offset=%d, length=%d", Integer.valueOf(bytes.length), Integer.valueOf(offset), Integer.valueOf(length)));
        }
        return wrapNoCheck(bytes, offset, length);
    }

    public static AllocatedBuffer wrap(final ByteBuffer buffer) {
        Internal.checkNotNull(buffer, "buffer");
        return new AllocatedBuffer() {
            @Override
            public boolean hasNioBuffer() {
                return true;
            }

            @Override
            public ByteBuffer nioBuffer() {
                return buffer;
            }

            @Override
            public boolean hasArray() {
                return buffer.hasArray();
            }

            @Override
            public byte[] array() {
                return buffer.array();
            }

            @Override
            public int arrayOffset() {
                return buffer.arrayOffset();
            }

            @Override
            public int position() {
                return buffer.position();
            }

            @Override
            public AllocatedBuffer position(int position) {
                Java8Compatibility.position(buffer, position);
                return this;
            }

            @Override
            public int limit() {
                return buffer.limit();
            }

            @Override
            public int remaining() {
                return buffer.remaining();
            }
        };
    }

    private static AllocatedBuffer wrapNoCheck(final byte[] bytes, final int offset, final int length) {
        return new AllocatedBuffer() {
            private int position;

            @Override
            public boolean hasArray() {
                return true;
            }

            @Override
            public boolean hasNioBuffer() {
                return false;
            }

            @Override
            public ByteBuffer nioBuffer() {
                throw new UnsupportedOperationException();
            }

            @Override
            public byte[] array() {
                return bytes;
            }

            @Override
            public int arrayOffset() {
                return offset;
            }

            @Override
            public int position() {
                return this.position;
            }

            @Override
            public AllocatedBuffer position(int position) {
                if (position < 0 || position > length) {
                    throw new IllegalArgumentException("Invalid position: " + position);
                }
                this.position = position;
                return this;
            }

            @Override
            public int limit() {
                return length;
            }

            @Override
            public int remaining() {
                return length - this.position;
            }
        };
    }
}
