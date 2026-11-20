package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public interface SortedMultiset<E> extends SortedMultisetBridge<E>, SortedIterable<E> {
    Comparator<? super E> comparator();

    SortedMultiset<E> descendingMultiset();

    @Override
    NavigableSet<E> elementSet();

    @Override
    Set<Multiset.Entry<E>> entrySet();

    @CheckForNull
    Multiset.Entry<E> firstEntry();

    SortedMultiset<E> headMultiset(@ParametricNullness E upperBound, BoundType boundType);

    @Override
    Iterator<E> iterator();

    @CheckForNull
    Multiset.Entry<E> lastEntry();

    @CheckForNull
    Multiset.Entry<E> pollFirstEntry();

    @CheckForNull
    Multiset.Entry<E> pollLastEntry();

    SortedMultiset<E> subMultiset(@ParametricNullness E lowerBound, BoundType lowerBoundType, @ParametricNullness E upperBound, BoundType upperBoundType);

    SortedMultiset<E> tailMultiset(@ParametricNullness E lowerBound, BoundType boundType);
}
