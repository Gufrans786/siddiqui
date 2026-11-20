package com.mapbox.bindgen;

import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class Cleaner {
    private CleanerImpl impl = new CleanerImpl();

    static void lambda$create$0() {
    }

    private Cleaner() {
    }

    public static Cleaner create() {
        Cleaner cleaner = new Cleaner();
        cleaner.impl.register(cleaner, new Runnable() {
            @Override
            public final void run() {
                Cleaner.lambda$create$0();
            }
        });
        cleaner.impl.start();
        return cleaner;
    }

    public void register(Object obj, Runnable runnable) {
        Objects.requireNonNull(obj, "obj");
        Objects.requireNonNull(runnable, TSScheduleManager.ACTION_NAME);
        this.impl.register(obj, runnable);
    }

    private static class Finalizer extends PhantomReference<Object> {
        Runnable cleanable;

        public Finalizer(Object obj, ReferenceQueue<? super Object> referenceQueue, Runnable runnable) {
            super(obj, referenceQueue);
            this.cleanable = runnable;
        }

        public void finalizeResources() {
            this.cleanable.run();
        }
    }

    private static class CleanerImpl implements Runnable {
        private ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        private Set<Finalizer> references = Collections.newSetFromMap(new ConcurrentHashMap());

        public void register(Object obj, Runnable runnable) {
            this.references.add(new Finalizer(obj, this.referenceQueue, runnable));
        }

        public void start() {
            Thread thread = new Thread(this);
            thread.setDaemon(true);
            thread.setPriority(8);
            thread.start();
        }

        @Override
        public void run() {
            while (!this.references.isEmpty()) {
                try {
                    Reference<? extends Object> referenceRemove = this.referenceQueue.remove(60000L);
                    if (referenceRemove != null) {
                        Finalizer finalizer = (Finalizer) referenceRemove;
                        finalizer.finalizeResources();
                        finalizer.clear();
                        this.references.remove(finalizer);
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }
}
