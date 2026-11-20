package io.grpc.internal;

import io.grpc.Attributes;
import io.grpc.NameResolver;
import io.grpc.Status;
import io.grpc.SynchronizationContext;

final class RetryingNameResolver extends ForwardingNameResolver {
    static final Attributes.Key<ResolutionResultListener> RESOLUTION_RESULT_LISTENER_KEY = Attributes.Key.create("io.grpc.internal.RetryingNameResolver.RESOLUTION_RESULT_LISTENER_KEY");
    private final NameResolver retriedNameResolver;
    private final RetryScheduler retryScheduler;
    private final SynchronizationContext syncContext;

    RetryingNameResolver(NameResolver nameResolver, RetryScheduler retryScheduler, SynchronizationContext synchronizationContext) {
        super(nameResolver);
        this.retriedNameResolver = nameResolver;
        this.retryScheduler = retryScheduler;
        this.syncContext = synchronizationContext;
    }

    @Override
    public void start(NameResolver.Listener2 listener2) {
        super.start((NameResolver.Listener2) new RetryingListener(listener2));
    }

    @Override
    public void shutdown() {
        super.shutdown();
        this.retryScheduler.reset();
    }

    NameResolver getRetriedNameResolver() {
        return this.retriedNameResolver;
    }

    class DelayedNameResolverRefresh implements Runnable {
        DelayedNameResolverRefresh() {
        }

        @Override
        public void run() {
            RetryingNameResolver.this.refresh();
        }
    }

    class RetryingListener extends NameResolver.Listener2 {
        private NameResolver.Listener2 delegateListener;

        RetryingListener(NameResolver.Listener2 listener2) {
            this.delegateListener = listener2;
        }

        @Override
        public void onResult(NameResolver.ResolutionResult resolutionResult) {
            if (resolutionResult.getAttributes().get(RetryingNameResolver.RESOLUTION_RESULT_LISTENER_KEY) != null) {
                throw new IllegalStateException("RetryingNameResolver can only be used once to wrap a NameResolver");
            }
            this.delegateListener.onResult(resolutionResult.toBuilder().setAttributes(resolutionResult.getAttributes().toBuilder().set(RetryingNameResolver.RESOLUTION_RESULT_LISTENER_KEY, RetryingNameResolver.this.new ResolutionResultListener()).build()).build());
        }

        @Override
        public void onError(Status status) {
            this.delegateListener.onError(status);
            RetryingNameResolver.this.syncContext.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.m1436xf904c9eb();
                }
            });
        }

        void m1436xf904c9eb() {
            RetryingNameResolver.this.retryScheduler.schedule(RetryingNameResolver.this.new DelayedNameResolverRefresh());
        }
    }

    class ResolutionResultListener {
        ResolutionResultListener() {
        }

        public void resolutionAttempted(Status status) {
            if (status.isOk()) {
                RetryingNameResolver.this.retryScheduler.reset();
            } else {
                RetryingNameResolver.this.retryScheduler.schedule(RetryingNameResolver.this.new DelayedNameResolverRefresh());
            }
        }
    }
}
