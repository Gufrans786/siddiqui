package com.google.firebase.firestore.core;

import com.google.firebase.database.collection.ImmutableSortedSet;
import com.google.firebase.firestore.FirebaseFirestoreSettings;
import com.google.firebase.firestore.MemoryCacheSettings;
import com.google.firebase.firestore.MemoryLruGcSettings;
import com.google.firebase.firestore.local.IndexBackfiller;
import com.google.firebase.firestore.local.LocalSerializer;
import com.google.firebase.firestore.local.LocalStore;
import com.google.firebase.firestore.local.LruGarbageCollector;
import com.google.firebase.firestore.local.MemoryPersistence;
import com.google.firebase.firestore.local.Persistence;
import com.google.firebase.firestore.local.QueryEngine;
import com.google.firebase.firestore.local.Scheduler;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.mutation.MutationBatchResult;
import com.google.firebase.firestore.remote.RemoteEvent;
import com.google.firebase.firestore.remote.RemoteStore;
import io.grpc.Status;

public class MemoryComponentProvider extends ComponentProvider {
    @Override
    protected Scheduler createGarbageCollectionScheduler(ComponentProvider.Configuration configuration) {
        return null;
    }

    @Override
    protected IndexBackfiller createIndexBackfiller(ComponentProvider.Configuration configuration) {
        return null;
    }

    public MemoryComponentProvider(FirebaseFirestoreSettings firebaseFirestoreSettings) {
        super(firebaseFirestoreSettings);
    }

    @Override
    protected EventManager createEventManager(ComponentProvider.Configuration configuration) {
        return new EventManager(getSyncEngine());
    }

    @Override
    protected LocalStore createLocalStore(ComponentProvider.Configuration configuration) {
        return new LocalStore(getPersistence(), new QueryEngine(), configuration.initialUser);
    }

    private boolean isMemoryLruGcEnabled(FirebaseFirestoreSettings firebaseFirestoreSettings) {
        if (firebaseFirestoreSettings.getCacheSettings() == null || !(firebaseFirestoreSettings.getCacheSettings() instanceof MemoryCacheSettings)) {
            return false;
        }
        return ((MemoryCacheSettings) firebaseFirestoreSettings.getCacheSettings()).getGarbageCollectorSettings() instanceof MemoryLruGcSettings;
    }

    @Override
    protected Persistence createPersistence(ComponentProvider.Configuration configuration) {
        if (isMemoryLruGcEnabled(this.settings)) {
            return MemoryPersistence.createLruGcMemoryPersistence(LruGarbageCollector.Params.WithCacheSizeBytes(this.settings.getCacheSizeBytes()), new LocalSerializer(getRemoteSerializer()));
        }
        return MemoryPersistence.createEagerGcMemoryPersistence();
    }

    @Override
    protected RemoteStore createRemoteStore(ComponentProvider.Configuration configuration) {
        return new RemoteStore(configuration.databaseInfo.getDatabaseId(), new RemoteStoreCallback(), getLocalStore(), getDatastore(), configuration.asyncQueue, getConnectivityMonitor());
    }

    @Override
    protected SyncEngine createSyncEngine(ComponentProvider.Configuration configuration) {
        return new SyncEngine(getLocalStore(), getRemoteStore(), configuration.initialUser, configuration.maxConcurrentLimboResolutions);
    }

    private class RemoteStoreCallback implements RemoteStore.RemoteStoreCallback {
        private RemoteStoreCallback() {
        }

        @Override
        public void handleRemoteEvent(RemoteEvent remoteEvent) {
            MemoryComponentProvider.this.getSyncEngine().handleRemoteEvent(remoteEvent);
        }

        @Override
        public void handleRejectedListen(int i, Status status) {
            MemoryComponentProvider.this.getSyncEngine().handleRejectedListen(i, status);
        }

        @Override
        public void handleSuccessfulWrite(MutationBatchResult mutationBatchResult) {
            MemoryComponentProvider.this.getSyncEngine().handleSuccessfulWrite(mutationBatchResult);
        }

        @Override
        public void handleRejectedWrite(int i, Status status) {
            MemoryComponentProvider.this.getSyncEngine().handleRejectedWrite(i, status);
        }

        @Override
        public void handleOnlineStateChange(OnlineState onlineState) {
            MemoryComponentProvider.this.getSyncEngine().handleOnlineStateChange(onlineState);
        }

        @Override
        public ImmutableSortedSet<DocumentKey> getRemoteKeysForTarget(int i) {
            return MemoryComponentProvider.this.getSyncEngine().getRemoteKeysForTarget(i);
        }
    }
}
