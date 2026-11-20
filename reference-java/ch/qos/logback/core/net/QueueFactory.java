package ch.qos.logback.core.net;

import java.util.concurrent.LinkedBlockingDeque;

public class QueueFactory {
    public <E> LinkedBlockingDeque<E> newLinkedBlockingDeque(int i) {
        if (i < 1) {
            i = 1;
        }
        return new LinkedBlockingDeque<>(i);
    }
}
