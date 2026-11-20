package com.google.firebase.firestore.core;

import com.google.firebase.firestore.EventListener;
import com.google.firebase.firestore.FirebaseFirestoreException;
import java.util.concurrent.Executor;

public class AsyncEventListener<T> implements EventListener<T> {
    private final EventListener<T> eventListener;
    private final Executor executor;
    private volatile boolean muted = false;

    public AsyncEventListener(Executor executor, EventListener<T> eventListener) {
        this.executor = executor;
        this.eventListener = eventListener;
    }

    @Override
    public void onEvent(final T t, final FirebaseFirestoreException firebaseFirestoreException) {
        this.executor.execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m777xdc9f5a86(t, firebaseFirestoreException);
            }
        });
    }

    void m777xdc9f5a86(Object obj, FirebaseFirestoreException firebaseFirestoreException) {
        if (this.muted) {
            return;
        }
        this.eventListener.onEvent(obj, firebaseFirestoreException);
    }

    public void mute() {
        this.muted = true;
    }
}
