package com.rnmapbox.rnmbx.components.annotation;

import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.viewmanagers.RNMBXCalloutManagerDelegate;
import com.facebook.react.viewmanagers.RNMBXCalloutManagerInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u000eB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0014R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/RNMBXCalloutManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXCallout;", "Lcom/facebook/react/viewmanagers/RNMBXCalloutManagerInterface;", "<init>", "()V", "mDelegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "getDelegate", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXCalloutManager extends ViewGroupManager<RNMBXCallout> implements RNMBXCalloutManagerInterface<RNMBXCallout> {
    public static final String REACT_CLASS = "RNMBXCallout";
    private final ViewManagerDelegate<RNMBXCallout> mDelegate;

    public RNMBXCalloutManager() {
        super(null, 1, null);
        this.mDelegate = new RNMBXCalloutManagerDelegate(this);
    }

    @Override
    protected ViewManagerDelegate<RNMBXCallout> getDelegate() {
        return this.mDelegate;
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNMBXCallout createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXCallout(reactContext);
    }
}
