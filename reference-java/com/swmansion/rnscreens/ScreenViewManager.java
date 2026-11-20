package com.swmansion.rnscreens;

import android.util.Log;
import android.view.View;
import com.facebook.react.bridge.JSApplicationIllegalArgumentException;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ReactStylesDiffMap;
import com.facebook.react.uimanager.StateWrapper;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNSScreenManagerDelegate;
import com.facebook.react.viewmanagers.RNSScreenManagerInterface;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.swmansion.rnscreens.bottomsheet.SheetDetents;
import com.swmansion.rnscreens.events.HeaderBackButtonClickedEvent;
import com.swmansion.rnscreens.events.HeaderHeightChangeEvent;
import com.swmansion.rnscreens.events.ScreenAppearEvent;
import com.swmansion.rnscreens.events.ScreenDisappearEvent;
import com.swmansion.rnscreens.events.ScreenDismissedEvent;
import com.swmansion.rnscreens.events.ScreenTransitionProgressEvent;
import com.swmansion.rnscreens.events.SheetDetentChangedEvent;
import com.swmansion.rnscreens.gamma.tabs.event.TabScreenWillAppearEvent;
import com.swmansion.rnscreens.gamma.tabs.event.TabScreenWillDisappearEvent;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0003\b\u0017\u0018\u0000 _2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001_B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0014J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0015H\u0016J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0014J\u0010\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\tH\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0017H\u0007J\u001a\u0010#\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010$\u001a\u0004\u0018\u00010\tH\u0017J\u001a\u0010%\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010&\u001a\u0004\u0018\u00010\tH\u0017J\u0018\u0010'\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0017J\u001a\u0010*\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010&\u001a\u0004\u0018\u00010\tH\u0017J\u001a\u0010+\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010,\u001a\u0004\u0018\u00010\tH\u0017J\u001a\u0010-\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010.\u001a\u0004\u0018\u00010\tH\u0017J\u001f\u0010/\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u00100\u001a\u0004\u0018\u00010\u0017H\u0017¢\u0006\u0002\u00101J\u001a\u00102\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u00103\u001a\u0004\u0018\u00010\tH\u0017J\u0018\u00104\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u00105\u001a\u00020)H\u0017J\u0018\u00106\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u00107\u001a\u00020)H\u0017J\u001f\u00108\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u00109\u001a\u0004\u0018\u00010\u0017H\u0017¢\u0006\u0002\u00101J\u0018\u0010:\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010;\u001a\u00020)H\u0017J\u0018\u0010<\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010=\u001a\u00020)H\u0017J\u0018\u0010>\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010?\u001a\u00020)H\u0017J\u001a\u0010@\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010A\u001a\u00020\u0017H\u0017J\u001a\u0010B\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010C\u001a\u00020)H\u0017J\u001c\u0010D\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010E\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010A\u001a\u00020)H\u0016J\u001a\u0010F\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010A\u001a\u00020\u0017H\u0016J\u001a\u0010G\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010A\u001a\u00020)H\u0016J\u001a\u0010H\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010A\u001a\u00020)H\u0016J\u001c\u0010I\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010JH\u0016J\u001a\u0010K\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010A\u001a\u00020)H\u0016J\u001a\u0010L\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010A\u001a\u00020)H\u0016J\u001c\u0010M\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010N\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010O\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010P\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010Q\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010A\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010R\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010A\u001a\u00020)H\u0016J\u001a\u0010S\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010A\u001a\u00020)H\u0016J\u001a\u0010T\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010A\u001a\u0004\u0018\u00010UH\u0017J\u0018\u0010V\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u0017H\u0017J\u0018\u0010W\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010A\u001a\u00020)H\u0017J\u0018\u0010X\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u0011H\u0017J\u0018\u0010Y\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010A\u001a\u00020)H\u0017J\u0018\u0010Z\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u0017H\u0017J\u001a\u0010[\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010A\u001a\u0004\u0018\u00010\tH\u0016J\u0014\u0010\\\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001b0]H\u0016J\u000e\u0010^\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006`"}, d2 = {"Lcom/swmansion/rnscreens/ScreenViewManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/swmansion/rnscreens/Screen;", "Lcom/facebook/react/viewmanagers/RNSScreenManagerInterface;", "<init>", "()V", "delegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setActivityState", "", "view", "activityState", "", "addView", "parent", "child", "Landroid/view/View;", FirebaseAnalytics.Param.INDEX, "", "removeViewAt", "removeView", "updateState", "", "props", "Lcom/facebook/react/uimanager/ReactStylesDiffMap;", "stateWrapper", "Lcom/facebook/react/uimanager/StateWrapper;", "onAfterUpdateTransaction", "logNotAvailable", "propName", "setStackPresentation", "presentation", "setStackAnimation", "animation", "setGestureEnabled", "gestureEnabled", "", "setReplaceAnimation", "setScreenOrientation", "screenOrientation", "setStatusBarAnimation", "statusBarAnimation", "setStatusBarColor", "statusBarColor", "(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Integer;)V", "setStatusBarStyle", "statusBarStyle", "setStatusBarTranslucent", "statusBarTranslucent", "setStatusBarHidden", "statusBarHidden", "setNavigationBarColor", "navigationBarColor", "setNavigationBarTranslucent", "navigationBarTranslucent", "setNavigationBarHidden", "navigationBarHidden", "setNativeBackButtonDismissalEnabled", "nativeBackButtonDismissalEnabled", "setSheetElevation", "value", "setSheetShouldOverflowTopInset", "sheetShouldOverflowTopInset", "setFullScreenSwipeEnabled", "setFullScreenSwipeShadowEnabled", "setTransitionDuration", "setHideKeyboardOnSwipe", "setCustomAnimationOnSwipe", "setGestureResponseDistance", "Lcom/facebook/react/bridge/ReadableMap;", "setHomeIndicatorHidden", "setPreventNativeDismiss", "setSwipeDirection", "setBottomScrollEdgeEffect", "setLeftScrollEdgeEffect", "setRightScrollEdgeEffect", "setTopScrollEdgeEffect", "setSynchronousShadowStateUpdatesEnabled", "setAndroidResetScreenShadowStateOnOrientationChangeEnabled", "setSheetAllowedDetents", "Lcom/facebook/react/bridge/ReadableArray;", "setSheetLargestUndimmedDetent", "setSheetGrabberVisible", "setSheetCornerRadius", "setSheetExpandsWhenScrolledToEdge", "setSheetInitialDetent", "setScreenId", "getExportedCustomDirectEventTypeConstants", "", "getDelegate", "Companion", "react-native-screens_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ReactModule(name = ScreenViewManager.REACT_CLASS)
public class ScreenViewManager extends ViewGroupManager<Screen> implements RNSScreenManagerInterface<Screen> {
    public static final String REACT_CLASS = "RNSScreen";
    private final ViewManagerDelegate<Screen> delegate;

    @Override
    public void setAndroidResetScreenShadowStateOnOrientationChangeEnabled(Screen view, boolean value) {
    }

    @Override
    public void setBottomScrollEdgeEffect(Screen view, String value) {
    }

    @Override
    public void setCustomAnimationOnSwipe(Screen view, boolean value) {
    }

    @Override
    public void setFullScreenSwipeEnabled(Screen view, String value) {
    }

    @Override
    public void setFullScreenSwipeShadowEnabled(Screen view, boolean value) {
    }

    @Override
    public void setGestureResponseDistance(Screen view, ReadableMap value) {
    }

    @Override
    public void setHideKeyboardOnSwipe(Screen view, boolean value) {
    }

    @Override
    public void setHomeIndicatorHidden(Screen view, boolean value) {
    }

    @Override
    public void setLeftScrollEdgeEffect(Screen view, String value) {
    }

    @Override
    public void setPreventNativeDismiss(Screen view, boolean value) {
    }

    @Override
    public void setRightScrollEdgeEffect(Screen view, String value) {
    }

    @Override
    public void setSwipeDirection(Screen view, String value) {
    }

    @Override
    public void setSynchronousShadowStateUpdatesEnabled(Screen view, boolean value) {
    }

    @Override
    public void setTopScrollEdgeEffect(Screen view, String value) {
    }

    @Override
    public void setTransitionDuration(Screen view, int value) {
    }

    public ScreenViewManager() {
        super(null, 1, null);
        this.delegate = new RNSScreenManagerDelegate(this);
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public Screen createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new Screen(reactContext);
    }

    @Override
    public void setActivityState(Screen view, float activityState) {
        Intrinsics.checkNotNullParameter(view, "view");
        setActivityState(view, (int) activityState);
    }

    @Override
    public void addView(Screen parent, View child, int index) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(child, "child");
        if (child instanceof ScreenContentWrapper) {
            parent.registerLayoutCallbackForWrapper((ScreenContentWrapper) child);
        } else if (child instanceof ScreenFooter) {
            parent.setFooter((ScreenFooter) child);
        }
        super.addView(parent, child, index);
    }

    @Override
    public void removeViewAt(Screen parent, int index) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (parent.getChildAt(index) instanceof ScreenFooter) {
            parent.setFooter(null);
        }
        super.removeViewAt(parent, index);
    }

    @Override
    public void removeView(Screen parent, View view) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(view, "view");
        super.removeView(parent, view);
        if (view instanceof ScreenFooter) {
            parent.setFooter(null);
        }
    }

    @Override
    public Object updateState(Screen view, ReactStylesDiffMap props, StateWrapper stateWrapper) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setStateWrapper(stateWrapper);
        return super.updateState(view, props, stateWrapper);
    }

    @Override
    public void onAfterUpdateTransaction(Screen view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onAfterUpdateTransaction(view);
        view.onFinalizePropsUpdate$react_native_screens_release();
    }

    private final void logNotAvailable(String propName) {
        Log.w("[RNScreens]", propName + " prop is not available on Android");
    }

    @ReactProp(name = "activityState")
    public final void setActivityState(Screen view, int activityState) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (activityState == -1) {
            return;
        }
        if (activityState == 0) {
            view.setActivityState(Screen.ActivityState.INACTIVE);
        } else if (activityState == 1) {
            view.setActivityState(Screen.ActivityState.TRANSITIONING_OR_BELOW_TOP);
        } else {
            if (activityState != 2) {
                return;
            }
            view.setActivityState(Screen.ActivityState.ON_TOP);
        }
    }

    @Override
    @com.facebook.react.uimanager.annotations.ReactProp(name = "stackPresentation")
    public void setStackPresentation(com.swmansion.rnscreens.Screen r3, java.lang.String r4) {
        throw new UnsupportedOperationException("Method not decompiled: com.swmansion.rnscreens.ScreenViewManager.setStackPresentation(com.swmansion.rnscreens.Screen, java.lang.String):void");
    }

    @Override
    @com.facebook.react.uimanager.annotations.ReactProp(name = "stackAnimation")
    public void setStackAnimation(com.swmansion.rnscreens.Screen r3, java.lang.String r4) {
        throw new UnsupportedOperationException("Method not decompiled: com.swmansion.rnscreens.ScreenViewManager.setStackAnimation(com.swmansion.rnscreens.Screen, java.lang.String):void");
    }

    @Override
    @ReactProp(defaultBoolean = true, name = "gestureEnabled")
    public void setGestureEnabled(Screen view, boolean gestureEnabled) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setGestureEnabled(gestureEnabled);
    }

    @Override
    @ReactProp(name = "replaceAnimation")
    public void setReplaceAnimation(Screen view, String animation) {
        Screen.ReplaceAnimation replaceAnimation;
        Intrinsics.checkNotNullParameter(view, "view");
        if (animation == null || Intrinsics.areEqual(animation, "pop")) {
            replaceAnimation = Screen.ReplaceAnimation.POP;
        } else {
            if (!Intrinsics.areEqual(animation, "push")) {
                throw new JSApplicationIllegalArgumentException("Unknown replace animation type " + animation);
            }
            replaceAnimation = Screen.ReplaceAnimation.PUSH;
        }
        view.setReplaceAnimation(replaceAnimation);
    }

    @Override
    @ReactProp(name = "screenOrientation")
    public void setScreenOrientation(Screen view, String screenOrientation) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setScreenOrientation(screenOrientation);
    }

    @Override
    @ReactProp(name = "statusBarAnimation")
    public void setStatusBarAnimation(Screen view, String statusBarAnimation) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setStatusBarAnimated(Boolean.valueOf((statusBarAnimation == null || Intrinsics.areEqual("none", statusBarAnimation)) ? false : true));
    }

    @Override
    @ReactProp(customType = "Color", name = "statusBarColor")
    public void setStatusBarColor(Screen view, Integer statusBarColor) {
        Intrinsics.checkNotNullParameter(view, "view");
        logNotAvailable("statusBarColor");
    }

    @Override
    @ReactProp(name = "statusBarStyle")
    public void setStatusBarStyle(Screen view, String statusBarStyle) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setStatusBarStyle(statusBarStyle);
    }

    @Override
    @ReactProp(name = "statusBarTranslucent")
    public void setStatusBarTranslucent(Screen view, boolean statusBarTranslucent) {
        Intrinsics.checkNotNullParameter(view, "view");
        logNotAvailable("statusBarTranslucent");
    }

    @Override
    @ReactProp(name = "statusBarHidden")
    public void setStatusBarHidden(Screen view, boolean statusBarHidden) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setStatusBarHidden(Boolean.valueOf(statusBarHidden));
    }

    @Override
    @ReactProp(customType = "Color", name = "navigationBarColor")
    public void setNavigationBarColor(Screen view, Integer navigationBarColor) {
        Intrinsics.checkNotNullParameter(view, "view");
        logNotAvailable("navigationBarColor");
    }

    @Override
    @ReactProp(name = "navigationBarTranslucent")
    public void setNavigationBarTranslucent(Screen view, boolean navigationBarTranslucent) {
        Intrinsics.checkNotNullParameter(view, "view");
        logNotAvailable("navigationBarTranslucent");
    }

    @Override
    @ReactProp(name = "navigationBarHidden")
    public void setNavigationBarHidden(Screen view, boolean navigationBarHidden) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setNavigationBarHidden(Boolean.valueOf(navigationBarHidden));
    }

    @Override
    @ReactProp(name = "nativeBackButtonDismissalEnabled")
    public void setNativeBackButtonDismissalEnabled(Screen view, boolean nativeBackButtonDismissalEnabled) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setNativeBackButtonDismissalEnabled(nativeBackButtonDismissalEnabled);
    }

    @Override
    @ReactProp(name = "sheetElevation")
    public void setSheetElevation(Screen view, int value) {
        if (view != null) {
            view.setSheetElevation(value);
        }
    }

    @Override
    @ReactProp(name = "sheetShouldOverflowTopInset")
    public void setSheetShouldOverflowTopInset(Screen view, boolean sheetShouldOverflowTopInset) {
        if (view != null) {
            view.setSheetShouldOverflowTopInset(sheetShouldOverflowTopInset);
        }
    }

    @Override
    @ReactProp(name = "sheetAllowedDetents")
    public void setSheetAllowedDetents(Screen view, ReadableArray value) {
        ArrayList arrayListListOf;
        Intrinsics.checkNotNullParameter(view, "view");
        if (value != null && value.size() > 0) {
            int size = value.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(Double.valueOf(value.getDouble(i)));
            }
            arrayListListOf = arrayList;
        } else {
            arrayListListOf = CollectionsKt.listOf(Double.valueOf(1.0d));
        }
        view.setSheetDetents(new SheetDetents(arrayListListOf));
    }

    @Override
    @ReactProp(name = "sheetLargestUndimmedDetent")
    public void setSheetLargestUndimmedDetent(Screen view, int value) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (-1 > value || value >= 3) {
            throw new IllegalStateException("[RNScreens] sheetLargestUndimmedDetent on Android supports values between -1 and 2".toString());
        }
        view.setSheetLargestUndimmedDetentIndex(value);
    }

    @Override
    @ReactProp(name = "sheetGrabberVisible")
    public void setSheetGrabberVisible(Screen view, boolean value) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setSheetGrabberVisible(value);
    }

    @Override
    @ReactProp(name = "sheetCornerRadius")
    public void setSheetCornerRadius(Screen view, float value) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setSheetCornerRadius(value);
    }

    @Override
    @ReactProp(name = "sheetExpandsWhenScrolledToEdge")
    public void setSheetExpandsWhenScrolledToEdge(Screen view, boolean value) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setSheetExpandsWhenScrolledToEdge(value);
    }

    @Override
    @ReactProp(name = "sheetInitialDetent")
    public void setSheetInitialDetent(Screen view, int value) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setSheetInitialDetentIndex(value);
    }

    @Override
    public void setScreenId(Screen view, String value) {
        Intrinsics.checkNotNullParameter(view, "view");
        String str = value;
        if (str == null || str.length() == 0) {
            value = null;
        }
        view.setScreenId(value);
    }

    @Override
    public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
        return MapsKt.mutableMapOf(TuplesKt.to(ScreenDismissedEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onDismissed"))), TuplesKt.to("topWillAppear", MapsKt.hashMapOf(TuplesKt.to("registrationName", TabScreenWillAppearEvent.EVENT_REGISTRATION_NAME))), TuplesKt.to(ScreenAppearEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onAppear"))), TuplesKt.to("topWillDisappear", MapsKt.hashMapOf(TuplesKt.to("registrationName", TabScreenWillDisappearEvent.EVENT_REGISTRATION_NAME))), TuplesKt.to(ScreenDisappearEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onDisappear"))), TuplesKt.to(HeaderHeightChangeEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onHeaderHeightChange"))), TuplesKt.to(HeaderBackButtonClickedEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onHeaderBackButtonClicked"))), TuplesKt.to(ScreenTransitionProgressEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onTransitionProgress"))), TuplesKt.to(SheetDetentChangedEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onSheetDetentChanged"))));
    }

    @Override
    protected ViewManagerDelegate<Screen> getDelegate() {
        return this.delegate;
    }
}
