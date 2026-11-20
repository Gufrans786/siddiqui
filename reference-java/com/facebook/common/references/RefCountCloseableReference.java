package com.facebook.common.references;

import com.facebook.common.internal.Preconditions;
import javax.annotation.Nullable;

public class RefCountCloseableReference<T> extends CloseableReference<T> {
    private RefCountCloseableReference(SharedReference<T> sharedReference, @Nullable CloseableReference.LeakHandler leakHandler, @Nullable Throwable th) {
        super(sharedReference, leakHandler, th);
    }

    RefCountCloseableReference(T t, ResourceReleaser<T> resourceReleaser, CloseableReference.LeakHandler leakHandler, @Nullable Throwable th) {
        super(t, resourceReleaser, leakHandler, th, false);
    }

    @Override
    public CloseableReference<T> mo232clone() {
        Preconditions.checkState(isValid());
        return new RefCountCloseableReference(this.mSharedReference, this.mLeakHandler, this.mStacktrace);
    }
}
