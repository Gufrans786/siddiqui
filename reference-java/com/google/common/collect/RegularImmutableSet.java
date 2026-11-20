package com.google.common.collect;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class RegularImmutableSet<E> extends ImmutableSet<E> {
    static final RegularImmutableSet<Object> EMPTY;
    private static final Object[] EMPTY_ARRAY;
    final transient Object[] elements;
    private final transient int hashCode;
    private final transient int mask;
    private final transient int size;
    final transient Object[] table;

    @Override
    int internalArrayStart() {
        return 0;
    }

    @Override
    boolean isHashCodeFast() {
        return true;
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    static {
        Object[] objArr = new Object[0];
        EMPTY_ARRAY = objArr;
        EMPTY = new RegularImmutableSet<>(objArr, 0, objArr, 0, 0);
    }

    RegularImmutableSet(Object[] elements, int hashCode, Object[] table, int mask, int size) {
        this.elements = elements;
        this.hashCode = hashCode;
        this.table = table;
        this.mask = mask;
        this.size = size;
    }

    @Override
    public boolean contains(@CheckForNull Object target) {
        Object[] objArr = this.table;
        if (target == null || objArr.length == 0) {
            return false;
        }
        int iSmearedHash = Hashing.smearedHash(target);
        while (true) {
            int i = iSmearedHash & this.mask;
            Object obj = objArr[i];
            if (obj == null) {
                return false;
            }
            if (obj.equals(target)) {
                return true;
            }
            iSmearedHash = i + 1;
        }
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        return asList().iterator();
    }

    @Override
    Object[] internalArray() {
        return this.elements;
    }

    @Override
    int internalArrayEnd() {
        return this.size;
    }

    @Override
    int copyIntoArray(Object[] dst, int offset) {
        System.arraycopy(this.elements, 0, dst, offset, this.size);
        return offset + this.size;
    }

    @Override
    ImmutableList<E> createAsList() {
        return ImmutableList.asImmutableList(this.elements, this.size);
    }

    @Override
    public int hashCode() {
        return this.hashCode;
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }
}
