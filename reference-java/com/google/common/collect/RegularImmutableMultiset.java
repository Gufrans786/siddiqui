package com.google.common.collect;

import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {
    static final RegularImmutableMultiset<Object> EMPTY = new RegularImmutableMultiset<>(ObjectCountHashMap.create());
    final transient ObjectCountHashMap<E> contents;

    @CheckForNull
    @LazyInit
    private transient ImmutableSet<E> elementSet;
    private final transient int size;

    @Override
    boolean isPartialView() {
        return false;
    }

    RegularImmutableMultiset(ObjectCountHashMap<E> contents) {
        this.contents = contents;
        long value = 0;
        for (int i = 0; i < contents.size(); i++) {
            value += (long) contents.getValue(i);
        }
        this.size = Ints.saturatedCast(value);
    }

    @Override
    public int count(@CheckForNull Object element) {
        return this.contents.get(element);
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.elementSet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ElementSet elementSet = new ElementSet();
        this.elementSet = elementSet;
        return elementSet;
    }

    private final class ElementSet extends IndexedImmutableSet<E> {
        @Override
        boolean isPartialView() {
            return true;
        }

        private ElementSet() {
        }

        @Override
        E get(int index) {
            return RegularImmutableMultiset.this.contents.getKey(index);
        }

        @Override
        public boolean contains(@CheckForNull Object object) {
            return RegularImmutableMultiset.this.contains(object);
        }

        @Override
        public int size() {
            return RegularImmutableMultiset.this.contents.size();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    @Override
    Multiset.Entry<E> getEntry(int index) {
        return this.contents.getEntry(index);
    }

    private static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final int[] counts;
        final Object[] elements;

        SerializedForm(Multiset<? extends Object> multiset) {
            int size = multiset.entrySet().size();
            this.elements = new Object[size];
            this.counts = new int[size];
            int i = 0;
            for (Multiset.Entry<? extends Object> entry : multiset.entrySet()) {
                this.elements[i] = entry.getElement();
                this.counts[i] = entry.getCount();
                i++;
            }
        }

        Object readResolve() {
            ImmutableMultiset.Builder builder = new ImmutableMultiset.Builder(this.elements.length);
            int i = 0;
            while (true) {
                Object[] objArr = this.elements;
                if (i < objArr.length) {
                    builder.addCopies(objArr[i], this.counts[i]);
                    i++;
                } else {
                    return builder.build();
                }
            }
        }
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this);
    }
}
