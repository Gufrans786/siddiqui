package com.google.common.collect;

@ElementTypesAreNonnullByDefault
abstract class IndexedImmutableSet<E> extends ImmutableSet<E> {
    abstract E get(int index);

    IndexedImmutableSet() {
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        return asList().iterator();
    }

    @Override
    int copyIntoArray(Object[] dst, int offset) {
        return asList().copyIntoArray(dst, offset);
    }

    @Override
    ImmutableList<E> createAsList() {
        return new ImmutableList<E>() {
            @Override
            public E get(int i) {
                return (E) IndexedImmutableSet.this.get(i);
            }

            @Override
            boolean isPartialView() {
                return IndexedImmutableSet.this.isPartialView();
            }

            @Override
            public int size() {
                return IndexedImmutableSet.this.size();
            }

            @Override
            Object writeReplace() {
                return super.writeReplace();
            }
        };
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }
}
