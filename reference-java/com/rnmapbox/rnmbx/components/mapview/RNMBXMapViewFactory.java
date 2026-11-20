package com.rnmapbox.rnmbx.components.mapview;

import android.view.ViewGroup;
import com.mapbox.maps.MapView;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewFactory;", "", "<init>", "()V", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXMapViewFactory {

    public static final Companion INSTANCE = new Companion(null);
    private static Map<String, Function2<String, ViewGroup, MapView>> factories = new LinkedHashMap();

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J=\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u00062-\u0010\u0014\u001a)\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0007j\u0002`\rJ9\u0010\u0015\u001a-\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u0007j\u0004\u0018\u0001`\r2\u0006\u0010\n\u001a\u00020\u0006RM\u0010\u0004\u001a5\u0012\u0004\u0012\u00020\u0006\u0012+\u0012)\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0007j\u0002`\r0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewFactory$Companion;", "", "<init>", "()V", "factories", "", "", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "impl", "Landroid/view/ViewGroup;", "Lcom/mapbox/maps/MapView;", "Lcom/rnmapbox/rnmbx/components/mapview/Factory;", "getFactories", "()Ljava/util/Map;", "setFactories", "(Ljava/util/Map;)V", "regiser", "", "factory", "get", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Map<String, Function2<String, ViewGroup, MapView>> getFactories() {
            return RNMBXMapViewFactory.factories;
        }

        public final void setFactories(Map<String, Function2<String, ViewGroup, MapView>> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            RNMBXMapViewFactory.factories = map;
        }

        public final void regiser(String impl, Function2<? super String, ? super ViewGroup, ? extends MapView> factory) {
            Intrinsics.checkNotNullParameter(impl, "impl");
            Intrinsics.checkNotNullParameter(factory, "factory");
            List listSplit$default = StringsKt.split$default((CharSequence) impl, new String[]{":"}, false, 2, 2, (Object) null);
            String str = (String) listSplit$default.get(0);
            getFactories().put(str, factory);
        }

        public final Function2<String, ViewGroup, MapView> get(String impl) {
            Intrinsics.checkNotNullParameter(impl, "impl");
            List listPlus = CollectionsKt.plus((Collection<? extends Object>) StringsKt.split$default((CharSequence) impl, new String[]{":"}, false, 2, 2, (Object) null), (Object) null);
            String str = (String) listPlus.get(0);
            return getFactories().get(str);
        }
    }
}
