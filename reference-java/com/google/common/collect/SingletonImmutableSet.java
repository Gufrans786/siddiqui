package com.google.common.collect;

import com.google.common.base.Preconditions;
import javax.annotation.CheckForNull;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

@ElementTypesAreNonnullByDefault
final class SingletonImmutableSet<E> extends ImmutableSet<E> {
    final transient E element;

    @Override
    boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return 1;
    }

    SingletonImmutableSet(E e) {
        this.element = (E) Preconditions.checkNotNull(e);
    }

    @Override
    public boolean contains(@CheckForNull Object target) {
        return this.element.equals(target);
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        return Iterators.singletonIterator(this.element);
    }

    @Override
    public ImmutableList<E> asList() {
        return ImmutableList.of((Object) this.element);
    }

    @Override
    int copyIntoArray(Object[] dst, int offset) {
        dst[offset] = this.element;
        return offset + 1;
    }

    @Override
    public final int hashCode() {
        return this.element.hashCode();
    }

    @Override
    public String toString() {
        return "[" + this.element.toString() + AbstractJsonLexerKt.END_LIST;
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }
}
