package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public final class HashMultimap<K, V> extends HashMultimapGwtSerializationDependencies<K, V> {
    private static final int DEFAULT_VALUES_PER_KEY = 2;
    private static final long serialVersionUID = 0;
    transient int expectedValuesPerKey;

    @Override
    public Map asMap() {
        return super.asMap();
    }

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
    public Set get(@ParametricNullness Object key) {
        return super.get(key);
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
    public Set keySet() {
        return super.keySet();
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
    public Set removeAll(@CheckForNull Object key) {
        return super.removeAll(key);
    }

    @Override
    public Set replaceValues(@ParametricNullness Object key, Iterable values) {
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

    public static <K, V> HashMultimap<K, V> create() {
        return new HashMultimap<>();
    }

    public static <K, V> HashMultimap<K, V> create(int expectedKeys, int expectedValuesPerKey) {
        return new HashMultimap<>(expectedKeys, expectedValuesPerKey);
    }

    public static <K, V> HashMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new HashMultimap<>(multimap);
    }

    private HashMultimap() {
        this(12, 2);
    }

    private HashMultimap(int expectedKeys, int expectedValuesPerKey) {
        super(Platform.newHashMapWithExpectedSize(expectedKeys));
        this.expectedValuesPerKey = 2;
        Preconditions.checkArgument(expectedValuesPerKey >= 0);
        this.expectedValuesPerKey = expectedValuesPerKey;
    }

    private HashMultimap(Multimap<? extends K, ? extends V> multimap) {
        super(Platform.newHashMapWithExpectedSize(multimap.keySet().size()));
        this.expectedValuesPerKey = 2;
        putAll(multimap);
    }

    @Override
    public Set<V> createCollection() {
        return Platform.newHashSetWithExpectedSize(this.expectedValuesPerKey);
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        Serialization.writeMultimap(this, stream);
    }

    private void readObject(ObjectInputStream stream) throws ClassNotFoundException, IOException {
        stream.defaultReadObject();
        this.expectedValuesPerKey = 2;
        int count = Serialization.readCount(stream);
        setMap(Platform.newHashMapWithExpectedSize(12));
        Serialization.populateMultimap(this, stream, count);
    }
}
