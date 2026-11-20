package com.google.common.cache;

@ElementTypesAreNonnullByDefault
interface LongAddable {
    void add(long x);

    void increment();

    long sum();
}
