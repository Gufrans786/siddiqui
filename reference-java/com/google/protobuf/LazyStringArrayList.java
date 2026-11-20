package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public class LazyStringArrayList extends AbstractProtobufList<String> implements LazyStringList, RandomAccess {

    @Deprecated
    public static final LazyStringList EMPTY;
    private static final LazyStringArrayList EMPTY_LIST;
    private final List<Object> list;

    @Override
    public boolean add(Object e) {
        return super.add(e);
    }

    @Override
    public boolean equals(Object o) {
        return super.equals(o);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isModifiable() {
        return super.isModifiable();
    }

    @Override
    public boolean remove(Object o) {
        return super.remove(o);
    }

    @Override
    public boolean removeAll(Collection c) {
        return super.removeAll(c);
    }

    @Override
    public boolean retainAll(Collection c) {
        return super.retainAll(c);
    }

    static {
        LazyStringArrayList lazyStringArrayList = new LazyStringArrayList(false);
        EMPTY_LIST = lazyStringArrayList;
        EMPTY = lazyStringArrayList;
    }

    public static LazyStringArrayList emptyList() {
        return EMPTY_LIST;
    }

    public LazyStringArrayList() {
        this(10);
    }

    private LazyStringArrayList(boolean isMutable) {
        super(isMutable);
        this.list = Collections.emptyList();
    }

    public LazyStringArrayList(int initialCapacity) {
        this((ArrayList<Object>) new ArrayList(initialCapacity));
    }

    public LazyStringArrayList(LazyStringList from) {
        this.list = new ArrayList(from.size());
        addAll(from);
    }

    public LazyStringArrayList(List<String> from) {
        this((ArrayList<Object>) new ArrayList(from));
    }

    private LazyStringArrayList(ArrayList<Object> list) {
        this.list = list;
    }

    @Override
    public LazyStringArrayList mutableCopyWithCapacity2(int capacity) {
        if (capacity < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(capacity);
        arrayList.addAll(this.list);
        return new LazyStringArrayList((ArrayList<Object>) arrayList);
    }

    @Override
    public String get(int index) {
        Object obj = this.list.get(index);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.list.set(index, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String stringUtf9 = Internal.toStringUtf8(bArr);
        if (Internal.isValidUtf8(bArr)) {
            this.list.set(index, stringUtf9);
        }
        return stringUtf9;
    }

    @Override
    public int size() {
        return this.list.size();
    }

    @Override
    public String set(int index, String s) {
        ensureIsMutable();
        return asString(this.list.set(index, s));
    }

    @Override
    public void add(int index, String element) {
        ensureIsMutable();
        this.list.add(index, element);
        this.modCount++;
    }

    public void add(int index, ByteString element) {
        ensureIsMutable();
        this.list.add(index, element);
        this.modCount++;
    }

    public void add(int index, byte[] element) {
        ensureIsMutable();
        this.list.add(index, element);
        this.modCount++;
    }

    @Override
    public boolean addAll(Collection<? extends String> c) {
        return addAll(size(), c);
    }

    @Override
    public boolean addAll(int index, Collection<? extends String> c) {
        ensureIsMutable();
        if (c instanceof LazyStringList) {
            c = ((LazyStringList) c).getUnderlyingElements();
        }
        boolean zAddAll = this.list.addAll(index, c);
        this.modCount++;
        return zAddAll;
    }

    @Override
    public boolean addAllByteString(Collection<? extends ByteString> values) {
        ensureIsMutable();
        boolean zAddAll = this.list.addAll(values);
        this.modCount++;
        return zAddAll;
    }

    @Override
    public boolean addAllByteArray(Collection<byte[]> c) {
        ensureIsMutable();
        boolean zAddAll = this.list.addAll(c);
        this.modCount++;
        return zAddAll;
    }

    @Override
    public String remove(int index) {
        ensureIsMutable();
        Object objRemove = this.list.remove(index);
        this.modCount++;
        return asString(objRemove);
    }

    @Override
    public void clear() {
        ensureIsMutable();
        this.list.clear();
        this.modCount++;
    }

    @Override
    public void add(ByteString element) {
        ensureIsMutable();
        this.list.add(element);
        this.modCount++;
    }

    @Override
    public void add(byte[] element) {
        ensureIsMutable();
        this.list.add(element);
        this.modCount++;
    }

    @Override
    public Object getRaw(int index) {
        return this.list.get(index);
    }

    @Override
    public ByteString getByteString(int index) {
        Object obj = this.list.get(index);
        ByteString byteStringAsByteString = asByteString(obj);
        if (byteStringAsByteString != obj) {
            this.list.set(index, byteStringAsByteString);
        }
        return byteStringAsByteString;
    }

    @Override
    public byte[] getByteArray(int i) {
        Object obj = this.list.get(i);
        byte[] bArrAsByteArray = asByteArray(obj);
        if (bArrAsByteArray != obj) {
            this.list.set(i, bArrAsByteArray);
        }
        return bArrAsByteArray;
    }

    @Override
    public void set(int index, ByteString s) {
        setAndReturn(index, s);
    }

    public Object setAndReturn(int index, ByteString s) {
        ensureIsMutable();
        return this.list.set(index, s);
    }

    @Override
    public void set(int index, byte[] s) {
        setAndReturn(index, s);
    }

    public Object setAndReturn(int index, byte[] s) {
        ensureIsMutable();
        return this.list.set(index, s);
    }

    private static String asString(Object o) {
        if (o instanceof String) {
            return (String) o;
        }
        if (o instanceof ByteString) {
            return ((ByteString) o).toStringUtf8();
        }
        return Internal.toStringUtf8((byte[]) o);
    }

    public static ByteString asByteString(Object o) {
        if (o instanceof ByteString) {
            return (ByteString) o;
        }
        if (o instanceof String) {
            return ByteString.copyFromUtf8((String) o);
        }
        return ByteString.copyFrom((byte[]) o);
    }

    public static byte[] asByteArray(Object o) {
        if (o instanceof byte[]) {
            return (byte[]) o;
        }
        if (o instanceof String) {
            return Internal.toByteArray((String) o);
        }
        return ((ByteString) o).toByteArray();
    }

    @Override
    public List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.list);
    }

    @Override
    public void mergeFrom(LazyStringList other) {
        ensureIsMutable();
        for (Object obj : other.getUnderlyingElements()) {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.list.add(Arrays.copyOf(bArr, bArr.length));
            } else {
                this.list.add(obj);
            }
        }
    }

    private static class ByteArrayListView extends AbstractList<byte[]> implements RandomAccess {
        private final LazyStringArrayList list;

        ByteArrayListView(LazyStringArrayList list) {
            this.list = list;
        }

        @Override
        public byte[] get(int index) {
            return this.list.getByteArray(index);
        }

        @Override
        public int size() {
            return this.list.size();
        }

        @Override
        public byte[] set(int index, byte[] s) {
            Object andReturn = this.list.setAndReturn(index, s);
            this.modCount++;
            return LazyStringArrayList.asByteArray(andReturn);
        }

        @Override
        public void add(int index, byte[] s) {
            this.list.add(index, s);
            this.modCount++;
        }

        @Override
        public byte[] remove(int index) {
            String strRemove = this.list.remove(index);
            this.modCount++;
            return LazyStringArrayList.asByteArray(strRemove);
        }
    }

    @Override
    public List<byte[]> asByteArrayList() {
        return new ByteArrayListView(this);
    }

    private static class ByteStringListView extends AbstractList<ByteString> implements RandomAccess {
        private final LazyStringArrayList list;

        ByteStringListView(LazyStringArrayList list) {
            this.list = list;
        }

        @Override
        public ByteString get(int index) {
            return this.list.getByteString(index);
        }

        @Override
        public int size() {
            return this.list.size();
        }

        @Override
        public ByteString set(int index, ByteString s) {
            Object andReturn = this.list.setAndReturn(index, s);
            this.modCount++;
            return LazyStringArrayList.asByteString(andReturn);
        }

        @Override
        public void add(int index, ByteString s) {
            this.list.add(index, s);
            this.modCount++;
        }

        @Override
        public ByteString remove(int index) {
            String strRemove = this.list.remove(index);
            this.modCount++;
            return LazyStringArrayList.asByteString(strRemove);
        }
    }

    @Override
    public List<ByteString> asByteStringList() {
        return new ByteStringListView(this);
    }

    @Override
    public LazyStringList getUnmodifiableView() {
        return isModifiable() ? new UnmodifiableLazyStringList(this) : this;
    }
}
