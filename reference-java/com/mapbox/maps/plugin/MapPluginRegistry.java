package com.mapbox.maps.plugin;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapInitOptions;
import com.mapbox.maps.MapView;
import com.mapbox.maps.MapboxConfigurationException;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.Style;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.gestures.GesturesPlugin;
import com.mapbox.maps.plugin.lifecycle.MapboxLifecyclePlugin;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 ;2\u00020\u0001:\u0002;<B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u001b\u0010$\u001a\u0004\u0018\u0001H%\"\u0004\b\u0000\u0010%2\u0006\u0010&\u001a\u00020\u0018¢\u0006\u0002\u0010'J\u000e\u0010(\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+J\u0006\u0010,\u001a\u00020\u001dJ\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\u0016\u00101\u001a\u00020\u001d2\u0006\u00102\u001a\u00020\f2\u0006\u00103\u001a\u00020\fJ\u0006\u00104\u001a\u00020\u001dJ\u0006\u00105\u001a\u00020\u001dJ\u000e\u00106\u001a\u00020\u001d2\u0006\u00107\u001a\u000208J\u0010\u00109\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100J\u000e\u0010:\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u0018R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006="}, d2 = {"Lcom/mapbox/maps/plugin/MapPluginRegistry;", "", "mapDelegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;)V", "cameraPlugins", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/maps/plugin/MapCameraPlugin;", "gesturePlugins", "Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;", "mapSize", "Lkotlin/Pair;", "", "mapSizePlugins", "Lcom/mapbox/maps/plugin/MapSizePlugin;", "value", "Lcom/mapbox/maps/plugin/MapPluginRegistry$State;", "mapState", "setMapState", "(Lcom/mapbox/maps/plugin/MapPluginRegistry$State;)V", "mapboxLifecyclePlugin", "Lcom/mapbox/maps/plugin/lifecycle/MapboxLifecyclePlugin;", "plugins", "", "", "Lcom/mapbox/maps/plugin/MapPlugin;", "styleObserverPlugins", "Lcom/mapbox/maps/plugin/MapStyleObserverPlugin;", "createPlugin", "", "mapView", "Lcom/mapbox/maps/MapView;", "mapInitOptions", "Lcom/mapbox/maps/MapInitOptions;", "plugin", "Lcom/mapbox/maps/plugin/Plugin;", "getPlugin", ExifInterface.GPS_DIRECTION_TRUE, "id", "(Ljava/lang/String;)Ljava/lang/Object;", "onAttachedToWindow", "onCameraMove", "cameraState", "Lcom/mapbox/maps/CameraState;", "onDestroy", "onGenericMotionEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "onSizeChanged", "width", "height", "onStart", "onStop", "onStyleChanged", "style", "Lcom/mapbox/maps/Style;", "onTouch", "removePlugin", "Companion", "State", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapPluginRegistry {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String TAG = "MapPluginRegistry";
    private final CopyOnWriteArraySet<MapCameraPlugin> cameraPlugins;
    private final CopyOnWriteArraySet<GesturesPlugin> gesturePlugins;
    private final MapDelegateProvider mapDelegateProvider;
    private Pair<Integer, Integer> mapSize;
    private final CopyOnWriteArraySet<MapSizePlugin> mapSizePlugins;
    private State mapState;
    private MapboxLifecyclePlugin mapboxLifecyclePlugin;
    private final Map<String, MapPlugin> plugins;
    private final CopyOnWriteArraySet<MapStyleObserverPlugin> styleObserverPlugins;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/plugin/MapPluginRegistry$State;", "", "(Ljava/lang/String;I)V", "STARTED", "STOPPED", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private enum State {
        STARTED,
        STOPPED
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.STOPPED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MapPluginRegistry(MapDelegateProvider mapDelegateProvider) {
        Intrinsics.checkNotNullParameter(mapDelegateProvider, "mapDelegateProvider");
        this.mapDelegateProvider = mapDelegateProvider;
        this.mapState = State.STOPPED;
        this.plugins = new LinkedHashMap();
        this.cameraPlugins = new CopyOnWriteArraySet<>();
        this.gesturePlugins = new CopyOnWriteArraySet<>();
        this.styleObserverPlugins = new CopyOnWriteArraySet<>();
        this.mapSizePlugins = new CopyOnWriteArraySet<>();
    }

    private final void setMapState(State state) {
        if (state != this.mapState) {
            this.mapState = state;
            int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i == 1) {
                for (MapPlugin mapPlugin : this.plugins.values()) {
                    if (mapPlugin instanceof LifecyclePlugin) {
                        ((LifecyclePlugin) mapPlugin).onStart();
                    }
                }
                return;
            }
            if (i != 2) {
                return;
            }
            for (MapPlugin mapPlugin2 : this.plugins.values()) {
                if (mapPlugin2 instanceof LifecyclePlugin) {
                    ((LifecyclePlugin) mapPlugin2).onStop();
                }
            }
        }
    }

    public final void createPlugin(MapView mapView, MapInitOptions mapInitOptions, Plugin plugin) throws InvalidViewPluginHostException {
        Intrinsics.checkNotNullParameter(mapInitOptions, "mapInitOptions");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        MapPlugin plugin2 = plugin.getInstance();
        if (plugin2 == null) {
            throw new MapboxConfigurationException("MapPlugin instance is missing for " + plugin.getId() + '!');
        }
        if (!this.plugins.containsKey(plugin.getId())) {
            if ((plugin.getInstance() instanceof ViewPlugin) && mapView == null) {
                throw new InvalidViewPluginHostException("Cause: " + plugin2.getClass());
            }
            this.plugins.put(plugin.getId(), plugin2);
            plugin2.onDelegateProvider(this.mapDelegateProvider);
            if (plugin2 instanceof ViewPlugin) {
                ViewPlugin viewPlugin = (ViewPlugin) plugin2;
                Intrinsics.checkNotNull(mapView);
                View viewBind = viewPlugin.bind(mapView, mapInitOptions.getAttrs(), mapInitOptions.getMapOptions().getPixelRatio());
                mapView.addView(viewBind);
                viewPlugin.onPluginView(viewBind);
            }
            if (plugin2 instanceof ContextBinder) {
                ((ContextBinder) plugin2).bind(mapInitOptions.getContext(), mapInitOptions.getAttrs(), mapInitOptions.getMapOptions().getPixelRatio());
            }
            if (plugin2 instanceof MapSizePlugin) {
                this.mapSizePlugins.add(plugin2);
                Pair<Integer, Integer> pair = this.mapSize;
                if (pair != null) {
                    ((MapSizePlugin) plugin2).onSizeChanged(pair.getFirst().intValue(), pair.getSecond().intValue());
                }
            }
            if (plugin2 instanceof MapCameraPlugin) {
                this.cameraPlugins.add((MapCameraPlugin) plugin2);
            }
            if (plugin2 instanceof GesturesPlugin) {
                this.gesturePlugins.add((GesturesPlugin) plugin2);
            }
            if (plugin2 instanceof MapStyleObserverPlugin) {
                this.styleObserverPlugins.add(plugin2);
            }
            if (plugin2 instanceof MapboxLifecyclePlugin) {
                this.mapboxLifecyclePlugin = (MapboxLifecyclePlugin) plugin2;
            }
            plugin2.initialize();
            if (this.mapState == State.STARTED && (plugin2 instanceof LifecyclePlugin)) {
                ((LifecyclePlugin) plugin2).onStart();
                return;
            }
            return;
        }
        MapPlugin mapPlugin = this.plugins.get(plugin.getId());
        if (mapPlugin != null) {
            mapPlugin.initialize();
        }
    }

    public final <T> T getPlugin(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return (T) this.plugins.get(id);
    }

    public final void removePlugin(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        MapPlugin mapPlugin = this.plugins.get(id);
        if (mapPlugin instanceof MapCameraPlugin) {
            this.cameraPlugins.remove(mapPlugin);
        } else if (mapPlugin instanceof GesturesPlugin) {
            this.gesturePlugins.remove(mapPlugin);
        } else if (mapPlugin instanceof MapStyleObserverPlugin) {
            this.styleObserverPlugins.remove(mapPlugin);
        } else if (mapPlugin instanceof MapSizePlugin) {
            this.mapSizePlugins.remove(mapPlugin);
        } else if (mapPlugin instanceof MapboxLifecyclePlugin) {
            this.mapboxLifecyclePlugin = null;
        }
        if (mapPlugin != null) {
            mapPlugin.cleanup();
        }
        this.plugins.remove(id);
        MapboxLogger.logI(TAG, "Removed plugin: " + id + " from the Map.");
    }

    public final void onStart() {
        setMapState(State.STARTED);
    }

    public final void onStop() {
        setMapState(State.STOPPED);
    }

    public final void onDestroy() {
        Iterator<Map.Entry<String, MapPlugin>> it = this.plugins.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().cleanup();
        }
    }

    public final boolean onTouch(MotionEvent event) {
        Iterator<T> it = this.gesturePlugins.iterator();
        while (true) {
            boolean z = false;
            while (it.hasNext()) {
                if (((GesturesPlugin) it.next()).onTouchEvent(event) || z) {
                    z = true;
                }
            }
            return z;
        }
    }

    public final boolean onGenericMotionEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Iterator<T> it = this.gesturePlugins.iterator();
        while (true) {
            boolean z = false;
            while (it.hasNext()) {
                if (((GesturesPlugin) it.next()).onGenericMotionEvent(event) || z) {
                    z = true;
                }
            }
            return z;
        }
    }

    public final void onSizeChanged(int width, int height) {
        this.mapSize = TuplesKt.to(Integer.valueOf(width), Integer.valueOf(height));
        Iterator<MapSizePlugin> it = this.mapSizePlugins.iterator();
        while (it.hasNext()) {
            it.next().onSizeChanged(width, height);
        }
    }

    public final void onCameraMove(CameraState cameraState) {
        Intrinsics.checkNotNullParameter(cameraState, "cameraState");
        for (MapCameraPlugin mapCameraPlugin : this.cameraPlugins) {
            Point center = cameraState.getCenter();
            Intrinsics.checkNotNullExpressionValue(center, "cameraState.center");
            double zoom = cameraState.getZoom();
            double pitch = cameraState.getPitch();
            double bearing = cameraState.getBearing();
            EdgeInsets padding = cameraState.getPadding();
            Intrinsics.checkNotNullExpressionValue(padding, "cameraState.padding");
            mapCameraPlugin.onCameraMove(center, zoom, pitch, bearing, padding);
        }
    }

    public final void onStyleChanged(Style style) {
        Intrinsics.checkNotNullParameter(style, "style");
        Iterator<T> it = this.styleObserverPlugins.iterator();
        while (it.hasNext()) {
            ((MapStyleObserverPlugin) it.next()).onStyleChanged(style);
        }
    }

    public final void onAttachedToWindow(MapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        MapboxLifecyclePlugin mapboxLifecyclePlugin = this.mapboxLifecyclePlugin;
        if (mapboxLifecyclePlugin != null) {
            mapboxLifecyclePlugin.registerLifecycleObserver(mapView, mapView);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/plugin/MapPluginRegistry$Companion;", "", "()V", "TAG", "", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
