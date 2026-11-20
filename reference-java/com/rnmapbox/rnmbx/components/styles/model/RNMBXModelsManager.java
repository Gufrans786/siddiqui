package com.rnmapbox.rnmbx.components.styles.model;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXModelsManagerInterface;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.extensions.ReadableMapKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u0012B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0014J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/model/RNMBXModelsManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/rnmapbox/rnmbx/components/styles/model/RNMBXModels;", "Lcom/facebook/react/viewmanagers/RNMBXModelsManagerInterface;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "createViewInstance", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/uimanager/ThemedReactContext;", "setModels", "", "view", "value", "Lcom/facebook/react/bridge/Dynamic;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXModelsManager extends ViewGroupManager<RNMBXModels> implements RNMBXModelsManagerInterface<RNMBXModels> {
    public static final String LOG_TAG = "RNMBXModels";
    public static final String REACT_CLASS = "RNMBXModels";
    private final ReactApplicationContext mContext;

    public RNMBXModelsManager(ReactApplicationContext mContext) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
    }

    @Override
    public String getName() {
        return "RNMBXModels";
    }

    @Override
    public RNMBXModels createViewInstance(ThemedReactContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new RNMBXModels(context);
    }

    @Override
    @ReactProp(name = ModelSourceWrapper.MODELS)
    public void setModels(RNMBXModels view, Dynamic value) {
        ReadableMap readableMapAsMap;
        Intrinsics.checkNotNullParameter(view, "view");
        final HashMap map = new HashMap();
        if (value != null && (readableMapAsMap = value.asMap()) != null) {
            ReadableMapKt.forEach(readableMapAsMap, new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return RNMBXModelsManager.setModels$lambda$3(this.f$0, map, (String) obj, obj2);
                }
            });
        }
        view.setModels(map);
    }

    public static final Unit setModels$lambda$3(RNMBXModelsManager rNMBXModelsManager, HashMap map, String modelName, Object model) {
        Intrinsics.checkNotNullParameter(modelName, "modelName");
        Intrinsics.checkNotNullParameter(model, "model");
        if (model instanceof ReadableMap) {
            ReadableMap readableMap = (ReadableMap) model;
            String string = readableMap.getString(ModelSourceWrapper.URL);
            if (string != null) {
                map.put(modelName, string);
            } else {
                String string2 = readableMap.getString(ImagesContract.URL);
                if (string2 != null) {
                    map.put(modelName, string2);
                } else {
                    Logger.INSTANCE.e("RNMBXModels", "Invalid value for model key: " + modelName + " => " + model + " is not an uri/url");
                }
            }
        } else {
            Logger.INSTANCE.e("RNMBXModels", "Invalid value for model key: " + modelName + " => " + model + " is not an uri/url");
        }
        return Unit.INSTANCE;
    }
}
