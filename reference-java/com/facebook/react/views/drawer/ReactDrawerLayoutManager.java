package com.facebook.react.views.drawer;

import android.view.View;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import ch.qos.logback.core.CoreConstants;
import com.facebook.common.logging.FLog;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.JSApplicationIllegalArgumentException;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.PixelUtil;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerHelper;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.uimanager.events.EventDispatcher;
import com.facebook.react.viewmanagers.AndroidDrawerLayoutManagerDelegate;
import com.facebook.react.viewmanagers.AndroidDrawerLayoutManagerInterface;
import com.facebook.react.views.drawer.events.DrawerClosedEvent;
import com.facebook.react.views.drawer.events.DrawerOpenedEvent;
import com.facebook.react.views.drawer.events.DrawerSlideEvent;
import com.facebook.react.views.drawer.events.DrawerStateChangedEvent;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 72\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u000267B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0014J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\rH\u0014J\u001a\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\tH\u0002J\u0018\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u001f\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0002\u0010\u0019J\u001a\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\tH\u0017J\u0010\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u001a\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0017J\u001f\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010 H\u0017¢\u0006\u0002\u0010!J\u001f\u0010\"\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010 H\u0017¢\u0006\u0002\u0010!J\u0018\u0010#\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0018H\u0016J\b\u0010%\u001a\u00020&H\u0016J\u0014\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020 0(H\u0016J\"\u0010)\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010*\u001a\u00020 2\b\u0010+\u001a\u0004\u0018\u00010,H\u0017J\u0014\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020.0(H\u0016J\u0014\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020.0(H\u0016J \u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020 H\u0016J\u000e\u00105\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0016R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/facebook/react/views/drawer/ReactDrawerLayout;", "Lcom/facebook/react/viewmanagers/AndroidDrawerLayoutManagerInterface;", "<init>", "()V", "delegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "getName", "", "addEventEmitters", "", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "view", "createViewInstance", CoreConstants.CONTEXT_SCOPE_VALUE, "setDrawerPosition", "value", "drawerPosition", "Lcom/facebook/react/bridge/Dynamic;", "setDrawerPositionInternal", "setDrawerWidth", "width", "", "(Lcom/facebook/react/views/drawer/ReactDrawerLayout;Ljava/lang/Float;)V", "setDrawerLockMode", "drawerLockMode", ReactDrawerLayoutManager.COMMAND_OPEN_DRAWER, ReactDrawerLayoutManager.COMMAND_CLOSE_DRAWER, "setKeyboardDismissMode", "setDrawerBackgroundColor", "", "(Lcom/facebook/react/views/drawer/ReactDrawerLayout;Ljava/lang/Integer;)V", "setStatusBarBackgroundColor", "setElevation", "elevation", "needsCustomLayoutForChildren", "", "getCommandsMap", "", "receiveCommand", "commandId", "args", "Lcom/facebook/react/bridge/ReadableArray;", "getExportedViewConstants", "", "getExportedCustomDirectEventTypeConstants", "addView", "parent", "child", "Landroid/view/View;", FirebaseAnalytics.Param.INDEX, "getDelegate", "DrawerEventEmitter", "Companion", "ReactAndroid_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ReactModule(name = ReactDrawerLayoutManager.REACT_CLASS)
public final class ReactDrawerLayoutManager extends ViewGroupManager<ReactDrawerLayout> implements AndroidDrawerLayoutManagerInterface<ReactDrawerLayout> {
    public static final int CLOSE_DRAWER = 2;
    public static final String COMMAND_CLOSE_DRAWER = "closeDrawer";
    public static final String COMMAND_OPEN_DRAWER = "openDrawer";
    private static final String DRAWER_POSITION = "DrawerPosition";
    private static final String DRAWER_POSITION_LEFT = "Left";
    private static final String DRAWER_POSITION_RIGHT = "Right";
    public static final int OPEN_DRAWER = 1;
    public static final String REACT_CLASS = "AndroidDrawerLayout";
    private final ViewManagerDelegate<ReactDrawerLayout> delegate;

    @Override
    public boolean needsCustomLayoutForChildren() {
        return true;
    }

    @Override
    @ReactProp(customType = "Color", name = "drawerBackgroundColor")
    public void setDrawerBackgroundColor(ReactDrawerLayout view, Integer value) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override
    @ReactProp(name = "keyboardDismissMode")
    public void setKeyboardDismissMode(ReactDrawerLayout view, String value) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override
    @ReactProp(customType = "Color", name = "statusBarBackgroundColor")
    public void setStatusBarBackgroundColor(ReactDrawerLayout view, Integer value) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    public ReactDrawerLayoutManager() {
        super(null, 1, null);
        this.delegate = new AndroidDrawerLayoutManagerDelegate(this);
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public void addEventEmitters(ThemedReactContext reactContext, ReactDrawerLayout view) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        Intrinsics.checkNotNullParameter(view, "view");
        EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag(reactContext, view.getId());
        if (eventDispatcherForReactTag == null) {
            return;
        }
        view.addDrawerListener(new DrawerEventEmitter(view, eventDispatcherForReactTag));
    }

    @Override
    public ReactDrawerLayout createViewInstance(ThemedReactContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new ReactDrawerLayout(context);
    }

    @Override
    public void setDrawerPosition(ReactDrawerLayout view, String value) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (value == null) {
            view.setDrawerPosition$ReactAndroid_release(GravityCompat.START);
        } else {
            setDrawerPositionInternal(view, value);
        }
    }

    @ReactProp(name = "drawerPosition")
    public final void setDrawerPosition(ReactDrawerLayout view, Dynamic drawerPosition) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(drawerPosition, "drawerPosition");
        if (drawerPosition.isNull()) {
            view.setDrawerPosition$ReactAndroid_release(GravityCompat.START);
            return;
        }
        if (drawerPosition.getType() == ReadableType.Number) {
            int iAsInt = drawerPosition.asInt();
            if (8388611 == iAsInt || 8388613 == iAsInt) {
                view.setDrawerPosition$ReactAndroid_release(iAsInt);
                return;
            } else {
                FLog.w("ReactNative", "Unknown drawerPosition " + iAsInt);
                view.setDrawerPosition$ReactAndroid_release(GravityCompat.START);
                return;
            }
        }
        if (drawerPosition.getType() == ReadableType.String) {
            String strAsString = drawerPosition.asString();
            if (strAsString == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            setDrawerPositionInternal(view, strAsString);
            return;
        }
        FLog.w("ReactNative", "drawerPosition must be a string or int");
        view.setDrawerPosition$ReactAndroid_release(GravityCompat.START);
    }

    private final void setDrawerPositionInternal(ReactDrawerLayout view, String drawerPosition) {
        if (Intrinsics.areEqual(drawerPosition, ViewProps.LEFT)) {
            view.setDrawerPosition$ReactAndroid_release(GravityCompat.START);
        } else if (Intrinsics.areEqual(drawerPosition, ViewProps.RIGHT)) {
            view.setDrawerPosition$ReactAndroid_release(GravityCompat.END);
        } else {
            FLog.w("ReactNative", "drawerPosition must be 'left' or 'right', received" + drawerPosition);
            view.setDrawerPosition$ReactAndroid_release(GravityCompat.START);
        }
    }

    @ReactProp(defaultFloat = Float.NaN, name = "drawerWidth")
    public final void setDrawerWidth(ReactDrawerLayout view, float width) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setDrawerWidth$ReactAndroid_release(Float.isNaN(width) ? -1 : Math.round(PixelUtil.INSTANCE.dpToPx(width)));
    }

    @Override
    public void setDrawerWidth(ReactDrawerLayout view, Float width) {
        int iRound;
        Intrinsics.checkNotNullParameter(view, "view");
        if (width != null) {
            iRound = Math.round(PixelUtil.INSTANCE.dpToPx(width.floatValue()));
        } else {
            iRound = -1;
        }
        view.setDrawerWidth$ReactAndroid_release(iRound);
    }

    @Override
    @com.facebook.react.uimanager.annotations.ReactProp(name = "drawerLockMode")
    public void setDrawerLockMode(com.facebook.react.views.drawer.ReactDrawerLayout r4, java.lang.String r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.react.views.drawer.ReactDrawerLayoutManager.setDrawerLockMode(com.facebook.react.views.drawer.ReactDrawerLayout, java.lang.String):void");
    }

    @Override
    public void openDrawer(ReactDrawerLayout view) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.openDrawer$ReactAndroid_release();
    }

    @Override
    public void closeDrawer(ReactDrawerLayout view) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.closeDrawer$ReactAndroid_release();
    }

    @Override
    public void setElevation(ReactDrawerLayout view, float elevation) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setDrawerElevation(PixelUtil.INSTANCE.dpToPx(elevation));
    }

    @Override
    public Map<String, Integer> getCommandsMap() {
        return MapsKt.mapOf(TuplesKt.to(COMMAND_OPEN_DRAWER, 1), TuplesKt.to(COMMAND_CLOSE_DRAWER, 2));
    }

    @Override
    @Deprecated(message = "This method is deprecated. Use receiveCommand(ReactDrawerLayout, String, ReadableArray) instead", replaceWith = @ReplaceWith(expression = "receiveCommand(ReactDrawerLayout, String, ReadableArray)", imports = {}))
    public void receiveCommand(ReactDrawerLayout view, int commandId, ReadableArray args) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (commandId == 1) {
            view.openDrawer$ReactAndroid_release();
        } else {
            if (commandId != 2) {
                return;
            }
            view.closeDrawer$ReactAndroid_release();
        }
    }

    @Override
    public Map<String, Object> getExportedViewConstants() {
        return MapsKt.mapOf(TuplesKt.to(DRAWER_POSITION, MapsKt.mapOf(TuplesKt.to(DRAWER_POSITION_LEFT, Integer.valueOf(GravityCompat.START)), TuplesKt.to(DRAWER_POSITION_RIGHT, Integer.valueOf(GravityCompat.END)))));
    }

    @Override
    public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
        LinkedHashMap exportedCustomDirectEventTypeConstants = super.getExportedCustomDirectEventTypeConstants();
        if (exportedCustomDirectEventTypeConstants == null) {
            exportedCustomDirectEventTypeConstants = new LinkedHashMap();
        }
        exportedCustomDirectEventTypeConstants.put(DrawerSlideEvent.EVENT_NAME, MapsKt.mapOf(TuplesKt.to("registrationName", "onDrawerSlide")));
        exportedCustomDirectEventTypeConstants.put(DrawerOpenedEvent.EVENT_NAME, MapsKt.mapOf(TuplesKt.to("registrationName", "onDrawerOpen")));
        exportedCustomDirectEventTypeConstants.put(DrawerClosedEvent.EVENT_NAME, MapsKt.mapOf(TuplesKt.to("registrationName", "onDrawerClose")));
        exportedCustomDirectEventTypeConstants.put(DrawerStateChangedEvent.EVENT_NAME, MapsKt.mapOf(TuplesKt.to("registrationName", "onDrawerStateChanged")));
        return exportedCustomDirectEventTypeConstants;
    }

    @Override
    public void addView(ReactDrawerLayout parent, View child, int index) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(child, "child");
        if (getChildCount(parent) >= 2) {
            throw new JSApplicationIllegalArgumentException("The Drawer cannot have more than two children");
        }
        if (index != 0 && index != 1) {
            throw new JSApplicationIllegalArgumentException("The only valid indices for drawer's child are 0 or 1. Got " + index + " instead.");
        }
        parent.addView(child, index);
        parent.setDrawerProperties$ReactAndroid_release();
    }

    @Override
    public ViewManagerDelegate<ReactDrawerLayout> getDelegate() {
        return this.delegate;
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;", "Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;", "drawerLayout", "Landroidx/drawerlayout/widget/DrawerLayout;", "eventDispatcher", "Lcom/facebook/react/uimanager/events/EventDispatcher;", "<init>", "(Landroidx/drawerlayout/widget/DrawerLayout;Lcom/facebook/react/uimanager/events/EventDispatcher;)V", "onDrawerSlide", "", "view", "Landroid/view/View;", "v", "", "onDrawerOpened", "onDrawerClosed", "onDrawerStateChanged", "i", "", "ReactAndroid_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DrawerEventEmitter implements DrawerLayout.DrawerListener {
        private final DrawerLayout drawerLayout;
        private final EventDispatcher eventDispatcher;

        public DrawerEventEmitter(DrawerLayout drawerLayout, EventDispatcher eventDispatcher) {
            Intrinsics.checkNotNullParameter(drawerLayout, "drawerLayout");
            Intrinsics.checkNotNullParameter(eventDispatcher, "eventDispatcher");
            this.drawerLayout = drawerLayout;
            this.eventDispatcher = eventDispatcher;
        }

        @Override
        public void onDrawerSlide(View view, float v) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.eventDispatcher.dispatchEvent(new DrawerSlideEvent(UIManagerHelper.getSurfaceId(this.drawerLayout), this.drawerLayout.getId(), v));
        }

        @Override
        public void onDrawerOpened(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.eventDispatcher.dispatchEvent(new DrawerOpenedEvent(UIManagerHelper.getSurfaceId(this.drawerLayout), this.drawerLayout.getId()));
        }

        @Override
        public void onDrawerClosed(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.eventDispatcher.dispatchEvent(new DrawerClosedEvent(UIManagerHelper.getSurfaceId(this.drawerLayout), this.drawerLayout.getId()));
        }

        @Override
        public void onDrawerStateChanged(int i) {
            this.eventDispatcher.dispatchEvent(new DrawerStateChangedEvent(UIManagerHelper.getSurfaceId(this.drawerLayout), this.drawerLayout.getId(), i));
        }
    }
}
