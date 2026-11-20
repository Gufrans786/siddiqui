package com.google.common.util.concurrent;

@ElementTypesAreNonnullByDefault
public interface FutureCallback<V> {
    void onFailure(Throwable t);

    void onSuccess(@ParametricNullness V result);
}
