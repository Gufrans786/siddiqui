package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Objects;

@ElementTypesAreNonnullByDefault
class RegularImmutableList<E> extends ImmutableList<E> {
    static final ImmutableList<Object> EMPTY = new RegularImmutableList(new Object[0], 0);
    final transient Object[] array;
    private final transient int size;

    @Override
    int internalArrayStart() {
        return 0;
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    RegularImmutableList(Object[] array, int size) {
        this.array = array;
        this.size = size;
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    Object[] internalArray() {
        return this.array;
    }

    @Override
    int internalArrayEnd() {
        return this.size;
    }

    @Override
    int copyIntoArray(Object[] dst, int dstOff) {
        System.arraycopy(this.array, 0, dst, dstOff, this.size);
        return dstOff + this.size;
    }

    @Override
    public E get(int i) {
        Preconditions.checkElementIndex(i, this.size);
        return (E) Objects.requireNonNull(this.array[i]);
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }
}
