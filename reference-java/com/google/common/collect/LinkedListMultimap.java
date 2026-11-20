package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public class LinkedListMultimap<K, V> extends AbstractMultimap<K, V> implements ListMultimap<K, V>, Serializable {
    private static final long serialVersionUID = 0;

    @CheckForNull
    private transient Node<K, V> head;
    private transient Map<K, KeyList<K, V>> keyToKeyList;
    private transient int modCount;
    private transient int size;

    @CheckForNull
    private transient Node<K, V> tail;

    @Override
    public Map asMap() {
        return super.asMap();
    }

    @Override
    public boolean containsEntry(@CheckForNull Object key, @CheckForNull Object value) {
        return super.containsEntry(key, value);
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
    public Set keySet() {
        return super.keySet();
    }

    @Override
    public Multiset keys() {
        return super.keys();
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
    public String toString() {
        return super.toString();
    }

    static final class Node<K, V> extends AbstractMapEntry<K, V> {

        @ParametricNullness
        final K key;

        @CheckForNull
        Node<K, V> next;

        @CheckForNull
        Node<K, V> nextSibling;

        @CheckForNull
        Node<K, V> previous;

        @CheckForNull
        Node<K, V> previousSibling;

        @ParametricNullness
        V value;

        Node(@ParametricNullness K key, @ParametricNullness V value) {
            this.key = key;
            this.value = value;
        }

        @Override
        @ParametricNullness
        public K getKey() {
            return this.key;
        }

        @Override
        @ParametricNullness
        public V getValue() {
            return this.value;
        }

        @Override
        @ParametricNullness
        public V setValue(@ParametricNullness V newValue) {
            V v = this.value;
            this.value = newValue;
            return v;
        }
    }

    private static class KeyList<K, V> {
        int count;
        Node<K, V> head;
        Node<K, V> tail;

        KeyList(Node<K, V> firstNode) {
            this.head = firstNode;
            this.tail = firstNode;
            firstNode.previousSibling = null;
            firstNode.nextSibling = null;
            this.count = 1;
        }
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    public static <K, V> LinkedListMultimap<K, V> create(int expectedKeys) {
        return new LinkedListMultimap<>(expectedKeys);
    }

    public static <K, V> LinkedListMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new LinkedListMultimap<>(multimap);
    }

    LinkedListMultimap() {
        this(12);
    }

    private LinkedListMultimap(int expectedKeys) {
        this.keyToKeyList = Platform.newHashMapWithExpectedSize(expectedKeys);
    }

    private LinkedListMultimap(Multimap<? extends K, ? extends V> multimap) {
        this(multimap.keySet().size());
        putAll(multimap);
    }

    public Node<K, V> addNode(@ParametricNullness K key, @ParametricNullness V value, @CheckForNull Node<K, V> nextSibling) {
        Node<K, V> node = new Node<>(key, value);
        if (this.head == null) {
            this.tail = node;
            this.head = node;
            this.keyToKeyList.put(key, new KeyList<>(node));
            this.modCount++;
        } else if (nextSibling == null) {
            ((Node) Objects.requireNonNull(this.tail)).next = node;
            node.previous = this.tail;
            this.tail = node;
            KeyList<K, V> keyList = this.keyToKeyList.get(key);
            if (keyList == null) {
                this.keyToKeyList.put(key, new KeyList<>(node));
                this.modCount++;
            } else {
                keyList.count++;
                Node<K, V> node2 = keyList.tail;
                node2.nextSibling = node;
                node.previousSibling = node2;
                keyList.tail = node;
            }
        } else {
            KeyList keyList2 = (KeyList) Objects.requireNonNull(this.keyToKeyList.get(key));
            keyList2.count++;
            node.previous = nextSibling.previous;
            node.previousSibling = nextSibling.previousSibling;
            node.next = nextSibling;
            node.nextSibling = nextSibling;
            if (nextSibling.previousSibling == null) {
                keyList2.head = node;
            } else {
                nextSibling.previousSibling.nextSibling = node;
            }
            if (nextSibling.previous == null) {
                this.head = node;
            } else {
                nextSibling.previous.next = node;
            }
            nextSibling.previous = node;
            nextSibling.previousSibling = node;
        }
        this.size++;
        return node;
    }

    public void removeNode(Node<K, V> node) {
        if (node.previous != null) {
            node.previous.next = node.next;
        } else {
            this.head = node.next;
        }
        if (node.next != null) {
            node.next.previous = node.previous;
        } else {
            this.tail = node.previous;
        }
        if (node.previousSibling == null && node.nextSibling == null) {
            ((KeyList) Objects.requireNonNull(this.keyToKeyList.remove(node.key))).count = 0;
            this.modCount++;
        } else {
            KeyList keyList = (KeyList) Objects.requireNonNull(this.keyToKeyList.get(node.key));
            keyList.count--;
            if (node.previousSibling == null) {
                keyList.head = (Node) Objects.requireNonNull(node.nextSibling);
            } else {
                node.previousSibling.nextSibling = node.nextSibling;
            }
            if (node.nextSibling == null) {
                keyList.tail = (Node) Objects.requireNonNull(node.previousSibling);
            } else {
                node.nextSibling.previousSibling = node.previousSibling;
            }
        }
        this.size--;
    }

    public void removeAllNodes(@ParametricNullness K key) {
        Iterators.clear(new ValueForKeyIterator(key));
    }

    private class NodeIterator implements ListIterator<Map.Entry<K, V>> {

        @CheckForNull
        Node<K, V> current;
        int expectedModCount;

        @CheckForNull
        Node<K, V> next;
        int nextIndex;

        @CheckForNull
        Node<K, V> previous;

        NodeIterator(int index) {
            this.expectedModCount = LinkedListMultimap.this.modCount;
            int size = LinkedListMultimap.this.size();
            Preconditions.checkPositionIndex(index, size);
            if (index >= size / 2) {
                this.previous = LinkedListMultimap.this.tail;
                this.nextIndex = size;
                while (true) {
                    int i = index + 1;
                    if (index >= size) {
                        break;
                    }
                    previous();
                    index = i;
                }
            } else {
                this.next = LinkedListMultimap.this.head;
                while (true) {
                    int i2 = index - 1;
                    if (index <= 0) {
                        break;
                    }
                    next();
                    index = i2;
                }
            }
            this.current = null;
        }

        private void checkForConcurrentModification() {
            if (LinkedListMultimap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public boolean hasNext() {
            checkForConcurrentModification();
            return this.next != null;
        }

        @Override
        public Node<K, V> next() {
            checkForConcurrentModification();
            Node<K, V> node = this.next;
            if (node == null) {
                throw new NoSuchElementException();
            }
            this.current = node;
            this.previous = node;
            this.next = node.next;
            this.nextIndex++;
            return this.current;
        }

        @Override
        public void remove() {
            checkForConcurrentModification();
            Preconditions.checkState(this.current != null, "no calls to next() since the last call to remove()");
            Node<K, V> node = this.current;
            if (node != this.next) {
                this.previous = node.previous;
                this.nextIndex--;
            } else {
                this.next = node.next;
            }
            LinkedListMultimap.this.removeNode(this.current);
            this.current = null;
            this.expectedModCount = LinkedListMultimap.this.modCount;
        }

        @Override
        public boolean hasPrevious() {
            checkForConcurrentModification();
            return this.previous != null;
        }

        @Override
        public Node<K, V> previous() {
            checkForConcurrentModification();
            Node<K, V> node = this.previous;
            if (node == null) {
                throw new NoSuchElementException();
            }
            this.current = node;
            this.next = node;
            this.previous = node.previous;
            this.nextIndex--;
            return this.current;
        }

        @Override
        public int nextIndex() {
            return this.nextIndex;
        }

        @Override
        public int previousIndex() {
            return this.nextIndex - 1;
        }

        @Override
        public void set(Map.Entry<K, V> e) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void add(Map.Entry<K, V> e) {
            throw new UnsupportedOperationException();
        }

        void setValue(@ParametricNullness V value) {
            Preconditions.checkState(this.current != null);
            this.current.value = value;
        }
    }

    private class DistinctKeyIterator implements Iterator<K> {

        @CheckForNull
        Node<K, V> current;
        int expectedModCount;

        @CheckForNull
        Node<K, V> next;
        final Set<K> seenKeys;

        private DistinctKeyIterator() {
            this.seenKeys = Sets.newHashSetWithExpectedSize(LinkedListMultimap.this.keySet().size());
            this.next = LinkedListMultimap.this.head;
            this.expectedModCount = LinkedListMultimap.this.modCount;
        }

        private void checkForConcurrentModification() {
            if (LinkedListMultimap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public boolean hasNext() {
            checkForConcurrentModification();
            return this.next != null;
        }

        @Override
        @ParametricNullness
        public K next() {
            Node<K, V> node;
            checkForConcurrentModification();
            Node<K, V> node2 = this.next;
            if (node2 == null) {
                throw new NoSuchElementException();
            }
            this.current = node2;
            this.seenKeys.add(node2.key);
            do {
                node = this.next.next;
                this.next = node;
                if (node == null) {
                    break;
                }
            } while (!this.seenKeys.add(node.key));
            return this.current.key;
        }

        @Override
        public void remove() {
            checkForConcurrentModification();
            Preconditions.checkState(this.current != null, "no calls to next() since the last call to remove()");
            LinkedListMultimap.this.removeAllNodes(this.current.key);
            this.current = null;
            this.expectedModCount = LinkedListMultimap.this.modCount;
        }
    }

    private class ValueForKeyIterator implements ListIterator<V> {

        @CheckForNull
        Node<K, V> current;

        @ParametricNullness
        final K key;

        @CheckForNull
        Node<K, V> next;
        int nextIndex;

        @CheckForNull
        Node<K, V> previous;

        ValueForKeyIterator(K key) {
            this.key = key;
            KeyList keyList = (KeyList) LinkedListMultimap.this.keyToKeyList.get(key);
            this.next = keyList == null ? null : keyList.head;
        }

        public ValueForKeyIterator(K key, int index) {
            KeyList keyList = (KeyList) LinkedListMultimap.this.keyToKeyList.get(key);
            int i = keyList == null ? 0 : keyList.count;
            Preconditions.checkPositionIndex(index, i);
            if (index >= i / 2) {
                this.previous = keyList == null ? null : keyList.tail;
                this.nextIndex = i;
                while (true) {
                    int i2 = index + 1;
                    if (index >= i) {
                        break;
                    }
                    previous();
                    index = i2;
                }
            } else {
                this.next = keyList == null ? null : keyList.head;
                while (true) {
                    int i3 = index - 1;
                    if (index <= 0) {
                        break;
                    }
                    next();
                    index = i3;
                }
            }
            this.key = key;
            this.current = null;
        }

        @Override
        public boolean hasNext() {
            return this.next != null;
        }

        @Override
        @ParametricNullness
        public V next() {
            Node<K, V> node = this.next;
            if (node == null) {
                throw new NoSuchElementException();
            }
            this.current = node;
            this.previous = node;
            this.next = node.nextSibling;
            this.nextIndex++;
            return this.current.value;
        }

        @Override
        public boolean hasPrevious() {
            return this.previous != null;
        }

        @Override
        @ParametricNullness
        public V previous() {
            Node<K, V> node = this.previous;
            if (node == null) {
                throw new NoSuchElementException();
            }
            this.current = node;
            this.next = node;
            this.previous = node.previousSibling;
            this.nextIndex--;
            return this.current.value;
        }

        @Override
        public int nextIndex() {
            return this.nextIndex;
        }

        @Override
        public int previousIndex() {
            return this.nextIndex - 1;
        }

        @Override
        public void remove() {
            Preconditions.checkState(this.current != null, "no calls to next() since the last call to remove()");
            Node<K, V> node = this.current;
            if (node != this.next) {
                this.previous = node.previousSibling;
                this.nextIndex--;
            } else {
                this.next = node.nextSibling;
            }
            LinkedListMultimap.this.removeNode(this.current);
            this.current = null;
        }

        @Override
        public void set(@ParametricNullness V value) {
            Preconditions.checkState(this.current != null);
            this.current.value = value;
        }

        @Override
        public void add(@ParametricNullness V value) {
            this.previous = LinkedListMultimap.this.addNode(this.key, value, this.next);
            this.nextIndex++;
            this.current = null;
        }
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public boolean isEmpty() {
        return this.head == null;
    }

    @Override
    public boolean containsKey(@CheckForNull Object key) {
        return this.keyToKeyList.containsKey(key);
    }

    @Override
    public boolean containsValue(@CheckForNull Object value) {
        return values().contains(value);
    }

    @Override
    public boolean put(@ParametricNullness K key, @ParametricNullness V value) {
        addNode(key, value, null);
        return true;
    }

    @Override
    public List<V> replaceValues(@ParametricNullness K key, Iterable<? extends V> values) {
        List<V> copy = getCopy(key);
        ValueForKeyIterator valueForKeyIterator = new ValueForKeyIterator(key);
        Iterator<? extends V> it = values.iterator();
        while (valueForKeyIterator.hasNext() && it.hasNext()) {
            valueForKeyIterator.next();
            valueForKeyIterator.set(it.next());
        }
        while (valueForKeyIterator.hasNext()) {
            valueForKeyIterator.next();
            valueForKeyIterator.remove();
        }
        while (it.hasNext()) {
            valueForKeyIterator.add(it.next());
        }
        return copy;
    }

    private List<V> getCopy(@ParametricNullness K key) {
        return Collections.unmodifiableList(Lists.newArrayList(new ValueForKeyIterator(key)));
    }

    @Override
    public List<V> removeAll(@CheckForNull Object key) {
        List<V> copy = getCopy(key);
        removeAllNodes(key);
        return copy;
    }

    @Override
    public void clear() {
        this.head = null;
        this.tail = null;
        this.keyToKeyList.clear();
        this.size = 0;
        this.modCount++;
    }

    @Override
    public List<V> get(@ParametricNullness final K key) {
        return new AbstractSequentialList<V>(this) {
            final LinkedListMultimap this$0;

            {
                this.this$0 = this;
            }

            @Override
            public int size() {
                KeyList keyList = (KeyList) this.this$0.keyToKeyList.get(key);
                if (keyList == null) {
                    return 0;
                }
                return keyList.count;
            }

            @Override
            public ListIterator<V> listIterator(int index) {
                return new ValueForKeyIterator(key, index);
            }
        };
    }

    @Override
    Set<K> createKeySet() {
        return new Sets.ImprovedAbstractSet<K>() {
            @Override
            public int size() {
                return LinkedListMultimap.this.keyToKeyList.size();
            }

            @Override
            public Iterator<K> iterator() {
                return new DistinctKeyIterator();
            }

            @Override
            public boolean contains(@CheckForNull Object key) {
                return LinkedListMultimap.this.containsKey(key);
            }

            @Override
            public boolean remove(@CheckForNull Object o) {
                return !LinkedListMultimap.this.removeAll(o).isEmpty();
            }
        };
    }

    @Override
    Multiset<K> createKeys() {
        return new Multimaps.Keys(this);
    }

    @Override
    public List<V> values() {
        return (List) super.values();
    }

    @Override
    public List<V> createValues() {
        return new AbstractSequentialList<V>() {
            @Override
            public int size() {
                return LinkedListMultimap.this.size;
            }

            @Override
            public ListIterator<V> listIterator(int index) {
                final NodeIterator nodeIterator = new NodeIterator(index);
                return new TransformedListIterator<Map.Entry<K, V>, V>(this, nodeIterator) {
                    final C1ValuesImpl this$1;

                    {
                        this.this$1 = this;
                    }

                    @Override
                    @ParametricNullness
                    public V transform(Map.Entry<K, V> entry) {
                        return entry.getValue();
                    }

                    @Override
                    public void set(@ParametricNullness V value) {
                        nodeIterator.setValue(value);
                    }
                };
            }
        };
    }

    @Override
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    @Override
    public List<Map.Entry<K, V>> createEntries() {
        return new AbstractSequentialList<Map.Entry<K, V>>() {
            @Override
            public int size() {
                return LinkedListMultimap.this.size;
            }

            @Override
            public ListIterator<Map.Entry<K, V>> listIterator(int index) {
                return new NodeIterator(index);
            }
        };
    }

    @Override
    Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override
    Map<K, Collection<V>> createAsMap() {
        return new Multimaps.AsMap(this);
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        stream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            stream.writeObject(entry.getKey());
            stream.writeObject(entry.getValue());
        }
    }

    private void readObject(ObjectInputStream stream) throws ClassNotFoundException, IOException {
        stream.defaultReadObject();
        this.keyToKeyList = CompactLinkedHashMap.create();
        int i = stream.readInt();
        for (int i2 = 0; i2 < i; i2++) {
            put(stream.readObject(), stream.readObject());
        }
    }
}
