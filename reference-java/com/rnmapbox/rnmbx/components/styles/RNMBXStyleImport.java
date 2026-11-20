package com.rnmapbox.rnmbx.components.styles;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.Style;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0006\u0010\u0019\u001a\u00020\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\\\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\rj\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e`\u000f2\"\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\rj\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e`\u000f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyleImport;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "id", "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "value", "Ljava/util/HashMap;", "Lcom/mapbox/bindgen/Value;", "Lkotlin/collections/HashMap;", "config", "getConfig", "()Ljava/util/HashMap;", BackgroundGeolocation.ACTION_SET_CONFIG, "(Ljava/util/HashMap;)V", "addToMap", "", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "updateConfig", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXStyleImport extends AbstractMapFeature {
    private HashMap<String, Value> config;
    private String id;

    public RNMBXStyleImport(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.config = new HashMap<>();
    }

    @Override
    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final HashMap<String, Value> getConfig() {
        return this.config;
    }

    public final void setConfig(HashMap<String, Value> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.config = value;
        if (getMMapView() != null) {
            updateConfig();
        }
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        updateConfig();
    }

    public final void updateConfig() {
        withMapView$rnmapbox_maps_release(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXStyleImport.updateConfig$lambda$1(this.f$0, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit updateConfig$lambda$1(RNMBXStyleImport rNMBXStyleImport, RNMBXMapView mapView) {
        Style styleDeprecated;
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        String str = rNMBXStyleImport.id;
        if (str != null) {
            HashMap<String, Value> map = rNMBXStyleImport.config;
            if (!map.isEmpty() && (styleDeprecated = mapView.getMapView().getMapboxMapDeprecated().getStyleDeprecated()) != null) {
                styleDeprecated.setStyleImportConfigProperties(str, map);
            }
        }
        return Unit.INSTANCE;
    }
}
