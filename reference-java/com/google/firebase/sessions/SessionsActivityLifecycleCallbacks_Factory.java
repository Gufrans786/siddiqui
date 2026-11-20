package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.Factory;
import javax.inject.Provider;

public final class SessionsActivityLifecycleCallbacks_Factory implements Factory<SessionsActivityLifecycleCallbacks> {
    private final Provider<SharedSessionRepository> sharedSessionRepositoryProvider;

    public SessionsActivityLifecycleCallbacks_Factory(Provider<SharedSessionRepository> provider) {
        this.sharedSessionRepositoryProvider = provider;
    }

    @Override
    public SessionsActivityLifecycleCallbacks get() {
        return newInstance(this.sharedSessionRepositoryProvider.get());
    }

    public static SessionsActivityLifecycleCallbacks_Factory create(Provider<SharedSessionRepository> provider) {
        return new SessionsActivityLifecycleCallbacks_Factory(provider);
    }

    public static SessionsActivityLifecycleCallbacks newInstance(SharedSessionRepository sharedSessionRepository) {
        return new SessionsActivityLifecycleCallbacks(sharedSessionRepository);
    }
}
