package im.zego.zim.internal.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class Background implements Application.ActivityLifecycleCallbacks {
    private static final long CHECK_DELAY = 10;
    public static final String TAG = "BackgroundMonitor";
    private Application application;
    private boolean background;
    private static Callback becameForeground = new Callback() {
        @Override
        public void invoke(Listener listener) {
            listener.onBecameForeground();
        }
    };
    private static Callback becameBackground = new Callback() {
        @Override
        public void invoke(Listener listener) {
            listener.onBecameBackground();
        }
    };
    private static Background instance = new Background();
    private Listeners listeners = new Listeners();
    private boolean isInit = false;
    private Set<Integer> pageList = new HashSet();
    private Set<Integer> pagePauseList = new HashSet();
    private Lock lock = new ReentrantLock();

    public interface Binding {
        void unbind();
    }

    private interface Callback {
        void invoke(Listener listener);
    }

    public interface Listener {
        void onBecameBackground();

        void onBecameForeground();
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    Background() {
    }

    private static class Listeners {
        private List<WeakReference<Listener>> listeners;

        private Listeners() {
            this.listeners = new CopyOnWriteArrayList();
        }

        public Binding add(Listener listener) {
            final WeakReference<Listener> weakReference = new WeakReference<>(listener);
            this.listeners.add(weakReference);
            return new Binding() {
                @Override
                public void unbind() {
                    Listeners.this.listeners.remove(weakReference);
                }
            };
        }

        public void each(Callback callback) {
            ArrayList arrayList = new ArrayList();
            for (WeakReference<Listener> weakReference : this.listeners) {
                try {
                    Listener listener = weakReference.get();
                    if (listener != null) {
                        callback.invoke(listener);
                    } else {
                        arrayList.add(weakReference);
                    }
                } catch (Exception e) {
                    Log.e("BackgroundMonitor", "Listener threw exception!", e);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.listeners.removeAll(arrayList);
        }
    }

    public boolean isInited() {
        return this.isInit;
    }

    public Background init(Application app2) {
        uninit();
        this.application = app2;
        app2.registerActivityLifecycleCallbacks(this);
        this.lock.lock();
        try {
            this.background = checkBackground();
            this.isInit = true;
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    public Background uninit() {
        Application application = this.application;
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this);
            this.application = null;
        }
        this.lock.lock();
        try {
            this.pageList.clear();
            this.pagePauseList.clear();
            this.isInit = false;
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    public static Background get() {
        return instance;
    }

    public boolean isBackground() {
        return this.background;
    }

    public boolean isForeground() {
        return !this.background;
    }

    public Binding addListener(Listener listener) {
        return this.listeners.add(listener);
    }

    @Override
    public void onActivityResumed(Activity activity) {
        int iHashCode = activity.hashCode();
        this.lock.lock();
        try {
            if (this.isInit) {
                handleActivityOpen(iHashCode);
            }
        } finally {
            this.lock.unlock();
        }
    }

    @Override
    public void onActivityPaused(Activity activity) {
        int iHashCode = activity.hashCode();
        this.lock.lock();
        try {
            if (this.isInit) {
                handleActivityPause(iHashCode);
            }
        } finally {
            this.lock.unlock();
        }
    }

    @Override
    public void onActivityStarted(Activity activity) {
        int iHashCode = activity.hashCode();
        this.lock.lock();
        try {
            if (this.isInit) {
                handleActivityOpen(iHashCode);
            }
        } finally {
            this.lock.unlock();
        }
    }

    @Override
    public void onActivityStopped(Activity activity) {
        int iHashCode = activity.hashCode();
        this.lock.lock();
        try {
            if (this.isInit) {
                handleActivityStop(iHashCode);
            }
        } finally {
            this.lock.unlock();
        }
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        int iHashCode = activity.hashCode();
        this.lock.lock();
        try {
            if (this.isInit) {
                handleActivityOpen(iHashCode);
            }
        } finally {
            this.lock.unlock();
        }
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        int iHashCode = activity.hashCode();
        this.lock.lock();
        try {
            if (this.isInit) {
                handleActivityStop(iHashCode);
            }
        } finally {
            this.lock.unlock();
        }
    }

    private void handleActivityOpen(final int hashCode) {
        if (this.pageList.contains(Integer.valueOf(hashCode))) {
            return;
        }
        this.pageList.add(Integer.valueOf(hashCode));
        if (this.background) {
            this.background = false;
            this.listeners.each(becameForeground);
        }
    }

    private void handleActivityPause(final int hashCode) {
        if (this.pagePauseList.contains(Integer.valueOf(hashCode))) {
            return;
        }
        this.pagePauseList.add(Integer.valueOf(hashCode));
    }

    private void handleActivityStop(final int hashCode) {
        if (this.pageList.contains(Integer.valueOf(hashCode))) {
            this.pageList.remove(Integer.valueOf(hashCode));
            if (this.pageList.size() == 0) {
                if (!this.background) {
                    this.background = true;
                    this.listeners.each(becameBackground);
                }
            } else if (this.background) {
                this.background = false;
                this.listeners.each(becameForeground);
            }
        } else if (this.pageList.size() == 0) {
            if (this.pagePauseList.contains(Integer.valueOf(hashCode)) && !this.background) {
                this.background = true;
                this.listeners.each(becameBackground);
            }
        } else if (this.background) {
            this.background = false;
            this.listeners.each(becameForeground);
        }
        this.pagePauseList.remove(Integer.valueOf(hashCode));
    }

    private boolean checkBackground() {
        this.application.getPackageName();
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return (runningAppProcessInfo.importance == 100 || runningAppProcessInfo.importance == 200) ? false : true;
    }
}
