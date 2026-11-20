package io.reactivex.internal.util;

import io.reactivex.functions.BiFunction;
import java.util.Comparator;
import java.util.List;

public final class MergerBiFunction<T> implements BiFunction<List<T>, List<T>, List<T>> {
    final Comparator<? super T> comparator;

    public MergerBiFunction(Comparator<? super T> comparator) {
        this.comparator = comparator;
    }

    @Override
    public java.util.List<T> apply(java.util.List<T> r6, java.util.List<T> r7) throws java.lang.Exception {
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.MergerBiFunction.apply(java.util.List, java.util.List):java.util.List");
    }
}
