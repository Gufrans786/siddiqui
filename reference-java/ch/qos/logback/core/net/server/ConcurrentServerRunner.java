package ch.qos.logback.core.net.server;

import ch.qos.logback.core.net.server.Client;
import ch.qos.logback.core.spi.ContextAwareBase;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public abstract class ConcurrentServerRunner<T extends Client> extends ContextAwareBase implements Runnable, ServerRunner<T> {
    private final Executor executor;
    private final ServerListener<T> listener;
    private boolean running;
    private final Lock clientsLock = new ReentrantLock();
    private final Collection<T> clients = new ArrayList();

    private class ClientWrapper implements Client {
        private final T delegate;

        public ClientWrapper(T t) {
            this.delegate = t;
        }

        @Override
        public void close() {
            this.delegate.close();
        }

        @Override
        public void run() {
            ConcurrentServerRunner.this.addClient(this.delegate);
            try {
                this.delegate.run();
            } finally {
                ConcurrentServerRunner.this.removeClient(this.delegate);
            }
        }
    }

    public ConcurrentServerRunner(ServerListener<T> serverListener, Executor executor) {
        this.listener = serverListener;
        this.executor = executor;
    }

    public void addClient(T t) {
        this.clientsLock.lock();
        try {
            this.clients.add(t);
        } finally {
            this.clientsLock.unlock();
        }
    }

    private Collection<T> copyClients() {
        this.clientsLock.lock();
        try {
            return new ArrayList(this.clients);
        } finally {
            this.clientsLock.unlock();
        }
    }

    public void removeClient(T t) {
        this.clientsLock.lock();
        try {
            this.clients.remove(t);
        } finally {
            this.clientsLock.unlock();
        }
    }

    @Override
    public void accept(ClientVisitor<T> clientVisitor) {
        for (T t : copyClients()) {
            try {
                clientVisitor.visit(t);
            } catch (RuntimeException e) {
                addError(t + ": " + e);
            }
        }
    }

    protected abstract boolean configureClient(T t);

    @Override
    public boolean isRunning() {
        return this.running;
    }

    @Override
    public void run() {
        setRunning(true);
        try {
            addInfo("listening on " + this.listener);
            while (!Thread.currentThread().isInterrupted()) {
                Client clientAcceptClient = this.listener.acceptClient();
                if (configureClient(clientAcceptClient)) {
                    try {
                        this.executor.execute(new ClientWrapper(clientAcceptClient));
                    } catch (RejectedExecutionException unused) {
                        addError(clientAcceptClient + ": connection dropped");
                        clientAcceptClient.close();
                    }
                } else {
                    addError(clientAcceptClient + ": connection dropped");
                }
                clientAcceptClient.close();
            }
        } catch (InterruptedException unused2) {
        } catch (Exception e) {
            addError("listener: " + e);
        }
        setRunning(false);
        addInfo("shutting down");
        this.listener.close();
    }

    protected void setRunning(boolean z) {
        this.running = z;
    }

    @Override
    public void stop() throws IOException {
        this.listener.close();
        accept(new ClientVisitor<T>() {
            @Override
            public void visit(T t) {
                t.close();
            }
        });
    }
}
