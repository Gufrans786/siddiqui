package com.rnmapbox.rnmbx.components.mapview;

import android.view.MotionEvent;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.MapView;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a*\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0005\u001a\u001a\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001\u001a\u0014\u0010\u0013\u001a\u00020\u000f*\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016*P\u0010\u0006\"%\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00072%\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0007¨\u0006\u0017"}, d2 = {"removeIf21", "", ExifInterface.GPS_DIRECTION_TRUE, "", "predicate", "Lkotlin/Function1;", "Factory", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "impl", "Landroid/view/ViewGroup;", "Lcom/mapbox/maps/MapView;", "updateRequestDisallowInterceptTouchEvent", "", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "oldValue", "value", "setPosAndMargins", "Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;", "posAndMargins", "Lcom/facebook/react/bridge/ReadableMap;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RNMBXMapViewKt {
    public static final <T> boolean removeIf21(List<T> list, Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Iterator<T> it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static final void updateRequestDisallowInterceptTouchEvent(final RNMBXMapView rNMBXMapView, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(rNMBXMapView, "<this>");
        if (z == z2) {
            return;
        }
        if (z2) {
            rNMBXMapView.withMapView(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapViewKt.updateRequestDisallowInterceptTouchEvent$lambda$1(rNMBXMapView, (MapView) obj);
                }
            });
        } else {
            rNMBXMapView.withMapView(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RNMBXMapViewKt.updateRequestDisallowInterceptTouchEvent$lambda$3(rNMBXMapView, (MapView) obj);
                }
            });
        }
    }

    public static final Unit updateRequestDisallowInterceptTouchEvent$lambda$1(final RNMBXMapView rNMBXMapView, MapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return RNMBXMapViewKt.updateRequestDisallowInterceptTouchEvent$lambda$1$lambda$0(rNMBXMapView, view, motionEvent);
            }
        });
        return Unit.INSTANCE;
    }

    public static final boolean updateRequestDisallowInterceptTouchEvent$lambda$1$lambda$0(RNMBXMapView rNMBXMapView, View view, MotionEvent motionEvent) {
        rNMBXMapView.requestDisallowInterceptTouchEvent(true);
        MapView mapView = rNMBXMapView.getMapView();
        Intrinsics.checkNotNull(motionEvent);
        mapView.onTouchEvent(motionEvent);
        return true;
    }

    public static final Unit updateRequestDisallowInterceptTouchEvent$lambda$3(final RNMBXMapView rNMBXMapView, MapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return RNMBXMapViewKt.updateRequestDisallowInterceptTouchEvent$lambda$3$lambda$2(rNMBXMapView, view, motionEvent);
            }
        });
        return Unit.INSTANCE;
    }

    public static final boolean updateRequestDisallowInterceptTouchEvent$lambda$3$lambda$2(RNMBXMapView rNMBXMapView, View view, MotionEvent motionEvent) {
        MapView mapView = rNMBXMapView.getMapView();
        Intrinsics.checkNotNull(motionEvent);
        return mapView.onTouchEvent(motionEvent);
    }

    public static final void setPosAndMargins(OrnamentSettings ornamentSettings, ReadableMap readableMap) {
        int i;
        Intrinsics.checkNotNullParameter(ornamentSettings, "<this>");
        if (readableMap == null) {
            return;
        }
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        if (readableMap.hasKey(ViewProps.BOTTOM)) {
            writableNativeMap.putInt(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, readableMap.getInt(ViewProps.BOTTOM));
            i = 2;
        } else {
            if (readableMap.hasKey(ViewProps.TOP)) {
                writableNativeMap.putInt(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, readableMap.getInt(ViewProps.TOP));
            }
            i = 0;
        }
        if (readableMap.hasKey(ViewProps.LEFT)) {
            writableNativeMap.putInt("x", readableMap.getInt(ViewProps.LEFT));
        } else if (readableMap.hasKey(ViewProps.RIGHT)) {
            i |= 1;
            writableNativeMap.putInt("x", readableMap.getInt(ViewProps.RIGHT));
        }
        ornamentSettings.setPosition(i);
        ornamentSettings.setMargins(writableNativeMap);
    }
}
