package io.grpc.internal;

abstract class ForwardingDeframerListener implements MessageDeframer.Listener {
    protected abstract MessageDeframer.Listener delegate();

    ForwardingDeframerListener() {
    }

    @Override
    public void bytesRead(int i) {
        delegate().bytesRead(i);
    }

    @Override
    public void messagesAvailable(StreamListener.MessageProducer messageProducer) {
        delegate().messagesAvailable(messageProducer);
    }

    @Override
    public void deframerClosed(boolean z) {
        delegate().deframerClosed(z);
    }

    @Override
    public void deframeFailed(Throwable th) {
        delegate().deframeFailed(th);
    }
}
