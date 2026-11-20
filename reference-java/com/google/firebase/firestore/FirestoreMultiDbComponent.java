package com.google.firebase.firestore;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseAppLifecycleListener;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.firestore.remote.GrpcMetadataProvider;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.inject.Deferred;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

class FirestoreMultiDbComponent implements FirebaseAppLifecycleListener, FirebaseFirestore.InstanceRegistry {

    private final FirebaseApp f3722app;
    private final Deferred<InteropAppCheckTokenProvider> appCheckProvider;
    private final Deferred<InternalAuthProvider> authProvider;
    private final Context context;
    private final Map<String, FirebaseFirestore> instances = new HashMap();
    private final GrpcMetadataProvider metadataProvider;

    FirestoreMultiDbComponent(Context context, FirebaseApp firebaseApp, Deferred<InternalAuthProvider> deferred, Deferred<InteropAppCheckTokenProvider> deferred2, GrpcMetadataProvider grpcMetadataProvider) {
        this.context = context;
        this.f3722app = firebaseApp;
        this.authProvider = deferred;
        this.appCheckProvider = deferred2;
        this.metadataProvider = grpcMetadataProvider;
        firebaseApp.addLifecycleEventListener(this);
    }

    synchronized FirebaseFirestore get(String str) throws Throwable {
        try {
            try {
                FirebaseFirestore firebaseFirestoreNewInstance = this.instances.get(str);
                if (firebaseFirestoreNewInstance == null) {
                    firebaseFirestoreNewInstance = FirebaseFirestore.newInstance(this.context, this.f3722app, this.authProvider, this.appCheckProvider, str, this, this.metadataProvider);
                    this.instances.put(str, firebaseFirestoreNewInstance);
                }
                return firebaseFirestoreNewInstance;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override
    public synchronized void remove(String str) {
        this.instances.remove(str);
    }

    @Override
    public synchronized void onDeleted(String str, FirebaseOptions firebaseOptions) {
        for (Map.Entry entry : new ArrayList(this.instances.entrySet())) {
            ((FirebaseFirestore) entry.getValue()).terminate();
            Assert.hardAssert(!this.instances.containsKey(entry.getKey()), "terminate() should have removed its entry from `instances` for key: %s", entry.getKey());
        }
    }
}
