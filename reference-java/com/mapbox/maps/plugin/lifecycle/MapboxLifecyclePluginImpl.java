package com.mapbox.maps.plugin.lifecycle;

import android.content.ComponentCallbacks;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.mapbox.maps.MapboxLifecycleObserver;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/plugin/lifecycle/MapboxLifecyclePluginImpl;", "Lcom/mapbox/maps/plugin/lifecycle/MapboxLifecyclePlugin;", "()V", "registerLifecycleObserver", "", "mapView", "Landroid/view/View;", "observer", "Lcom/mapbox/maps/MapboxLifecycleObserver;", "Companion", "plugin-lifecycle_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapboxLifecyclePluginImpl implements MapboxLifecyclePlugin {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String TAG = "MapboxLifecyclePlugin";

    @Override
    public void cleanup() {
        MapboxLifecyclePlugin.DefaultImpls.cleanup(this);
    }

    @Override
    public void initialize() {
        MapboxLifecyclePlugin.DefaultImpls.initialize(this);
    }

    @Override
    public void onDelegateProvider(MapDelegateProvider mapDelegateProvider) {
        MapboxLifecyclePlugin.DefaultImpls.onDelegateProvider(this, mapDelegateProvider);
    }

    @Override
    public void registerLifecycleObserver(final View mapView, final MapboxLifecycleObserver observer) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(observer, "observer");
        final ViewLifecycleOwner viewLifecycleOwner = new ViewLifecycleOwner(mapView);
        MapboxLogger.logI(TAG, "registerLifecycleObserver is called");
        final ?? r1 = new ComponentCallbacks2() {
            @Override
            public void onConfigurationChanged(Configuration newConfig) {
                Intrinsics.checkNotNullParameter(newConfig, "newConfig");
            }

            @Override
            public void onLowMemory() {
                observer.onLowMemory();
            }

            @Override
            public void onTrimMemory(int level) {
                if (level == 10 || level == 15) {
                    MapboxLogger.logW("MapboxLifecyclePlugin", "onTrimMemory with level " + level + " is received, reduceMemoryUse will be called.");
                    observer.onLowMemory();
                }
            }
        };
        mapView.getContext().registerComponentCallbacks((ComponentCallbacks) r1);
        viewLifecycleOwner.getViewLifecycleRegistry().addObserver(new LifecycleObserver() {
            @OnLifecycleEvent(Lifecycle.Event.ON_START)
            public final void onStart() {
                MapboxLogger.logI(MapboxLifecyclePluginImpl.TAG, "onStart is called, MapboxLifecycleObserver will be notified.");
                observer.onStart();
            }

            @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
            public final void onStop() {
                MapboxLogger.logI(MapboxLifecyclePluginImpl.TAG, "onStop is called, MapboxLifecycleObserver will be notified.");
                observer.onStop();
            }

            @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
            public final void onResume() {
                MapboxLogger.logI(MapboxLifecyclePluginImpl.TAG, "onResume is called, MapboxLifecycleObserver will be notified.");
                observer.onResume();
            }

            @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
            public final void onDestroy() {
                MapboxLogger.logI(MapboxLifecyclePluginImpl.TAG, "onDestroy is called, MapboxLifecycleObserver will be notified.");
                observer.onDestroy();
                viewLifecycleOwner.getViewLifecycleRegistry().removeObserver(this);
                viewLifecycleOwner.cleanUp();
                mapView.getContext().unregisterComponentCallbacks(r1);
            }
        });
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/plugin/lifecycle/MapboxLifecyclePluginImpl$Companion;", "", "()V", "TAG", "", "plugin-lifecycle_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
