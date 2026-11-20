package com.rnmapbox.rnmbx.modules;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.common.Cancelable;
import com.mapbox.common.TileRegionLoadOptions;
import com.mapbox.common.TileRegionLoadProgress;
import com.mapbox.geojson.Geometry;
import com.rnmapbox.rnmbx.utils.extensions.GeometryKt;
import com.rnmapbox.rnmbx.utils.extensions.JSONObjectKt;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bBI\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0015\"\u0004\b1\u0010\u0017R \u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=¨\u0006>"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/TileRegionPack;", "", "name", "", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;", "progress", "Lcom/mapbox/common/TileRegionLoadProgress;", "metadata", "Lorg/json/JSONObject;", "<init>", "(Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;Lcom/mapbox/common/TileRegionLoadProgress;Lorg/json/JSONObject;)V", "styleURI", "tilesets", "", "bounds", "Lcom/mapbox/geojson/Geometry;", "zoomRange", "Lcom/rnmapbox/rnmbx/modules/ZoomRange;", "(Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;Ljava/lang/String;Ljava/util/List;Lcom/mapbox/geojson/Geometry;Lcom/rnmapbox/rnmbx/modules/ZoomRange;Lorg/json/JSONObject;)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getState", "()Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;", "setState", "(Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)V", "getProgress", "()Lcom/mapbox/common/TileRegionLoadProgress;", "setProgress", "(Lcom/mapbox/common/TileRegionLoadProgress;)V", "getMetadata", "()Lorg/json/JSONObject;", "setMetadata", "(Lorg/json/JSONObject;)V", "cancelable", "Lcom/mapbox/common/Cancelable;", "getCancelable", "()Lcom/mapbox/common/Cancelable;", "setCancelable", "(Lcom/mapbox/common/Cancelable;)V", "loadOptions", "Lcom/mapbox/common/TileRegionLoadOptions;", "getLoadOptions", "()Lcom/mapbox/common/TileRegionLoadOptions;", "setLoadOptions", "(Lcom/mapbox/common/TileRegionLoadOptions;)V", "getStyleURI", "setStyleURI", "getTilesets", "()Ljava/util/List;", "setTilesets", "(Ljava/util/List;)V", "getBounds", "()Lcom/mapbox/geojson/Geometry;", "setBounds", "(Lcom/mapbox/geojson/Geometry;)V", "getZoomRange", "()Lcom/rnmapbox/rnmbx/modules/ZoomRange;", "setZoomRange", "(Lcom/rnmapbox/rnmbx/modules/ZoomRange;)V", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TileRegionPack {
    private Geometry bounds;
    private Cancelable cancelable;
    private TileRegionLoadOptions loadOptions;
    private JSONObject metadata;
    private String name;
    private TileRegionLoadProgress progress;
    private TileRegionPackState state;
    private String styleURI;
    private List<String> tilesets;
    private ZoomRange zoomRange;

    public TileRegionPack(String name, TileRegionPackState state, TileRegionLoadProgress tileRegionLoadProgress, JSONObject metadata) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        this.name = name;
        this.state = state;
        this.progress = tileRegionLoadProgress;
        this.metadata = metadata;
        this.tilesets = CollectionsKt.emptyList();
        JSONObject jSONObjectOptJSONObject = this.metadata.optJSONObject(RNMBXOfflineModuleKt.RNMapboxInfoMetadataKey);
        if (jSONObjectOptJSONObject != null) {
            String strOptString = jSONObjectOptJSONObject.optString("styleURI");
            if (strOptString != null) {
                this.styleURI = strOptString;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("bounds");
            if (jSONObjectOptJSONObject2 != null) {
                this.bounds = JSONObjectKt.toGeometry(jSONObjectOptJSONObject2);
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("zoomRange");
            if (jSONArrayOptJSONArray != null) {
                this.zoomRange = new ZoomRange((byte) jSONArrayOptJSONArray.getInt(0), (byte) jSONArrayOptJSONArray.getInt(1));
            }
        }
    }

    public TileRegionPack(String str, TileRegionPackState tileRegionPackState, TileRegionLoadProgress tileRegionLoadProgress, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? TileRegionPackState.UNKNOWN : tileRegionPackState, (i & 4) != 0 ? null : tileRegionLoadProgress, jSONObject);
    }

    public final JSONObject getMetadata() {
        return this.metadata;
    }

    public final String getName() {
        return this.name;
    }

    public final TileRegionLoadProgress getProgress() {
        return this.progress;
    }

    public final TileRegionPackState getState() {
        return this.state;
    }

    public final void setMetadata(JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<set-?>");
        this.metadata = jSONObject;
    }

    public final void setName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setProgress(TileRegionLoadProgress tileRegionLoadProgress) {
        this.progress = tileRegionLoadProgress;
    }

    public final void setState(TileRegionPackState tileRegionPackState) {
        Intrinsics.checkNotNullParameter(tileRegionPackState, "<set-?>");
        this.state = tileRegionPackState;
    }

    public final Cancelable getCancelable() {
        return this.cancelable;
    }

    public final void setCancelable(Cancelable cancelable) {
        this.cancelable = cancelable;
    }

    public final TileRegionLoadOptions getLoadOptions() {
        return this.loadOptions;
    }

    public final void setLoadOptions(TileRegionLoadOptions tileRegionLoadOptions) {
        this.loadOptions = tileRegionLoadOptions;
    }

    public final String getStyleURI() {
        return this.styleURI;
    }

    public final void setStyleURI(String str) {
        this.styleURI = str;
    }

    public final List<String> getTilesets() {
        return this.tilesets;
    }

    public final void setTilesets(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tilesets = list;
    }

    public final Geometry getBounds() {
        return this.bounds;
    }

    public final void setBounds(Geometry geometry) {
        this.bounds = geometry;
    }

    public final ZoomRange getZoomRange() {
        return this.zoomRange;
    }

    public final void setZoomRange(ZoomRange zoomRange) {
        this.zoomRange = zoomRange;
    }

    public TileRegionPack(String str, TileRegionPackState tileRegionPackState, String str2, List list, Geometry geometry, ZoomRange zoomRange, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? TileRegionPackState.UNKNOWN : tileRegionPackState, str2, list, geometry, zoomRange, jSONObject);
    }

    public TileRegionPack(String name, TileRegionPackState state, String styleURI, List<String> tilesets, Geometry bounds, ZoomRange zoomRange, JSONObject metadata) throws JSONException {
        this(name, state, null, metadata);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(styleURI, "styleURI");
        Intrinsics.checkNotNullParameter(tilesets, "tilesets");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(zoomRange, "zoomRange");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("styleURI", styleURI);
        this.styleURI = styleURI;
        jSONObject.put("bounds", GeometryKt.toJSONObject(bounds));
        this.bounds = bounds;
        jSONObject.put("zoomRange", new JSONArray(new Byte[]{Byte.valueOf(zoomRange.getMinZoom()), Byte.valueOf(zoomRange.getMaxZoom())}));
        this.zoomRange = zoomRange;
        jSONObject.put("tilesets", new JSONArray((Collection) tilesets));
        this.tilesets = tilesets;
        this.metadata.put(RNMBXOfflineModuleKt.RNMapboxInfoMetadataKey, jSONObject);
    }
}
