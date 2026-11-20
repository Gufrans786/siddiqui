package com.mapbox.common;

import java.util.concurrent.atomic.AtomicLong;

class IdGenerator {
    private static final AtomicLong counter = new AtomicLong();

    IdGenerator() {
    }

    public static long getNewId() {
        return counter.incrementAndGet();
    }
}
