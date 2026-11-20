package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public class TreeMultimap<K, V> extends AbstractSortedKeySortedSetMultimap<K, V> {
    private static final long serialVersionUID = 0;
    private transient Comparator<? super K> keyComparator;
    private transient Comparator<? super V> valueComparator;

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public boolean containsEntry(@CheckForNull Object key, @CheckForNull Object value) {
        return super.containsEntry(key, value);
    }

    @Override
    public boolean containsKey(@CheckForNull Object key) {
        return super.containsKey(key);
    }

    @Override
    public boolean containsValue(@CheckForNull Object value) {
        return super.containsValue(value);
    }

    @Override
    public Set entries() {
        return super.entries();
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        return super.equals(object);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Multiset keys() {
        return super.keys();
    }

    @Override
    public boolean put(@ParametricNullness Object key, @ParametricNullness Object value) {
        return super.put(key, value);
    }

    @Override
    public boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    @Override
    public boolean putAll(@ParametricNullness Object key, Iterable values) {
        return super.putAll(key, values);
    }

    @Override
    public boolean remove(@CheckForNull Object key, @CheckForNull Object value) {
        return super.remove(key, value);
    }

    @Override
    public SortedSet removeAll(@CheckForNull Object key) {
        return super.removeAll(key);
    }

    @Override
    public SortedSet replaceValues(@ParametricNullness Object key, Iterable values) {
        return super.replaceValues(key, values);
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public Collection values() {
        return super.values();
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create() {
        return new TreeMultimap<>(Ordering.natural(), Ordering.natural());
    }

    public static <K, V> TreeMultimap<K, V> create(Comparator<? super K> keyComparator, Comparator<? super V> valueComparator) {
        return new TreeMultimap<>((Comparator) Preconditions.checkNotNull(keyComparator), (Comparator) Preconditions.checkNotNull(valueComparator));
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new TreeMultimap<>(Ordering.natural(), Ordering.natural(), multimap);
    }

    TreeMultimap(Comparator<? super K> keyComparator, Comparator<? super V> valueComparator) {
        super(new TreeMap(keyComparator));
        this.keyComparator = keyComparator;
        this.valueComparator = valueComparator;
    }

    private TreeMultimap(Comparator<? super K> keyComparator, Comparator<? super V> valueComparator, Multimap<? extends K, ? extends V> multimap) {
        this(keyComparator, valueComparator);
        putAll(multimap);
    }

    @Override
    Map<K, Collection<V>> createAsMap() {
        return createMaybeNavigableAsMap();
    }

    @Override
    public SortedSet<V> createCollection() {
        return new TreeSet(this.valueComparator);
    }

    @Override
    Collection<V> createCollection(@ParametricNullness K key) {
        if (key == 0) {
            keyComparator().compare(key, key);
        }
        return super.createCollection(key);
    }

    @Deprecated
    public Comparator<? super K> keyComparator() {
        return this.keyComparator;
    }

    @Override
    public Comparator<? super V> valueComparator() {
        return this.valueComparator;
    }

    @Override
    public NavigableSet<V> get(@ParametricNullness K key) {
        return (NavigableSet) super.get((Object) key);
    }

    @Override
    public NavigableSet<K> keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override
    public NavigableMap<K, Collection<V>> asMap() {
        return (NavigableMap) super.asMap();
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        stream.writeObject(keyComparator());
        stream.writeObject(valueComparator());
        Serialization.writeMultimap(this, stream);
    }

    private void readObject(ObjectInputStream stream) throws ClassNotFoundException, IOException {
        stream.defaultReadObject();
        this.keyComparator = (Comparator) Objects.requireNonNull((Comparator) stream.readObject());
        this.valueComparator = (Comparator) Objects.requireNonNull((Comparator) stream.readObject());
        setMap(new TreeMap(this.keyComparator));
        Serialization.populateMultimap(this, stream);
    }
}
