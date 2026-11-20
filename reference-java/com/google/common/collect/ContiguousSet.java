package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Objects;

@ElementTypesAreNonnullByDefault
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {
    final DiscreteDomain<C> domain;

    @Override
    public abstract ContiguousSet<C> headSetImpl(C toElement, boolean inclusive);

    public abstract ContiguousSet<C> intersection(ContiguousSet<C> other);

    public abstract Range<C> range();

    public abstract Range<C> range(BoundType lowerBoundType, BoundType upperBoundType);

    @Override
    public abstract ContiguousSet<C> subSetImpl(C fromElement, boolean fromInclusive, C toElement, boolean toInclusive);

    @Override
    public abstract ContiguousSet<C> tailSetImpl(C fromElement, boolean inclusive);

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, DiscreteDomain<C> domain) {
        Preconditions.checkNotNull(range);
        Preconditions.checkNotNull(domain);
        try {
            Range<C> rangeIntersection = !range.hasLowerBound() ? range.intersection(Range.atLeast(domain.minValue())) : range;
            if (!range.hasUpperBound()) {
                rangeIntersection = rangeIntersection.intersection(Range.atMost(domain.maxValue()));
            }
            if (rangeIntersection.isEmpty() || Range.compareOrThrow((Comparable) Objects.requireNonNull(range.lowerBound.leastValueAbove(domain)), (Comparable) Objects.requireNonNull(range.upperBound.greatestValueBelow(domain))) > 0) {
                return new EmptyContiguousSet(domain);
            }
            return new RegularContiguousSet(rangeIntersection, domain);
        } catch (NoSuchElementException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static ContiguousSet<Integer> closed(int lower, int upper) {
        return create(Range.closed(Integer.valueOf(lower), Integer.valueOf(upper)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Long> closed(long lower, long upper) {
        return create(Range.closed(Long.valueOf(lower), Long.valueOf(upper)), DiscreteDomain.longs());
    }

    public static ContiguousSet<Integer> closedOpen(int lower, int upper) {
        return create(Range.closedOpen(Integer.valueOf(lower), Integer.valueOf(upper)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Long> closedOpen(long lower, long upper) {
        return create(Range.closedOpen(Long.valueOf(lower), Long.valueOf(upper)), DiscreteDomain.longs());
    }

    ContiguousSet(DiscreteDomain<C> domain) {
        super(Ordering.natural());
        this.domain = domain;
    }

    @Override
    public ContiguousSet<C> headSet(C toElement) {
        return headSetImpl((Comparable) Preconditions.checkNotNull(toElement), false);
    }

    @Override
    public ContiguousSet<C> headSet(C toElement, boolean inclusive) {
        return headSetImpl((Comparable) Preconditions.checkNotNull(toElement), inclusive);
    }

    @Override
    public ContiguousSet<C> subSet(C fromElement, C toElement) {
        Preconditions.checkNotNull(fromElement);
        Preconditions.checkNotNull(toElement);
        Preconditions.checkArgument(comparator().compare(fromElement, toElement) <= 0);
        return subSetImpl((Comparable) fromElement, true, (Comparable) toElement, false);
    }

    @Override
    public ContiguousSet<C> subSet(C fromElement, boolean fromInclusive, C toElement, boolean toInclusive) {
        Preconditions.checkNotNull(fromElement);
        Preconditions.checkNotNull(toElement);
        Preconditions.checkArgument(comparator().compare(fromElement, toElement) <= 0);
        return subSetImpl((Comparable) fromElement, fromInclusive, (Comparable) toElement, toInclusive);
    }

    @Override
    public ContiguousSet<C> tailSet(C fromElement) {
        return tailSetImpl((Comparable) Preconditions.checkNotNull(fromElement), true);
    }

    @Override
    public ContiguousSet<C> tailSet(C fromElement, boolean inclusive) {
        return tailSetImpl((Comparable) Preconditions.checkNotNull(fromElement), inclusive);
    }

    @Override
    ImmutableSortedSet<C> createDescendingSet() {
        return new DescendingImmutableSortedSet(this);
    }

    @Override
    public String toString() {
        return range().toString();
    }

    @Deprecated
    public static <E> ImmutableSortedSet.Builder<E> builder() {
        throw new UnsupportedOperationException();
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }
}
