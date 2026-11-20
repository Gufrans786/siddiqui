package io.invertase.notifee;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import app.notifee.core.EventSubscriber;
import com.facebook.infer.annotation.Assertions;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactInstanceEventListener;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.UiThreadUtil;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.jstasks.HeadlessJsTaskConfig;
import com.facebook.react.jstasks.HeadlessJsTaskContext;
import com.facebook.react.jstasks.HeadlessJsTaskEventListener;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetchConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class HeadlessTask {
    private static final String HEADLESS_TASK_NAME = "NotifeeHeadlessJS";
    private static final int TASK_TIMEOUT = 60000;
    private static final AtomicInteger sLastTaskId = new AtomicInteger(0);
    private final List<TaskConfig> mTaskQueue = new ArrayList();
    private final AtomicBoolean mIsReactContextInitialized = new AtomicBoolean(false);
    private final AtomicBoolean mWillDrainTaskQueue = new AtomicBoolean(false);
    private final AtomicBoolean mIsInitializingReactContext = new AtomicBoolean(false);
    private final AtomicBoolean mIsHeadlessJsTaskListenerRegistered = new AtomicBoolean(false);

    public interface GenericCallback {
        void call();
    }

    static synchronized int getNextTaskId() {
        return sLastTaskId.incrementAndGet();
    }

    public void stopAllTasks() {
        Iterator<TaskConfig> it = this.mTaskQueue.iterator();
        while (it.hasNext()) {
            onFinishHeadlessTask(it.next().getTaskId());
        }
    }

    public void onFinishHeadlessTask(int i) {
        TaskConfig next;
        if (!this.mIsReactContextInitialized.get()) {
            Log.w(HEADLESS_TASK_NAME, i + " found no ReactContext");
            return;
        }
        ReactContext reactContext = getReactContext(EventSubscriber.getContext());
        if (reactContext != null) {
            synchronized (this.mTaskQueue) {
                Iterator<TaskConfig> it = this.mTaskQueue.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (next.getTaskId() != i);
                if (next != null) {
                    HeadlessJsTaskContext.getInstance(reactContext).finishTask(next.getReactTaskId());
                } else {
                    Log.w(HEADLESS_TASK_NAME, "Failed to find task: " + i);
                }
            }
            return;
        }
        Log.w(HEADLESS_TASK_NAME, "Failed to finishHeadlessTask: " + i + " -- HeadlessTask onFinishHeadlessTask failed to find a ReactContext.  This is unexpected");
    }

    public void startTask(Context context, TaskConfig taskConfig) throws AssertionError {
        UiThreadUtil.assertOnUiThread();
        synchronized (this.mTaskQueue) {
            this.mTaskQueue.add(taskConfig);
        }
        if (!this.mIsReactContextInitialized.get()) {
            createReactContextAndScheduleTask(context);
        } else {
            invokeStartTask(getReactContext(context), taskConfig);
        }
    }

    private synchronized void invokeStartTask(ReactContext reactContext, TaskConfig taskConfig) {
        if (taskConfig.mReactTaskId > 0) {
            Log.w(HEADLESS_TASK_NAME, "Task already invoked <IGNORED>: " + this);
            return;
        }
        HeadlessJsTaskContext headlessJsTaskContext = HeadlessJsTaskContext.getInstance(reactContext);
        try {
            if (this.mIsHeadlessJsTaskListenerRegistered.compareAndSet(false, true)) {
                headlessJsTaskContext.addTaskEventListener(new HeadlessJsTaskEventListener() {
                    @Override
                    public void onHeadlessJsTaskStart(int i) {
                    }

                    @Override
                    public void onHeadlessJsTaskFinish(int i) {
                        TaskConfig taskConfig2;
                        synchronized (HeadlessTask.this.mTaskQueue) {
                            if (HeadlessTask.this.mTaskQueue.isEmpty()) {
                                return;
                            }
                            Iterator it = HeadlessTask.this.mTaskQueue.iterator();
                            do {
                                if (!it.hasNext()) {
                                    taskConfig2 = null;
                                    break;
                                }
                                taskConfig2 = (TaskConfig) it.next();
                            } while (taskConfig2.getReactTaskId() != i);
                            if (taskConfig2 != null) {
                                Log.d(HeadlessTask.HEADLESS_TASK_NAME, "taskId: " + taskConfig2.getTaskId());
                                HeadlessTask.this.mTaskQueue.remove(taskConfig2);
                                if (taskConfig2.getCallback() != null) {
                                    taskConfig2.getCallback().call();
                                }
                            } else {
                                Log.w(HeadlessTask.HEADLESS_TASK_NAME, "Failed to find taskId: " + i);
                            }
                        }
                    }
                });
            }
            int iStartTask = headlessJsTaskContext.startTask(taskConfig.getTaskConfig());
            taskConfig.setReactTaskId(iStartTask);
            Log.d(HEADLESS_TASK_NAME, "taskId: " + iStartTask);
        } catch (IllegalStateException e) {
            Log.e(HEADLESS_TASK_NAME, e.getMessage(), e);
        }
    }

    public static ReactNativeHost getReactNativeHost(Context context) {
        return ((ReactApplication) context.getApplicationContext()).getReactNativeHost();
    }

    public static Object getReactHost(Context context) {
        Context applicationContext = context.getApplicationContext();
        try {
            return applicationContext.getClass().getMethod("getReactHost", new Class[0]).invoke(applicationContext, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static ReactContext getReactContext(Context context) {
        if (isBridgelessArchitectureEnabled()) {
            Object reactHost = getReactHost(context);
            Assertions.assertNotNull(reactHost, "getReactHost() is null in New Architecture");
            try {
                return (ReactContext) reactHost.getClass().getMethod("getCurrentReactContext", new Class[0]).invoke(reactHost, new Object[0]);
            } catch (Exception e) {
                Log.e(HEADLESS_TASK_NAME, "Reflection error getCurrentReactContext: " + e.getMessage(), e);
            }
        }
        return getReactNativeHost(context).getReactInstanceManager().getCurrentReactContext();
    }

    private void createReactContextAndScheduleTask(Context context) {
        ReactContext reactContext = getReactContext(context);
        if (reactContext != null && !this.mIsInitializingReactContext.get()) {
            this.mIsReactContextInitialized.set(true);
            drainTaskQueue(reactContext);
            return;
        }
        if (this.mIsInitializingReactContext.compareAndSet(false, true)) {
            Log.d(HEADLESS_TASK_NAME, "initialize ReactContext");
            final Object reactHost = getReactHost(context);
            if (isBridgelessArchitectureEnabled()) {
                try {
                    reactHost.getClass().getMethod("addReactInstanceEventListener", ReactInstanceEventListener.class).invoke(reactHost, new ReactInstanceEventListener() {
                        @Override
                        public void onReactContextInitialized(ReactContext reactContext2) {
                            HeadlessTask.this.mIsReactContextInitialized.set(true);
                            HeadlessTask.this.drainTaskQueue(reactContext2);
                            try {
                                reactHost.getClass().getMethod("removeReactInstanceEventListener", ReactInstanceEventListener.class).invoke(reactHost, this);
                            } catch (Exception e) {
                                Log.e(HeadlessTask.HEADLESS_TASK_NAME, "reflection error A: " + e, e);
                            }
                        }
                    });
                    reactHost.getClass().getMethod("start", new Class[0]).invoke(reactHost, new Object[0]);
                    return;
                } catch (Exception e) {
                    Log.e(HEADLESS_TASK_NAME, "reflection error ReactHost start: " + e.getMessage(), e);
                    return;
                }
            }
            final ReactInstanceManager reactInstanceManager = getReactNativeHost(context).getReactInstanceManager();
            reactInstanceManager.addReactInstanceEventListener(new ReactInstanceEventListener() {
                @Override
                public void onReactContextInitialized(ReactContext reactContext2) {
                    HeadlessTask.this.mIsReactContextInitialized.set(true);
                    HeadlessTask.this.drainTaskQueue(reactContext2);
                    reactInstanceManager.removeReactInstanceEventListener(this);
                }
            });
            reactInstanceManager.createReactContextInBackground();
        }
    }

    public void drainTaskQueue(final ReactContext reactContext) {
        if (this.mWillDrainTaskQueue.compareAndSet(false, true)) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.lambda$drainTaskQueue$0(reactContext);
                }
            }, 500L);
        }
    }

    public void lambda$drainTaskQueue$0(ReactContext reactContext) {
        synchronized (this.mTaskQueue) {
            Iterator<TaskConfig> it = this.mTaskQueue.iterator();
            while (it.hasNext()) {
                invokeStartTask(reactContext, it.next());
            }
        }
    }

    public static boolean isBridgelessArchitectureEnabled() {
        try {
            return Class.forName("com.facebook.react.defaults.DefaultNewArchitectureEntryPoint").getMethod("getBridgelessEnabled", new Class[0]).invoke(null, new Object[0]) == Boolean.TRUE;
        } catch (Exception unused) {
            return false;
        }
    }

    public static class TaskConfig {
        private final GenericCallback mCallback;
        private final WritableMap mParams;
        private int mReactTaskId;
        private final int mTaskId;
        private final String mTaskName;
        private final long mTaskTimeout;

        public TaskConfig(String str, long j, WritableMap writableMap, GenericCallback genericCallback) {
            this.mTaskName = str;
            this.mTaskTimeout = j;
            this.mCallback = genericCallback;
            int nextTaskId = HeadlessTask.getNextTaskId();
            this.mTaskId = nextTaskId;
            writableMap.putInt(BackgroundFetchConfig.FIELD_TASK_ID, nextTaskId);
            this.mParams = writableMap;
        }

        public void setReactTaskId(int i) {
            this.mReactTaskId = i;
        }

        public int getTaskId() {
            return this.mTaskId;
        }

        public int getReactTaskId() {
            return this.mReactTaskId;
        }

        public GenericCallback getCallback() {
            return this.mCallback;
        }

        public HeadlessJsTaskConfig getTaskConfig() {
            return new HeadlessJsTaskConfig(this.mTaskName, this.mParams, this.mTaskTimeout, true);
        }
    }
}
