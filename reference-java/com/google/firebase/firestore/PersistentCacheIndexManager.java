package com.google.firebase.firestore;

import androidx.core.util.Consumer;
import com.google.firebase.firestore.core.FirestoreClient;

public final class PersistentCacheIndexManager {
    private FirestoreClientProvider client;

    PersistentCacheIndexManager(FirestoreClientProvider firestoreClientProvider) {
        this.client = firestoreClientProvider;
    }

    public void enableIndexAutoCreation() {
        this.client.procedure(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((FirestoreClient) obj).setIndexAutoCreationEnabled(true);
            }
        });
    }

    public void disableIndexAutoCreation() {
        this.client.procedure(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((FirestoreClient) obj).setIndexAutoCreationEnabled(false);
            }
        });
    }

    public void deleteAllIndexes() {
        this.client.procedure(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((FirestoreClient) obj).deleteAllFieldIndexes();
            }
        });
    }
}
