package com.google.common.escape;

import java.util.Objects;

@ElementTypesAreNonnullByDefault
final class Platform {
    private static final ThreadLocal<char[]> DEST_TL = new ThreadLocal<char[]>() {
        @Override
        public char[] initialValue() {
            return new char[1024];
        }
    };

    private Platform() {
    }

    static char[] charBufferFromThreadLocal() {
        return (char[]) Objects.requireNonNull(DEST_TL.get());
    }
}
