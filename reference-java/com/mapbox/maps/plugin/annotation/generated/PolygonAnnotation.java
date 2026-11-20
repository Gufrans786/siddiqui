package com.mapbox.maps.plugin.annotation.generated;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.android.gestures.MoveDistancesObject;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import com.mapbox.maps.MercatorCoordinate;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.plugin.annotation.Annotation;
import com.mapbox.maps.plugin.annotation.AnnotationManager;
import com.mapbox.maps.plugin.annotation.AnnotationType;
import com.mapbox.maps.plugin.annotation.ConvertUtils;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b \n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 Z2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001ZBE\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012&\u0010\u0005\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0000\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0002\u0010\nJ\u001a\u0010Q\u001a\u0004\u0018\u00010\u00022\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020UH\u0016J\b\u0010V\u001a\u00020WH\u0016J\b\u0010X\u001a\u00020YH\u0016R.\u0010\u0005\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0000\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R(\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010\u0017\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R*\u0010\u001a\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u000f\"\u0004\b\u001c\u0010\u0011R(\u0010\u001d\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u0014\"\u0004\b\u001f\u0010\u0016R(\u0010 \u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\u0014\"\u0004\b\"\u0010\u0016R(\u0010$\u001a\u0004\u0018\u00010#2\b\u0010\u000b\u001a\u0004\u0018\u00010#8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R(\u0010*\u001a\u0004\u0018\u00010)2\b\u0010\u000b\u001a\u0004\u0018\u00010)8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R*\u0010/\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b0\u0010\u000f\"\u0004\b1\u0010\u0011R(\u00102\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b3\u0010\u0014\"\u0004\b4\u0010\u0016R(\u00105\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b6\u0010\u0014\"\u0004\b7\u0010\u0016R(\u00108\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b9\u0010\u0014\"\u0004\b:\u0010\u0016R(\u0010;\u001a\u0004\u0018\u00010)2\b\u0010\u000b\u001a\u0004\u0018\u00010)8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b<\u0010,\"\u0004\b=\u0010.R*\u0010>\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f8G@FX\u0086\u000e¢\u0006\f\u001a\u0004\b?\u0010\u000f\"\u0004\b@\u0010\u0011R(\u0010A\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bB\u0010\u0014\"\u0004\bC\u0010\u0016R(\u0010D\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bE\u0010\u0014\"\u0004\bF\u0010\u0016R(\u0010G\u001a\u0004\u0018\u00010)2\b\u0010\u000b\u001a\u0004\u0018\u00010)8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bH\u0010,\"\u0004\bI\u0010.R<\u0010L\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020K0J0J2\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020K0J0J8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bM\u0010N\"\u0004\bO\u0010P¨\u0006["}, d2 = {"Lcom/mapbox/maps/plugin/annotation/generated/PolygonAnnotation;", "Lcom/mapbox/maps/plugin/annotation/Annotation;", "Lcom/mapbox/geojson/Polygon;", "id", "", "annotationManager", "Lcom/mapbox/maps/plugin/annotation/AnnotationManager;", "jsonObject", "Lcom/google/gson/JsonObject;", "geometry", "(Ljava/lang/String;Lcom/mapbox/maps/plugin/annotation/AnnotationManager;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/Polygon;)V", "value", "", "fillBridgeGuardRailColorInt", "getFillBridgeGuardRailColorInt", "()Ljava/lang/Integer;", "setFillBridgeGuardRailColorInt", "(Ljava/lang/Integer;)V", "fillBridgeGuardRailColorString", "getFillBridgeGuardRailColorString", "()Ljava/lang/String;", "setFillBridgeGuardRailColorString", "(Ljava/lang/String;)V", "fillBridgeGuardRailColorUseTheme", "getFillBridgeGuardRailColorUseTheme", "setFillBridgeGuardRailColorUseTheme", "fillColorInt", "getFillColorInt", "setFillColorInt", "fillColorString", "getFillColorString", "setFillColorString", "fillColorUseTheme", "getFillColorUseTheme", "setFillColorUseTheme", "", "fillConstructBridgeGuardRail", "getFillConstructBridgeGuardRail", "()Ljava/lang/Boolean;", "setFillConstructBridgeGuardRail", "(Ljava/lang/Boolean;)V", "", "fillOpacity", "getFillOpacity", "()Ljava/lang/Double;", "setFillOpacity", "(Ljava/lang/Double;)V", "fillOutlineColorInt", "getFillOutlineColorInt", "setFillOutlineColorInt", "fillOutlineColorString", "getFillOutlineColorString", "setFillOutlineColorString", "fillOutlineColorUseTheme", "getFillOutlineColorUseTheme", "setFillOutlineColorUseTheme", "fillPattern", "getFillPattern", "setFillPattern", "fillSortKey", "getFillSortKey", "setFillSortKey", "fillTunnelStructureColorInt", "getFillTunnelStructureColorInt", "setFillTunnelStructureColorInt", "fillTunnelStructureColorString", "getFillTunnelStructureColorString", "setFillTunnelStructureColorString", "fillTunnelStructureColorUseTheme", "getFillTunnelStructureColorUseTheme", "setFillTunnelStructureColorUseTheme", "fillZOffset", "getFillZOffset", "setFillZOffset", "", "Lcom/mapbox/geojson/Point;", "points", "getPoints", "()Ljava/util/List;", "setPoints", "(Ljava/util/List;)V", "getOffsetGeometry", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "moveDistancesObject", "Lcom/mapbox/android/gestures/MoveDistancesObject;", "getType", "Lcom/mapbox/maps/plugin/annotation/AnnotationType;", "setUsedDataDrivenProperties", "", "Companion", "plugin-annotation_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PolygonAnnotation extends Annotation<Polygon> {
    public static final String ID_KEY = "PolygonAnnotation";
    private final AnnotationManager<Polygon, PolygonAnnotation, ?, ?, ?, ?, ?> annotationManager;

    public PolygonAnnotation(String id, AnnotationManager<Polygon, PolygonAnnotation, ?, ?, ?, ?, ?> annotationManager, JsonObject jsonObject, Polygon geometry) {
        super(id, jsonObject, geometry);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(annotationManager, "annotationManager");
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        this.annotationManager = annotationManager;
        jsonObject.addProperty(ID_KEY, id);
    }

    @Override
    public AnnotationType getType() {
        return AnnotationType.PolygonAnnotation;
    }

    public final List<List<Point>> getPoints() {
        List<List<Point>> listCoordinates = getGeometry().coordinates();
        Intrinsics.checkNotNullExpressionValue(listCoordinates, "geometry.coordinates()");
        return listCoordinates;
    }

    public final void setPoints(List<? extends List<Point>> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Polygon polygonFromLngLats = Polygon.fromLngLats((List<List<Point>>) value);
        Intrinsics.checkNotNullExpressionValue(polygonFromLngLats, "fromLngLats(value)");
        setGeometry(polygonFromLngLats);
    }

    public final Boolean getFillConstructBridgeGuardRail() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL);
        if (jsonElement != null) {
            return Boolean.valueOf(Boolean.parseBoolean(jsonElement.getAsString()));
        }
        return null;
    }

    public final void setFillConstructBridgeGuardRail(Boolean bool) {
        if (bool != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL, bool);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL);
        }
    }

    public final Double getFillSortKey() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setFillSortKey(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY, d);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY);
        }
    }

    public final Integer getFillBridgeGuardRailColorInt() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setFillBridgeGuardRailColorInt(Integer num) {
        if (num == null) {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        } else {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
        }
    }

    public final String getFillBridgeGuardRailColorString() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillBridgeGuardRailColorString(String str) {
        if (str != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR, str);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        }
    }

    public final Integer getFillColorInt() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setFillColorInt(Integer num) {
        if (num == null) {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        } else {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
        }
    }

    public final String getFillColorString() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillColorString(String str) {
        if (str != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR, str);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        }
    }

    public final Double getFillOpacity() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setFillOpacity(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY, d);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY);
        }
    }

    public final Integer getFillOutlineColorInt() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setFillOutlineColorInt(Integer num) {
        if (num == null) {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        } else {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
        }
    }

    public final String getFillOutlineColorString() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillOutlineColorString(String str) {
        if (str != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR, str);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        }
    }

    public final String getFillPattern() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillPattern(String str) {
        if (str != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN, str);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN);
        }
    }

    public final Integer getFillTunnelStructureColorInt() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        if (jsonElement != null) {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            String asString = jsonElement.getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
            Integer numRgbaToColor = colorUtils.rgbaToColor(asString);
            if (numRgbaToColor == null) {
            } else {
                return Integer.valueOf(numRgbaToColor.intValue());
            }
        }
        return null;
    }

    public final void setFillTunnelStructureColorInt(Integer num) {
        if (num == null) {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        } else {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR, ColorUtils.INSTANCE.colorToRgbaString(num.intValue()));
        }
    }

    public final String getFillTunnelStructureColorString() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillTunnelStructureColorString(String str) {
        if (str != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR, str);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        }
    }

    public final Double getFillZOffset() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET);
        if (jsonElement == null) {
            return null;
        }
        String asString = jsonElement.getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "it.asString");
        return Double.valueOf(Double.parseDouble(asString));
    }

    public final void setFillZOffset(Double d) {
        if (d != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET, d);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET);
        }
    }

    public final String getFillBridgeGuardRailColorUseTheme() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillBridgeGuardRailColorUseTheme(String str) {
        if (str != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME, str);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME);
        }
    }

    public final String getFillColorUseTheme() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillColorUseTheme(String str) {
        if (str != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME, str);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME);
        }
    }

    public final String getFillOutlineColorUseTheme() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillOutlineColorUseTheme(String str) {
        if (str != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME, str);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME);
        }
    }

    public final String getFillTunnelStructureColorUseTheme() {
        JsonElement jsonElement = getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME);
        if (jsonElement != null) {
            return jsonElement.getAsString().toString();
        }
        return null;
    }

    public final void setFillTunnelStructureColorUseTheme(String str) {
        if (str != null) {
            getJsonObject().addProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME, str);
        } else {
            getJsonObject().remove(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME);
        }
    }

    @Override
    public Polygon getOffsetGeometry(MapCameraManagerDelegate mapCameraManagerDelegate, MoveDistancesObject moveDistancesObject) {
        Intrinsics.checkNotNullParameter(mapCameraManagerDelegate, "mapCameraManagerDelegate");
        Intrinsics.checkNotNullParameter(moveDistancesObject, "moveDistancesObject");
        LineString lineStringOuter = getGeometry().outer();
        List<Point> listCoordinates = lineStringOuter != null ? lineStringOuter.coordinates() : null;
        if (listCoordinates == null || listCoordinates.isEmpty()) {
            return null;
        }
        List<Point> list = listCoordinates;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Double.valueOf(((Point) it.next()).longitude()));
        }
        double dAverageOfDouble = CollectionsKt.averageOfDouble(arrayList);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Double.valueOf(((Point) it2.next()).latitude()));
        }
        Point centerPoint = Point.fromLngLat(dAverageOfDouble, CollectionsKt.averageOfDouble(arrayList2));
        Intrinsics.checkNotNullExpressionValue(centerPoint, "centerPoint");
        ScreenCoordinate screenCoordinatePixelForCoordinate = mapCameraManagerDelegate.pixelForCoordinate(centerPoint);
        MercatorCoordinate mercatorCoordinateCalculateMercatorCoordinateShift = ConvertUtils.INSTANCE.calculateMercatorCoordinateShift(centerPoint, mapCameraManagerDelegate.coordinateForPixel(new ScreenCoordinate(screenCoordinatePixelForCoordinate.getX() - ((double) moveDistancesObject.getDistanceXSinceLast()), screenCoordinatePixelForCoordinate.getY() - ((double) moveDistancesObject.getDistanceYSinceLast()))), mapCameraManagerDelegate.getCameraState().getZoom());
        List<List<Point>> listCoordinates2 = getGeometry().coordinates();
        Intrinsics.checkNotNullExpressionValue(listCoordinates2, "geometry.coordinates()");
        List<List<Point>> list2 = listCoordinates2;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            List sublist = (List) it3.next();
            Intrinsics.checkNotNullExpressionValue(sublist, "sublist");
            List<Point> list3 = sublist;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
            for (Point it4 : list3) {
                ConvertUtils convertUtils = ConvertUtils.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(it4, "it");
                arrayList4.add(convertUtils.shiftPointWithMercatorCoordinate(it4, mercatorCoordinateCalculateMercatorCoordinateShift, mapCameraManagerDelegate.getCameraState().getZoom()));
            }
            arrayList3.add(arrayList4);
        }
        ArrayList arrayList5 = arrayList3;
        ArrayList<List> arrayList6 = arrayList5;
        if (!(arrayList6 instanceof Collection) || !arrayList6.isEmpty()) {
            for (List<Point> list4 : arrayList6) {
                if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                    for (Point point : list4) {
                        if (point.latitude() > 85.05112877980659d || point.latitude() < -85.05112877980659d) {
                            return null;
                        }
                    }
                }
            }
        }
        return Polygon.fromLngLats(arrayList5);
    }

    @Override
    public void setUsedDataDrivenProperties() {
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_CONSTRUCT_BRIDGE_GUARD_RAIL);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_SORT_KEY);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_OPACITY);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_PATTERN);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_Z_OFFSET);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_BRIDGE_GUARD_RAIL_COLOR_USE_THEME);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_COLOR_USE_THEME);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_OUTLINE_COLOR_USE_THEME);
        }
        if (getJsonObject().get(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME) != null) {
            this.annotationManager.enableDataDrivenProperty(PolygonAnnotationOptions.PROPERTY_FILL_TUNNEL_STRUCTURE_COLOR_USE_THEME);
        }
    }
}
