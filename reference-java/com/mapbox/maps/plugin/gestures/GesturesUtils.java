package com.mapbox.maps.plugin.gestures;

import android.content.Context;
import android.util.AttributeSet;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.android.gestures.AndroidGesturesManager;
import com.mapbox.maps.plugin.MapPlugin;
import com.mapbox.maps.plugin.Plugin;
import com.mapbox.maps.plugin.ScrollMode;
import com.mapbox.maps.plugin.delegates.MapPluginExtensionsDelegate;
import com.mapbox.maps.plugin.delegates.MapPluginProviderDelegate;
import com.mapbox.maps.plugin.gestures.generated.GesturesSettings;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000l\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\r\u001a\"\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007\u001a\u0012\u0010\f\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010\u001a\u0012\u0010\u0011\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013\u001a\u0012\u0010\u0014\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016\u001a\u0012\u0010\u0017\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019\u001a\u0012\u0010\u001a\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u001b\u001a\u0012\u0010\u001c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u001d\u001a\u0012\u0010\u001e\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u001f\u001a\f\u0010 \u001a\u0004\u0018\u00010!*\u00020\u000e\u001a\n\u0010\"\u001a\u00020#*\u00020$\u001a\n\u0010%\u001a\u00020#*\u00020$\u001a\u0012\u0010&\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010\u001a\u0012\u0010'\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013\u001a\u0012\u0010(\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016\u001a\u0012\u0010)\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019\u001a\u0012\u0010*\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u001b\u001a\u0012\u0010+\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u001d\u001a\u0012\u0010,\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u001f\u001a\"\u0010-\u001a\u00020\r*\u00020\u000e2\u0006\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020#2\u0006\u00100\u001a\u00020#\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028G¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u00061"}, d2 = {"gestures", "Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "getGestures", "(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;", "createGesturePlugin", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "pixelRatio", "", "addOnFlingListener", "", "Lcom/mapbox/maps/plugin/delegates/MapPluginExtensionsDelegate;", "onFlingListener", "Lcom/mapbox/maps/plugin/gestures/OnFlingListener;", "addOnMapClickListener", "onMapClickListener", "Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;", "addOnMapLongClickListener", "onMapLongClickListener", "Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;", "addOnMoveListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mapbox/maps/plugin/gestures/OnMoveListener;", "addOnRotateListener", "Lcom/mapbox/maps/plugin/gestures/OnRotateListener;", "addOnScaleListener", "Lcom/mapbox/maps/plugin/gestures/OnScaleListener;", "addOnShoveListener", "Lcom/mapbox/maps/plugin/gestures/OnShoveListener;", "getGesturesManager", "Lcom/mapbox/android/gestures/AndroidGesturesManager;", "isScrollHorizontallyLimited", "", "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;", "isScrollVerticallyLimited", "removeOnFlingListener", "removeOnMapClickListener", "removeOnMapLongClickListener", "removeOnMoveListener", "removeOnRotateListener", "removeOnScaleListener", "removeOnShoveListener", "setGesturesManager", "androidGesturesManager", "attachDefaultListeners", "setDefaultMutuallyExclusives", "plugin-gestures_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class GesturesUtils {
    public static final GesturesPlugin getGestures(MapPluginProviderDelegate mapPluginProviderDelegate) {
        Intrinsics.checkNotNullParameter(mapPluginProviderDelegate, "<this>");
        MapPlugin plugin = mapPluginProviderDelegate.getPlugin(Plugin.MAPBOX_GESTURES_PLUGIN_ID);
        Intrinsics.checkNotNull(plugin);
        return (GesturesPlugin) plugin;
    }

    public static final void addOnMapClickListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnMapClickListener onMapClickListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(onMapClickListener, "onMapClickListener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.addOnMapClickListener(onMapClickListener);
            }
        });
    }

    public static final void removeOnMapClickListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnMapClickListener onMapClickListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(onMapClickListener, "onMapClickListener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.removeOnMapClickListener(onMapClickListener);
            }
        });
    }

    public static final void addOnMapLongClickListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnMapLongClickListener onMapLongClickListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(onMapLongClickListener, "onMapLongClickListener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.addOnMapLongClickListener(onMapLongClickListener);
            }
        });
    }

    public static final void removeOnMapLongClickListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnMapLongClickListener onMapLongClickListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(onMapLongClickListener, "onMapLongClickListener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.removeOnMapLongClickListener(onMapLongClickListener);
            }
        });
    }

    public static final void addOnFlingListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnFlingListener onFlingListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(onFlingListener, "onFlingListener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.addOnFlingListener(onFlingListener);
            }
        });
    }

    public static final void removeOnFlingListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnFlingListener onFlingListener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(onFlingListener, "onFlingListener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.removeOnFlingListener(onFlingListener);
            }
        });
    }

    public static final void addOnMoveListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnMoveListener listener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.addOnMoveListener(listener);
            }
        });
    }

    public static final void removeOnMoveListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnMoveListener listener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.removeOnMoveListener(listener);
            }
        });
    }

    public static final void addOnRotateListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnRotateListener listener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.addOnRotateListener(listener);
            }
        });
    }

    public static final void removeOnRotateListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnRotateListener listener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.removeOnRotateListener(listener);
            }
        });
    }

    public static final void addOnScaleListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnScaleListener listener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.addOnScaleListener(listener);
            }
        });
    }

    public static final void removeOnScaleListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnScaleListener listener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.removeOnScaleListener(listener);
            }
        });
    }

    public static final void addOnShoveListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnShoveListener listener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.addOnShoveListener(listener);
            }
        });
    }

    public static final void removeOnShoveListener(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final OnShoveListener listener) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.removeOnShoveListener(listener);
            }
        });
    }

    public static final AndroidGesturesManager getGesturesManager(MapPluginExtensionsDelegate mapPluginExtensionsDelegate) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        return (AndroidGesturesManager) mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Object>() {
            @Override
            public final Object invoke(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                return gesturesPlugin.getGesturesManager();
            }
        });
    }

    public static final void setGesturesManager(MapPluginExtensionsDelegate mapPluginExtensionsDelegate, final AndroidGesturesManager androidGesturesManager, final boolean z, final boolean z2) {
        Intrinsics.checkNotNullParameter(mapPluginExtensionsDelegate, "<this>");
        Intrinsics.checkNotNullParameter(androidGesturesManager, "androidGesturesManager");
        mapPluginExtensionsDelegate.gesturesPlugin(new Function1<GesturesPlugin, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(GesturesPlugin gesturesPlugin) {
                invoke2(gesturesPlugin);
                return Unit.INSTANCE;
            }

            public final void invoke2(GesturesPlugin gesturesPlugin) {
                Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
                gesturesPlugin.setGesturesManager(androidGesturesManager, z, z2);
            }
        });
    }

    public static final boolean isScrollHorizontallyLimited(GesturesSettings gesturesSettings) {
        Intrinsics.checkNotNullParameter(gesturesSettings, "<this>");
        return gesturesSettings.getScrollMode() == ScrollMode.VERTICAL;
    }

    public static final boolean isScrollVerticallyLimited(GesturesSettings gesturesSettings) {
        Intrinsics.checkNotNullParameter(gesturesSettings, "<this>");
        return gesturesSettings.getScrollMode() == ScrollMode.HORIZONTAL;
    }

    public static final GesturesPlugin createGesturePlugin(Context context, AttributeSet attributeSet, float f) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (attributeSet != null) {
            return new GesturesPluginImpl(context, attributeSet, f);
        }
        return new GesturesPluginImpl(context, f);
    }
}
