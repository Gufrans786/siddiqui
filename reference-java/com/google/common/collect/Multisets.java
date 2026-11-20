package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.microsoft.codepush.react.CodePushConstants;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public final class Multisets {
    private Multisets() {
    }

    public static <T, E, M extends Multiset<E>> Collector<T, ?, M> toMultiset(Function<? super T, E> elementFunction, ToIntFunction<? super T> countFunction, Supplier<M> multisetSupplier) {
        return CollectCollectors.toMultiset(elementFunction, countFunction, multisetSupplier);
    }

    public static <E> Multiset<E> unmodifiableMultiset(Multiset<? extends E> multiset) {
        return ((multiset instanceof UnmodifiableMultiset) || (multiset instanceof ImmutableMultiset)) ? multiset : new UnmodifiableMultiset((Multiset) Preconditions.checkNotNull(multiset));
    }

    @Deprecated
    public static <E> Multiset<E> unmodifiableMultiset(ImmutableMultiset<E> multiset) {
        return (Multiset) Preconditions.checkNotNull(multiset);
    }

    static class UnmodifiableMultiset<E> extends ForwardingMultiset<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Multiset<? extends E> delegate;

        @CheckForNull
        @LazyInit
        transient Set<E> elementSet;

        @CheckForNull
        @LazyInit
        transient Set<Multiset.Entry<E>> entrySet;

        UnmodifiableMultiset(Multiset<? extends E> delegate) {
            this.delegate = delegate;
        }

        @Override
        public Multiset<E> delegate() {
            return this.delegate;
        }

        Set<E> createElementSet() {
            return Collections.unmodifiableSet(this.delegate.elementSet());
        }

        @Override
        public Set<E> elementSet() {
            Set<E> set = this.elementSet;
            if (set != null) {
                return set;
            }
            Set<E> setCreateElementSet = createElementSet();
            this.elementSet = setCreateElementSet;
            return setCreateElementSet;
        }

        @Override
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<E>> set = this.entrySet;
            if (set != null) {
                return set;
            }
            Set<Multiset.Entry<E>> setUnmodifiableSet = Collections.unmodifiableSet(this.delegate.entrySet());
            this.entrySet = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override
        public Iterator<E> iterator() {
            return Iterators.unmodifiableIterator(this.delegate.iterator());
        }

        @Override
        public boolean add(@ParametricNullness E element) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int add(@ParametricNullness E element, int occurrences) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> elementsToAdd) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(@CheckForNull Object element) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int remove(@CheckForNull Object element, int occurrences) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> elementsToRemove) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean retainAll(Collection<?> elementsToRetain) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int setCount(@ParametricNullness E element, int count) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean setCount(@ParametricNullness E element, int oldCount, int newCount) {
            throw new UnsupportedOperationException();
        }
    }

    public static <E> SortedMultiset<E> unmodifiableSortedMultiset(SortedMultiset<E> sortedMultiset) {
        return new UnmodifiableSortedMultiset((SortedMultiset) Preconditions.checkNotNull(sortedMultiset));
    }

    public static <E> Multiset.Entry<E> immutableEntry(@ParametricNullness E e, int n2) {
        return new ImmutableEntry(e, n2);
    }

    static class ImmutableEntry<E> extends AbstractEntry<E> implements Serializable {
        private static final long serialVersionUID = 0;
        private final int count;

        @ParametricNullness
        private final E element;

        @CheckForNull
        public ImmutableEntry<E> nextInBucket() {
            return null;
        }

        ImmutableEntry(@ParametricNullness E element, int count) {
            this.element = element;
            this.count = count;
            CollectPreconditions.checkNonnegative(count, CodePushConstants.LATEST_ROLLBACK_COUNT_KEY);
        }

        @Override
        @ParametricNullness
        public final E getElement() {
            return this.element;
        }

        @Override
        public final int getCount() {
            return this.count;
        }
    }

    public static <E> Multiset<E> filter(Multiset<E> unfiltered, Predicate<? super E> predicate) {
        if (unfiltered instanceof FilteredMultiset) {
            FilteredMultiset filteredMultiset = (FilteredMultiset) unfiltered;
            return new FilteredMultiset(filteredMultiset.unfiltered, Predicates.and(filteredMultiset.predicate, predicate));
        }
        return new FilteredMultiset(unfiltered, predicate);
    }

    private static final class FilteredMultiset<E> extends ViewMultiset<E> {
        final Predicate<? super E> predicate;
        final Multiset<E> unfiltered;

        FilteredMultiset(Multiset<E> unfiltered, Predicate<? super E> predicate) {
            super();
            this.unfiltered = (Multiset) Preconditions.checkNotNull(unfiltered);
            this.predicate = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override
        public UnmodifiableIterator<E> iterator() {
            return Iterators.filter(this.unfiltered.iterator(), this.predicate);
        }

        @Override
        Set<E> createElementSet() {
            return Sets.filter(this.unfiltered.elementSet(), this.predicate);
        }

        @Override
        Iterator<E> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override
        Set<Multiset.Entry<E>> createEntrySet() {
            return Sets.filter(this.unfiltered.entrySet(), new Predicate<Multiset.Entry<E>>() {
                @Override
                public boolean apply(Multiset.Entry<E> entry) {
                    return FilteredMultiset.this.predicate.apply(entry.getElement());
                }
            });
        }

        @Override
        Iterator<Multiset.Entry<E>> entryIterator() {
            throw new AssertionError("should never be called");
        }

        @Override
        public int count(@CheckForNull Object element) {
            int iCount = this.unfiltered.count(element);
            if (iCount <= 0 || !this.predicate.apply(element)) {
                return 0;
            }
            return iCount;
        }

        @Override
        public int add(@ParametricNullness E element, int occurrences) {
            Preconditions.checkArgument(this.predicate.apply(element), "Element %s does not match predicate %s", element, this.predicate);
            return this.unfiltered.add(element, occurrences);
        }

        @Override
        public int remove(@CheckForNull Object element, int occurrences) {
            CollectPreconditions.checkNonnegative(occurrences, "occurrences");
            if (occurrences == 0) {
                return count(element);
            }
            if (contains(element)) {
                return this.unfiltered.remove(element, occurrences);
            }
            return 0;
        }
    }

    static int inferDistinctElements(Iterable<?> elements) {
        if (elements instanceof Multiset) {
            return ((Multiset) elements).elementSet().size();
        }
        return 11;
    }

    public static <E> Multiset<E> union(final Multiset<? extends E> multiset1, final Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset1);
        Preconditions.checkNotNull(multiset2);
        return new ViewMultiset<E>() {
            {
                super();
            }

            @Override
            public boolean contains(@CheckForNull Object element) {
                return multiset1.contains(element) || multiset2.contains(element);
            }

            @Override
            public boolean isEmpty() {
                return multiset1.isEmpty() && multiset2.isEmpty();
            }

            @Override
            public int count(@CheckForNull Object element) {
                return Math.max(multiset1.count(element), multiset2.count(element));
            }

            @Override
            Set<E> createElementSet() {
                return Sets.union(multiset1.elementSet(), multiset2.elementSet());
            }

            @Override
            Iterator<E> elementIterator() {
                throw new AssertionError("should never be called");
            }

            @Override
            Iterator<Multiset.Entry<E>> entryIterator() {
                final Iterator<Multiset.Entry<E>> it = multiset1.entrySet().iterator();
                final Iterator<Multiset.Entry<E>> it2 = multiset2.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>(this) {
                    final AnonymousClass1 this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override
                    @CheckForNull
                    public Multiset.Entry<E> computeNext() {
                        if (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            return Multisets.immutableEntry(element, Math.max(entry.getCount(), multiset2.count(element)));
                        }
                        while (it2.hasNext()) {
                            Multiset.Entry entry2 = (Multiset.Entry) it2.next();
                            Object element2 = entry2.getElement();
                            if (!multiset1.contains(element2)) {
                                return Multisets.immutableEntry(element2, entry2.getCount());
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    public static <E> Multiset<E> intersection(final Multiset<E> multiset1, final Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset1);
        Preconditions.checkNotNull(multiset2);
        return new ViewMultiset<E>() {
            {
                super();
            }

            @Override
            public int count(@CheckForNull Object element) {
                int iCount = multiset1.count(element);
                if (iCount == 0) {
                    return 0;
                }
                return Math.min(iCount, multiset2.count(element));
            }

            @Override
            Set<E> createElementSet() {
                return Sets.intersection(multiset1.elementSet(), multiset2.elementSet());
            }

            @Override
            Iterator<E> elementIterator() {
                throw new AssertionError("should never be called");
            }

            @Override
            Iterator<Multiset.Entry<E>> entryIterator() {
                final Iterator<Multiset.Entry<E>> it = multiset1.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>(this) {
                    final AnonymousClass2 this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override
                    @CheckForNull
                    public Multiset.Entry<E> computeNext() {
                        while (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            int iMin = Math.min(entry.getCount(), multiset2.count(element));
                            if (iMin > 0) {
                                return Multisets.immutableEntry(element, iMin);
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    public static <E> Multiset<E> sum(final Multiset<? extends E> multiset1, final Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset1);
        Preconditions.checkNotNull(multiset2);
        return new ViewMultiset<E>() {
            {
                super();
            }

            @Override
            public boolean contains(@CheckForNull Object element) {
                return multiset1.contains(element) || multiset2.contains(element);
            }

            @Override
            public boolean isEmpty() {
                return multiset1.isEmpty() && multiset2.isEmpty();
            }

            @Override
            public int size() {
                return IntMath.saturatedAdd(multiset1.size(), multiset2.size());
            }

            @Override
            public int count(@CheckForNull Object element) {
                return multiset1.count(element) + multiset2.count(element);
            }

            @Override
            Set<E> createElementSet() {
                return Sets.union(multiset1.elementSet(), multiset2.elementSet());
            }

            @Override
            Iterator<E> elementIterator() {
                throw new AssertionError("should never be called");
            }

            @Override
            Iterator<Multiset.Entry<E>> entryIterator() {
                final Iterator<Multiset.Entry<E>> it = multiset1.entrySet().iterator();
                final Iterator<Multiset.Entry<E>> it2 = multiset2.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>(this) {
                    final AnonymousClass3 this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override
                    @CheckForNull
                    public Multiset.Entry<E> computeNext() {
                        if (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            return Multisets.immutableEntry(element, entry.getCount() + multiset2.count(element));
                        }
                        while (it2.hasNext()) {
                            Multiset.Entry entry2 = (Multiset.Entry) it2.next();
                            Object element2 = entry2.getElement();
                            if (!multiset1.contains(element2)) {
                                return Multisets.immutableEntry(element2, entry2.getCount());
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    public static <E> Multiset<E> difference(final Multiset<E> multiset1, final Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset1);
        Preconditions.checkNotNull(multiset2);
        return new ViewMultiset<E>() {
            {
                super();
            }

            @Override
            public int count(@CheckForNull Object element) {
                int iCount = multiset1.count(element);
                if (iCount == 0) {
                    return 0;
                }
                return Math.max(0, iCount - multiset2.count(element));
            }

            @Override
            public void clear() {
                throw new UnsupportedOperationException();
            }

            @Override
            Iterator<E> elementIterator() {
                final Iterator<Multiset.Entry<E>> it = multiset1.entrySet().iterator();
                return new AbstractIterator<E>(this) {
                    final AnonymousClass4 this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override
                    @CheckForNull
                    protected E computeNext() {
                        while (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            E e = (E) entry.getElement();
                            if (entry.getCount() > multiset2.count(e)) {
                                return e;
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override
            Iterator<Multiset.Entry<E>> entryIterator() {
                final Iterator<Multiset.Entry<E>> it = multiset1.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>(this) {
                    final AnonymousClass4 this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override
                    @CheckForNull
                    public Multiset.Entry<E> computeNext() {
                        while (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            int count = entry.getCount() - multiset2.count(element);
                            if (count > 0) {
                                return Multisets.immutableEntry(element, count);
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override
            int distinctElements() {
                return Iterators.size(entryIterator());
            }
        };
    }

    public static boolean containsOccurrences(Multiset<?> superMultiset, Multiset<?> subMultiset) {
        Preconditions.checkNotNull(superMultiset);
        Preconditions.checkNotNull(subMultiset);
        for (Multiset.Entry<?> entry : subMultiset.entrySet()) {
            if (superMultiset.count(entry.getElement()) < entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    public static boolean retainOccurrences(Multiset<?> multisetToModify, Multiset<?> multisetToRetain) {
        return retainOccurrencesImpl(multisetToModify, multisetToRetain);
    }

    private static <E> boolean retainOccurrencesImpl(Multiset<E> multisetToModify, Multiset<?> occurrencesToRetain) {
        Preconditions.checkNotNull(multisetToModify);
        Preconditions.checkNotNull(occurrencesToRetain);
        Iterator<Multiset.Entry<E>> it = multisetToModify.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Multiset.Entry<E> next = it.next();
            int iCount = occurrencesToRetain.count(next.getElement());
            if (iCount == 0) {
                it.remove();
            } else if (iCount < next.getCount()) {
                multisetToModify.setCount(next.getElement(), iCount);
            }
            z = true;
        }
        return z;
    }

    public static boolean removeOccurrences(Multiset<?> multisetToModify, Iterable<?> occurrencesToRemove) {
        if (occurrencesToRemove instanceof Multiset) {
            return removeOccurrences(multisetToModify, (Multiset<?>) occurrencesToRemove);
        }
        Preconditions.checkNotNull(multisetToModify);
        Preconditions.checkNotNull(occurrencesToRemove);
        Iterator<?> it = occurrencesToRemove.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= multisetToModify.remove(it.next());
        }
        return zRemove;
    }

    public static boolean removeOccurrences(Multiset<?> multisetToModify, Multiset<?> occurrencesToRemove) {
        Preconditions.checkNotNull(multisetToModify);
        Preconditions.checkNotNull(occurrencesToRemove);
        Iterator<Multiset.Entry<?>> it = multisetToModify.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Multiset.Entry<?> next = it.next();
            int iCount = occurrencesToRemove.count(next.getElement());
            if (iCount >= next.getCount()) {
                it.remove();
            } else if (iCount > 0) {
                multisetToModify.remove(next.getElement(), iCount);
            }
            z = true;
        }
        return z;
    }

    static abstract class AbstractEntry<E> implements Multiset.Entry<E> {
        AbstractEntry() {
        }

        @Override
        public boolean equals(@CheckForNull Object object) {
            if (object instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) object;
                if (getCount() == entry.getCount() && Objects.equal(getElement(), entry.getElement())) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public int hashCode() {
            E element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        @Override
        public String toString() {
            String strValueOf = String.valueOf(getElement());
            int count = getCount();
            return count == 1 ? strValueOf : strValueOf + " x " + count;
        }
    }

    static boolean equalsImpl(Multiset<?> multiset, @CheckForNull Object object) {
        if (object == multiset) {
            return true;
        }
        if (object instanceof Multiset) {
            Multiset multiset2 = (Multiset) object;
            if (multiset.size() == multiset2.size() && multiset.entrySet().size() == multiset2.entrySet().size()) {
                for (Multiset.Entry entry : multiset2.entrySet()) {
                    if (multiset.count(entry.getElement()) != entry.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    static <E> boolean addAllImpl(Multiset<E> self, Collection<? extends E> elements) {
        Preconditions.checkNotNull(self);
        Preconditions.checkNotNull(elements);
        if (elements instanceof Multiset) {
            return addAllImpl((Multiset) self, cast(elements));
        }
        if (elements.isEmpty()) {
            return false;
        }
        return Iterators.addAll(self, elements.iterator());
    }

    private static <E> boolean addAllImpl(Multiset<E> self, Multiset<? extends E> elements) {
        if (elements instanceof AbstractMapBasedMultiset) {
            return addAllImpl((Multiset) self, (AbstractMapBasedMultiset) elements);
        }
        if (elements.isEmpty()) {
            return false;
        }
        for (Multiset.Entry<? extends E> entry : elements.entrySet()) {
            self.add(entry.getElement(), entry.getCount());
        }
        return true;
    }

    private static <E> boolean addAllImpl(Multiset<E> self, AbstractMapBasedMultiset<? extends E> elements) {
        if (elements.isEmpty()) {
            return false;
        }
        elements.addTo(self);
        return true;
    }

    static boolean removeAllImpl(Multiset<?> self, Collection<?> elementsToRemove) {
        if (elementsToRemove instanceof Multiset) {
            elementsToRemove = ((Multiset) elementsToRemove).elementSet();
        }
        return self.elementSet().removeAll(elementsToRemove);
    }

    static boolean retainAllImpl(Multiset<?> self, Collection<?> elementsToRetain) {
        Preconditions.checkNotNull(elementsToRetain);
        if (elementsToRetain instanceof Multiset) {
            elementsToRetain = ((Multiset) elementsToRetain).elementSet();
        }
        return self.elementSet().retainAll(elementsToRetain);
    }

    static <E> int setCountImpl(Multiset<E> self, @ParametricNullness E element, int count) {
        CollectPreconditions.checkNonnegative(count, CodePushConstants.LATEST_ROLLBACK_COUNT_KEY);
        int iCount = self.count(element);
        int i = count - iCount;
        if (i > 0) {
            self.add(element, i);
            return iCount;
        }
        if (i < 0) {
            self.remove(element, -i);
        }
        return iCount;
    }

    static <E> boolean setCountImpl(Multiset<E> self, @ParametricNullness E element, int oldCount, int newCount) {
        CollectPreconditions.checkNonnegative(oldCount, "oldCount");
        CollectPreconditions.checkNonnegative(newCount, "newCount");
        if (self.count(element) != oldCount) {
            return false;
        }
        self.setCount(element, newCount);
        return true;
    }

    static <E> Iterator<E> elementIterator(Iterator<Multiset.Entry<E>> entryIterator) {
        return new TransformedIterator<Multiset.Entry<E>, E>(entryIterator) {
            @Override
            @ParametricNullness
            public E transform(Multiset.Entry<E> entry) {
                return entry.getElement();
            }
        };
    }

    static abstract class ElementSet<E> extends Sets.ImprovedAbstractSet<E> {
        @Override
        public abstract Iterator<E> iterator();

        abstract Multiset<E> multiset();

        ElementSet() {
        }

        @Override
        public void clear() {
            multiset().clear();
        }

        @Override
        public boolean contains(@CheckForNull Object o) {
            return multiset().contains(o);
        }

        @Override
        public boolean containsAll(Collection<?> c) {
            return multiset().containsAll(c);
        }

        @Override
        public boolean isEmpty() {
            return multiset().isEmpty();
        }

        @Override
        public boolean remove(@CheckForNull Object o) {
            return multiset().remove(o, Integer.MAX_VALUE) > 0;
        }

        @Override
        public int size() {
            return multiset().entrySet().size();
        }
    }

    static abstract class EntrySet<E> extends Sets.ImprovedAbstractSet<Multiset.Entry<E>> {
        abstract Multiset<E> multiset();

        EntrySet() {
        }

        @Override
        public boolean contains(@CheckForNull Object o) {
            if (o instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) o;
                if (entry.getCount() > 0 && multiset().count(entry.getElement()) == entry.getCount()) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                Object element = entry.getElement();
                int count = entry.getCount();
                if (count != 0) {
                    return multiset().setCount(element, count, 0);
                }
            }
            return false;
        }

        @Override
        public void clear() {
            multiset().clear();
        }
    }

    static <E> Iterator<E> iteratorImpl(Multiset<E> multiset) {
        return new MultisetIteratorImpl(multiset, multiset.entrySet().iterator());
    }

    static final class MultisetIteratorImpl<E> implements Iterator<E> {
        private boolean canRemove;

        @CheckForNull
        private Multiset.Entry<E> currentEntry;
        private final Iterator<Multiset.Entry<E>> entryIterator;
        private int laterCount;
        private final Multiset<E> multiset;
        private int totalCount;

        MultisetIteratorImpl(Multiset<E> multiset, Iterator<Multiset.Entry<E>> entryIterator) {
            this.multiset = multiset;
            this.entryIterator = entryIterator;
        }

        @Override
        public boolean hasNext() {
            return this.laterCount > 0 || this.entryIterator.hasNext();
        }

        @Override
        @ParametricNullness
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.laterCount == 0) {
                Multiset.Entry<E> next = this.entryIterator.next();
                this.currentEntry = next;
                int count = next.getCount();
                this.laterCount = count;
                this.totalCount = count;
            }
            this.laterCount--;
            this.canRemove = true;
            return (E) ((Multiset.Entry) java.util.Objects.requireNonNull(this.currentEntry)).getElement();
        }

        @Override
        public void remove() {
            CollectPreconditions.checkRemove(this.canRemove);
            if (this.totalCount == 1) {
                this.entryIterator.remove();
            } else {
                this.multiset.remove(((Multiset.Entry) java.util.Objects.requireNonNull(this.currentEntry)).getElement());
            }
            this.totalCount--;
            this.canRemove = false;
        }
    }

    static int linearTimeSizeImpl(Multiset<?> multiset) {
        Iterator<Multiset.Entry<?>> it = multiset.entrySet().iterator();
        long count = 0;
        while (it.hasNext()) {
            count += (long) it.next().getCount();
        }
        return Ints.saturatedCast(count);
    }

    static <T> Multiset<T> cast(Iterable<T> iterable) {
        return (Multiset) iterable;
    }

    public static <E> ImmutableMultiset<E> copyHighestCountFirst(Multiset<E> multiset) {
        Multiset.Entry[] entryArr = (Multiset.Entry[]) multiset.entrySet().toArray(new Multiset.Entry[0]);
        Arrays.sort(entryArr, DecreasingCount.INSTANCE);
        return ImmutableMultiset.copyFromEntries(Arrays.asList(entryArr));
    }

    private static final class DecreasingCount implements Comparator<Multiset.Entry<?>> {
        static final Comparator<Multiset.Entry<?>> INSTANCE = new DecreasingCount();

        private DecreasingCount() {
        }

        @Override
        public int compare(Multiset.Entry<?> entry1, Multiset.Entry<?> entry2) {
            return entry2.getCount() - entry1.getCount();
        }
    }

    private static abstract class ViewMultiset<E> extends AbstractMultiset<E> {
        private ViewMultiset() {
        }

        @Override
        public int size() {
            return Multisets.linearTimeSizeImpl(this);
        }

        @Override
        public void clear() {
            elementSet().clear();
        }

        @Override
        public Iterator<E> iterator() {
            return Multisets.iteratorImpl(this);
        }

        @Override
        int distinctElements() {
            return elementSet().size();
        }
    }
}
