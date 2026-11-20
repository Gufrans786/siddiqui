package com.rnmapbox.rnmbx.components.location;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import androidx.lifecycle.Lifecycle;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.ImageHolder;
import com.mapbox.maps.MapView;
import com.mapbox.maps.extension.style.expressions.dsl.generated.ExpressionDslKt;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.plugin.LocationPuck;
import com.mapbox.maps.plugin.LocationPuck2D;
import com.mapbox.maps.plugin.PuckBearing;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentUtils;
import com.mapbox.maps.plugin.locationcomponent.LocationProvider;
import com.mapbox.maps.plugin.locationcomponent.generated.LocationComponentSettings;
import com.rnmapbox.rnmbx.R;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.location.LocationManager;
import com.rnmapbox.rnmbx.v11compat.image.AppCompatResourcesV11;
import com.rnmapbox.rnmbx.v11compat.image.ImageKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001:\u0001/B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J)\u0010\u001b\u001a\u00020\u001c2!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u00150\u001eJ\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u0015H\u0002J(\u0010\"\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u0019H\u0002J\b\u0010'\u001a\u00020\u001cH\u0002J\b\u0010(\u001a\u00020\u001cH\u0002J\u0010\u0010)\u001a\u00020\u001c2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u000e\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\u0019J\u000e\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u0019J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010.\u001a\u00020\u001cR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;", "", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Landroid/content/Context;)V", "MAPBOX_BLUE_COLOR", "", "mMapView", "getMMapView", "()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "setMMapView", "(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V", "mContext", "getMContext", "()Landroid/content/Context;", "setMContext", "(Landroid/content/Context;)V", "mState", "Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;", "mLocationManager", "Lcom/rnmapbox/rnmbx/location/LocationManager;", "mNeedsFullUpdate", "", "mLocationManagerStarted", "update", "", "newStateCallback", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "currentState", "applyStateChanges", "oldState", "newState", "map", "fullUpdate", "startLocationManager", "stopLocationManager", "useMapLocationProvider", "showNativeUserLocation", "showUserLocation", "setFollowLocation", "followUserLocation", "onDestroy", "State", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LocationComponentManager {
    private final int MAPBOX_BLUE_COLOR;
    private Context mContext;
    private LocationManager mLocationManager;
    private boolean mLocationManagerStarted;
    private RNMBXMapView mMapView;
    private boolean mNeedsFullUpdate;
    private State mState;

    public static final State update$lambda$6(State it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it;
    }

    public LocationComponentManager(RNMBXMapView mapView, Context context) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(context, "context");
        this.MAPBOX_BLUE_COLOR = Color.parseColor("#4A90E2");
        this.mMapView = mapView;
        this.mContext = context;
        this.mState = new State(false, false, null, null, null, null, null, false, 1.0d, false, 640, null);
        this.mLocationManager = LocationManager.INSTANCE.getInstance(context);
        this.mNeedsFullUpdate = true;
    }

    public final RNMBXMapView getMMapView() {
        return this.mMapView;
    }

    public final void setMMapView(RNMBXMapView rNMBXMapView) {
        Intrinsics.checkNotNullParameter(rNMBXMapView, "<set-?>");
        this.mMapView = rNMBXMapView;
    }

    public final Context getMContext() {
        return this.mContext;
    }

    public final void setMContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.mContext = context;
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b2\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u007f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\t\u0012\u000e\u0010\n\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\t\u0012\u000e\u0010\u000b\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\t\u0012\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0011\u00107\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tHÆ\u0003J\u0011\u00108\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tHÆ\u0003J\u0011\u00109\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tHÆ\u0003J\u0011\u0010:\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000eHÆ\u0003J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\t\u0010<\u001a\u00020\u0011HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\u0094\u0001\u0010>\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\t2\u0010\b\u0002\u0010\n\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\t2\u0010\b\u0002\u0010\u000b\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\t2\u0010\b\u0002\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010?J\u0013\u0010@\u001a\u00020\u00032\b\u0010A\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010B\u001a\u00020\u0006HÖ\u0001J\t\u0010C\u001a\u00020DHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\u0007\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\n\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001c\"\u0004\b \u0010\u001eR\"\u0010\u000b\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010\u001eR\"\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010)R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0016\"\u0004\b/\u0010)R\u0011\u00100\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b1\u0010\u0016R\u0011\u00102\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b3\u0010\u0016¨\u0006E"}, d2 = {"Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;", "", "showUserLocation", "", "followUserLocation", "tintColor", "", "bearingImage", "Lcom/mapbox/maps/ImageHolder;", "Lcom/rnmapbox/rnmbx/v11compat/image/ImageHolder;", "topImage", "shadowImage", "puckBearingSource", "Lcom/mapbox/maps/plugin/PuckBearing;", "Lcom/rnmapbox/rnmbx/v11compat/location/PuckBearing;", "pulsing", "scale", "", "nativeUserLocation", "<init>", "(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZ)V", "getShowUserLocation", "()Z", "getFollowUserLocation", "getTintColor", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getBearingImage", "()Lcom/mapbox/maps/ImageHolder;", "setBearingImage", "(Lcom/mapbox/maps/ImageHolder;)V", "getTopImage", "setTopImage", "getShadowImage", "setShadowImage", "getPuckBearingSource", "()Lcom/mapbox/maps/plugin/PuckBearing;", "setPuckBearingSource", "(Lcom/mapbox/maps/plugin/PuckBearing;)V", "getPulsing", "setPulsing", "(Z)V", "getScale", "()D", "setScale", "(D)V", "getNativeUserLocation", "setNativeUserLocation", ViewProps.ENABLED, "getEnabled", ViewProps.HIDDEN, "getHidden", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZ)Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;", "equals", "other", "hashCode", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class State {
        private ImageHolder bearingImage;
        private final boolean followUserLocation;
        private boolean nativeUserLocation;
        private PuckBearing puckBearingSource;
        private boolean pulsing;
        private double scale;
        private ImageHolder shadowImage;
        private final boolean showUserLocation;
        private final Integer tintColor;
        private ImageHolder topImage;

        public static State copy$default(State state, boolean z, boolean z2, Integer num, ImageHolder imageHolder, ImageHolder imageHolder2, ImageHolder imageHolder3, PuckBearing puckBearing, boolean z3, double d, boolean z4, int i, Object obj) {
            if ((i & 1) != 0) {
                z = state.showUserLocation;
            }
            if ((i & 2) != 0) {
                z2 = state.followUserLocation;
            }
            if ((i & 4) != 0) {
                num = state.tintColor;
            }
            if ((i & 8) != 0) {
                imageHolder = state.bearingImage;
            }
            if ((i & 16) != 0) {
                imageHolder2 = state.topImage;
            }
            if ((i & 32) != 0) {
                imageHolder3 = state.shadowImage;
            }
            if ((i & 64) != 0) {
                puckBearing = state.puckBearingSource;
            }
            if ((i & 128) != 0) {
                z3 = state.pulsing;
            }
            if ((i & 256) != 0) {
                d = state.scale;
            }
            if ((i & 512) != 0) {
                z4 = state.nativeUserLocation;
            }
            boolean z5 = z4;
            double d2 = d;
            PuckBearing puckBearing2 = puckBearing;
            boolean z6 = z3;
            ImageHolder imageHolder4 = imageHolder2;
            ImageHolder imageHolder5 = imageHolder3;
            return state.copy(z, z2, num, imageHolder, imageHolder4, imageHolder5, puckBearing2, z6, d2, z5);
        }

        public final boolean getShowUserLocation() {
            return this.showUserLocation;
        }

        public final boolean getNativeUserLocation() {
            return this.nativeUserLocation;
        }

        public final boolean getFollowUserLocation() {
            return this.followUserLocation;
        }

        public final Integer getTintColor() {
            return this.tintColor;
        }

        public final ImageHolder getBearingImage() {
            return this.bearingImage;
        }

        public final ImageHolder getTopImage() {
            return this.topImage;
        }

        public final ImageHolder getShadowImage() {
            return this.shadowImage;
        }

        public final PuckBearing getPuckBearingSource() {
            return this.puckBearingSource;
        }

        public final boolean getPulsing() {
            return this.pulsing;
        }

        public final double getScale() {
            return this.scale;
        }

        public final State copy(boolean showUserLocation, boolean followUserLocation, Integer tintColor, ImageHolder bearingImage, ImageHolder topImage, ImageHolder shadowImage, PuckBearing puckBearingSource, boolean pulsing, double scale, boolean nativeUserLocation) {
            return new State(showUserLocation, followUserLocation, tintColor, bearingImage, topImage, shadowImage, puckBearingSource, pulsing, scale, nativeUserLocation);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof State)) {
                return false;
            }
            State state = (State) other;
            return this.showUserLocation == state.showUserLocation && this.followUserLocation == state.followUserLocation && Intrinsics.areEqual(this.tintColor, state.tintColor) && Intrinsics.areEqual(this.bearingImage, state.bearingImage) && Intrinsics.areEqual(this.topImage, state.topImage) && Intrinsics.areEqual(this.shadowImage, state.shadowImage) && this.puckBearingSource == state.puckBearingSource && this.pulsing == state.pulsing && Double.compare(this.scale, state.scale) == 0 && this.nativeUserLocation == state.nativeUserLocation;
        }

        public int hashCode() {
            int iHashCode = ((Boolean.hashCode(this.showUserLocation) * 31) + Boolean.hashCode(this.followUserLocation)) * 31;
            Integer num = this.tintColor;
            int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
            ImageHolder imageHolder = this.bearingImage;
            int iHashCode3 = (iHashCode2 + (imageHolder == null ? 0 : imageHolder.hashCode())) * 31;
            ImageHolder imageHolder2 = this.topImage;
            int iHashCode4 = (iHashCode3 + (imageHolder2 == null ? 0 : imageHolder2.hashCode())) * 31;
            ImageHolder imageHolder3 = this.shadowImage;
            int iHashCode5 = (iHashCode4 + (imageHolder3 == null ? 0 : imageHolder3.hashCode())) * 31;
            PuckBearing puckBearing = this.puckBearingSource;
            return ((((((iHashCode5 + (puckBearing != null ? puckBearing.hashCode() : 0)) * 31) + Boolean.hashCode(this.pulsing)) * 31) + Double.hashCode(this.scale)) * 31) + Boolean.hashCode(this.nativeUserLocation);
        }

        public String toString() {
            return "State(showUserLocation=" + this.showUserLocation + ", followUserLocation=" + this.followUserLocation + ", tintColor=" + this.tintColor + ", bearingImage=" + this.bearingImage + ", topImage=" + this.topImage + ", shadowImage=" + this.shadowImage + ", puckBearingSource=" + this.puckBearingSource + ", pulsing=" + this.pulsing + ", scale=" + this.scale + ", nativeUserLocation=" + this.nativeUserLocation + ")";
        }

        public State(boolean z, boolean z2, Integer num, ImageHolder imageHolder, ImageHolder imageHolder2, ImageHolder imageHolder3, PuckBearing puckBearing, boolean z3, double d, boolean z4) {
            this.showUserLocation = z;
            this.followUserLocation = z2;
            this.tintColor = num;
            this.bearingImage = imageHolder;
            this.topImage = imageHolder2;
            this.shadowImage = imageHolder3;
            this.puckBearingSource = puckBearing;
            this.pulsing = z3;
            this.scale = d;
            this.nativeUserLocation = z4;
        }

        public State(boolean z, boolean z2, Integer num, ImageHolder imageHolder, ImageHolder imageHolder2, ImageHolder imageHolder3, PuckBearing puckBearing, boolean z3, double d, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, z2, num, imageHolder, imageHolder2, imageHolder3, puckBearing, (i & 128) != 0 ? true : z3, (i & 256) != 0 ? 1.0d : d, (i & 512) != 0 ? false : z4);
        }

        public final boolean getShowUserLocation() {
            return this.showUserLocation;
        }

        public final boolean getFollowUserLocation() {
            return this.followUserLocation;
        }

        public final Integer getTintColor() {
            return this.tintColor;
        }

        public final ImageHolder getBearingImage() {
            return this.bearingImage;
        }

        public final void setBearingImage(ImageHolder imageHolder) {
            this.bearingImage = imageHolder;
        }

        public final ImageHolder getTopImage() {
            return this.topImage;
        }

        public final void setTopImage(ImageHolder imageHolder) {
            this.topImage = imageHolder;
        }

        public final ImageHolder getShadowImage() {
            return this.shadowImage;
        }

        public final void setShadowImage(ImageHolder imageHolder) {
            this.shadowImage = imageHolder;
        }

        public final PuckBearing getPuckBearingSource() {
            return this.puckBearingSource;
        }

        public final void setPuckBearingSource(PuckBearing puckBearing) {
            this.puckBearingSource = puckBearing;
        }

        public final boolean getPulsing() {
            return this.pulsing;
        }

        public final void setPulsing(boolean z) {
            this.pulsing = z;
        }

        public final double getScale() {
            return this.scale;
        }

        public final void setScale(double d) {
            this.scale = d;
        }

        public final boolean getNativeUserLocation() {
            return this.nativeUserLocation;
        }

        public final void setNativeUserLocation(boolean z) {
            this.nativeUserLocation = z;
        }

        public final boolean getEnabled() {
            return this.showUserLocation || this.followUserLocation;
        }

        public final boolean getHidden() {
            return this.followUserLocation && !this.showUserLocation;
        }
    }

    public final void update(Function1<? super State, State> newStateCallback) {
        Intrinsics.checkNotNullParameter(newStateCallback, "newStateCallback");
        State stateInvoke = newStateCallback.invoke(this.mState);
        if (Intrinsics.areEqual(stateInvoke, this.mState)) {
            return;
        }
        applyStateChanges(this.mState, stateInvoke);
        this.mState = stateInvoke;
    }

    private final void applyStateChanges(State oldState, State newState) {
        applyStateChanges(this.mMapView, oldState, newState, this.mNeedsFullUpdate);
        this.mNeedsFullUpdate = false;
    }

    private final void applyStateChanges(final RNMBXMapView map, final State oldState, final State newState, final boolean fullUpdate) {
        MapView mapView = map.getMapView();
        if (map.getLifecycleState() != Lifecycle.State.STARTED && map.getLifecycleState() != Lifecycle.State.INITIALIZED) {
            if (newState.getEnabled()) {
                return;
            }
            stopLocationManager();
            return;
        }
        LocationComponentUtils.getLocationComponent(mapView).updateSettings(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocationComponentManager.applyStateChanges$lambda$3(newState, fullUpdate, oldState, this, map, (LocationComponentSettings.Builder) obj);
            }
        });
    }

    public static final Unit applyStateChanges$lambda$3(final State state, boolean z, State state2, LocationComponentManager locationComponentManager, RNMBXMapView rNMBXMapView, LocationComponentSettings.Builder updateSettings) {
        Intrinsics.checkNotNullParameter(updateSettings, "$this$updateSettings");
        updateSettings.m1100setEnabled(state.getEnabled());
        if ((z || state.getHidden() != state2.getHidden() || !Intrinsics.areEqual(state.getTintColor(), state2.getTintColor()) || state.getScale() != state2.getScale() || state.getNativeUserLocation() != state2.getNativeUserLocation()) && !state.getNativeUserLocation()) {
            if (state.getHidden()) {
                LocationPuck2D locationPuck2D = new LocationPuck2D(null, null, null, null, 0.0f, 31, null);
                ImageHolder drawableImageHolder = AppCompatResourcesV11.INSTANCE.getDrawableImageHolder(locationComponentManager.mContext, R.drawable.empty);
                locationPuck2D.setBearingImage(drawableImageHolder);
                locationPuck2D.setShadowImage(drawableImageHolder);
                locationPuck2D.setTopImage(drawableImageHolder);
                updateSettings.m1103setLocationPuck((LocationPuck) locationPuck2D);
                updateSettings.m1107setPulsingEnabled(false);
            } else {
                Integer tintColor = state.getTintColor();
                Object topImage = state.getTopImage();
                if (tintColor != null && topImage != null) {
                    byte[] byteArray = ImageKt.toByteArray(ImageKt.toImageData((byte[]) topImage));
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(locationComponentManager.mContext.getResources(), BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length));
                    bitmapDrawable.setTint(tintColor.intValue());
                    topImage = ImageKt.toBitmapImageHolder(bitmapDrawable);
                }
                updateSettings.m1103setLocationPuck((LocationPuck) new LocationPuck2D(topImage, state.getBearingImage(), state.getShadowImage(), state.getScale() == 1.0d ? null : ExpressionDslKt.interpolate(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return LocationComponentManager.applyStateChanges$lambda$3$lambda$2(state, (Expression.InterpolatorBuilder) obj);
                    }
                }).toJson(), 0.0f, 16, null));
                updateSettings.m1107setPulsingEnabled(state.getPulsing());
                updateSettings.m1106setPulsingColor(tintColor != null ? tintColor.intValue() : locationComponentManager.MAPBOX_BLUE_COLOR);
            }
        }
        if (z || state.getEnabled() != locationComponentManager.mState.getEnabled()) {
            if (state.getEnabled()) {
                locationComponentManager.startLocationManager();
                locationComponentManager.useMapLocationProvider(rNMBXMapView);
            } else {
                locationComponentManager.stopLocationManager();
            }
        }
        return Unit.INSTANCE;
    }

    public static final Unit applyStateChanges$lambda$3$lambda$2(final State state, Expression.InterpolatorBuilder interpolate) {
        Intrinsics.checkNotNullParameter(interpolate, "$this$interpolate");
        interpolate.linear();
        interpolate.zoom();
        interpolate.stop(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocationComponentManager.applyStateChanges$lambda$3$lambda$2$lambda$1(state, (Expression.ExpressionBuilder) obj);
            }
        });
        return Unit.INSTANCE;
    }

    public static final Unit applyStateChanges$lambda$3$lambda$2$lambda$1(State state, Expression.ExpressionBuilder stop) {
        Intrinsics.checkNotNullParameter(stop, "$this$stop");
        stop.literal(0L);
        stop.literal(state.getScale());
        return Unit.INSTANCE;
    }

    private final void startLocationManager() {
        if (this.mLocationManagerStarted) {
            return;
        }
        this.mLocationManager.startCounted();
        this.mLocationManagerStarted = true;
    }

    private final void stopLocationManager() {
        if (this.mLocationManagerStarted) {
            this.mLocationManager.stopCounted();
            this.mLocationManagerStarted = false;
        }
    }

    private final void useMapLocationProvider(RNMBXMapView mapView) {
        LocationProvider locationProvider = LocationComponentUtils.getLocationComponent(mapView.getMapView()).getLocationProvider();
        if (locationProvider != null) {
            this.mLocationManager.setProvider(locationProvider);
        }
    }

    public final void showNativeUserLocation(final boolean showUserLocation) {
        update(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocationComponentManager.showNativeUserLocation$lambda$4(showUserLocation, (LocationComponentManager.State) obj);
            }
        });
    }

    public static final State showNativeUserLocation$lambda$4(boolean z, State it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return State.copy$default(it, z, false, null, null, null, null, null, false, 0.0d, z, TypedValues.PositionType.TYPE_POSITION_TYPE, null);
    }

    public final void setFollowLocation(final boolean followUserLocation) {
        update(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocationComponentManager.setFollowLocation$lambda$5(followUserLocation, (LocationComponentManager.State) obj);
            }
        });
    }

    public static final State setFollowLocation$lambda$5(boolean z, State it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return State.copy$default(it, false, z, null, null, null, null, null, false, 0.0d, false, PointerIconCompat.TYPE_GRABBING, null);
    }

    public final void update() {
        update(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocationComponentManager.update$lambda$6((LocationComponentManager.State) obj);
            }
        });
    }

    public final void onDestroy() {
        stopLocationManager();
    }
}
