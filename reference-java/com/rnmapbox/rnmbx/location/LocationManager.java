package com.rnmapbox.rnmbx.location;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import androidx.core.app.NotificationManagerCompat;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.android.core.permissions.PermissionsManager;
import com.mapbox.common.location.Location;
import com.mapbox.maps.plugin.locationcomponent.LocationProvider;
import com.rnmapbox.rnmbx.v11compat.location.LocationEngine;
import com.rnmapbox.rnmbx.v11compat.location.LocationEngineCallback;
import com.rnmapbox.rnmbx.v11compat.location.LocationEngineResult;
import com.rnmapbox.rnmbx.v11compat.location.LocationKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 =2\u00020\u0001:\u0002<=B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020 J\u0006\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020 J\u0006\u0010$\u001a\u00020 J\b\u0010%\u001a\u00020 H\u0002J\u000e\u0010&\u001a\u00020 2\u0006\u0010'\u001a\u00020\rJ\u000e\u0010(\u001a\u00020 2\u0006\u0010'\u001a\u00020\rJ\u000e\u0010)\u001a\u00020 2\u0006\u0010*\u001a\u00020\u000fJ\u0010\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020\u0011H\u0003J\b\u0010-\u001a\u00020 H\u0002J\b\u0010.\u001a\u00020 H\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u00100\u001a\u00020 2\u0006\u00102\u001a\u00020\u0001H\u0007J\u0016\u00103\u001a\u00020 2\u000e\u00104\u001a\n\u0018\u00010\u0013j\u0004\u0018\u0001`\u0014J\u0014\u00105\u001a\u00020 2\n\u00106\u001a\u000607j\u0002`8H\u0016J\u0010\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020;H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0018\u00010\u0013j\u0004\u0018\u0001`\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0019\u0010/\u001a\n\u0018\u00010\u0013j\u0004\u0018\u0001`\u00148F¢\u0006\u0006\u001a\u0004\b0\u00101¨\u0006>"}, d2 = {"Lcom/rnmapbox/rnmbx/location/LocationManager;", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "value", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;", "engine", "getEngine", "()Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;", "listeners", "", "Lcom/rnmapbox/rnmbx/location/LocationManager$OnUserLocationChange;", "mMinDisplacement", "", "isActive", "", "lastLocation", "Lcom/mapbox/common/location/Location;", "Lcom/rnmapbox/rnmbx/v11compat/location/Location;", "locationProvider", "Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;", "nStarts", "", "isPaused", "provider", "getProvider", "()Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;", "setProvider", "(Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;)V", "startCounted", "", "stopCounted", "pause", "resume", "destroy", "buildEngineRequest", "addLocationListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "removeLocationListener", "setMinDisplacement", "minDisplacement", "enable", "refresh", "disable", "dispose", "lastKnownLocation", "getLastKnownLocation", "()Lcom/mapbox/common/location/Location;", "callback", "onLocationChanged", "location", "onFailure", "exception", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "result", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;", "OnUserLocationChange", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LocationManager implements LocationEngineCallback {

    public static final Companion INSTANCE = new Companion(null);
    public static final long DEFAULT_FASTEST_INTERVAL_MILLIS = 1000;
    public static final long DEFAULT_INTERVAL_MILLIS = 1000;
    public static final String LOG_TAG = "LocationManager";
    private final Context context;
    private LocationEngine engine;
    private boolean isActive;
    private boolean isPaused;
    private Location lastLocation;
    private final List<OnUserLocationChange> listeners;
    private LocationProvider locationProvider;
    private float mMinDisplacement;
    private int nStarts;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H&¨\u0006\u0007"}, d2 = {"Lcom/rnmapbox/rnmbx/location/LocationManager$OnUserLocationChange;", "", "onLocationChange", "", "location", "Lcom/mapbox/common/location/Location;", "Lcom/rnmapbox/rnmbx/v11compat/location/Location;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnUserLocationChange {
        void onLocationChange(Location location);
    }

    public LocationManager(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    @Override
    public void onFailure(Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
    }

    private LocationManager(Context context) {
        this.context = context;
        this.listeners = new ArrayList();
        buildEngineRequest();
    }

    public final LocationEngine getEngine() {
        return this.engine;
    }

    public final LocationProvider getProvider() {
        LocationProvider locationProvider = this.locationProvider;
        if (locationProvider != null) {
            return locationProvider;
        }
        LocationProviderForEngine locationProviderForEngine = new LocationProviderForEngine(this.engine, this.context);
        this.locationProvider = locationProviderForEngine;
        return locationProviderForEngine;
    }

    public final void setProvider(LocationProvider value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.locationProvider = value;
    }

    public final void startCounted() {
        int i = this.nStarts + 1;
        this.nStarts = i;
        if (i == 1) {
            enable(false);
        }
    }

    public final void stopCounted() {
        int i = this.nStarts - 1;
        this.nStarts = i;
        if (i == 0) {
            dispose();
        }
    }

    public final void pause() {
        this.isPaused = true;
    }

    public final void resume() {
        this.isPaused = false;
        if (this.nStarts > 0) {
            enable(false);
        }
    }

    public final void destroy() {
        dispose();
        this.nStarts = NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
    }

    private final void buildEngineRequest() {
        Context applicationContext = this.context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.engine = LocationKt.createLocationEngine(applicationContext);
    }

    public final void addLocationListener(OnUserLocationChange listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.listeners.contains(listener)) {
            return;
        }
        this.listeners.add(listener);
    }

    public final void removeLocationListener(OnUserLocationChange listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.listeners.contains(listener)) {
            this.listeners.remove(listener);
        }
    }

    public final void setMinDisplacement(float minDisplacement) {
        this.mMinDisplacement = minDisplacement;
        if (this.isActive) {
            enable(true);
        }
    }

    private final void enable(boolean refresh) {
        if (PermissionsManager.INSTANCE.areLocationPermissionsGranted(this.context)) {
            LocationEngine locationEngine = this.engine;
            if (locationEngine != null) {
                LocationKt.removeLocationUpdates(locationEngine, this);
            }
            LocationEngine locationEngine2 = this.engine;
            if (locationEngine2 != null) {
                LocationKt.requestLocationUpdatesV11(locationEngine2, this, Looper.getMainLooper(), Float.valueOf(this.mMinDisplacement));
            }
            this.isActive = true;
        }
    }

    private final void disable() {
        LocationEngine locationEngine = this.engine;
        if (locationEngine != null) {
            LocationKt.removeLocationUpdates(locationEngine, this);
        }
        this.isActive = false;
    }

    private final void dispose() {
        if (this.engine == null) {
            return;
        }
        disable();
    }

    public final boolean isActive() {
        return this.engine != null && this.isActive;
    }

    public final Location getLastKnownLocation() {
        if (this.engine == null) {
            return null;
        }
        return this.lastLocation;
    }

    public final void getLastKnownLocation(final LocationEngineCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.engine == null) {
            callback.onFailure(new Exception("LocationEngine not initialized"));
        }
        try {
            LocationEngine locationEngine = this.engine;
            if (locationEngine != null) {
                LocationKt.getLastLocation(locationEngine, new LocationEngineCallback() {
                    @Override
                    public void onSuccess(LocationEngineResult result) {
                        Intrinsics.checkNotNullParameter(result, "result");
                        callback.onSuccess(result);
                    }

                    @Override
                    public void onFailure(Exception exception) {
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        callback.onFailure(exception);
                    }
                });
            }
        } catch (Exception e) {
            Log.w(LOG_TAG, e);
            callback.onFailure(e);
        }
    }

    public final void onLocationChanged(Location location) {
        this.lastLocation = location;
        Iterator<OnUserLocationChange> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLocationChange(location);
        }
    }

    @Override
    public void onSuccess(LocationEngineResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        onLocationChanged(result.getLastLocation());
        LocationProvider locationProvider = this.locationProvider;
        if (locationProvider == null || !(locationProvider instanceof LocationProviderForEngine)) {
            return;
        }
        ((LocationProviderForEngine) locationProvider).onSuccess(result);
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/rnmapbox/rnmbx/location/LocationManager$Companion;", "Lcom/rnmapbox/rnmbx/location/SingletonHolder;", "Lcom/rnmapbox/rnmbx/location/LocationManager;", "Landroid/content/Context;", "<init>", "()V", "DEFAULT_FASTEST_INTERVAL_MILLIS", "", "DEFAULT_INTERVAL_MILLIS", "LOG_TAG", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion extends SingletonHolder<LocationManager, Context> {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        class AnonymousClass1 extends FunctionReferenceImpl implements Function1<Context, LocationManager> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1, LocationManager.class, "<init>", "<init>(Landroid/content/Context;)V", 0);
            }

            @Override
            public final LocationManager invoke(Context p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return new LocationManager(p0, null);
            }
        }

        private Companion() {
            super(AnonymousClass1.INSTANCE);
        }
    }
}
