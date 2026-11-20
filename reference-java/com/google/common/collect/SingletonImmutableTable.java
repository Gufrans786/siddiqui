package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Map;

@ElementTypesAreNonnullByDefault
class SingletonImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {
    final C singleColumnKey;
    final R singleRowKey;
    final V singleValue;

    @Override
    public int size() {
        return 1;
    }

    SingletonImmutableTable(R r, C c, V v) {
        this.singleRowKey = (R) Preconditions.checkNotNull(r);
        this.singleColumnKey = (C) Preconditions.checkNotNull(c);
        this.singleValue = (V) Preconditions.checkNotNull(v);
    }

    SingletonImmutableTable(Table.Cell<R, C, V> cell) {
        this(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
    }

    @Override
    public ImmutableMap<R, V> column(C columnKey) {
        Preconditions.checkNotNull(columnKey);
        if (containsColumn(columnKey)) {
            return ImmutableMap.of(this.singleRowKey, (Object) this.singleValue);
        }
        return ImmutableMap.of();
    }

    @Override
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.of(this.singleColumnKey, ImmutableMap.of(this.singleRowKey, (Object) this.singleValue));
    }

    @Override
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.of(this.singleRowKey, ImmutableMap.of(this.singleColumnKey, (Object) this.singleValue));
    }

    @Override
    public ImmutableSet<Table.Cell<R, C, V>> createCellSet() {
        return ImmutableSet.of(cellOf(this.singleRowKey, this.singleColumnKey, this.singleValue));
    }

    @Override
    public ImmutableCollection<V> createValues() {
        return ImmutableSet.of(this.singleValue);
    }

    @Override
    Object writeReplace() {
        return ImmutableTable.SerializedForm.create(this, new int[]{0}, new int[]{0});
    }
}
