package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingSet<E> extends ForwardingCollection<E> implements Set<E> {
    @Override
    public abstract Set<E> delegate();

    protected ForwardingSet() {
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        return object == this || delegate().equals(object);
    }

    @Override
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override
    protected boolean standardRemoveAll(Collection<?> collection) {
        return Sets.removeAllImpl(this, (Collection<?>) Preconditions.checkNotNull(collection));
    }

    protected boolean standardEquals(@CheckForNull Object object) {
        return Sets.equalsImpl(this, object);
    }

    protected int standardHashCode() {
        return Sets.hashCodeImpl(this);
    }
}
