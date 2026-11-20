package com.google.firebase.firestore.local;

import com.google.firebase.firestore.auth.User;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Supplier;
import java.util.HashMap;
import java.util.Map;

public final class MemoryPersistence extends Persistence {
    private ReferenceDelegate referenceDelegate;
    private boolean started;
    private final MemoryGlobalsCache globalsCache = new MemoryGlobalsCache();
    private final Map<User, MemoryMutationQueue> mutationQueues = new HashMap();
    private final MemoryIndexManager indexManager = new MemoryIndexManager();
    private final MemoryTargetCache targetCache = new MemoryTargetCache(this);
    private final MemoryBundleCache bundleCache = new MemoryBundleCache();
    private final MemoryRemoteDocumentCache remoteDocumentCache = new MemoryRemoteDocumentCache();
    private final Map<User, MemoryDocumentOverlayCache> overlays = new HashMap();

    public static MemoryPersistence createEagerGcMemoryPersistence() {
        MemoryPersistence memoryPersistence = new MemoryPersistence();
        memoryPersistence.setReferenceDelegate(new MemoryEagerReferenceDelegate(memoryPersistence));
        return memoryPersistence;
    }

    public static MemoryPersistence createLruGcMemoryPersistence(LruGarbageCollector.Params params, LocalSerializer localSerializer) {
        MemoryPersistence memoryPersistence = new MemoryPersistence();
        memoryPersistence.setReferenceDelegate(new MemoryLruReferenceDelegate(memoryPersistence, params, localSerializer));
        return memoryPersistence;
    }

    private MemoryPersistence() {
    }

    @Override
    public void start() {
        Assert.hardAssert(!this.started, "MemoryPersistence double-started!", new Object[0]);
        this.started = true;
    }

    @Override
    public void shutdown() {
        Assert.hardAssert(this.started, "MemoryPersistence shutdown without start", new Object[0]);
        this.started = false;
    }

    @Override
    public boolean isStarted() {
        return this.started;
    }

    @Override
    public ReferenceDelegate getReferenceDelegate() {
        return this.referenceDelegate;
    }

    private void setReferenceDelegate(ReferenceDelegate referenceDelegate) {
        this.referenceDelegate = referenceDelegate;
    }

    @Override
    MutationQueue getMutationQueue(User user, IndexManager indexManager) {
        MemoryMutationQueue memoryMutationQueue = this.mutationQueues.get(user);
        if (memoryMutationQueue != null) {
            return memoryMutationQueue;
        }
        MemoryMutationQueue memoryMutationQueue2 = new MemoryMutationQueue(this, user);
        this.mutationQueues.put(user, memoryMutationQueue2);
        return memoryMutationQueue2;
    }

    Iterable<MemoryMutationQueue> getMutationQueues() {
        return this.mutationQueues.values();
    }

    @Override
    public MemoryTargetCache getTargetCache() {
        return this.targetCache;
    }

    @Override
    public MemoryRemoteDocumentCache getRemoteDocumentCache() {
        return this.remoteDocumentCache;
    }

    @Override
    GlobalsCache getGlobalsCache() {
        return this.globalsCache;
    }

    @Override
    public MemoryIndexManager getIndexManager(User user) {
        return this.indexManager;
    }

    @Override
    BundleCache getBundleCache() {
        return this.bundleCache;
    }

    @Override
    DocumentOverlayCache getDocumentOverlayCache(User user) {
        MemoryDocumentOverlayCache memoryDocumentOverlayCache = this.overlays.get(user);
        if (memoryDocumentOverlayCache != null) {
            return memoryDocumentOverlayCache;
        }
        MemoryDocumentOverlayCache memoryDocumentOverlayCache2 = new MemoryDocumentOverlayCache();
        this.overlays.put(user, memoryDocumentOverlayCache2);
        return memoryDocumentOverlayCache2;
    }

    @Override
    OverlayMigrationManager getOverlayMigrationManager() {
        return new MemoryOverlayMigrationManager();
    }

    @Override
    void runTransaction(String str, Runnable runnable) {
        this.referenceDelegate.onTransactionStarted();
        try {
            runnable.run();
        } finally {
            this.referenceDelegate.onTransactionCommitted();
        }
    }

    @Override
    <T> T runTransaction(String str, Supplier<T> supplier) {
        this.referenceDelegate.onTransactionStarted();
        try {
            return supplier.get();
        } finally {
            this.referenceDelegate.onTransactionCommitted();
        }
    }
}
