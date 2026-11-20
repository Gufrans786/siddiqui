package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
class StandardTable<R, C, V> extends AbstractTable<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;

    @GwtTransient
    final Map<R, Map<C, V>> backingMap;

    @CheckForNull
    @LazyInit
    private transient Set<C> columnKeySet;

    @CheckForNull
    @LazyInit
    private transient StandardTable<R, C, V>.ColumnMap columnMap;

    @GwtTransient
    final Supplier<? extends Map<C, V>> factory;

    @CheckForNull
    @LazyInit
    private transient Map<R, Map<C, V>> rowMap;

    StandardTable(Map<R, Map<C, V>> backingMap, Supplier<? extends Map<C, V>> factory) {
        this.backingMap = backingMap;
        this.factory = factory;
    }

    @Override
    public boolean contains(@CheckForNull Object rowKey, @CheckForNull Object columnKey) {
        return (rowKey == null || columnKey == null || !super.contains(rowKey, columnKey)) ? false : true;
    }

    @Override
    public boolean containsColumn(@CheckForNull Object columnKey) {
        if (columnKey == null) {
            return false;
        }
        Iterator<Map<C, V>> it = this.backingMap.values().iterator();
        while (it.hasNext()) {
            if (Maps.safeContainsKey(it.next(), columnKey)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean containsRow(@CheckForNull Object rowKey) {
        return rowKey != null && Maps.safeContainsKey(this.backingMap, rowKey);
    }

    @Override
    public boolean containsValue(@CheckForNull Object value) {
        return value != null && super.containsValue(value);
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.get(obj, obj2);
    }

    @Override
    public boolean isEmpty() {
        return this.backingMap.isEmpty();
    }

    @Override
    public int size() {
        Iterator<Map<C, V>> it = this.backingMap.values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    @Override
    public void clear() {
        this.backingMap.clear();
    }

    private Map<C, V> getOrCreate(R rowKey) {
        Map<C, V> map = this.backingMap.get(rowKey);
        if (map != null) {
            return map;
        }
        Map<C, V> map2 = this.factory.get();
        this.backingMap.put(rowKey, map2);
        return map2;
    }

    @Override
    @CheckForNull
    public V put(R rowKey, C columnKey, V value) {
        Preconditions.checkNotNull(rowKey);
        Preconditions.checkNotNull(columnKey);
        Preconditions.checkNotNull(value);
        return getOrCreate(rowKey).put(columnKey, value);
    }

    @Override
    @CheckForNull
    public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) Maps.safeGet(this.backingMap, obj)) == null) {
            return null;
        }
        V v = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.backingMap.remove(obj);
        }
        return v;
    }

    public Map<R, V> removeColumn(@CheckForNull Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.backingMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V vRemove = next.getValue().remove(obj);
            if (vRemove != null) {
                linkedHashMap.put(next.getKey(), vRemove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    public boolean containsMapping(@CheckForNull Object rowKey, @CheckForNull Object columnKey, @CheckForNull Object value) {
        return value != null && value.equals(get(rowKey, columnKey));
    }

    public boolean removeMapping(@CheckForNull Object rowKey, @CheckForNull Object columnKey, @CheckForNull Object value) {
        if (!containsMapping(rowKey, columnKey, value)) {
            return false;
        }
        remove(rowKey, columnKey);
        return true;
    }

    private abstract class TableSet<T> extends Sets.ImprovedAbstractSet<T> {
        private TableSet() {
        }

        @Override
        public boolean isEmpty() {
            return StandardTable.this.backingMap.isEmpty();
        }

        @Override
        public void clear() {
            StandardTable.this.backingMap.clear();
        }
    }

    @Override
    public Set<Table.Cell<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override
    Iterator<Table.Cell<R, C, V>> cellIterator() {
        return new CellIterator();
    }

    private class CellIterator implements Iterator<Table.Cell<R, C, V>> {
        Iterator<Map.Entry<C, V>> columnIterator;

        @CheckForNull
        Map.Entry<R, Map<C, V>> rowEntry;
        final Iterator<Map.Entry<R, Map<C, V>>> rowIterator;

        private CellIterator() {
            this.rowIterator = StandardTable.this.backingMap.entrySet().iterator();
            this.columnIterator = Iterators.emptyModifiableIterator();
        }

        @Override
        public boolean hasNext() {
            return this.rowIterator.hasNext() || this.columnIterator.hasNext();
        }

        @Override
        public Table.Cell<R, C, V> next() {
            if (!this.columnIterator.hasNext()) {
                Map.Entry<R, Map<C, V>> next = this.rowIterator.next();
                this.rowEntry = next;
                this.columnIterator = next.getValue().entrySet().iterator();
            }
            Objects.requireNonNull(this.rowEntry);
            Map.Entry<C, V> next2 = this.columnIterator.next();
            return Tables.immutableCell(this.rowEntry.getKey(), next2.getKey(), next2.getValue());
        }

        @Override
        public void remove() {
            this.columnIterator.remove();
            if (((Map) ((Map.Entry) Objects.requireNonNull(this.rowEntry)).getValue()).isEmpty()) {
                this.rowIterator.remove();
                this.rowEntry = null;
            }
        }
    }

    @Override
    public Map<C, V> row(R rowKey) {
        return new Row(rowKey);
    }

    class Row extends Maps.IteratorBasedAbstractMap<C, V> {

        @CheckForNull
        Map<C, V> backingRowMap;
        final R rowKey;

        Row(R r) {
            this.rowKey = (R) Preconditions.checkNotNull(r);
        }

        final void updateBackingRowMapField() {
            Map<C, V> map = this.backingRowMap;
            if (map == null || (map.isEmpty() && StandardTable.this.backingMap.containsKey(this.rowKey))) {
                this.backingRowMap = computeBackingRowMap();
            }
        }

        @CheckForNull
        Map<C, V> computeBackingRowMap() {
            return StandardTable.this.backingMap.get(this.rowKey);
        }

        void maintainEmptyInvariant() {
            updateBackingRowMapField();
            Map<C, V> map = this.backingRowMap;
            if (map == null || !map.isEmpty()) {
                return;
            }
            StandardTable.this.backingMap.remove(this.rowKey);
            this.backingRowMap = null;
        }

        @Override
        public boolean containsKey(@CheckForNull Object key) {
            Map<C, V> map;
            updateBackingRowMapField();
            return (key == null || (map = this.backingRowMap) == null || !Maps.safeContainsKey(map, key)) ? false : true;
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            Map<C, V> map;
            updateBackingRowMapField();
            if (obj == null || (map = this.backingRowMap) == null) {
                return null;
            }
            return (V) Maps.safeGet(map, obj);
        }

        @Override
        @CheckForNull
        public V put(C c, V v) {
            Preconditions.checkNotNull(c);
            Preconditions.checkNotNull(v);
            Map<C, V> map = this.backingRowMap;
            if (map != null && !map.isEmpty()) {
                return this.backingRowMap.put(c, v);
            }
            return (V) StandardTable.this.put(this.rowKey, c, v);
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            updateBackingRowMapField();
            Map<C, V> map = this.backingRowMap;
            if (map == null) {
                return null;
            }
            V v = (V) Maps.safeRemove(map, obj);
            maintainEmptyInvariant();
            return v;
        }

        @Override
        public void clear() {
            updateBackingRowMapField();
            Map<C, V> map = this.backingRowMap;
            if (map != null) {
                map.clear();
            }
            maintainEmptyInvariant();
        }

        @Override
        public int size() {
            updateBackingRowMapField();
            Map<C, V> map = this.backingRowMap;
            if (map == null) {
                return 0;
            }
            return map.size();
        }

        @Override
        Iterator<Map.Entry<C, V>> entryIterator() {
            updateBackingRowMapField();
            Map<C, V> map = this.backingRowMap;
            if (map == null) {
                return Iterators.emptyModifiableIterator();
            }
            final Iterator<Map.Entry<C, V>> it = map.entrySet().iterator();
            return new Iterator<Map.Entry<C, V>>(this) {
                final Row this$1;

                {
                    this.this$1 = this;
                }

                @Override
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override
                public Map.Entry<C, V> next() {
                    return this.this$1.wrapEntry((Map.Entry) it.next());
                }

                @Override
                public void remove() {
                    it.remove();
                    this.this$1.maintainEmptyInvariant();
                }
            };
        }

        Map.Entry<C, V> wrapEntry(final Map.Entry<C, V> entry) {
            return new ForwardingMapEntry<C, V>(this) {
                final Row this$1;

                {
                    this.this$1 = this;
                }

                @Override
                public Map.Entry<C, V> delegate() {
                    return entry;
                }

                @Override
                public V setValue(V v) {
                    return (V) super.setValue(Preconditions.checkNotNull(v));
                }

                @Override
                public boolean equals(@CheckForNull Object object) {
                    return standardEquals(object);
                }
            };
        }
    }

    @Override
    public Map<R, V> column(C columnKey) {
        return new Column(columnKey);
    }

    private class Column extends Maps.ViewCachingAbstractMap<R, V> {
        final C columnKey;

        Column(C c) {
            this.columnKey = (C) Preconditions.checkNotNull(c);
        }

        @Override
        @CheckForNull
        public V put(R r, V v) {
            return (V) StandardTable.this.put(r, this.columnKey, v);
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            return (V) StandardTable.this.get(obj, this.columnKey);
        }

        @Override
        public boolean containsKey(@CheckForNull Object key) {
            return StandardTable.this.contains(key, this.columnKey);
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            return (V) StandardTable.this.remove(obj, this.columnKey);
        }

        boolean removeFromColumnIf(Predicate<? super Map.Entry<R, V>> predicate) {
            Iterator<Map.Entry<R, Map<C, V>>> it = StandardTable.this.backingMap.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v = value.get(this.columnKey);
                if (v != null && predicate.apply(Maps.immutableEntry(next.getKey(), v))) {
                    value.remove(this.columnKey);
                    if (value.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override
        Set<Map.Entry<R, V>> createEntrySet() {
            return new EntrySet();
        }

        private class EntrySet extends Sets.ImprovedAbstractSet<Map.Entry<R, V>> {
            private EntrySet() {
            }

            @Override
            public Iterator<Map.Entry<R, V>> iterator() {
                return new EntrySetIterator();
            }

            @Override
            public int size() {
                Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (it.next().containsKey(Column.this.columnKey)) {
                        i++;
                    }
                }
                return i;
            }

            @Override
            public boolean isEmpty() {
                return !StandardTable.this.containsColumn(Column.this.columnKey);
            }

            @Override
            public void clear() {
                Column.this.removeFromColumnIf(Predicates.alwaysTrue());
            }

            @Override
            public boolean contains(@CheckForNull Object o) {
                if (!(o instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) o;
                return StandardTable.this.containsMapping(entry.getKey(), Column.this.columnKey, entry.getValue());
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.removeMapping(entry.getKey(), Column.this.columnKey, entry.getValue());
            }

            @Override
            public boolean retainAll(Collection<?> c) {
                return Column.this.removeFromColumnIf(Predicates.not(Predicates.in(c)));
            }
        }

        private class EntrySetIterator extends AbstractIterator<Map.Entry<R, V>> {
            final Iterator<Map.Entry<R, Map<C, V>>> iterator;

            private EntrySetIterator() {
                this.iterator = StandardTable.this.backingMap.entrySet().iterator();
            }

            @Override
            @CheckForNull
            public Map.Entry<R, V> computeNext() {
                while (this.iterator.hasNext()) {
                    final Map.Entry<R, Map<C, V>> next = this.iterator.next();
                    if (next.getValue().containsKey(Column.this.columnKey)) {
                        return new AbstractMapEntry<R, V>(this) {
                            final EntrySetIterator this$2;

                            {
                                this.this$2 = this;
                            }

                            @Override
                            public R getKey() {
                                return (R) next.getKey();
                            }

                            @Override
                            public V getValue() {
                                return (V) ((Map) next.getValue()).get(Column.this.columnKey);
                            }

                            @Override
                            public V setValue(V v) {
                                return (V) NullnessCasts.uncheckedCastNullableTToT(((Map) next.getValue()).put(Column.this.columnKey, Preconditions.checkNotNull(v)));
                            }
                        };
                    }
                }
                return endOfData();
            }
        }

        @Override
        Set<R> createKeySet() {
            return new KeySet();
        }

        private class KeySet extends Maps.KeySet<R, V> {
            KeySet() {
                super(Column.this);
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                return StandardTable.this.contains(obj, Column.this.columnKey);
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                return StandardTable.this.remove(obj, Column.this.columnKey) != null;
            }

            @Override
            public boolean retainAll(final Collection<?> c) {
                return Column.this.removeFromColumnIf(Maps.keyPredicateOnEntries(Predicates.not(Predicates.in(c))));
            }
        }

        @Override
        Collection<V> createValues() {
            return new Values();
        }

        private class Values extends Maps.Values<R, V> {
            Values() {
                super(Column.this);
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                return obj != null && Column.this.removeFromColumnIf(Maps.valuePredicateOnEntries(Predicates.equalTo(obj)));
            }

            @Override
            public boolean removeAll(final Collection<?> c) {
                return Column.this.removeFromColumnIf(Maps.valuePredicateOnEntries(Predicates.in(c)));
            }

            @Override
            public boolean retainAll(final Collection<?> c) {
                return Column.this.removeFromColumnIf(Maps.valuePredicateOnEntries(Predicates.not(Predicates.in(c))));
            }
        }
    }

    @Override
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override
    public Set<C> columnKeySet() {
        Set<C> set = this.columnKeySet;
        if (set != null) {
            return set;
        }
        ColumnKeySet columnKeySet = new ColumnKeySet();
        this.columnKeySet = columnKeySet;
        return columnKeySet;
    }

    private class ColumnKeySet extends StandardTable<R, C, V>.TableSet<C> {
        private ColumnKeySet() {
            super();
        }

        @Override
        public Iterator<C> iterator() {
            return StandardTable.this.createColumnKeyIterator();
        }

        @Override
        public int size() {
            return Iterators.size(iterator());
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            boolean z = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().remove(obj)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override
        public boolean removeAll(Collection<?> c) {
            Preconditions.checkNotNull(c);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (Iterators.removeAll(next.keySet().iterator(), c)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override
        public boolean retainAll(Collection<?> c) {
            Preconditions.checkNotNull(c);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().retainAll(c)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z = true;
                }
            }
            return z;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return StandardTable.this.containsColumn(obj);
        }
    }

    Iterator<C> createColumnKeyIterator() {
        return new ColumnKeyIterator();
    }

    private class ColumnKeyIterator extends AbstractIterator<C> {
        Iterator<Map.Entry<C, V>> entryIterator;
        final Iterator<Map<C, V>> mapIterator;
        final Map<C, V> seen;

        private ColumnKeyIterator() {
            this.seen = StandardTable.this.factory.get();
            this.mapIterator = StandardTable.this.backingMap.values().iterator();
            this.entryIterator = Iterators.emptyIterator();
        }

        @Override
        @CheckForNull
        protected C computeNext() {
            while (true) {
                if (this.entryIterator.hasNext()) {
                    Map.Entry<C, V> next = this.entryIterator.next();
                    if (!this.seen.containsKey(next.getKey())) {
                        this.seen.put(next.getKey(), next.getValue());
                        return next.getKey();
                    }
                } else if (this.mapIterator.hasNext()) {
                    this.entryIterator = this.mapIterator.next().entrySet().iterator();
                } else {
                    return endOfData();
                }
            }
        }
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    @Override
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.rowMap;
        if (map != null) {
            return map;
        }
        Map<R, Map<C, V>> mapCreateRowMap = createRowMap();
        this.rowMap = mapCreateRowMap;
        return mapCreateRowMap;
    }

    Map<R, Map<C, V>> createRowMap() {
        return new RowMap();
    }

    class RowMap extends Maps.ViewCachingAbstractMap<R, Map<C, V>> {
        RowMap() {
        }

        @Override
        public boolean containsKey(@CheckForNull Object key) {
            return StandardTable.this.containsRow(key);
        }

        @Override
        @CheckForNull
        public Map<C, V> get(@CheckForNull Object key) {
            if (StandardTable.this.containsRow(key)) {
                return StandardTable.this.row(Objects.requireNonNull(key));
            }
            return null;
        }

        @Override
        @CheckForNull
        public Map<C, V> remove(@CheckForNull Object key) {
            if (key == null) {
                return null;
            }
            return StandardTable.this.backingMap.remove(key);
        }

        @Override
        protected Set<Map.Entry<R, Map<C, V>>> createEntrySet() {
            return new EntrySet();
        }

        private final class EntrySet extends StandardTable<R, C, V>.TableSet<Map.Entry<R, Map<C, V>>> {
            private EntrySet() {
                super();
            }

            @Override
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return Maps.asMapEntryIterator(StandardTable.this.backingMap.keySet(), new Function<R, Map<C, V>>() {
                    @Override
                    public Map<C, V> apply(R rowKey) {
                        return StandardTable.this.row(rowKey);
                    }
                });
            }

            @Override
            public int size() {
                return StandardTable.this.backingMap.size();
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (entry.getKey() != null && (entry.getValue() instanceof Map) && Collections2.safeContains(StandardTable.this.backingMap.entrySet(), entry)) {
                        return true;
                    }
                }
                return false;
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (entry.getKey() != null && (entry.getValue() instanceof Map) && StandardTable.this.backingMap.entrySet().remove(entry)) {
                        return true;
                    }
                }
                return false;
            }
        }
    }

    @Override
    public Map<C, Map<R, V>> columnMap() {
        StandardTable<R, C, V>.ColumnMap columnMap = this.columnMap;
        if (columnMap != null) {
            return columnMap;
        }
        StandardTable<R, C, V>.ColumnMap columnMap2 = new ColumnMap();
        this.columnMap = columnMap2;
        return columnMap2;
    }

    private class ColumnMap extends Maps.ViewCachingAbstractMap<C, Map<R, V>> {
        private ColumnMap() {
        }

        @Override
        @CheckForNull
        public Map<R, V> get(@CheckForNull Object key) {
            if (StandardTable.this.containsColumn(key)) {
                return StandardTable.this.column(Objects.requireNonNull(key));
            }
            return null;
        }

        @Override
        public boolean containsKey(@CheckForNull Object key) {
            return StandardTable.this.containsColumn(key);
        }

        @Override
        @CheckForNull
        public Map<R, V> remove(@CheckForNull Object key) {
            if (StandardTable.this.containsColumn(key)) {
                return StandardTable.this.removeColumn(key);
            }
            return null;
        }

        @Override
        public Set<Map.Entry<C, Map<R, V>>> createEntrySet() {
            return new ColumnMapEntrySet();
        }

        @Override
        public Set<C> keySet() {
            return StandardTable.this.columnKeySet();
        }

        @Override
        Collection<Map<R, V>> createValues() {
            return new ColumnMapValues();
        }

        private final class ColumnMapEntrySet extends StandardTable<R, C, V>.TableSet<Map.Entry<C, Map<R, V>>> {
            private ColumnMapEntrySet() {
                super();
            }

            @Override
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                return Maps.asMapEntryIterator(StandardTable.this.columnKeySet(), new Function<C, Map<R, V>>() {
                    @Override
                    public Map<R, V> apply(C columnKey) {
                        return StandardTable.this.column(columnKey);
                    }
                });
            }

            @Override
            public int size() {
                return StandardTable.this.columnKeySet().size();
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (StandardTable.this.containsColumn(entry.getKey())) {
                    return ((Map) Objects.requireNonNull(ColumnMap.this.get(entry.getKey()))).equals(entry.getValue());
                }
                return false;
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (!contains(obj) || !(obj instanceof Map.Entry)) {
                    return false;
                }
                StandardTable.this.removeColumn(((Map.Entry) obj).getKey());
                return true;
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                Preconditions.checkNotNull(c);
                return Sets.removeAllImpl(this, c.iterator());
            }

            @Override
            public boolean retainAll(Collection<?> c) {
                Preconditions.checkNotNull(c);
                boolean z = false;
                for (Object obj : Lists.newArrayList(StandardTable.this.columnKeySet().iterator())) {
                    if (!c.contains(Maps.immutableEntry(obj, StandardTable.this.column(obj)))) {
                        StandardTable.this.removeColumn(obj);
                        z = true;
                    }
                }
                return z;
            }
        }

        private class ColumnMapValues extends Maps.Values<C, Map<R, V>> {
            ColumnMapValues() {
                super(ColumnMap.this);
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                for (Map.Entry<C, Map<R, V>> entry : ColumnMap.this.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        StandardTable.this.removeColumn(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                Preconditions.checkNotNull(c);
                boolean z = false;
                for (Object obj : Lists.newArrayList(StandardTable.this.columnKeySet().iterator())) {
                    if (c.contains(StandardTable.this.column(obj))) {
                        StandardTable.this.removeColumn(obj);
                        z = true;
                    }
                }
                return z;
            }

            @Override
            public boolean retainAll(Collection<?> c) {
                Preconditions.checkNotNull(c);
                boolean z = false;
                for (Object obj : Lists.newArrayList(StandardTable.this.columnKeySet().iterator())) {
                    if (!c.contains(StandardTable.this.column(obj))) {
                        StandardTable.this.removeColumn(obj);
                        z = true;
                    }
                }
                return z;
            }
        }
    }
}
