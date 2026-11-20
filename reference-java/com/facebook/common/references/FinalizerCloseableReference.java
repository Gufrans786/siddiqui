package com.facebook.common.references;

import com.facebook.common.logging.FLog;
import javax.annotation.Nullable;

public class FinalizerCloseableReference<T> extends CloseableReference<T> {
    private static final String TAG = "FinalizerCloseableReference";

    @Override
    public CloseableReference<T> mo232clone() {
        return this;
    }

    @Override
    public void close() {
    }

    FinalizerCloseableReference(T t, ResourceReleaser<T> resourceReleaser, CloseableReference.LeakHandler leakHandler, @Nullable Throwable th) {
        super(t, resourceReleaser, leakHandler, th, true);
    }

    protected void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.mIsClosed) {
                    T t = this.mSharedReference.get();
                    FLog.w(TAG, "Finalized without closing: %x %x (type = %s)", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.mSharedReference)), t == null ? null : t.getClass().getName());
                    this.mSharedReference.deleteReference();
                    super.finalize();
                    return;
                }
                super.finalize();
            }
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }
}
