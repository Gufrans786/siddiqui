package com.swmansion.rnscreens.safearea;

import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ReactStylesDiffMap;
import com.facebook.react.uimanager.StateWrapper;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNSSafeAreaViewManagerDelegate;
import com.facebook.react.viewmanagers.RNSSafeAreaViewManagerInterface;
import com.swmansion.rnscreens.safearea.paper.SafeAreaViewEdges;
import com.swmansion.rnscreens.safearea.paper.SafeAreaViewShadowNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = SafeAreaViewManager.REACT_CLASS)
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u001eB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0014J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00022\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0017J\u001a\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00022\b\u0010\u0015\u001a\u0004\u0018\u00010\tH\u0017J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0014\u001a\u00020\u00022\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/swmansion/rnscreens/safearea/SafeAreaViewManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/swmansion/rnscreens/safearea/SafeAreaView;", "Lcom/facebook/react/viewmanagers/RNSSafeAreaViewManagerInterface;", "<init>", "()V", "delegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "getDelegate", "createShadowNodeInstance", "Lcom/swmansion/rnscreens/safearea/paper/SafeAreaViewShadowNode;", "getShadowNodeClass", "Ljava/lang/Class;", "setEdges", "", "view", "value", "Lcom/facebook/react/bridge/ReadableMap;", "setInsetType", "updateState", "", "props", "Lcom/facebook/react/uimanager/ReactStylesDiffMap;", "stateWrapper", "Lcom/facebook/react/uimanager/StateWrapper;", "Companion", "react-native-screens_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SafeAreaViewManager extends ViewGroupManager<SafeAreaView> implements RNSSafeAreaViewManagerInterface<SafeAreaView> {
    public static final String REACT_CLASS = "RNSSafeAreaView";
    private final ViewManagerDelegate<SafeAreaView> delegate;

    public SafeAreaViewManager() {
        super(null, 1, null);
        this.delegate = new RNSSafeAreaViewManagerDelegate(this);
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public SafeAreaView createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new SafeAreaView(reactContext);
    }

    @Override
    protected ViewManagerDelegate<SafeAreaView> getDelegate() {
        return this.delegate;
    }

    @Override
    public SafeAreaViewShadowNode createShadowNodeInstance() {
        return new SafeAreaViewShadowNode();
    }

    @Override
    public Class<SafeAreaViewShadowNode> getShadowNodeClass() {
        return SafeAreaViewShadowNode.class;
    }

    @Override
    @ReactProp(name = "edges")
    public void setEdges(SafeAreaView view, ReadableMap value) {
        Intrinsics.checkNotNullParameter(view, "view");
        SafeAreaViewEdges safeAreaViewEdgesFromProp = SafeAreaViewEdges.INSTANCE.fromProp(value);
        if (safeAreaViewEdgesFromProp != null) {
            view.setEdges(safeAreaViewEdgesFromProp);
        }
    }

    @Override
    @com.facebook.react.uimanager.annotations.ReactProp(name = "insetType")
    public void setInsetType(com.swmansion.rnscreens.safearea.SafeAreaView r3, java.lang.String r4) {
        throw new UnsupportedOperationException("Method not decompiled: com.swmansion.rnscreens.safearea.SafeAreaViewManager.setInsetType(com.swmansion.rnscreens.safearea.SafeAreaView, java.lang.String):void");
    }

    @Override
    public Object updateState(SafeAreaView view, ReactStylesDiffMap props, StateWrapper stateWrapper) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setStateWrapper(stateWrapper);
        return super.updateState(view, props, stateWrapper);
    }
}
