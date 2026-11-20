package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class AbstractMapBasedMultimap<K, V> extends AbstractMultimap<K, V> implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    private transient Map<K, Collection<V>> map;
    private transient int totalSize;

    abstract Collection<V> createCollection();

    static int access$208(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i + 1;
        return i;
    }

    static int access$210(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i - 1;
        return i;
    }

    static int access$212(AbstractMapBasedMultimap abstractMapBasedMultimap, int i) {
        int i2 = abstractMapBasedMultimap.totalSize + i;
        abstractMapBasedMultimap.totalSize = i2;
        return i2;
    }

    static int access$220(AbstractMapBasedMultimap abstractMapBasedMultimap, int i) {
        int i2 = abstractMapBasedMultimap.totalSize - i;
        abstractMapBasedMultimap.totalSize = i2;
        return i2;
    }

    protected AbstractMapBasedMultimap(Map<K, Collection<V>> map) {
        Preconditions.checkArgument(map.isEmpty());
        this.map = map;
    }

    final void setMap(Map<K, Collection<V>> map) {
        this.map = map;
        this.totalSize = 0;
        for (Collection<V> collection : map.values()) {
            Preconditions.checkArgument(!collection.isEmpty());
            this.totalSize += collection.size();
        }
    }

    Collection<V> createUnmodifiableEmptyCollection() {
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection());
    }

    Collection<V> createCollection(@ParametricNullness K key) {
        return createCollection();
    }

    Map<K, Collection<V>> backingMap() {
        return this.map;
    }

    @Override
    public int size() {
        return this.totalSize;
    }

    @Override
    public boolean containsKey(@CheckForNull Object key) {
        return this.map.containsKey(key);
    }

    @Override
    public boolean put(@ParametricNullness K key, @ParametricNullness V value) {
        Collection<V> collection = this.map.get(key);
        if (collection == null) {
            Collection<V> collectionCreateCollection = createCollection(key);
            if (collectionCreateCollection.add(value)) {
                this.totalSize++;
                this.map.put(key, collectionCreateCollection);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        }
        if (!collection.add(value)) {
            return false;
        }
        this.totalSize++;
        return true;
    }

    private Collection<V> getOrCreateCollection(@ParametricNullness K key) {
        Collection<V> collection = this.map.get(key);
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateCollection = createCollection(key);
        this.map.put(key, collectionCreateCollection);
        return collectionCreateCollection;
    }

    @Override
    public Collection<V> replaceValues(@ParametricNullness K k, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return removeAll(k);
        }
        Collection<V> orCreateCollection = getOrCreateCollection(k);
        Collection<V> collectionCreateCollection = createCollection();
        collectionCreateCollection.addAll(orCreateCollection);
        this.totalSize -= orCreateCollection.size();
        orCreateCollection.clear();
        while (it.hasNext()) {
            if (orCreateCollection.add(it.next())) {
                this.totalSize++;
            }
        }
        return (Collection<V>) unmodifiableCollectionSubclass(collectionCreateCollection);
    }

    @Override
    public Collection<V> removeAll(@CheckForNull Object obj) {
        Collection<V> collectionRemove = this.map.remove(obj);
        if (collectionRemove == null) {
            return createUnmodifiableEmptyCollection();
        }
        Collection collectionCreateCollection = createCollection();
        collectionCreateCollection.addAll(collectionRemove);
        this.totalSize -= collectionRemove.size();
        collectionRemove.clear();
        return (Collection<V>) unmodifiableCollectionSubclass(collectionCreateCollection);
    }

    <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override
    public void clear() {
        Iterator<Collection<V>> it = this.map.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.map.clear();
        this.totalSize = 0;
    }

    @Override
    public Collection<V> get(@ParametricNullness K key) {
        Collection<V> collectionCreateCollection = this.map.get(key);
        if (collectionCreateCollection == null) {
            collectionCreateCollection = createCollection(key);
        }
        return wrapCollection(key, collectionCreateCollection);
    }

    Collection<V> wrapCollection(@ParametricNullness K key, Collection<V> collection) {
        return new WrappedCollection(key, collection, null);
    }

    final List<V> wrapList(@ParametricNullness K key, List<V> list, @CheckForNull AbstractMapBasedMultimap<K, V>.WrappedCollection ancestor) {
        if (list instanceof RandomAccess) {
            return new RandomAccessWrappedList(key, list, ancestor);
        }
        return new WrappedList(key, list, ancestor);
    }

    class WrappedCollection extends AbstractCollection<V> {

        @CheckForNull
        final AbstractMapBasedMultimap<K, V>.WrappedCollection ancestor;

        @CheckForNull
        final Collection<V> ancestorDelegate;
        Collection<V> delegate;

        @ParametricNullness
        final K key;

        WrappedCollection(K key, @CheckForNull Collection<V> delegate, AbstractMapBasedMultimap<K, V>.WrappedCollection ancestor) {
            this.key = key;
            this.delegate = delegate;
            this.ancestor = ancestor;
            this.ancestorDelegate = ancestor == null ? null : ancestor.getDelegate();
        }

        void refreshIfEmpty() {
            Collection<V> collection;
            AbstractMapBasedMultimap<K, V>.WrappedCollection wrappedCollection = this.ancestor;
            if (wrappedCollection != null) {
                wrappedCollection.refreshIfEmpty();
                if (this.ancestor.getDelegate() != this.ancestorDelegate) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.delegate.isEmpty() || (collection = (Collection) AbstractMapBasedMultimap.this.map.get(this.key)) == null) {
                    return;
                }
                this.delegate = collection;
            }
        }

        void removeIfEmpty() {
            AbstractMapBasedMultimap<K, V>.WrappedCollection wrappedCollection = this.ancestor;
            if (wrappedCollection != null) {
                wrappedCollection.removeIfEmpty();
            } else if (this.delegate.isEmpty()) {
                AbstractMapBasedMultimap.this.map.remove(this.key);
            }
        }

        @ParametricNullness
        K getKey() {
            return this.key;
        }

        void addToMap() {
            AbstractMapBasedMultimap<K, V>.WrappedCollection wrappedCollection = this.ancestor;
            if (wrappedCollection == null) {
                AbstractMapBasedMultimap.this.map.put(this.key, this.delegate);
            } else {
                wrappedCollection.addToMap();
            }
        }

        @Override
        public int size() {
            refreshIfEmpty();
            return this.delegate.size();
        }

        @Override
        public boolean equals(@CheckForNull Object object) {
            if (object == this) {
                return true;
            }
            refreshIfEmpty();
            return this.delegate.equals(object);
        }

        @Override
        public int hashCode() {
            refreshIfEmpty();
            return this.delegate.hashCode();
        }

        @Override
        public String toString() {
            refreshIfEmpty();
            return this.delegate.toString();
        }

        Collection<V> getDelegate() {
            return this.delegate;
        }

        @Override
        public Iterator<V> iterator() {
            refreshIfEmpty();
            return new WrappedIterator();
        }

        class WrappedIterator implements Iterator<V> {
            final Iterator<V> delegateIterator;
            final Collection<V> originalDelegate;

            WrappedIterator() {
                this.originalDelegate = WrappedCollection.this.delegate;
                this.delegateIterator = AbstractMapBasedMultimap.iteratorOrListIterator(WrappedCollection.this.delegate);
            }

            WrappedIterator(Iterator<V> delegateIterator) {
                this.originalDelegate = WrappedCollection.this.delegate;
                this.delegateIterator = delegateIterator;
            }

            void validateIterator() {
                WrappedCollection.this.refreshIfEmpty();
                if (WrappedCollection.this.delegate != this.originalDelegate) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                validateIterator();
                return this.delegateIterator.hasNext();
            }

            @Override
            @ParametricNullness
            public V next() {
                validateIterator();
                return this.delegateIterator.next();
            }

            @Override
            public void remove() {
                this.delegateIterator.remove();
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                WrappedCollection.this.removeIfEmpty();
            }

            Iterator<V> getDelegateIterator() {
                validateIterator();
                return this.delegateIterator;
            }
        }

        @Override
        public boolean add(@ParametricNullness V value) {
            refreshIfEmpty();
            boolean zIsEmpty = this.delegate.isEmpty();
            boolean zAdd = this.delegate.add(value);
            if (zAdd) {
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    addToMap();
                }
            }
            return zAdd;
        }

        @CheckForNull
        AbstractMapBasedMultimap<K, V>.WrappedCollection getAncestor() {
            return this.ancestor;
        }

        @Override
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.delegate.addAll(collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.delegate.size() - size);
                if (size == 0) {
                    addToMap();
                }
            }
            return zAddAll;
        }

        @Override
        public boolean contains(@CheckForNull Object o) {
            refreshIfEmpty();
            return this.delegate.contains(o);
        }

        @Override
        public boolean containsAll(Collection<?> c) {
            refreshIfEmpty();
            return this.delegate.containsAll(c);
        }

        @Override
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.delegate.clear();
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            removeIfEmpty();
        }

        @Override
        public boolean remove(@CheckForNull Object o) {
            refreshIfEmpty();
            boolean zRemove = this.delegate.remove(o);
            if (zRemove) {
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                removeIfEmpty();
            }
            return zRemove;
        }

        @Override
        public boolean removeAll(Collection<?> c) {
            if (c.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.delegate.removeAll(c);
            if (zRemoveAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.delegate.size() - size);
                removeIfEmpty();
            }
            return zRemoveAll;
        }

        @Override
        public boolean retainAll(Collection<?> c) {
            Preconditions.checkNotNull(c);
            int size = size();
            boolean zRetainAll = this.delegate.retainAll(c);
            if (zRetainAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.delegate.size() - size);
                removeIfEmpty();
            }
            return zRetainAll;
        }
    }

    public static <E> Iterator<E> iteratorOrListIterator(Collection<E> collection) {
        if (collection instanceof List) {
            return ((List) collection).listIterator();
        }
        return collection.iterator();
    }

    class WrappedSet extends AbstractMapBasedMultimap<K, V>.WrappedCollection implements Set<V> {
        WrappedSet(K key, Set<V> delegate) {
            super(key, delegate, null);
        }

        @Override
        public boolean removeAll(Collection<?> c) {
            if (c.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAllImpl = Sets.removeAllImpl((Set<?>) this.delegate, c);
            if (zRemoveAllImpl) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.delegate.size() - size);
                removeIfEmpty();
            }
            return zRemoveAllImpl;
        }
    }

    class WrappedSortedSet extends AbstractMapBasedMultimap<K, V>.WrappedCollection implements SortedSet<V> {
        WrappedSortedSet(K key, @CheckForNull SortedSet<V> delegate, AbstractMapBasedMultimap<K, V>.WrappedCollection ancestor) {
            super(key, delegate, ancestor);
        }

        SortedSet<V> getSortedSetDelegate() {
            return (SortedSet) getDelegate();
        }

        @Override
        @CheckForNull
        public Comparator<? super V> comparator() {
            return getSortedSetDelegate().comparator();
        }

        @Override
        @ParametricNullness
        public V first() {
            refreshIfEmpty();
            return getSortedSetDelegate().first();
        }

        @Override
        @ParametricNullness
        public V last() {
            refreshIfEmpty();
            return getSortedSetDelegate().last();
        }

        @Override
        public SortedSet<V> headSet(@ParametricNullness V toElement) {
            refreshIfEmpty();
            return new WrappedSortedSet(getKey(), getSortedSetDelegate().headSet(toElement), getAncestor() == null ? this : getAncestor());
        }

        @Override
        public SortedSet<V> subSet(@ParametricNullness V fromElement, @ParametricNullness V toElement) {
            refreshIfEmpty();
            return new WrappedSortedSet(getKey(), getSortedSetDelegate().subSet(fromElement, toElement), getAncestor() == null ? this : getAncestor());
        }

        @Override
        public SortedSet<V> tailSet(@ParametricNullness V fromElement) {
            refreshIfEmpty();
            return new WrappedSortedSet(getKey(), getSortedSetDelegate().tailSet(fromElement), getAncestor() == null ? this : getAncestor());
        }
    }

    class WrappedNavigableSet extends AbstractMapBasedMultimap<K, V>.WrappedSortedSet implements NavigableSet<V> {
        WrappedNavigableSet(K key, @CheckForNull NavigableSet<V> delegate, AbstractMapBasedMultimap<K, V>.WrappedCollection ancestor) {
            super(key, delegate, ancestor);
        }

        @Override
        public NavigableSet<V> getSortedSetDelegate() {
            return (NavigableSet) super.getSortedSetDelegate();
        }

        @Override
        @CheckForNull
        public V lower(@ParametricNullness V v) {
            return getSortedSetDelegate().lower(v);
        }

        @Override
        @CheckForNull
        public V floor(@ParametricNullness V v) {
            return getSortedSetDelegate().floor(v);
        }

        @Override
        @CheckForNull
        public V ceiling(@ParametricNullness V v) {
            return getSortedSetDelegate().ceiling(v);
        }

        @Override
        @CheckForNull
        public V higher(@ParametricNullness V v) {
            return getSortedSetDelegate().higher(v);
        }

        @Override
        @CheckForNull
        public V pollFirst() {
            return (V) Iterators.pollNext(iterator());
        }

        @Override
        @CheckForNull
        public V pollLast() {
            return (V) Iterators.pollNext(descendingIterator());
        }

        private NavigableSet<V> wrap(NavigableSet<V> wrapped) {
            return new WrappedNavigableSet(this.key, wrapped, getAncestor() == null ? this : getAncestor());
        }

        @Override
        public NavigableSet<V> descendingSet() {
            return wrap(getSortedSetDelegate().descendingSet());
        }

        @Override
        public Iterator<V> descendingIterator() {
            return new WrappedCollection.WrappedIterator(getSortedSetDelegate().descendingIterator());
        }

        @Override
        public NavigableSet<V> subSet(@ParametricNullness V fromElement, boolean fromInclusive, @ParametricNullness V toElement, boolean toInclusive) {
            return wrap(getSortedSetDelegate().subSet(fromElement, fromInclusive, toElement, toInclusive));
        }

        @Override
        public NavigableSet<V> headSet(@ParametricNullness V toElement, boolean inclusive) {
            return wrap(getSortedSetDelegate().headSet(toElement, inclusive));
        }

        @Override
        public NavigableSet<V> tailSet(@ParametricNullness V fromElement, boolean inclusive) {
            return wrap(getSortedSetDelegate().tailSet(fromElement, inclusive));
        }
    }

    class WrappedList extends AbstractMapBasedMultimap<K, V>.WrappedCollection implements List<V> {
        WrappedList(K key, @CheckForNull List<V> delegate, AbstractMapBasedMultimap<K, V>.WrappedCollection ancestor) {
            super(key, delegate, ancestor);
        }

        List<V> getListDelegate() {
            return (List) getDelegate();
        }

        @Override
        public boolean addAll(int index, Collection<? extends V> c) {
            if (c.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = getListDelegate().addAll(index, c);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, getDelegate().size() - size);
                if (size == 0) {
                    addToMap();
                }
            }
            return zAddAll;
        }

        @Override
        @ParametricNullness
        public V get(int index) {
            refreshIfEmpty();
            return getListDelegate().get(index);
        }

        @Override
        @ParametricNullness
        public V set(int index, @ParametricNullness V element) {
            refreshIfEmpty();
            return getListDelegate().set(index, element);
        }

        @Override
        public void add(int index, @ParametricNullness V element) {
            refreshIfEmpty();
            boolean zIsEmpty = getDelegate().isEmpty();
            getListDelegate().add(index, element);
            AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
            if (zIsEmpty) {
                addToMap();
            }
        }

        @Override
        @ParametricNullness
        public V remove(int index) {
            refreshIfEmpty();
            V vRemove = getListDelegate().remove(index);
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
            removeIfEmpty();
            return vRemove;
        }

        @Override
        public int indexOf(@CheckForNull Object o) {
            refreshIfEmpty();
            return getListDelegate().indexOf(o);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object o) {
            refreshIfEmpty();
            return getListDelegate().lastIndexOf(o);
        }

        @Override
        public ListIterator<V> listIterator() {
            refreshIfEmpty();
            return new WrappedListIterator();
        }

        @Override
        public ListIterator<V> listIterator(int index) {
            refreshIfEmpty();
            return new WrappedListIterator(index);
        }

        @Override
        public List<V> subList(int fromIndex, int toIndex) {
            refreshIfEmpty();
            return AbstractMapBasedMultimap.this.wrapList(getKey(), getListDelegate().subList(fromIndex, toIndex), getAncestor() == null ? this : getAncestor());
        }

        private class WrappedListIterator extends AbstractMapBasedMultimap<K, V>.WrappedCollection.WrappedIterator implements ListIterator<V> {
            WrappedListIterator() {
                super();
            }

            public WrappedListIterator(int index) {
                super(WrappedList.this.getListDelegate().listIterator(index));
            }

            private ListIterator<V> getDelegateListIterator() {
                return (ListIterator) getDelegateIterator();
            }

            @Override
            public boolean hasPrevious() {
                return getDelegateListIterator().hasPrevious();
            }

            @Override
            @ParametricNullness
            public V previous() {
                return getDelegateListIterator().previous();
            }

            @Override
            public int nextIndex() {
                return getDelegateListIterator().nextIndex();
            }

            @Override
            public int previousIndex() {
                return getDelegateListIterator().previousIndex();
            }

            @Override
            public void set(@ParametricNullness V value) {
                getDelegateListIterator().set(value);
            }

            @Override
            public void add(@ParametricNullness V value) {
                boolean zIsEmpty = WrappedList.this.isEmpty();
                getDelegateListIterator().add(value);
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    WrappedList.this.addToMap();
                }
            }
        }
    }

    private class RandomAccessWrappedList extends AbstractMapBasedMultimap<K, V>.WrappedList implements RandomAccess {
        RandomAccessWrappedList(K key, @CheckForNull List<V> delegate, AbstractMapBasedMultimap<K, V>.WrappedCollection ancestor) {
            super(key, delegate, ancestor);
        }
    }

    @Override
    Set<K> createKeySet() {
        return new KeySet(this.map);
    }

    final Set<K> createMaybeNavigableKeySet() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new NavigableKeySet((NavigableMap) this.map);
        }
        if (map instanceof SortedMap) {
            return new SortedKeySet((SortedMap) this.map);
        }
        return new KeySet(this.map);
    }

    private class KeySet extends Maps.KeySet<K, Collection<V>> {
        KeySet(final Map<K, Collection<V>> subMap) {
            super(subMap);
        }

        @Override
        public Iterator<K> iterator() {
            final Iterator<Map.Entry<K, Collection<V>>> it = map().entrySet().iterator();
            return new Iterator<K>(this) {

                @CheckForNull
                Map.Entry<K, Collection<V>> entry;
                final KeySet this$1;

                {
                    this.this$1 = this;
                }

                @Override
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override
                @ParametricNullness
                public K next() {
                    Map.Entry<K, Collection<V>> entry = (Map.Entry) it.next();
                    this.entry = entry;
                    return entry.getKey();
                }

                @Override
                public void remove() {
                    Preconditions.checkState(this.entry != null, "no calls to next() since the last call to remove()");
                    Collection<V> value = this.entry.getValue();
                    it.remove();
                    AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, value.size());
                    value.clear();
                    this.entry = null;
                }
            };
        }

        @Override
        public boolean remove(@CheckForNull Object key) {
            int size;
            Collection<V> collectionRemove = map().remove(key);
            if (collectionRemove != null) {
                size = collectionRemove.size();
                collectionRemove.clear();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            } else {
                size = 0;
            }
            return size > 0;
        }

        @Override
        public void clear() {
            Iterators.clear(iterator());
        }

        @Override
        public boolean containsAll(Collection<?> c) {
            return map().keySet().containsAll(c);
        }

        @Override
        public boolean equals(@CheckForNull Object object) {
            return this == object || map().keySet().equals(object);
        }

        @Override
        public int hashCode() {
            return map().keySet().hashCode();
        }
    }

    private class SortedKeySet extends AbstractMapBasedMultimap<K, V>.KeySet implements SortedSet<K> {
        SortedKeySet(SortedMap<K, Collection<V>> subMap) {
            super(subMap);
        }

        SortedMap<K, Collection<V>> sortedMap() {
            return (SortedMap) super.map();
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            return sortedMap().comparator();
        }

        @Override
        @ParametricNullness
        public K first() {
            return sortedMap().firstKey();
        }

        public SortedSet<K> headSet(@ParametricNullness K toElement) {
            return new SortedKeySet(sortedMap().headMap(toElement));
        }

        @Override
        @ParametricNullness
        public K last() {
            return sortedMap().lastKey();
        }

        public SortedSet<K> subSet(@ParametricNullness K fromElement, @ParametricNullness K toElement) {
            return new SortedKeySet(sortedMap().subMap(fromElement, toElement));
        }

        public SortedSet<K> tailSet(@ParametricNullness K fromElement) {
            return new SortedKeySet(sortedMap().tailMap(fromElement));
        }
    }

    private final class NavigableKeySet extends AbstractMapBasedMultimap<K, V>.SortedKeySet implements NavigableSet<K> {
        NavigableKeySet(NavigableMap<K, Collection<V>> subMap) {
            super(subMap);
        }

        @Override
        public NavigableMap<K, Collection<V>> sortedMap() {
            return (NavigableMap) super.sortedMap();
        }

        @Override
        @CheckForNull
        public K lower(@ParametricNullness K k) {
            return sortedMap().lowerKey(k);
        }

        @Override
        @CheckForNull
        public K floor(@ParametricNullness K k) {
            return sortedMap().floorKey(k);
        }

        @Override
        @CheckForNull
        public K ceiling(@ParametricNullness K k) {
            return sortedMap().ceilingKey(k);
        }

        @Override
        @CheckForNull
        public K higher(@ParametricNullness K k) {
            return sortedMap().higherKey(k);
        }

        @Override
        @CheckForNull
        public K pollFirst() {
            return (K) Iterators.pollNext(iterator());
        }

        @Override
        @CheckForNull
        public K pollLast() {
            return (K) Iterators.pollNext(descendingIterator());
        }

        @Override
        public NavigableSet<K> descendingSet() {
            return new NavigableKeySet(sortedMap().descendingMap());
        }

        @Override
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        public NavigableSet<K> headSet(@ParametricNullness K toElement) {
            return headSet(toElement, false);
        }

        @Override
        public NavigableSet<K> headSet(@ParametricNullness K toElement, boolean inclusive) {
            return new NavigableKeySet(sortedMap().headMap(toElement, inclusive));
        }

        @Override
        public NavigableSet<K> subSet(@ParametricNullness K fromElement, @ParametricNullness K toElement) {
            return subSet(fromElement, true, toElement, false);
        }

        @Override
        public NavigableSet<K> subSet(@ParametricNullness K fromElement, boolean fromInclusive, @ParametricNullness K toElement, boolean toInclusive) {
            return new NavigableKeySet(sortedMap().subMap(fromElement, fromInclusive, toElement, toInclusive));
        }

        @Override
        public NavigableSet<K> tailSet(@ParametricNullness K fromElement) {
            return tailSet(fromElement, true);
        }

        @Override
        public NavigableSet<K> tailSet(@ParametricNullness K fromElement, boolean inclusive) {
            return new NavigableKeySet(sortedMap().tailMap(fromElement, inclusive));
        }
    }

    public void removeValuesForKey(@CheckForNull Object key) {
        Collection collection = (Collection) Maps.safeRemove(this.map, key);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.totalSize -= size;
        }
    }

    private abstract class Itr<T> implements Iterator<T> {
        final Iterator<Map.Entry<K, Collection<V>>> keyIterator;

        @CheckForNull
        K key = null;

        @CheckForNull
        Collection<V> collection = null;
        Iterator<V> valueIterator = Iterators.emptyModifiableIterator();

        abstract T output(@ParametricNullness K key, @ParametricNullness V value);

        Itr() {
            this.keyIterator = AbstractMapBasedMultimap.this.map.entrySet().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.keyIterator.hasNext() || this.valueIterator.hasNext();
        }

        @Override
        @ParametricNullness
        public T next() {
            if (!this.valueIterator.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.keyIterator.next();
                this.key = next.getKey();
                Collection<V> value = next.getValue();
                this.collection = value;
                this.valueIterator = value.iterator();
            }
            return output(NullnessCasts.uncheckedCastNullableTToT(this.key), this.valueIterator.next());
        }

        @Override
        public void remove() {
            this.valueIterator.remove();
            if (((Collection) Objects.requireNonNull(this.collection)).isEmpty()) {
                this.keyIterator.remove();
            }
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
        }
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    @Override
    Collection<V> createValues() {
        return new AbstractMultimap.Values();
    }

    @Override
    Iterator<V> valueIterator() {
        return new AbstractMapBasedMultimap<K, V>.Itr<V>() {
            @Override
            @ParametricNullness
            V output(@ParametricNullness K key, @ParametricNullness V value) {
                return value;
            }
        };
    }

    @Override
    Multiset<K> createKeys() {
        return new Multimaps.Keys(this);
    }

    @Override
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override
    Collection<Map.Entry<K, V>> createEntries() {
        if (this instanceof SetMultimap) {
            return new AbstractMultimap.EntrySet();
        }
        return new AbstractMultimap.Entries();
    }

    @Override
    Iterator<Map.Entry<K, V>> entryIterator() {
        return new AbstractMapBasedMultimap<K, V>.Itr<Map.Entry<K, V>>() {
            @Override
            public Map.Entry<K, V> output(@ParametricNullness K key, @ParametricNullness V value) {
                return Maps.immutableEntry(key, value);
            }
        };
    }

    @Override
    Map<K, Collection<V>> createAsMap() {
        return new AsMap(this.map);
    }

    final Map<K, Collection<V>> createMaybeNavigableAsMap() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new NavigableAsMap((NavigableMap) this.map);
        }
        if (map instanceof SortedMap) {
            return new SortedAsMap((SortedMap) this.map);
        }
        return new AsMap(this.map);
    }

    private class AsMap extends Maps.ViewCachingAbstractMap<K, Collection<V>> {
        final transient Map<K, Collection<V>> submap;

        AsMap(Map<K, Collection<V>> submap) {
            this.submap = submap;
        }

        @Override
        protected Set<Map.Entry<K, Collection<V>>> createEntrySet() {
            return new AsMapEntries();
        }

        @Override
        public boolean containsKey(@CheckForNull Object key) {
            return Maps.safeContainsKey(this.submap, key);
        }

        @Override
        @CheckForNull
        public Collection<V> get(@CheckForNull Object key) {
            Collection<V> collection = (Collection) Maps.safeGet(this.submap, key);
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.wrapCollection(key, collection);
        }

        @Override
        public Set<K> keySet() {
            return AbstractMapBasedMultimap.this.keySet();
        }

        @Override
        public int size() {
            return this.submap.size();
        }

        @Override
        @CheckForNull
        public Collection<V> remove(@CheckForNull Object key) {
            Collection<V> collectionRemove = this.submap.remove(key);
            if (collectionRemove == null) {
                return null;
            }
            Collection<V> collectionCreateCollection = AbstractMapBasedMultimap.this.createCollection();
            collectionCreateCollection.addAll(collectionRemove);
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, collectionRemove.size());
            collectionRemove.clear();
            return collectionCreateCollection;
        }

        @Override
        public boolean equals(@CheckForNull Object object) {
            return this == object || this.submap.equals(object);
        }

        @Override
        public int hashCode() {
            return this.submap.hashCode();
        }

        @Override
        public String toString() {
            return this.submap.toString();
        }

        @Override
        public void clear() {
            if (this.submap == AbstractMapBasedMultimap.this.map) {
                AbstractMapBasedMultimap.this.clear();
            } else {
                Iterators.clear(new AsMapIterator());
            }
        }

        Map.Entry<K, Collection<V>> wrapEntry(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return Maps.immutableEntry(key, AbstractMapBasedMultimap.this.wrapCollection(key, entry.getValue()));
        }

        class AsMapEntries extends Maps.EntrySet<K, Collection<V>> {
            AsMapEntries() {
            }

            @Override
            Map<K, Collection<V>> map() {
                return AsMap.this;
            }

            @Override
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return AsMap.this.new AsMapIterator();
            }

            @Override
            public boolean contains(@CheckForNull Object o) {
                return Collections2.safeContains(AsMap.this.submap.entrySet(), o);
            }

            @Override
            public boolean remove(@CheckForNull Object o) {
                if (!contains(o)) {
                    return false;
                }
                AbstractMapBasedMultimap.this.removeValuesForKey(((Map.Entry) Objects.requireNonNull((Map.Entry) o)).getKey());
                return true;
            }
        }

        class AsMapIterator implements Iterator<Map.Entry<K, Collection<V>>> {

            @CheckForNull
            Collection<V> collection;
            final Iterator<Map.Entry<K, Collection<V>>> delegateIterator;

            AsMapIterator() {
                this.delegateIterator = AsMap.this.submap.entrySet().iterator();
            }

            @Override
            public boolean hasNext() {
                return this.delegateIterator.hasNext();
            }

            @Override
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.delegateIterator.next();
                this.collection = next.getValue();
                return AsMap.this.wrapEntry(next);
            }

            @Override
            public void remove() {
                Preconditions.checkState(this.collection != null, "no calls to next() since the last call to remove()");
                this.delegateIterator.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, this.collection.size());
                this.collection.clear();
                this.collection = null;
            }
        }
    }

    private class SortedAsMap extends AbstractMapBasedMultimap<K, V>.AsMap implements SortedMap<K, Collection<V>> {

        @CheckForNull
        SortedSet<K> sortedKeySet;

        SortedAsMap(SortedMap<K, Collection<V>> submap) {
            super(submap);
        }

        SortedMap<K, Collection<V>> sortedMap() {
            return (SortedMap) this.submap;
        }

        @Override
        @CheckForNull
        public Comparator<? super K> comparator() {
            return sortedMap().comparator();
        }

        @Override
        @ParametricNullness
        public K firstKey() {
            return sortedMap().firstKey();
        }

        @Override
        @ParametricNullness
        public K lastKey() {
            return sortedMap().lastKey();
        }

        public SortedMap<K, Collection<V>> headMap(@ParametricNullness K toKey) {
            return new SortedAsMap(sortedMap().headMap(toKey));
        }

        public SortedMap<K, Collection<V>> subMap(@ParametricNullness K fromKey, @ParametricNullness K toKey) {
            return new SortedAsMap(sortedMap().subMap(fromKey, toKey));
        }

        public SortedMap<K, Collection<V>> tailMap(@ParametricNullness K fromKey) {
            return new SortedAsMap(sortedMap().tailMap(fromKey));
        }

        @Override
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.sortedKeySet;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> sortedSetCreateKeySet = createKeySet();
            this.sortedKeySet = sortedSetCreateKeySet;
            return sortedSetCreateKeySet;
        }

        @Override
        public SortedSet<K> createKeySet() {
            return new SortedKeySet(sortedMap());
        }
    }

    private final class NavigableAsMap extends AbstractMapBasedMultimap<K, V>.SortedAsMap implements NavigableMap<K, Collection<V>> {
        NavigableAsMap(NavigableMap<K, Collection<V>> submap) {
            super(submap);
        }

        @Override
        public NavigableMap<K, Collection<V>> sortedMap() {
            return (NavigableMap) super.sortedMap();
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> lowerEntry(@ParametricNullness K key) {
            Map.Entry<K, Collection<V>> entryLowerEntry = sortedMap().lowerEntry(key);
            if (entryLowerEntry == null) {
                return null;
            }
            return wrapEntry(entryLowerEntry);
        }

        @Override
        @CheckForNull
        public K lowerKey(@ParametricNullness K key) {
            return sortedMap().lowerKey(key);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> floorEntry(@ParametricNullness K key) {
            Map.Entry<K, Collection<V>> entryFloorEntry = sortedMap().floorEntry(key);
            if (entryFloorEntry == null) {
                return null;
            }
            return wrapEntry(entryFloorEntry);
        }

        @Override
        @CheckForNull
        public K floorKey(@ParametricNullness K key) {
            return sortedMap().floorKey(key);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> ceilingEntry(@ParametricNullness K key) {
            Map.Entry<K, Collection<V>> entryCeilingEntry = sortedMap().ceilingEntry(key);
            if (entryCeilingEntry == null) {
                return null;
            }
            return wrapEntry(entryCeilingEntry);
        }

        @Override
        @CheckForNull
        public K ceilingKey(@ParametricNullness K key) {
            return sortedMap().ceilingKey(key);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> higherEntry(@ParametricNullness K key) {
            Map.Entry<K, Collection<V>> entryHigherEntry = sortedMap().higherEntry(key);
            if (entryHigherEntry == null) {
                return null;
            }
            return wrapEntry(entryHigherEntry);
        }

        @Override
        @CheckForNull
        public K higherKey(@ParametricNullness K key) {
            return sortedMap().higherKey(key);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> entryFirstEntry = sortedMap().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return wrapEntry(entryFirstEntry);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> entryLastEntry = sortedMap().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return wrapEntry(entryLastEntry);
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return pollAsMapEntry(entrySet().iterator());
        }

        @Override
        @CheckForNull
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return pollAsMapEntry(descendingMap().entrySet().iterator());
        }

        @CheckForNull
        Map.Entry<K, Collection<V>> pollAsMapEntry(Iterator<Map.Entry<K, Collection<V>>> entryIterator) {
            if (!entryIterator.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = entryIterator.next();
            Collection<V> collectionCreateCollection = AbstractMapBasedMultimap.this.createCollection();
            collectionCreateCollection.addAll(next.getValue());
            entryIterator.remove();
            return Maps.immutableEntry(next.getKey(), AbstractMapBasedMultimap.this.unmodifiableCollectionSubclass(collectionCreateCollection));
        }

        @Override
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new NavigableAsMap(sortedMap().descendingMap());
        }

        @Override
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override
        public NavigableSet<K> createKeySet() {
            return new NavigableKeySet(sortedMap());
        }

        @Override
        public NavigableSet<K> navigableKeySet() {
            return keySet();
        }

        @Override
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override
        public NavigableMap<K, Collection<V>> subMap(@ParametricNullness K fromKey, @ParametricNullness K toKey) {
            return subMap(fromKey, true, toKey, false);
        }

        @Override
        public NavigableMap<K, Collection<V>> subMap(@ParametricNullness K fromKey, boolean fromInclusive, @ParametricNullness K toKey, boolean toInclusive) {
            return new NavigableAsMap(sortedMap().subMap(fromKey, fromInclusive, toKey, toInclusive));
        }

        @Override
        public NavigableMap<K, Collection<V>> headMap(@ParametricNullness K toKey) {
            return headMap(toKey, false);
        }

        @Override
        public NavigableMap<K, Collection<V>> headMap(@ParametricNullness K toKey, boolean inclusive) {
            return new NavigableAsMap(sortedMap().headMap(toKey, inclusive));
        }

        @Override
        public NavigableMap<K, Collection<V>> tailMap(@ParametricNullness K fromKey) {
            return tailMap(fromKey, true);
        }

        @Override
        public NavigableMap<K, Collection<V>> tailMap(@ParametricNullness K fromKey, boolean inclusive) {
            return new NavigableAsMap(sortedMap().tailMap(fromKey, inclusive));
        }
    }
}
