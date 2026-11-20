package ch.qos.logback.core.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public class COWArrayList<E> implements List<E> {
    final E[] modelArray;
    E[] ourCopy;
    AtomicBoolean fresh = new AtomicBoolean(false);
    CopyOnWriteArrayList<E> underlyingList = new CopyOnWriteArrayList<>();

    public COWArrayList(E[] eArr) {
        this.modelArray = eArr;
    }

    private boolean isFresh() {
        return this.fresh.get();
    }

    private void markAsStale() {
        this.fresh.set(false);
    }

    private void refreshCopy() {
        this.ourCopy = (E[]) this.underlyingList.toArray(this.modelArray);
        this.fresh.set(true);
    }

    private void refreshCopyIfNecessary() {
        if (isFresh()) {
            return;
        }
        refreshCopy();
    }

    @Override
    public void add(int i, E e) {
        this.underlyingList.add(i, e);
        markAsStale();
    }

    @Override
    public boolean add(E e) {
        boolean zAdd = this.underlyingList.add(e);
        markAsStale();
        return zAdd;
    }

    @Override
    public boolean addAll(int i, Collection<? extends E> collection) {
        boolean zAddAll = this.underlyingList.addAll(i, collection);
        markAsStale();
        return zAddAll;
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        boolean zAddAll = this.underlyingList.addAll(collection);
        markAsStale();
        return zAddAll;
    }

    public void addIfAbsent(E e) {
        this.underlyingList.addIfAbsent(e);
        markAsStale();
    }

    public E[] asTypedArray() {
        refreshCopyIfNecessary();
        return this.ourCopy;
    }

    @Override
    public void clear() {
        this.underlyingList.clear();
        markAsStale();
    }

    @Override
    public boolean contains(Object obj) {
        return this.underlyingList.contains(obj);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.underlyingList.containsAll(collection);
    }

    @Override
    public E get(int i) {
        refreshCopyIfNecessary();
        return this.ourCopy[i];
    }

    @Override
    public int indexOf(Object obj) {
        return this.underlyingList.indexOf(obj);
    }

    @Override
    public boolean isEmpty() {
        return this.underlyingList.isEmpty();
    }

    @Override
    public Iterator<E> iterator() {
        return this.underlyingList.iterator();
    }

    @Override
    public int lastIndexOf(Object obj) {
        return this.underlyingList.lastIndexOf(obj);
    }

    @Override
    public ListIterator<E> listIterator() {
        return this.underlyingList.listIterator();
    }

    @Override
    public ListIterator<E> listIterator(int i) {
        return this.underlyingList.listIterator(i);
    }

    @Override
    public E remove(int i) {
        E eRemove = this.underlyingList.remove(i);
        markAsStale();
        return eRemove;
    }

    @Override
    public boolean remove(Object obj) {
        boolean zRemove = this.underlyingList.remove(obj);
        markAsStale();
        return zRemove;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean zRemoveAll = this.underlyingList.removeAll(collection);
        markAsStale();
        return zRemoveAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean zRetainAll = this.underlyingList.retainAll(collection);
        markAsStale();
        return zRetainAll;
    }

    @Override
    public E set(int i, E e) {
        E e2 = this.underlyingList.set(i, e);
        markAsStale();
        return e2;
    }

    @Override
    public int size() {
        return this.underlyingList.size();
    }

    @Override
    public List<E> subList(int i, int i2) {
        return this.underlyingList.subList(i, i2);
    }

    @Override
    public Object[] toArray() {
        refreshCopyIfNecessary();
        return this.ourCopy;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        refreshCopyIfNecessary();
        return this.ourCopy;
    }
}
