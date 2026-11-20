package com.rnmapbox.rnmbx.components.annotation;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.viewmanagers.RNMBXMarkerViewContentManagerInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00040\u0003:\u0001\u000eB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0014¨\u0006\u000f"}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContentManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;", "Lcom/facebook/react/viewmanagers/RNMBXMarkerViewContentManagerInterface;", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerView;", "reactApplicationContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "createViewInstance", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/uimanager/ThemedReactContext;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXMarkerViewContentManager extends ViewGroupManager<RNMBXMarkerViewContent> implements RNMBXMarkerViewContentManagerInterface<RNMBXMarkerView> {
    public static final String REACT_CLASS = "RNMBXMarkerViewContent";

    public RNMBXMarkerViewContentManager(ReactApplicationContext reactApplicationContext) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(reactApplicationContext, "reactApplicationContext");
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNMBXMarkerViewContent createViewInstance(ThemedReactContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new RNMBXMarkerViewContent(context);
    }
}
