package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

@ElementTypesAreNonnullByDefault
public final class Comparators {
    private Comparators() {
    }

    public static <T, S extends T> Comparator<Iterable<S>> lexicographical(Comparator<T> comparator) {
        return new LexicographicalOrdering((Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <T> boolean isInOrder(Iterable<? extends T> iterable, Comparator<T> comparator) {
        Preconditions.checkNotNull(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (comparator.compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public static <T> boolean isInStrictOrder(Iterable<? extends T> iterable, Comparator<T> comparator) {
        Preconditions.checkNotNull(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (comparator.compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public static <T> Collector<T, ?, List<T>> least(final int k, final Comparator<? super T> comparator) {
        CollectPreconditions.checkNonnegative(k, JWKParameterNames.OCT_KEY_VALUE);
        Preconditions.checkNotNull(comparator);
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return TopKSelector.least(k, comparator);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((TopKSelector) obj).offer(obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((TopKSelector) obj).combine((TopKSelector) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((TopKSelector) obj).topK();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    public static <T> Collector<T, ?, List<T>> greatest(int k, Comparator<? super T> comparator) {
        return least(k, comparator.reversed());
    }

    public static <T extends Comparable<? super T>> T min(T a, T b) {
        return a.compareTo(b) <= 0 ? a : b;
    }

    @ParametricNullness
    public static <T> T min(@ParametricNullness T a, @ParametricNullness T b, Comparator<? super T> comparator) {
        return comparator.compare(a, b) <= 0 ? a : b;
    }

    public static <T extends Comparable<? super T>> T max(T a, T b) {
        return a.compareTo(b) >= 0 ? a : b;
    }

    @ParametricNullness
    public static <T> T max(@ParametricNullness T a, @ParametricNullness T b, Comparator<? super T> comparator) {
        return comparator.compare(a, b) >= 0 ? a : b;
    }
}
