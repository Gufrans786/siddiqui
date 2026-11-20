package com.google.common.hash;

@ElementTypesAreNonnullByDefault
interface LongAddable {
    void add(long x);

    void increment();

    long sum();
}
