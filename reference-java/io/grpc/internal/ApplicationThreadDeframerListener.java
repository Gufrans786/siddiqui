package io.grpc.internal;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.common.base.Preconditions;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Queue;

final class ApplicationThreadDeframerListener implements MessageDeframer.Listener {
    private final Queue<InputStream> messageReadQueue = new ArrayDeque();
    private final MessageDeframer.Listener storedListener;
    private final TransportExecutor transportExecutor;

    public interface TransportExecutor {
        void runOnTransportThread(Runnable runnable);
    }

    public ApplicationThreadDeframerListener(MessageDeframer.Listener listener, TransportExecutor transportExecutor) {
        this.storedListener = (MessageDeframer.Listener) Preconditions.checkNotNull(listener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.transportExecutor = (TransportExecutor) Preconditions.checkNotNull(transportExecutor, "transportExecutor");
    }

    @Override
    public void bytesRead(final int i) {
        this.transportExecutor.runOnTransportThread(new Runnable() {
            @Override
            public void run() {
                ApplicationThreadDeframerListener.this.storedListener.bytesRead(i);
            }
        });
    }

    @Override
    public void messagesAvailable(StreamListener.MessageProducer messageProducer) {
        while (true) {
            InputStream next = messageProducer.next();
            if (next == null) {
                return;
            } else {
                this.messageReadQueue.add(next);
            }
        }
    }

    @Override
    public void deframerClosed(final boolean z) {
        this.transportExecutor.runOnTransportThread(new Runnable() {
            @Override
            public void run() {
                ApplicationThreadDeframerListener.this.storedListener.deframerClosed(z);
            }
        });
    }

    @Override
    public void deframeFailed(final Throwable th) {
        this.transportExecutor.runOnTransportThread(new Runnable() {
            @Override
            public void run() {
                ApplicationThreadDeframerListener.this.storedListener.deframeFailed(th);
            }
        });
    }

    public InputStream messageReadQueuePoll() {
        return this.messageReadQueue.poll();
    }
}
