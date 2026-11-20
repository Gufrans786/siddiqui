package com.transistorsoft.tsbackgroundfetch;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class BackgroundFetch {
    public static final String ACTION_CONFIGURE = "configure";
    public static final String ACTION_FINISH = "finish";
    public static final String ACTION_FORCE_RELOAD = "TSBackgroundFetch-forceReload";
    public static final String ACTION_START = "start";
    public static final String ACTION_STATUS = "status";
    public static final String ACTION_STOP = "stop";
    public static final String EVENT_FETCH = ".event.BACKGROUND_FETCH";
    public static final int STATUS_AVAILABLE = 2;
    public static final String TAG = "TSBackgroundFetch";
    private static volatile BackgroundFetch mInstance;
    private static ExecutorService sThreadPool;
    private static Handler uiHandler;
    private final Map<String, BackgroundFetchConfig> mConfig = new HashMap();
    private Context mContext;
    private Callback mFetchCallback;

    public interface Callback {
        void onFetch(String str);

        void onTimeout(String str);
    }

    public int status() {
        return 2;
    }

    public static Handler getUiHandler() {
        if (uiHandler == null) {
            uiHandler = new Handler(Looper.getMainLooper());
        }
        return uiHandler;
    }

    public static ExecutorService getThreadPool() {
        if (sThreadPool == null) {
            sThreadPool = Executors.newCachedThreadPool();
        }
        return sThreadPool;
    }

    public static BackgroundFetch getInstance(Context context) {
        if (mInstance == null) {
            mInstance = getInstanceSynchronized(context.getApplicationContext());
        }
        return mInstance;
    }

    private static synchronized BackgroundFetch getInstanceSynchronized(Context context) {
        if (mInstance == null) {
            mInstance = new BackgroundFetch(context.getApplicationContext());
        }
        return mInstance;
    }

    private BackgroundFetch(Context context) {
        this.mContext = context;
        getUiHandler().post(LifecycleManager.getInstance());
    }

    public void configure(BackgroundFetchConfig backgroundFetchConfig, Callback callback) {
        Log.d(TAG, "- configure");
        this.mFetchCallback = callback;
        synchronized (this.mConfig) {
            if (this.mConfig.containsKey(backgroundFetchConfig.getTaskId())) {
                BackgroundFetchConfig backgroundFetchConfig2 = this.mConfig.get(backgroundFetchConfig.getTaskId());
                Log.d(TAG, "Re-configured existing task");
                BGTask.reschedule(this.mContext, backgroundFetchConfig2, backgroundFetchConfig);
                backgroundFetchConfig.save(this.mContext);
                this.mConfig.put(backgroundFetchConfig.getTaskId(), backgroundFetchConfig);
                return;
            }
            this.mConfig.put(backgroundFetchConfig.getTaskId(), backgroundFetchConfig);
            start(backgroundFetchConfig.getTaskId());
        }
    }

    void onBoot() {
        BackgroundFetchConfig.load(this.mContext, new BackgroundFetchConfig.OnLoadCallback() {
            @Override
            public void onLoad(List<BackgroundFetchConfig> list) {
                for (BackgroundFetchConfig backgroundFetchConfig : list) {
                    if (!backgroundFetchConfig.getStartOnBoot() || backgroundFetchConfig.getStopOnTerminate()) {
                        backgroundFetchConfig.destroy(BackgroundFetch.this.mContext);
                    } else {
                        synchronized (BackgroundFetch.this.mConfig) {
                            BackgroundFetch.this.mConfig.put(backgroundFetchConfig.getTaskId(), backgroundFetchConfig);
                        }
                        if (backgroundFetchConfig.getForceAlarmManager()) {
                            if (backgroundFetchConfig.isFetchTask()) {
                                BackgroundFetch.this.start(backgroundFetchConfig.getTaskId());
                            } else {
                                BackgroundFetch.this.scheduleTask(backgroundFetchConfig);
                            }
                        }
                    }
                }
            }
        });
    }

    public void start(String str) {
        Log.d(TAG, "- start");
        if (BGTask.getTask(str) != null) {
            Log.e(TAG, "[TSBackgroundFetch start] Task " + str + " already registered");
        } else {
            registerTask(str);
        }
    }

    public void stop(String str) {
        String str2 = "- stop";
        if (str != null) {
            str2 = "- stop: " + str;
        }
        Log.d(TAG, str2);
        if (str == null) {
            this.mFetchCallback = null;
            synchronized (this.mConfig) {
                for (BackgroundFetchConfig backgroundFetchConfig : this.mConfig.values()) {
                    BGTask task = BGTask.getTask(backgroundFetchConfig.getTaskId());
                    if (task != null) {
                        task.finish();
                    }
                    BGTask.cancel(this.mContext, backgroundFetchConfig.getTaskId(), backgroundFetchConfig.getJobId());
                    backgroundFetchConfig.destroy(this.mContext);
                }
                BGTask.clear();
                this.mConfig.clear();
            }
            return;
        }
        BGTask task2 = BGTask.getTask(str);
        if (task2 != null) {
            task2.finish();
        }
        BackgroundFetchConfig config = getConfig(str);
        if (config != null) {
            BGTask.cancel(this.mContext, config.getTaskId(), config.getJobId());
            config.destroy(this.mContext);
            synchronized (this.mConfig) {
                this.mConfig.remove(str);
            }
        }
    }

    public void scheduleTask(BackgroundFetchConfig backgroundFetchConfig) {
        synchronized (this.mConfig) {
            if (this.mConfig.containsKey(backgroundFetchConfig.getTaskId())) {
                BackgroundFetchConfig backgroundFetchConfig2 = this.mConfig.get(backgroundFetchConfig.getTaskId());
                BGTask task = BGTask.getTask(backgroundFetchConfig.getTaskId());
                if (task != null) {
                    task.finish();
                }
                BGTask.cancel(this.mContext, backgroundFetchConfig2.getTaskId(), backgroundFetchConfig2.getJobId());
            }
            backgroundFetchConfig.save(this.mContext);
            this.mConfig.put(backgroundFetchConfig.getTaskId(), backgroundFetchConfig);
        }
        registerTask(backgroundFetchConfig.getTaskId());
    }

    public void finish(String str) {
        Log.d(TAG, "- finish: " + str);
        BGTask task = BGTask.getTask(str);
        if (task != null) {
            task.finish();
        }
        BackgroundFetchConfig config = getConfig(str);
        if (config == null || config.getPeriodic()) {
            return;
        }
        config.destroy(this.mContext);
        synchronized (this.mConfig) {
            this.mConfig.remove(str);
        }
    }

    Callback getFetchCallback() {
        return this.mFetchCallback;
    }

    void onFetch(final BGTask bGTask) {
        BGTask.addTask(bGTask);
        Log.d(TAG, "- Background Fetch event received: " + bGTask.getTaskId());
        synchronized (this.mConfig) {
            if (this.mConfig.isEmpty()) {
                BackgroundFetchConfig.load(this.mContext, new BackgroundFetchConfig.OnLoadCallback() {
                    @Override
                    public void onLoad(List<BackgroundFetchConfig> list) {
                        synchronized (BackgroundFetch.this.mConfig) {
                            for (BackgroundFetchConfig backgroundFetchConfig : list) {
                                BackgroundFetch.this.mConfig.put(backgroundFetchConfig.getTaskId(), backgroundFetchConfig);
                            }
                        }
                        BackgroundFetch.this.doFetch(bGTask);
                    }
                });
            } else {
                doFetch(bGTask);
            }
        }
    }

    private void registerTask(String str) {
        BackgroundFetchConfig config = getConfig(str);
        if (config == null) {
            Log.e(TAG, "- registerTask failed to find BackgroundFetchConfig for taskId " + str);
            return;
        }
        config.save(this.mContext);
        String str2 = "- registerTask: " + str;
        if (!config.getForceAlarmManager()) {
            str2 = str2 + " (jobId: " + config.getJobId() + ")";
        }
        Log.d(TAG, str2);
        BGTask.schedule(this.mContext, config);
    }

    public void doFetch(BGTask bGTask) {
        BackgroundFetchConfig config = getConfig(bGTask.getTaskId());
        if (config == null) {
            BGTask.cancel(this.mContext, bGTask.getTaskId(), bGTask.getJobId());
            return;
        }
        if (!LifecycleManager.getInstance().isHeadless()) {
            Callback callback = this.mFetchCallback;
            if (callback != null) {
                callback.onFetch(bGTask.getTaskId());
                return;
            }
            return;
        }
        if (config.getStopOnTerminate()) {
            Log.d(TAG, "- Stopping on terminate");
            stop(bGTask.getTaskId());
        } else {
            if (config.getJobService() != null) {
                try {
                    bGTask.fireHeadlessEvent(this.mContext, config);
                    return;
                } catch (BGTask.Error e) {
                    Log.e(TAG, "Headless task error: " + e.getMessage());
                    e.printStackTrace();
                    return;
                }
            }
            Log.w(TAG, "- BackgroundFetch event has occurred while app is terminated but there's no jobService configured to handle the event.  BackgroundFetch will terminate.");
            finish(bGTask.getTaskId());
            stop(bGTask.getTaskId());
        }
    }

    BackgroundFetchConfig getConfig(String str) {
        BackgroundFetchConfig backgroundFetchConfig;
        synchronized (this.mConfig) {
            backgroundFetchConfig = this.mConfig.containsKey(str) ? this.mConfig.get(str) : null;
        }
        return backgroundFetchConfig;
    }
}
