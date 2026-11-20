package com.rnmapbox.rnmbx.modules;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import app.notifee.core.event.LogEvent;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.microsoft.codepush.react.CodePushConstants;
import com.nimbusds.jose.HeaderParameterNames;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = RNMBXLogging.REACT_CLASS)
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0007J\u0017\u0010\u000b\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0002\u0010\u000eJ\u0012\u0010\u000f\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0007J.\u0010\u0011\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/RNMBXLogging;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "mReactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "addListener", "", "eventName", "removeListeners", CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, "", "(Ljava/lang/Integer;)V", "setLogLevel", "level", "onLog", HeaderParameterNames.AUTHENTICATION_TAG, NotificationCompat.CATEGORY_MESSAGE, "tr", "", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXLogging extends ReactContextBaseJavaModule {
    public static final String REACT_CLASS = "RNMBXLogging";
    private final ReactApplicationContext mReactContext;

    @ReactMethod
    public final void addListener(String eventName) {
    }

    @ReactMethod
    public final void removeListeners(Integer count) {
    }

    public RNMBXLogging(ReactApplicationContext mReactContext) {
        super(mReactContext);
        Intrinsics.checkNotNullParameter(mReactContext, "mReactContext");
        this.mReactContext = mReactContext;
        Logger.INSTANCE.setVerbosity(5);
        Logger.INSTANCE.setLoggerDefinition(new Logger.LoggerDefinition() {
            @Override
            public void v(String tag, String msg) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Log.v(tag, msg);
                RNMBXLogging.this.onLog(LogEvent.LEVEL_VERBOSE, tag, msg, null);
            }

            @Override
            public void v(String tag, String msg, Throwable tr) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Intrinsics.checkNotNullParameter(tr, "tr");
                Log.v(tag, msg, tr);
                RNMBXLogging.this.onLog(LogEvent.LEVEL_VERBOSE, tag, msg, tr);
            }

            @Override
            public void d(String tag, String msg) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Log.d(tag, msg);
                RNMBXLogging.this.onLog(LogEvent.LEVEL_DEBUG, tag, msg, null);
            }

            @Override
            public void d(String tag, String msg, Throwable tr) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Intrinsics.checkNotNullParameter(tr, "tr");
                Log.d(tag, msg, tr);
                RNMBXLogging.this.onLog(LogEvent.LEVEL_DEBUG, tag, msg, tr);
            }

            @Override
            public void i(String tag, String msg) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Log.i(tag, msg);
                RNMBXLogging.this.onLog(LogEvent.LEVEL_INFO, tag, msg, null);
            }

            @Override
            public void i(String tag, String msg, Throwable tr) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Intrinsics.checkNotNullParameter(tr, "tr");
                Log.i(tag, msg, tr);
                RNMBXLogging.this.onLog(LogEvent.LEVEL_INFO, tag, msg, tr);
            }

            @Override
            public void w(String tag, String msg) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Log.w(tag, msg);
                RNMBXLogging.this.onLog("warning", tag, msg, null);
            }

            @Override
            public void w(String tag, String msg, Throwable tr) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Intrinsics.checkNotNullParameter(tr, "tr");
                Log.w(tag, msg, tr);
                RNMBXLogging.this.onLog("warning", tag, msg, tr);
            }

            @Override
            public void e(String tag, String msg) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Log.e(tag, msg);
                RNMBXLogging.this.onLog("error", tag, msg, null);
            }

            @Override
            public void e(String tag, String msg, Throwable tr) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(msg, "msg");
                Intrinsics.checkNotNullParameter(tr, "tr");
                Log.e(tag, msg, tr);
                RNMBXLogging.this.onLog("error", tag, msg, tr);
            }
        });
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @ReactMethod
    public final void setLogLevel(String level) {
        int i;
        if (level != null) {
            switch (level) {
                case "info":
                    i = 4;
                    break;
                case "debug":
                    i = 3;
                    break;
                case "error":
                    i = 6;
                    break;
                case "verbose":
                    i = 2;
                    break;
                case "warning":
                    i = 5;
                    break;
                default:
                    i = 0;
                    break;
            }
        } else {
            i = 0;
        }
        Logger.INSTANCE.setVerbosity(i);
    }

    public final void onLog(String level, String tag, String msg, Throwable tr) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        writableMapCreateMap.putString("message", msg);
        writableMapCreateMap.putString(HeaderParameterNames.AUTHENTICATION_TAG, tag);
        writableMapCreateMap.putString("level", level);
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) this.mReactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("LogEvent", writableMapCreateMap);
    }
}
