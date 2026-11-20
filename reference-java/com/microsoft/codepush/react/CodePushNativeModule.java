package com.microsoft.codepush.react;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactHost;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.ReactRootView;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.JSBundleLoader;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.devsupport.interfaces.DevSupportManager;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.facebook.react.modules.core.ReactChoreographer;
import com.facebook.react.modules.debug.interfaces.DeveloperSettings;
import com.facebook.react.runtime.ReactHostDelegate;
import com.facebook.react.runtime.ReactHostImpl;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CodePushNativeModule extends BaseJavaModule {
    private boolean _allowed;
    private boolean _restartInProgress;
    private ArrayList<Boolean> _restartQueue;
    private String mBinaryContentsHash;
    private String mClientUniqueId;
    private CodePush mCodePush;
    private LifecycleEventListener mLifecycleEventListener;
    private int mMinimumBackgroundDuration;
    private SettingsManager mSettingsManager;
    private CodePushTelemetryManager mTelemetryManager;
    private CodePushUpdateManager mUpdateManager;

    @ReactMethod
    public void addListener(String str) {
    }

    @ReactMethod
    public void removeListeners(Integer num) {
    }

    public CodePushNativeModule(ReactApplicationContext reactApplicationContext, CodePush codePush, CodePushUpdateManager codePushUpdateManager, CodePushTelemetryManager codePushTelemetryManager, SettingsManager settingsManager) {
        super(reactApplicationContext);
        this.mBinaryContentsHash = null;
        this.mClientUniqueId = null;
        this.mLifecycleEventListener = null;
        this.mMinimumBackgroundDuration = 0;
        this._allowed = true;
        this._restartInProgress = false;
        this._restartQueue = new ArrayList<>();
        this.mCodePush = codePush;
        this.mSettingsManager = settingsManager;
        this.mTelemetryManager = codePushTelemetryManager;
        this.mUpdateManager = codePushUpdateManager;
        this.mBinaryContentsHash = CodePushUpdateUtils.getHashForBinaryContents(reactApplicationContext, codePush.isDebugMode());
        SharedPreferences sharedPreferences = codePush.getContext().getSharedPreferences("CodePush", 0);
        String string = sharedPreferences.getString(CodePushConstants.CLIENT_UNIQUE_ID_KEY, null);
        this.mClientUniqueId = string;
        if (string == null) {
            this.mClientUniqueId = UUID.randomUUID().toString();
            sharedPreferences.edit().putString(CodePushConstants.CLIENT_UNIQUE_ID_KEY, this.mClientUniqueId).apply();
        }
    }

    @Override
    public Map<String, Object> getConstants() {
        HashMap map = new HashMap();
        map.put("codePushInstallModeImmediate", Integer.valueOf(CodePushInstallMode.IMMEDIATE.getValue()));
        map.put("codePushInstallModeOnNextRestart", Integer.valueOf(CodePushInstallMode.ON_NEXT_RESTART.getValue()));
        map.put("codePushInstallModeOnNextResume", Integer.valueOf(CodePushInstallMode.ON_NEXT_RESUME.getValue()));
        map.put("codePushInstallModeOnNextSuspend", Integer.valueOf(CodePushInstallMode.ON_NEXT_SUSPEND.getValue()));
        map.put("codePushUpdateStateRunning", Integer.valueOf(CodePushUpdateState.RUNNING.getValue()));
        map.put("codePushUpdateStatePending", Integer.valueOf(CodePushUpdateState.PENDING.getValue()));
        map.put("codePushUpdateStateLatest", Integer.valueOf(CodePushUpdateState.LATEST.getValue()));
        return map;
    }

    @Override
    public String getName() {
        return "CodePush";
    }

    private void loadBundleLegacy() {
        final Activity currentActivity = getReactApplicationContext().getCurrentActivity();
        if (currentActivity == null) {
            return;
        }
        this.mCodePush.invalidateCurrentInstance();
        currentActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                currentActivity.recreate();
            }
        });
    }

    private void setJSBundle(ReactInstanceManager reactInstanceManager, String str) throws IllegalAccessException {
        JSBundleLoader jSBundleLoaderCreateFileLoader;
        try {
            if (str.toLowerCase().startsWith(CodePushConstants.ASSETS_BUNDLE_PREFIX)) {
                jSBundleLoaderCreateFileLoader = JSBundleLoader.createAssetLoader(getReactApplicationContext(), str, false);
            } else {
                jSBundleLoaderCreateFileLoader = JSBundleLoader.createFileLoader(str);
            }
            Field declaredField = reactInstanceManager.getClass().getDeclaredField("mBundleLoader");
            declaredField.setAccessible(true);
            declaredField.set(reactInstanceManager, jSBundleLoaderCreateFileLoader);
        } catch (Exception unused) {
            CodePushUtils.log("Unable to set JSBundle of ReactInstanceManager - CodePush may not support this version of React Native");
            throw new IllegalAccessException("Could not setJSBundle");
        }
    }

    private void setJSBundle(ReactHostDelegate reactHostDelegate, String str) throws IllegalAccessException {
        JSBundleLoader jSBundleLoaderCreateFileLoader;
        try {
            if (str.toLowerCase().startsWith(CodePushConstants.ASSETS_BUNDLE_PREFIX)) {
                jSBundleLoaderCreateFileLoader = JSBundleLoader.createAssetLoader(getReactApplicationContext(), str, false);
            } else {
                jSBundleLoaderCreateFileLoader = JSBundleLoader.createFileLoader(str);
            }
            Field declaredField = reactHostDelegate.getClass().getDeclaredField("jsBundleLoader");
            declaredField.setAccessible(true);
            declaredField.set(reactHostDelegate, jSBundleLoaderCreateFileLoader);
        } catch (NoSuchFieldException unused) {
        } catch (Exception unused2) {
            CodePushUtils.log("Unable to set JSBundle of ReactHostDelegate - CodePush may not support this version of React Native");
            throw new IllegalAccessException("Could not setJSBundle");
        }
    }

    private void loadBundle() {
        ReactHostDelegate reactHostDelegate;
        clearLifecycleEventListener();
        try {
            ReactHost reactHostResolveReactHost = resolveReactHost();
            this.mCodePush.clearDebugCacheIfNeeded(isLiveReloadEnabled(reactHostResolveReactHost != null ? reactHostResolveReactHost.getDevSupportManager() : null));
        } catch (Exception unused) {
            this.mCodePush.clearDebugCacheIfNeeded(false);
        }
        try {
            ReactHost reactHostResolveReactHost2 = resolveReactHost();
            if (reactHostResolveReactHost2 == null) {
                loadBundleLegacy();
                return;
            }
            CodePush codePush = this.mCodePush;
            String jSBundleFileInternal = codePush.getJSBundleFileInternal(codePush.getAssetsBundleFileName());
            try {
                if ((reactHostResolveReactHost2 instanceof ReactHostImpl) && (reactHostDelegate = getReactHostDelegate((ReactHostImpl) reactHostResolveReactHost2)) != null) {
                    setJSBundle(reactHostDelegate, jSBundleFileInternal);
                }
            } catch (Exception e) {
                CodePushUtils.log("Exception setJSBundle: " + e.getMessage());
            }
            try {
                reactHostResolveReactHost2.reload("CodePush triggers reload");
                this.mCodePush.initializeUpdateAfterRestart();
            } catch (Exception unused2) {
                loadBundleLegacy();
            }
        } catch (Exception e2) {
            CodePushUtils.log("Failed to load the bundle, falling back to restarting the Activity (if it exists). " + e2.getMessage());
            loadBundleLegacy();
        }
    }

    private boolean isLiveReloadEnabled(DevSupportManager devSupportManager) {
        if (devSupportManager != null) {
            DeveloperSettings devSettings = devSupportManager.getDevSettings();
            for (Method method : devSettings.getClass().getMethods()) {
                if (method.getName().equals("isReloadOnJSChangeEnabled")) {
                    try {
                        return ((Boolean) method.invoke(devSettings, new Object[0])).booleanValue();
                    } catch (Exception unused) {
                        return false;
                    }
                }
            }
        }
        return false;
    }

    private void resetReactRootViews(ReactInstanceManager reactInstanceManager) throws IllegalAccessException, NoSuchFieldException {
        Field declaredField = reactInstanceManager.getClass().getDeclaredField("mAttachedRootViews");
        declaredField.setAccessible(true);
        List<ReactRootView> list = (List) declaredField.get(reactInstanceManager);
        for (ReactRootView reactRootView : list) {
            reactRootView.removeAllViews();
            reactRootView.setId(-1);
        }
        declaredField.set(reactInstanceManager, list);
    }

    private void clearLifecycleEventListener() {
        if (this.mLifecycleEventListener != null) {
            getReactApplicationContext().removeLifecycleEventListener(this.mLifecycleEventListener);
            this.mLifecycleEventListener = null;
        }
    }

    private ReactInstanceManager resolveInstanceManager() throws IllegalAccessException, NoSuchFieldException {
        ReactInstanceManager reactInstanceManager = CodePush.getReactInstanceManager();
        if (reactInstanceManager != null) {
            return reactInstanceManager;
        }
        Activity currentActivity = getReactApplicationContext().getCurrentActivity();
        if (currentActivity == null) {
            return null;
        }
        return ((ReactApplication) currentActivity.getApplication()).getReactNativeHost().getReactInstanceManager();
    }

    private ReactHost resolveReactHost() throws IllegalAccessException, NoSuchFieldException {
        ReactHost reactHost = CodePush.getReactHost();
        if (reactHost != null) {
            return reactHost;
        }
        Activity currentActivity = getReactApplicationContext().getCurrentActivity();
        if (currentActivity == null) {
            return null;
        }
        return ((ReactApplication) currentActivity.getApplication()).getReactHost();
    }

    public void restartAppInternal(boolean z) {
        if (this._restartInProgress) {
            CodePushUtils.log("Restart request queued until the current restart is completed");
            this._restartQueue.add(Boolean.valueOf(z));
            return;
        }
        if (!this._allowed) {
            CodePushUtils.log("Restart request queued until restarts are re-allowed");
            this._restartQueue.add(Boolean.valueOf(z));
            return;
        }
        this._restartInProgress = true;
        if (!z || this.mSettingsManager.isPendingUpdate(null)) {
            loadBundle();
            CodePushUtils.log("Restarting app");
            return;
        }
        this._restartInProgress = false;
        if (this._restartQueue.size() > 0) {
            boolean zBooleanValue = this._restartQueue.get(0).booleanValue();
            this._restartQueue.remove(0);
            restartAppInternal(zBooleanValue);
        }
    }

    @ReactMethod
    public void allow(Promise promise) {
        CodePushUtils.log("Re-allowing restarts");
        this._allowed = true;
        if (this._restartQueue.size() > 0) {
            CodePushUtils.log("Executing pending restart");
            boolean zBooleanValue = this._restartQueue.get(0).booleanValue();
            this._restartQueue.remove(0);
            restartAppInternal(zBooleanValue);
        }
        promise.resolve(null);
    }

    @ReactMethod
    public void clearPendingRestart(Promise promise) {
        this._restartQueue.clear();
        promise.resolve(null);
    }

    @ReactMethod
    public void disallow(Promise promise) {
        CodePushUtils.log("Disallowing restarts");
        this._allowed = false;
        promise.resolve(null);
    }

    @ReactMethod
    public void restartApp(boolean z, Promise promise) {
        try {
            restartAppInternal(z);
            promise.resolve(null);
        } catch (CodePushUnknownException e) {
            CodePushUtils.log(e);
            promise.reject(e);
        }
    }

    @ReactMethod
    public void downloadUpdate(final ReadableMap readableMap, final boolean z, final Promise promise) {
        new AsyncTask<Void, Void, Void>() {
            @Override
            public Void doInBackground(Void... voidArr) {
                try {
                    JSONObject jSONObjectConvertReadableToJsonObject = CodePushUtils.convertReadableToJsonObject(readableMap);
                    CodePushUtils.setJSONValueForKey(jSONObjectConvertReadableToJsonObject, CodePushConstants.BINARY_MODIFIED_TIME_KEY, "" + CodePushNativeModule.this.mCodePush.getBinaryResourcesModifiedTime());
                    CodePushNativeModule.this.mUpdateManager.downloadPackage(jSONObjectConvertReadableToJsonObject, CodePushNativeModule.this.mCodePush.getAssetsBundleFileName(), new AnonymousClass1(), CodePushNativeModule.this.mCodePush.getPublicKey());
                    promise.resolve(CodePushUtils.convertJsonObjectToWritable(CodePushNativeModule.this.mUpdateManager.getPackage(CodePushUtils.tryGetString(readableMap, "packageHash"))));
                    return null;
                } catch (CodePushInvalidUpdateException e) {
                    CodePushUtils.log(e);
                    CodePushNativeModule.this.mSettingsManager.saveFailedUpdate(CodePushUtils.convertReadableToJsonObject(readableMap));
                    promise.reject(e);
                    return null;
                } catch (CodePushUnknownException e2) {
                    e = e2;
                    CodePushUtils.log(e);
                    promise.reject(e);
                    return null;
                } catch (IOException e3) {
                    e = e3;
                    CodePushUtils.log(e);
                    promise.reject(e);
                    return null;
                }
            }

            class AnonymousClass1 implements DownloadProgressCallback {
                private boolean hasScheduledNextFrame = false;
                private DownloadProgress latestDownloadProgress = null;

                AnonymousClass1() {
                }

                @Override
                public void call(DownloadProgress downloadProgress) {
                    if (z) {
                        this.latestDownloadProgress = downloadProgress;
                        if (downloadProgress.isCompleted()) {
                            dispatchDownloadProgressEvent();
                        } else {
                            if (this.hasScheduledNextFrame) {
                                return;
                            }
                            this.hasScheduledNextFrame = true;
                            CodePushNativeModule.this.getReactApplicationContext().runOnUiQueueThread(new Runnable() {
                                @Override
                                public void run() {
                                    ReactChoreographer.getInstance().postFrameCallback(ReactChoreographer.CallbackType.TIMERS_EVENTS, new Choreographer.FrameCallback() {
                                        @Override
                                        public void doFrame(long j) {
                                            if (!AnonymousClass1.this.latestDownloadProgress.isCompleted()) {
                                                AnonymousClass1.this.dispatchDownloadProgressEvent();
                                            }
                                            AnonymousClass1.this.hasScheduledNextFrame = false;
                                        }
                                    });
                                }
                            });
                        }
                    }
                }

                public void dispatchDownloadProgressEvent() {
                    ((DeviceEventManagerModule.RCTDeviceEventEmitter) CodePushNativeModule.this.getReactApplicationContext().getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(CodePushConstants.DOWNLOAD_PROGRESS_EVENT_NAME, this.latestDownloadProgress.createWritableMap());
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @ReactMethod
    public void getConfiguration(Promise promise) {
        try {
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putString(RemoteConfigConstants.RequestFieldKey.APP_VERSION, this.mCodePush.getAppVersion());
            writableMapCreateMap.putString(CodePushConstants.CLIENT_UNIQUE_ID_KEY, this.mClientUniqueId);
            writableMapCreateMap.putString("deploymentKey", this.mCodePush.getDeploymentKey());
            writableMapCreateMap.putString("serverUrl", this.mCodePush.getServerUrl());
            String str = this.mBinaryContentsHash;
            if (str != null) {
                writableMapCreateMap.putString("packageHash", str);
            }
            promise.resolve(writableMapCreateMap);
        } catch (CodePushUnknownException e) {
            CodePushUtils.log(e);
            promise.reject(e);
        }
    }

    @ReactMethod
    public void getUpdateMetadata(final int i, final Promise promise) {
        new AsyncTask<Void, Void, Void>() {
            @Override
            public Void doInBackground(Void... voidArr) {
                try {
                    JSONObject currentPackage = CodePushNativeModule.this.mUpdateManager.getCurrentPackage();
                    if (currentPackage == null) {
                        promise.resolve(null);
                        return null;
                    }
                    Boolean boolValueOf = false;
                    if (currentPackage.has("packageHash")) {
                        boolValueOf = Boolean.valueOf(CodePushNativeModule.this.mSettingsManager.isPendingUpdate(currentPackage.optString("packageHash", null)));
                    }
                    if (i == CodePushUpdateState.PENDING.getValue() && !boolValueOf.booleanValue()) {
                        promise.resolve(null);
                    } else if (i == CodePushUpdateState.RUNNING.getValue() && boolValueOf.booleanValue()) {
                        JSONObject previousPackage = CodePushNativeModule.this.mUpdateManager.getPreviousPackage();
                        if (previousPackage == null) {
                            promise.resolve(null);
                            return null;
                        }
                        promise.resolve(CodePushUtils.convertJsonObjectToWritable(previousPackage));
                    } else {
                        if (CodePushNativeModule.this.mCodePush.isRunningBinaryVersion()) {
                            CodePushUtils.setJSONValueForKey(currentPackage, "_isDebugOnly", true);
                        }
                        CodePushUtils.setJSONValueForKey(currentPackage, "isPending", boolValueOf);
                        promise.resolve(CodePushUtils.convertJsonObjectToWritable(currentPackage));
                    }
                    return null;
                } catch (CodePushMalformedDataException e) {
                    CodePushUtils.log(e.getMessage());
                    CodePushNativeModule.this.clearUpdates();
                    promise.resolve(null);
                } catch (CodePushUnknownException e2) {
                    CodePushUtils.log(e2);
                    promise.reject(e2);
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @ReactMethod
    public void getNewStatusReport(final Promise promise) {
        new AsyncTask<Void, Void, Void>() {
            @Override
            public Void doInBackground(Void... voidArr) {
                WritableMap updateReport;
                try {
                    if (CodePushNativeModule.this.mCodePush.needToReportRollback()) {
                        CodePushNativeModule.this.mCodePush.setNeedToReportRollback(false);
                        JSONArray failedUpdates = CodePushNativeModule.this.mSettingsManager.getFailedUpdates();
                        if (failedUpdates != null && failedUpdates.length() > 0) {
                            try {
                                WritableMap rollbackReport = CodePushNativeModule.this.mTelemetryManager.getRollbackReport(CodePushUtils.convertJsonObjectToWritable(failedUpdates.getJSONObject(failedUpdates.length() - 1)));
                                if (rollbackReport != null) {
                                    promise.resolve(rollbackReport);
                                    return null;
                                }
                            } catch (JSONException e) {
                                throw new CodePushUnknownException("Unable to read failed updates information stored in SharedPreferences.", e);
                            }
                        }
                    } else if (CodePushNativeModule.this.mCodePush.didUpdate()) {
                        JSONObject currentPackage = CodePushNativeModule.this.mUpdateManager.getCurrentPackage();
                        if (currentPackage != null && (updateReport = CodePushNativeModule.this.mTelemetryManager.getUpdateReport(CodePushUtils.convertJsonObjectToWritable(currentPackage))) != null) {
                            promise.resolve(updateReport);
                            return null;
                        }
                    } else if (CodePushNativeModule.this.mCodePush.isRunningBinaryVersion()) {
                        WritableMap binaryUpdateReport = CodePushNativeModule.this.mTelemetryManager.getBinaryUpdateReport(CodePushNativeModule.this.mCodePush.getAppVersion());
                        if (binaryUpdateReport != null) {
                            promise.resolve(binaryUpdateReport);
                            return null;
                        }
                    } else {
                        WritableMap retryStatusReport = CodePushNativeModule.this.mTelemetryManager.getRetryStatusReport();
                        if (retryStatusReport != null) {
                            promise.resolve(retryStatusReport);
                            return null;
                        }
                    }
                    promise.resolve("");
                } catch (CodePushUnknownException e2) {
                    CodePushUtils.log(e2);
                    promise.reject(e2);
                }
                return null;
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    class AnonymousClass6 extends AsyncTask<Void, Void, Void> {
        final int val$installMode;
        final int val$minimumBackgroundDuration;
        final Promise val$promise;
        final ReadableMap val$updatePackage;

        AnonymousClass6(ReadableMap readableMap, int i, int i2, Promise promise) {
            this.val$updatePackage = readableMap;
            this.val$installMode = i;
            this.val$minimumBackgroundDuration = i2;
            this.val$promise = promise;
        }

        @Override
        public Void doInBackground(Void... voidArr) {
            try {
                CodePushNativeModule.this.mUpdateManager.installPackage(CodePushUtils.convertReadableToJsonObject(this.val$updatePackage), CodePushNativeModule.this.mSettingsManager.isPendingUpdate(null));
                String strTryGetString = CodePushUtils.tryGetString(this.val$updatePackage, "packageHash");
                if (strTryGetString == null) {
                    throw new CodePushUnknownException("Update package to be installed has no hash.");
                }
                CodePushNativeModule.this.mSettingsManager.savePendingUpdate(strTryGetString, false);
                if (this.val$installMode == CodePushInstallMode.ON_NEXT_RESUME.getValue() || this.val$installMode == CodePushInstallMode.IMMEDIATE.getValue() || this.val$installMode == CodePushInstallMode.ON_NEXT_SUSPEND.getValue()) {
                    CodePushNativeModule.this.mMinimumBackgroundDuration = this.val$minimumBackgroundDuration;
                    if (CodePushNativeModule.this.mLifecycleEventListener == null) {
                        CodePushNativeModule.this.mLifecycleEventListener = new LifecycleEventListener() {
                            private Date lastPausedDate = null;
                            private Handler appSuspendHandler = new Handler(Looper.getMainLooper());
                            private Runnable loadBundleRunnable = new Runnable() {
                                @Override
                                public void run() {
                                    CodePushUtils.log("Loading bundle on suspend");
                                    CodePushNativeModule.this.restartAppInternal(false);
                                }
                            };

                            @Override
                            public void onHostDestroy() {
                            }

                            @Override
                            public void onHostResume() {
                                this.appSuspendHandler.removeCallbacks(this.loadBundleRunnable);
                                if (this.lastPausedDate != null) {
                                    long time = (new Date().getTime() - this.lastPausedDate.getTime()) / 1000;
                                    if (AnonymousClass6.this.val$installMode == CodePushInstallMode.IMMEDIATE.getValue() || time >= CodePushNativeModule.this.mMinimumBackgroundDuration) {
                                        CodePushUtils.log("Loading bundle on resume");
                                        CodePushNativeModule.this.restartAppInternal(false);
                                    }
                                }
                            }

                            @Override
                            public void onHostPause() {
                                this.lastPausedDate = new Date();
                                if (AnonymousClass6.this.val$installMode == CodePushInstallMode.ON_NEXT_SUSPEND.getValue() && CodePushNativeModule.this.mSettingsManager.isPendingUpdate(null)) {
                                    this.appSuspendHandler.postDelayed(this.loadBundleRunnable, AnonymousClass6.this.val$minimumBackgroundDuration * 1000);
                                }
                            }
                        };
                        CodePushNativeModule.this.getReactApplicationContext().addLifecycleEventListener(CodePushNativeModule.this.mLifecycleEventListener);
                    }
                }
                this.val$promise.resolve("");
                return null;
            } catch (CodePushUnknownException e) {
                CodePushUtils.log(e);
                this.val$promise.reject(e);
            }
        }
    }

    @ReactMethod
    public void installUpdate(ReadableMap readableMap, int i, int i2, Promise promise) {
        new AnonymousClass6(readableMap, i, i2, promise).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @ReactMethod
    public void isFailedUpdate(String str, Promise promise) {
        try {
            promise.resolve(Boolean.valueOf(this.mSettingsManager.isFailedHash(str)));
        } catch (CodePushUnknownException e) {
            CodePushUtils.log(e);
            promise.reject(e);
        }
    }

    @ReactMethod
    public void getLatestRollbackInfo(Promise promise) {
        try {
            JSONObject latestRollbackInfo = this.mSettingsManager.getLatestRollbackInfo();
            if (latestRollbackInfo != null) {
                promise.resolve(CodePushUtils.convertJsonObjectToWritable(latestRollbackInfo));
            } else {
                promise.resolve(null);
            }
        } catch (CodePushUnknownException e) {
            CodePushUtils.log(e);
            promise.reject(e);
        }
    }

    @ReactMethod
    public void setLatestRollbackInfo(String str, Promise promise) {
        try {
            this.mSettingsManager.setLatestRollbackInfo(str);
            promise.resolve(null);
        } catch (CodePushUnknownException e) {
            CodePushUtils.log(e);
            promise.reject(e);
        }
    }

    @ReactMethod
    public void isFirstRun(String str, Promise promise) {
        try {
            promise.resolve(Boolean.valueOf(this.mCodePush.didUpdate() && str != null && str.length() > 0 && str.equals(this.mUpdateManager.getCurrentPackageHash())));
        } catch (CodePushUnknownException e) {
            CodePushUtils.log(e);
            promise.reject(e);
        }
    }

    @ReactMethod
    public void notifyApplicationReady(Promise promise) {
        try {
            this.mSettingsManager.removePendingUpdate();
            promise.resolve("");
        } catch (CodePushUnknownException e) {
            CodePushUtils.log(e);
            promise.reject(e);
        }
    }

    @ReactMethod
    public void recordStatusReported(ReadableMap readableMap) {
        try {
            this.mTelemetryManager.recordStatusReported(readableMap);
        } catch (CodePushUnknownException e) {
            CodePushUtils.log(e);
        }
    }

    @ReactMethod
    public void saveStatusReportForRetry(ReadableMap readableMap) {
        try {
            this.mTelemetryManager.saveStatusReportForRetry(readableMap);
        } catch (CodePushUnknownException e) {
            CodePushUtils.log(e);
        }
    }

    @ReactMethod
    public void downloadAndReplaceCurrentBundle(String str) {
        try {
            if (CodePush.isUsingTestConfiguration()) {
                try {
                    this.mUpdateManager.downloadAndReplaceCurrentBundle(str, this.mCodePush.getAssetsBundleFileName());
                } catch (IOException e) {
                    throw new CodePushUnknownException("Unable to replace current bundle", e);
                }
            }
        } catch (CodePushMalformedDataException | CodePushUnknownException e2) {
            CodePushUtils.log(e2);
        }
    }

    @ReactMethod
    public void clearUpdates() {
        CodePushUtils.log("Clearing updates.");
        this.mCodePush.clearUpdates();
    }

    public ReactHostDelegate getReactHostDelegate(ReactHostImpl reactHostImpl) {
        try {
            Field declaredField = reactHostImpl.getClass().getDeclaredField("reactHostDelegate");
            declaredField.setAccessible(true);
            return (ReactHostDelegate) declaredField.get(reactHostImpl);
        } catch (IllegalAccessException | NoSuchFieldException e) {
            e.printStackTrace();
            return null;
        }
    }
}
