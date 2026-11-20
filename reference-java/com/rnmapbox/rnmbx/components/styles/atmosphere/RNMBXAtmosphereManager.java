package com.rnmapbox.rnmbx.components.styles.atmosphere;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXAtmosphereManagerDelegate;
import com.facebook.react.viewmanagers.RNMBXAtmosphereManagerInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u0013B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0014J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0017R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/atmosphere/RNMBXAtmosphereManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/rnmapbox/rnmbx/components/styles/atmosphere/RNMBXAtmosphere;", "Lcom/facebook/react/viewmanagers/RNMBXAtmosphereManagerInterface;", "<init>", "()V", "mDelegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "getDelegate", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setReactStyle", "", "atmosphere", "reactStyle", "Lcom/facebook/react/bridge/Dynamic;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXAtmosphereManager extends ViewGroupManager<RNMBXAtmosphere> implements RNMBXAtmosphereManagerInterface<RNMBXAtmosphere> {
    public static final String REACT_CLASS = "RNMBXAtmosphere";
    private final ViewManagerDelegate<RNMBXAtmosphere> mDelegate;

    public RNMBXAtmosphereManager() {
        super(null, 1, null);
        this.mDelegate = new RNMBXAtmosphereManagerDelegate(this);
    }

    @Override
    protected ViewManagerDelegate<RNMBXAtmosphere> getDelegate() {
        return this.mDelegate;
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNMBXAtmosphere createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXAtmosphere(reactContext);
    }

    @Override
    @ReactProp(name = "reactStyle")
    public void setReactStyle(RNMBXAtmosphere atmosphere, Dynamic reactStyle) throws Exception {
        Intrinsics.checkNotNullParameter(atmosphere, "atmosphere");
        Intrinsics.checkNotNullParameter(reactStyle, "reactStyle");
        atmosphere.setReactStyle(reactStyle.asMap());
    }
}
