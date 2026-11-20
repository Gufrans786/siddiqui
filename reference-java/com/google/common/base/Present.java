package com.google.common.base;

import java.util.Collections;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class Present<T> extends Optional<T> {
    private static final long serialVersionUID = 0;
    private final T reference;

    @Override
    public boolean isPresent() {
        return true;
    }

    Present(T reference) {
        this.reference = reference;
    }

    @Override
    public T get() {
        return this.reference;
    }

    @Override
    public T or(T defaultValue) {
        Preconditions.checkNotNull(defaultValue, "use Optional.orNull() instead of Optional.or(null)");
        return this.reference;
    }

    @Override
    public Optional<T> or(Optional<? extends T> secondChoice) {
        Preconditions.checkNotNull(secondChoice);
        return this;
    }

    @Override
    public T or(Supplier<? extends T> supplier) {
        Preconditions.checkNotNull(supplier);
        return this.reference;
    }

    @Override
    public T orNull() {
        return this.reference;
    }

    @Override
    public Set<T> asSet() {
        return Collections.singleton(this.reference);
    }

    @Override
    public <V> Optional<V> transform(Function<? super T, V> function) {
        return new Present(Preconditions.checkNotNull(function.apply(this.reference), "the Function passed to Optional.transform() must not return null."));
    }

    @Override
    public boolean equals(@CheckForNull Object object) {
        if (object instanceof Present) {
            return this.reference.equals(((Present) object).reference);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.reference.hashCode() + 1502476572;
    }

    @Override
    public String toString() {
        return "Optional.of(" + this.reference + ")";
    }
}
