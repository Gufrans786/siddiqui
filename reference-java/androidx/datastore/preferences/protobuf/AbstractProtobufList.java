package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

abstract class AbstractProtobufList<E> extends AbstractList<E> implements Internal.ProtobufList<E> {
    protected static final int DEFAULT_CAPACITY = 10;
    private boolean isMutable;

    AbstractProtobufList() {
        this(true);
    }

    AbstractProtobufList(boolean isMutable) {
        this.isMutable = isMutable;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof List)) {
            return false;
        }
        if (!(o instanceof RandomAccess)) {
            return super.equals(o);
        }
        List list = (List) o;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i = 0; i < size; i++) {
            iHashCode = (iHashCode * 31) + get(i).hashCode();
        }
        return iHashCode;
    }

    @Override
    public boolean add(E e) {
        ensureIsMutable();
        return super.add(e);
    }

    @Override
    public void add(int index, E element) {
        ensureIsMutable();
        super.add(index, element);
    }

    @Override
    public boolean addAll(Collection<? extends E> c) {
        ensureIsMutable();
        return super.addAll(c);
    }

    @Override
    public boolean addAll(int index, Collection<? extends E> c) {
        ensureIsMutable();
        return super.addAll(index, c);
    }

    @Override
    public void clear() {
        ensureIsMutable();
        super.clear();
    }

    @Override
    public boolean isModifiable() {
        return this.isMutable;
    }

    @Override
    public final void makeImmutable() {
        if (this.isMutable) {
            this.isMutable = false;
        }
    }

    @Override
    public E remove(int i) {
        ensureIsMutable();
        return (E) super.remove(i);
    }

    @Override
    public boolean remove(Object o) {
        ensureIsMutable();
        int iIndexOf = indexOf(o);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override
    public boolean removeAll(Collection<?> c) {
        ensureIsMutable();
        return super.removeAll(c);
    }

    @Override
    public boolean retainAll(Collection<?> c) {
        ensureIsMutable();
        return super.retainAll(c);
    }

    @Override
    public E set(int i, E e) {
        ensureIsMutable();
        return (E) super.set(i, e);
    }

    protected void ensureIsMutable() {
        if (!this.isMutable) {
            throw new UnsupportedOperationException();
        }
    }
}
