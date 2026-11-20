package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.DoNotMock;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.function.Function;
import java.util.stream.Collector;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public class ImmutableRangeMap<K extends Comparable<?>, V> implements RangeMap<K, V>, Serializable {
    private static final ImmutableRangeMap<Comparable<?>, Object> EMPTY = new ImmutableRangeMap<>(ImmutableList.of(), ImmutableList.of());
    private static final long serialVersionUID = 0;
    private final transient ImmutableList<Range<K>> ranges;
    private final transient ImmutableList<V> values;

    public static <T, K extends Comparable<? super K>, V> Collector<T, ?, ImmutableRangeMap<K, V>> toImmutableRangeMap(Function<? super T, Range<K>> keyFunction, Function<? super T, ? extends V> valueFunction) {
        return CollectCollectors.toImmutableRangeMap(keyFunction, valueFunction);
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of() {
        return (ImmutableRangeMap<K, V>) EMPTY;
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of(Range<K> range, V value) {
        return new ImmutableRangeMap<>(ImmutableList.of(range), ImmutableList.of(value));
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> copyOf(RangeMap<K, ? extends V> rangeMap) {
        if (rangeMap instanceof ImmutableRangeMap) {
            return (ImmutableRangeMap) rangeMap;
        }
        Map<Range<K>, ? extends V> mapAsMapOfRanges = rangeMap.asMapOfRanges();
        ImmutableList.Builder builder = new ImmutableList.Builder(mapAsMapOfRanges.size());
        ImmutableList.Builder builder2 = new ImmutableList.Builder(mapAsMapOfRanges.size());
        for (Map.Entry entry : mapAsMapOfRanges.entrySet()) {
            builder.add((Range) entry.getKey());
            builder2.add(entry.getValue());
        }
        return new ImmutableRangeMap<>(builder.build(), builder2.build());
    }

    public static <K extends Comparable<?>, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    @DoNotMock
    public static final class Builder<K extends Comparable<?>, V> {
        private final List<Map.Entry<Range<K>, V>> entries = Lists.newArrayList();

        public Builder<K, V> put(Range<K> range, V value) {
            Preconditions.checkNotNull(range);
            Preconditions.checkNotNull(value);
            Preconditions.checkArgument(!range.isEmpty(), "Range must not be empty, but was %s", range);
            this.entries.add(Maps.immutableEntry(range, value));
            return this;
        }

        public Builder<K, V> putAll(RangeMap<K, ? extends V> rangeMap) {
            for (Map.Entry entry : rangeMap.asMapOfRanges().entrySet()) {
                put((Range) entry.getKey(), entry.getValue());
            }
            return this;
        }

        Builder<K, V> combine(Builder<K, V> builder) {
            this.entries.addAll(builder.entries);
            return this;
        }

        public ImmutableRangeMap<K, V> build() {
            Collections.sort(this.entries, Range.rangeLexOrdering().onKeys());
            ImmutableList.Builder builder = new ImmutableList.Builder(this.entries.size());
            ImmutableList.Builder builder2 = new ImmutableList.Builder(this.entries.size());
            for (int i = 0; i < this.entries.size(); i++) {
                Range<K> key = this.entries.get(i).getKey();
                if (i > 0) {
                    Range<K> key2 = this.entries.get(i - 1).getKey();
                    if (key.isConnected(key2) && !key.intersection(key2).isEmpty()) {
                        throw new IllegalArgumentException("Overlapping ranges: range " + key2 + " overlaps with entry " + key);
                    }
                }
                builder.add(key);
                builder2.add(this.entries.get(i).getValue());
            }
            return new ImmutableRangeMap<>(builder.build(), builder2.build());
        }
    }

    ImmutableRangeMap(ImmutableList<Range<K>> ranges, ImmutableList<V> values) {
        this.ranges = ranges;
        this.values = values;
    }

    @Override
    @CheckForNull
    public V get(K key) {
        int iBinarySearch = SortedLists.binarySearch(this.ranges, new ImmutableRangeMap$$ExternalSyntheticLambda1(), Cut.belowValue(key), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (iBinarySearch != -1 && this.ranges.get(iBinarySearch).contains(key)) {
            return this.values.get(iBinarySearch);
        }
        return null;
    }

    @Override
    @CheckForNull
    public Map.Entry<Range<K>, V> getEntry(K key) {
        int iBinarySearch = SortedLists.binarySearch(this.ranges, new ImmutableRangeMap$$ExternalSyntheticLambda1(), Cut.belowValue(key), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (iBinarySearch == -1) {
            return null;
        }
        Range<K> range = this.ranges.get(iBinarySearch);
        if (range.contains(key)) {
            return Maps.immutableEntry(range, this.values.get(iBinarySearch));
        }
        return null;
    }

    @Override
    public Range<K> span() {
        if (this.ranges.isEmpty()) {
            throw new NoSuchElementException();
        }
        Range<K> range = this.ranges.get(0);
        ImmutableList<Range<K>> immutableList = this.ranges;
        return Range.create(range.lowerBound, immutableList.get(immutableList.size() - 1).upperBound);
    }

    @Override
    @Deprecated
    public final void put(Range<K> range, V value) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void putCoalescing(Range<K> range, V value) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void putAll(RangeMap<K, ? extends V> rangeMap) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void remove(Range<K> range) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ImmutableMap<Range<K>, V> asMapOfRanges() {
        if (this.ranges.isEmpty()) {
            return ImmutableMap.of();
        }
        return new ImmutableSortedMap(new RegularImmutableSortedSet(this.ranges, Range.rangeLexOrdering()), this.values);
    }

    @Override
    public ImmutableMap<Range<K>, V> asDescendingMapOfRanges() {
        if (this.ranges.isEmpty()) {
            return ImmutableMap.of();
        }
        return new ImmutableSortedMap(new RegularImmutableSortedSet(this.ranges.reverse(), Range.rangeLexOrdering().reverse()), this.values.reverse());
    }

    @Override
    public ImmutableRangeMap<K, V> subRangeMap(final Range<K> range) {
        if (((Range) Preconditions.checkNotNull(range)).isEmpty()) {
            return of();
        }
        if (this.ranges.isEmpty() || range.encloses(span())) {
            return this;
        }
        final int iBinarySearch = SortedLists.binarySearch(this.ranges, new ImmutableRangeMap$$ExternalSyntheticLambda0(), range.lowerBound, SortedLists.KeyPresentBehavior.FIRST_AFTER, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        int iBinarySearch2 = SortedLists.binarySearch(this.ranges, new ImmutableRangeMap$$ExternalSyntheticLambda1(), range.upperBound, SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        if (iBinarySearch >= iBinarySearch2) {
            return of();
        }
        final int i = iBinarySearch2 - iBinarySearch;
        return (ImmutableRangeMap<K, V>) new ImmutableRangeMap<K, V>(this, new ImmutableList<Range<K>>(this) {
            final ImmutableRangeMap this$0;

            @Override
            boolean isPartialView() {
                return true;
            }

            {
                this.this$0 = this;
            }

            @Override
            public int size() {
                return i;
            }

            @Override
            public Range<K> get(int index) {
                Preconditions.checkElementIndex(index, i);
                return (index == 0 || index == i + (-1)) ? ((Range) this.this$0.ranges.get(index + iBinarySearch)).intersection(range) : (Range) this.this$0.ranges.get(index + iBinarySearch);
            }

            @Override
            Object writeReplace() {
                return super.writeReplace();
            }
        }, this.values.subList(iBinarySearch, iBinarySearch2)) {
            final ImmutableRangeMap this$0;

            {
                this.this$0 = this;
            }

            @Override
            public Map asDescendingMapOfRanges() {
                return super.asDescendingMapOfRanges();
            }

            @Override
            public Map asMapOfRanges() {
                return super.asMapOfRanges();
            }

            @Override
            public ImmutableRangeMap<K, V> subRangeMap(Range<K> subRange) {
                if (range.isConnected(subRange)) {
                    return this.subRangeMap((Range) subRange.intersection(range));
                }
                return ImmutableRangeMap.of();
            }

            @Override
            Object writeReplace() {
                return super.writeReplace();
            }
        };
    }

    @Override
    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Override
    public boolean equals(@CheckForNull Object o) {
        if (o instanceof RangeMap) {
            return asMapOfRanges().equals(((RangeMap) o).asMapOfRanges());
        }
        return false;
    }

    @Override
    public String toString() {
        return asMapOfRanges().toString();
    }

    private static class SerializedForm<K extends Comparable<?>, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableMap<Range<K>, V> mapOfRanges;

        SerializedForm(ImmutableMap<Range<K>, V> mapOfRanges) {
            this.mapOfRanges = mapOfRanges;
        }

        Object readResolve() {
            if (this.mapOfRanges.isEmpty()) {
                return ImmutableRangeMap.of();
            }
            return createRangeMap();
        }

        Object createRangeMap() {
            Builder builder = new Builder();
            UnmodifiableIterator<Map.Entry<Range<K>, V>> it = this.mapOfRanges.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Range<K>, V> next = it.next();
                builder.put(next.getKey(), next.getValue());
            }
            return builder.build();
        }
    }

    Object writeReplace() {
        return new SerializedForm(asMapOfRanges());
    }

    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }
}
