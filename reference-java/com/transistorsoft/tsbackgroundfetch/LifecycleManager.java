package com.transistorsoft.tsbackgroundfetch;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class LifecycleManager implements DefaultLifecycleObserver, Runnable {
    private static volatile LifecycleManager sInstance;
    private Runnable mHeadlessChangeEvent;
    private final List<OnHeadlessChangeCallback> mHeadlessChangeCallbacks = new ArrayList();
    private final List<OnStateChangeCallback> mStateChangeCallbacks = new ArrayList();
    private final AtomicBoolean mIsBackground = new AtomicBoolean(true);
    private final AtomicBoolean mIsHeadless = new AtomicBoolean(true);
    private final AtomicBoolean mStarted = new AtomicBoolean(false);
    private final AtomicBoolean mPaused = new AtomicBoolean(false);
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    public interface OnHeadlessChangeCallback {
        void onChange(boolean z);
    }

    public interface OnStateChangeCallback {
        void onChange(boolean z);
    }

    public static LifecycleManager getInstance() {
        if (sInstance == null) {
            sInstance = getInstanceSynchronized();
        }
        return sInstance;
    }

    private static synchronized LifecycleManager getInstanceSynchronized() {
        if (sInstance == null) {
            sInstance = new LifecycleManager();
        }
        return sInstance;
    }

    private LifecycleManager() {
        onHeadlessChange(new OnHeadlessChangeCallback() {
            @Override
            public final void onChange(boolean z) {
                LifecycleManager.lambda$new$0(z);
            }
        });
    }

    static void lambda$new$0(boolean z) {
        if (z) {
            Log.d(BackgroundFetch.TAG, "☯️  HeadlessMode? " + z);
        }
    }

    public void pause() {
        this.mPaused.set(true);
    }

    public void resume() {
        this.mPaused.set(false);
    }

    public boolean isBackground() {
        return this.mIsBackground.get();
    }

    public boolean isHeadless() {
        return this.mIsHeadless.get();
    }

    public void setHeadless(boolean z) {
        this.mIsHeadless.set(z);
        if (this.mIsHeadless.get()) {
            Log.d(BackgroundFetch.TAG, "☯️  HeadlessMode? " + this.mIsHeadless);
        }
        Runnable runnable = this.mHeadlessChangeEvent;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.mStarted.set(true);
            fireHeadlessChangeListeners();
        }
    }

    public void onHeadlessChange(OnHeadlessChangeCallback onHeadlessChangeCallback) {
        if (this.mStarted.get()) {
            onHeadlessChangeCallback.onChange(this.mIsHeadless.get());
            return;
        }
        synchronized (this.mHeadlessChangeCallbacks) {
            this.mHeadlessChangeCallbacks.add(onHeadlessChangeCallback);
        }
    }

    public void onStateChange(OnStateChangeCallback onStateChangeCallback) {
        synchronized (this.mStateChangeCallbacks) {
            this.mStateChangeCallbacks.add(onStateChangeCallback);
        }
    }

    @Override
    public void run() {
        ProcessLifecycleOwner.get().getLifecycle().addObserver(this);
    }

    @Override
    public void onCreate(LifecycleOwner lifecycleOwner) {
        Log.d(BackgroundFetch.TAG, "☯️  onCreate");
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                LifecycleManager.this.mStarted.set(true);
                LifecycleManager.this.fireHeadlessChangeListeners();
            }
        };
        this.mHeadlessChangeEvent = runnable;
        this.mHandler.postDelayed(runnable, 50L);
        this.mIsHeadless.set(true);
        this.mIsBackground.set(true);
    }

    @Override
    public void onStart(LifecycleOwner lifecycleOwner) {
        Log.d(BackgroundFetch.TAG, "☯️  onStart");
        if (this.mPaused.get()) {
            return;
        }
        Runnable runnable = this.mHeadlessChangeEvent;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
        }
        this.mStarted.set(true);
        this.mIsHeadless.set(false);
        this.mIsBackground.set(false);
        fireHeadlessChangeListeners();
    }

    @Override
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        Log.d(BackgroundFetch.TAG, "☯️  onDestroy");
        this.mIsBackground.set(true);
        this.mIsHeadless.set(true);
    }

    @Override
    public void onStop(LifecycleOwner lifecycleOwner) {
        Log.d(BackgroundFetch.TAG, "☯️  onStop");
        if (this.mPaused.compareAndSet(true, false)) {
            return;
        }
        this.mIsBackground.set(true);
    }

    @Override
    public void onPause(LifecycleOwner lifecycleOwner) {
        Log.d(BackgroundFetch.TAG, "☯️  onPause");
        this.mIsBackground.set(true);
        fireStateChangeListeners(false);
    }

    @Override
    public void onResume(LifecycleOwner lifecycleOwner) {
        Log.d(BackgroundFetch.TAG, "☯️  onResume");
        if (this.mPaused.get()) {
            return;
        }
        this.mIsBackground.set(false);
        this.mIsHeadless.set(false);
        fireStateChangeListeners(true);
    }

    private void fireStateChangeListeners(boolean z) {
        synchronized (this.mStateChangeCallbacks) {
            Iterator<OnStateChangeCallback> it = this.mStateChangeCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onChange(z);
            }
        }
    }

    public void fireHeadlessChangeListeners() {
        Runnable runnable = this.mHeadlessChangeEvent;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.mHeadlessChangeEvent = null;
        }
        synchronized (this.mHeadlessChangeCallbacks) {
            Iterator<OnHeadlessChangeCallback> it = this.mHeadlessChangeCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onChange(this.mIsHeadless.get());
            }
            this.mHeadlessChangeCallbacks.clear();
        }
    }
}
