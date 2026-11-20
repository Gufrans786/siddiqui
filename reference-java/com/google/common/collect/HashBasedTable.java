package com.google.common.collect;

import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public class HashBasedTable<R, C, V> extends StandardTable<R, C, V> {
    private static final long serialVersionUID = 0;

    @Override
    public Set cellSet() {
        return super.cellSet();
    }

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public Map column(Object columnKey) {
        return super.column(columnKey);
    }

    @Override
    public Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override
    public Map columnMap() {
        return super.columnMap();
    }

    @Override
    public boolean contains(@CheckForNull Object rowKey, @CheckForNull Object columnKey) {
        return super.contains(rowKey, columnKey);
    }

    @Override
    public boolean containsColumn(@CheckForNull Object columnKey) {
        return super.containsColumn(columnKey);
    }

    @Override
    public boolean containsRow(@CheckForNull Object rowKey) {
        return super.containsRow(rowKey);
    }

    @Override
    public boolean containsValue(@CheckForNull Object value) {
        return super.containsValue(value);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    @CheckForNull
    public Object get(@CheckForNull Object rowKey, @CheckForNull Object columnKey) {
        return super.get(rowKey, columnKey);
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
    @CheckForNull
    public Object put(Object rowKey, Object columnKey, Object value) {
        return super.put(rowKey, columnKey, value);
    }

    @Override
    public void putAll(Table table) {
        super.putAll(table);
    }

    @Override
    @CheckForNull
    public Object remove(@CheckForNull Object rowKey, @CheckForNull Object columnKey) {
        return super.remove(rowKey, columnKey);
    }

    @Override
    public Map row(Object rowKey) {
        return super.row(rowKey);
    }

    @Override
    public Set rowKeySet() {
        return super.rowKeySet();
    }

    @Override
    public Map rowMap() {
        return super.rowMap();
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

    private static class Factory<C, V> implements Supplier<Map<C, V>>, Serializable {
        private static final long serialVersionUID = 0;
        final int expectedSize;

        Factory(int expectedSize) {
            this.expectedSize = expectedSize;
        }

        @Override
        public Map<C, V> get() {
            return Maps.newLinkedHashMapWithExpectedSize(this.expectedSize);
        }
    }

    public static <R, C, V> HashBasedTable<R, C, V> create() {
        return new HashBasedTable<>(new LinkedHashMap(), new Factory(0));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(int expectedRows, int expectedCellsPerRow) {
        CollectPreconditions.checkNonnegative(expectedCellsPerRow, "expectedCellsPerRow");
        return new HashBasedTable<>(Maps.newLinkedHashMapWithExpectedSize(expectedRows), new Factory(expectedCellsPerRow));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(Table<? extends R, ? extends C, ? extends V> table) {
        HashBasedTable<R, C, V> hashBasedTableCreate = create();
        hashBasedTableCreate.putAll(table);
        return hashBasedTableCreate;
    }

    HashBasedTable(Map<R, Map<C, V>> backingMap, Factory<C, V> factory) {
        super(backingMap, factory);
    }
}
