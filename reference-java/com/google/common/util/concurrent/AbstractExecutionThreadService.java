package com.google.common.util.concurrent;

import com.google.common.base.Supplier;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;

@ElementTypesAreNonnullByDefault
public abstract class AbstractExecutionThreadService implements Service {
    private static final LazyLogger logger = new LazyLogger(AbstractExecutionThreadService.class);
    private final Service delegate = new AnonymousClass1();

    protected abstract void run() throws Exception;

    protected void shutDown() throws Exception {
    }

    protected void startUp() throws Exception {
    }

    protected void triggerShutdown() {
    }

    class AnonymousClass1 extends AbstractService {
        AnonymousClass1() {
        }

        @Override
        protected final void doStart() {
            MoreExecutors.renamingDecorator(AbstractExecutionThreadService.this.executor(), (Supplier<String>) new Supplier() {
                @Override
                public final Object get() {
                    return this.f$0.m698xa0f821c5();
                }
            }).execute(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.m699x3d661e24();
                }
            });
        }

        String m698xa0f821c5() {
            return AbstractExecutionThreadService.this.serviceName();
        }

        void m699x3d661e24() {
            try {
                AbstractExecutionThreadService.this.startUp();
                notifyStarted();
                if (isRunning()) {
                    try {
                        AbstractExecutionThreadService.this.run();
                    } catch (Throwable th) {
                        Platform.restoreInterruptIfIsInterruptedException(th);
                        try {
                            AbstractExecutionThreadService.this.shutDown();
                        } catch (Exception e) {
                            Platform.restoreInterruptIfIsInterruptedException(e);
                            AbstractExecutionThreadService.logger.get().log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e);
                        }
                        notifyFailed(th);
                        return;
                    }
                }
                AbstractExecutionThreadService.this.shutDown();
                notifyStopped();
            } catch (Throwable th2) {
                Platform.restoreInterruptIfIsInterruptedException(th2);
                notifyFailed(th2);
            }
        }

        @Override
        protected void doStop() {
            AbstractExecutionThreadService.this.triggerShutdown();
        }

        @Override
        public String toString() {
            return AbstractExecutionThreadService.this.toString();
        }
    }

    protected AbstractExecutionThreadService() {
    }

    protected Executor executor() {
        return new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                this.f$0.m697xafeb5522(runnable);
            }
        };
    }

    void m697xafeb5522(Runnable runnable) {
        MoreExecutors.newThread(serviceName(), runnable).start();
    }

    public String toString() {
        return serviceName() + " [" + state() + "]";
    }

    @Override
    public final boolean isRunning() {
        return this.delegate.isRunning();
    }

    @Override
    public final Service.State state() {
        return this.delegate.state();
    }

    @Override
    public final void addListener(Service.Listener listener, Executor executor) {
        this.delegate.addListener(listener, executor);
    }

    @Override
    public final Throwable failureCause() {
        return this.delegate.failureCause();
    }

    @Override
    public final Service startAsync() {
        this.delegate.startAsync();
        return this;
    }

    @Override
    public final Service stopAsync() {
        this.delegate.stopAsync();
        return this;
    }

    @Override
    public final void awaitRunning() {
        this.delegate.awaitRunning();
    }

    @Override
    public final void awaitRunning(long timeout, TimeUnit unit) throws TimeoutException {
        this.delegate.awaitRunning(timeout, unit);
    }

    @Override
    public final void awaitTerminated() {
        this.delegate.awaitTerminated();
    }

    @Override
    public final void awaitTerminated(long timeout, TimeUnit unit) throws TimeoutException {
        this.delegate.awaitTerminated(timeout, unit);
    }

    protected String serviceName() {
        return getClass().getSimpleName();
    }
}
