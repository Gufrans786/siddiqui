package com.facebook.react.modules.debug;

import com.facebook.fbreact.specs.NativeDevSettingsSpec;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMapBuilder;
import com.facebook.react.bridge.UiThreadUtil;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.devsupport.interfaces.DevOptionHandler;
import com.facebook.react.devsupport.interfaces.DevSupportManager;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ViewProps;
import com.microsoft.codepush.react.CodePushConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = "DevSettings")
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0006\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\b\u0010\u0013\u001a\u00020\tH\u0016J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\fH\u0016J\b\u0010\u0016\u001a\u00020\tH\u0016J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0010H\u0016J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\fH\u0016J\u0010\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/facebook/react/modules/debug/DevSettingsModule;", "Lcom/facebook/fbreact/specs/NativeDevSettingsSpec;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "devSupportManager", "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V", "reload", "", "reloadWithReason", "reason", "", "onFastRefresh", "setHotLoadingEnabled", "isHotLoadingEnabled", "", "setProfilingEnabled", "isProfilingEnabled", "toggleElementInspector", "addMenuItem", "title", "openDebugger", "setIsShakeToShowDevMenuEnabled", ViewProps.ENABLED, "addListener", "eventName", "removeListeners", CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, "", "Companion", "ReactAndroid_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DevSettingsModule extends NativeDevSettingsSpec {
    public static final String NAME = "DevSettings";
    private final DevSupportManager devSupportManager;

    @Override
    public void addListener(String eventName) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
    }

    @Override
    public void onFastRefresh() {
    }

    @Override
    public void removeListeners(double count) {
    }

    @Override
    public void setIsShakeToShowDevMenuEnabled(boolean enabled) {
    }

    public DevSettingsModule(ReactApplicationContext reactApplicationContext, DevSupportManager devSupportManager) {
        super(reactApplicationContext);
        Intrinsics.checkNotNullParameter(devSupportManager, "devSupportManager");
        this.devSupportManager = devSupportManager;
    }

    @Override
    public void reload() {
        if (this.devSupportManager.getIsDevSupportEnabled()) {
            UiThreadUtil.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    DevSettingsModule.reload$lambda$0(this.f$0);
                }
            });
        }
    }

    public static final void reload$lambda$0(DevSettingsModule devSettingsModule) {
        devSettingsModule.devSupportManager.handleReloadJS();
    }

    @Override
    public void reloadWithReason(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        reload();
    }

    @Override
    public void setHotLoadingEnabled(boolean isHotLoadingEnabled) {
        this.devSupportManager.setHotModuleReplacementEnabled(isHotLoadingEnabled);
    }

    @Override
    public void setProfilingEnabled(boolean isProfilingEnabled) {
        this.devSupportManager.setFpsDebugEnabled(isProfilingEnabled);
    }

    @Override
    public void toggleElementInspector() {
        this.devSupportManager.toggleElementInspector();
    }

    @Override
    public void addMenuItem(final String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.devSupportManager.addCustomDevOption(title, new DevOptionHandler() {
            @Override
            public final void onOptionSelected() {
                DevSettingsModule.addMenuItem$lambda$2(this.f$0, title);
            }
        });
    }

    @Override
    public void openDebugger() {
        this.devSupportManager.openDebugger();
    }

    public static final void addMenuItem$lambda$2(DevSettingsModule devSettingsModule, String str) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        new ReadableMapBuilder(writableMapCreateMap).put("title", str);
        WritableMap writableMap = writableMapCreateMap;
        ReactApplicationContext reactApplicationContextIfActiveOrWarn = devSettingsModule.getReactApplicationContextIfActiveOrWarn();
        if (reactApplicationContextIfActiveOrWarn != null) {
            reactApplicationContextIfActiveOrWarn.emitDeviceEvent("didPressMenuItem", writableMap);
        }
    }
}
