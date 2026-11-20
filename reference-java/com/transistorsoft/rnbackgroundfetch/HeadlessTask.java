package com.transistorsoft.rnbackgroundfetch;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.facebook.infer.annotation.Assertions;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactInstanceEventListener;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.UiThreadUtil;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.common.LifecycleState;
import com.facebook.react.jstasks.HeadlessJsTaskConfig;
import com.facebook.react.jstasks.HeadlessJsTaskContext;
import com.transistorsoft.tsbackgroundfetch.BGTask;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetch;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetchConfig;
import com.transistorsoft.tsbackgroundfetch.FetchJobService;

public class HeadlessTask {
    private static final String HEADLESS_TASK_NAME = "BackgroundFetch";
    private static final Handler mHandler = new Handler();
    private final BGTask mBGTask;

    public HeadlessTask(Context context, BGTask bGTask) {
        this.mBGTask = bGTask;
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putString(BackgroundFetchConfig.FIELD_TASK_ID, bGTask.getTaskId());
        writableNativeMap.putBoolean("timeout", bGTask.getTimedOut());
        try {
            startTask(new HeadlessJsTaskConfig(HEADLESS_TASK_NAME, writableNativeMap, 30000L), context);
        } catch (AssertionError e) {
            Log.d(BackgroundFetch.TAG, "[HeadlessTask] Failed invoke HeadlessTask: " + e.getMessage());
        }
    }

    protected void startTask(HeadlessJsTaskConfig headlessJsTaskConfig, Context context) {
        UiThreadUtil.assertOnUiThread();
        ReactContext reactContext = getReactContext(context);
        if (reactContext == null) {
            createReactContextAndScheduleTask(headlessJsTaskConfig, context);
        } else {
            invokeStartTask(reactContext, headlessJsTaskConfig);
        }
    }

    public void invokeStartTask(ReactContext reactContext, final HeadlessJsTaskConfig headlessJsTaskConfig) {
        if (reactContext.getLifecycleState() == LifecycleState.RESUMED) {
            return;
        }
        final HeadlessJsTaskContext headlessJsTaskContext = HeadlessJsTaskContext.getInstance(reactContext);
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.lambda$invokeStartTask$1(headlessJsTaskContext, headlessJsTaskConfig);
            }
        });
    }

    public void lambda$invokeStartTask$1(final HeadlessJsTaskContext headlessJsTaskContext, HeadlessJsTaskConfig headlessJsTaskConfig) {
        try {
            final int iStartTask = headlessJsTaskContext.startTask(headlessJsTaskConfig);
            Log.d(BackgroundFetch.TAG, "[HeadlessTask] start taskId: " + iStartTask);
            this.mBGTask.setCompletionHandler(new FetchJobService.CompletionHandler() {
                @Override
                public final void finish() {
                    HeadlessTask.lambda$invokeStartTask$0(iStartTask, headlessJsTaskContext);
                }
            });
        } catch (IllegalStateException unused) {
            Log.e(BackgroundFetch.TAG, "[HeadlessTask] task attempted to run in the foreground.  Task ignored.");
        }
    }

    static void lambda$invokeStartTask$0(int i, HeadlessJsTaskContext headlessJsTaskContext) {
        Log.d(BackgroundFetch.TAG, "[HeadlessTask] end taskId: " + i);
        if (headlessJsTaskContext.isTaskRunning(i)) {
            headlessJsTaskContext.finishTask(i);
        }
    }

    private ReactNativeHost getReactNativeHost(Context context) {
        return ((ReactApplication) context.getApplicationContext()).getReactNativeHost();
    }

    private Object getReactHost(Context context) {
        Context applicationContext = context.getApplicationContext();
        try {
            return applicationContext.getClass().getMethod("getReactHost", new Class[0]).invoke(applicationContext, new Object[0]);
        } catch (Exception e) {
            Log.d(BackgroundFetch.TAG, "[HeadlessTask] Reflection error ReactHost: " + e);
            return null;
        }
    }

    private ReactContext getReactContext(Context context) {
        if (isBridglessArchitectureEnabled()) {
            Object reactHost = getReactHost(context);
            Assertions.assertNotNull(reactHost, "getReactHost() is null in New Architecture");
            try {
                return (ReactContext) reactHost.getClass().getMethod("getCurrentReactContext", new Class[0]).invoke(reactHost, new Object[0]);
            } catch (Exception e) {
                Log.e(BackgroundFetch.TAG, "[HeadlessTask] Reflection error getCurrentReactContext: " + e);
            }
        }
        return getReactNativeHost(context).getReactInstanceManager().getCurrentReactContext();
    }

    private void createReactContextAndScheduleTask(HeadlessJsTaskConfig headlessJsTaskConfig, Context context) {
        Log.d(BackgroundFetch.TAG, "[HeadlessTask] initializing ReactContext");
        if (isBridglessArchitectureEnabled()) {
            Object reactHost = getReactHost(context);
            try {
                reactHost.getClass().getMethod("addReactInstanceEventListener", ReactInstanceEventListener.class).invoke(reactHost, new AnonymousClass1(headlessJsTaskConfig, reactHost));
                reactHost.getClass().getMethod("start", new Class[0]).invoke(reactHost, new Object[0]);
                return;
            } catch (Exception e) {
                Log.e(BackgroundFetch.TAG, "[HeadlessTask] reflection error addReactInstanceEventListener: " + e);
                return;
            }
        }
        ReactInstanceManager reactInstanceManager = getReactNativeHost(context).getReactInstanceManager();
        reactInstanceManager.addReactInstanceEventListener(new AnonymousClass2(headlessJsTaskConfig, reactInstanceManager));
        reactInstanceManager.createReactContextInBackground();
    }

    class AnonymousClass1 implements ReactInstanceEventListener {
        final Object val$reactHost;
        final HeadlessJsTaskConfig val$taskConfig;

        AnonymousClass1(HeadlessJsTaskConfig headlessJsTaskConfig, Object obj) {
            this.val$taskConfig = headlessJsTaskConfig;
            this.val$reactHost = obj;
        }

        public void lambda$onReactContextInitialized$0(ReactContext reactContext, HeadlessJsTaskConfig headlessJsTaskConfig) {
            HeadlessTask.this.invokeStartTask(reactContext, headlessJsTaskConfig);
        }

        @Override
        public void onReactContextInitialized(final ReactContext reactContext) {
            Handler handler = HeadlessTask.mHandler;
            final HeadlessJsTaskConfig headlessJsTaskConfig = this.val$taskConfig;
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.lambda$onReactContextInitialized$0(reactContext, headlessJsTaskConfig);
                }
            }, 500L);
            try {
                this.val$reactHost.getClass().getMethod("removeReactInstanceEventListener", ReactInstanceEventListener.class).invoke(this.val$reactHost, this);
            } catch (Exception e) {
                Log.e(BackgroundFetch.TAG, "[HeadlessTask] reflection error removeReactInstanceEventListener" + e);
            }
        }
    }

    class AnonymousClass2 implements ReactInstanceEventListener {
        final ReactInstanceManager val$reactInstanceManager;
        final HeadlessJsTaskConfig val$taskConfig;

        AnonymousClass2(HeadlessJsTaskConfig headlessJsTaskConfig, ReactInstanceManager reactInstanceManager) {
            this.val$taskConfig = headlessJsTaskConfig;
            this.val$reactInstanceManager = reactInstanceManager;
        }

        public void lambda$onReactContextInitialized$0(ReactContext reactContext, HeadlessJsTaskConfig headlessJsTaskConfig) {
            HeadlessTask.this.invokeStartTask(reactContext, headlessJsTaskConfig);
        }

        @Override
        public void onReactContextInitialized(final ReactContext reactContext) {
            Handler handler = HeadlessTask.mHandler;
            final HeadlessJsTaskConfig headlessJsTaskConfig = this.val$taskConfig;
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.lambda$onReactContextInitialized$0(reactContext, headlessJsTaskConfig);
                }
            }, 500L);
            this.val$reactInstanceManager.removeReactInstanceEventListener(this);
        }
    }

    private boolean isBridglessArchitectureEnabled() {
        try {
            return Class.forName("com.facebook.react.defaults.DefaultNewArchitectureEntryPoint").getMethod("getBridgelessEnabled", new Class[0]).invoke(null, new Object[0]) == Boolean.TRUE;
        } catch (Exception unused) {
            return false;
        }
    }
}
