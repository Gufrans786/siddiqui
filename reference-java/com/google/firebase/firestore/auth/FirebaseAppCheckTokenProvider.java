package com.google.firebase.firestore.auth;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApiNotAvailableException;
import com.google.firebase.appcheck.AppCheckTokenResult;
import com.google.firebase.appcheck.interop.AppCheckTokenListener;
import com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider;
import com.google.firebase.firestore.util.Executors;
import com.google.firebase.firestore.util.Listener;
import com.google.firebase.firestore.util.Logger;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;

public final class FirebaseAppCheckTokenProvider extends CredentialsProvider<String> {
    private static final String LOG_TAG = "FirebaseAppCheckTokenProvider";
    private Listener<String> changeListener;
    private boolean forceRefresh;
    private InteropAppCheckTokenProvider interopAppCheckTokenProvider;
    private final AppCheckTokenListener tokenListener = new AppCheckTokenListener() {
        @Override
        public final void onAppCheckTokenChanged(AppCheckTokenResult appCheckTokenResult) {
            this.f$0.m772xabf6b76c(appCheckTokenResult);
        }
    };

    public FirebaseAppCheckTokenProvider(Deferred<InteropAppCheckTokenProvider> deferred) {
        deferred.whenAvailable(new Deferred.DeferredHandler() {
            @Override
            public final void handle(Provider provider) {
                this.f$0.m773x16263f8b(provider);
            }
        });
    }

    void m773x16263f8b(Provider provider) {
        synchronized (this) {
            InteropAppCheckTokenProvider interopAppCheckTokenProvider = (InteropAppCheckTokenProvider) provider.get();
            this.interopAppCheckTokenProvider = interopAppCheckTokenProvider;
            if (interopAppCheckTokenProvider != null) {
                interopAppCheckTokenProvider.addAppCheckTokenListener(this.tokenListener);
            }
        }
    }

    public synchronized void m772xabf6b76c(AppCheckTokenResult appCheckTokenResult) {
        if (appCheckTokenResult.getError() != null) {
            Logger.warn(LOG_TAG, "Error getting App Check token; using placeholder token instead. Error: " + appCheckTokenResult.getError(), new Object[0]);
        }
        Listener<String> listener = this.changeListener;
        if (listener != null) {
            listener.onValue(appCheckTokenResult.getToken());
        }
    }

    @Override
    public synchronized Task<String> getToken() {
        InteropAppCheckTokenProvider interopAppCheckTokenProvider = this.interopAppCheckTokenProvider;
        if (interopAppCheckTokenProvider == null) {
            return Tasks.forException(new FirebaseApiNotAvailableException("AppCheck is not available"));
        }
        Task<AppCheckTokenResult> token = interopAppCheckTokenProvider.getToken(this.forceRefresh);
        this.forceRefresh = false;
        return token.continueWithTask(Executors.DIRECT_EXECUTOR, new Continuation() {
            @Override
            public final Object then(Task task) {
                return FirebaseAppCheckTokenProvider.lambda$getToken$2(task);
            }
        });
    }

    static Task lambda$getToken$2(Task task) throws Exception {
        if (task.isSuccessful()) {
            return Tasks.forResult(((AppCheckTokenResult) task.getResult()).getToken());
        }
        return Tasks.forException(task.getException());
    }

    @Override
    public synchronized void invalidateToken() {
        this.forceRefresh = true;
    }

    @Override
    public synchronized void removeChangeListener() {
        this.changeListener = null;
        InteropAppCheckTokenProvider interopAppCheckTokenProvider = this.interopAppCheckTokenProvider;
        if (interopAppCheckTokenProvider != null) {
            interopAppCheckTokenProvider.removeAppCheckTokenListener(this.tokenListener);
        }
    }

    @Override
    public synchronized void setChangeListener(Listener<String> listener) {
        this.changeListener = listener;
    }
}
