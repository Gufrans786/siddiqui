package com.rnmapbox.rnmbx.components.camera;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.UIManagerHelper;
import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.geojson.Geometry;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapView;
import com.mapbox.maps.plugin.viewport.CompletionListener;
import com.mapbox.maps.plugin.viewport.ViewportPlugin;
import com.mapbox.maps.plugin.viewport.ViewportStatus;
import com.mapbox.maps.plugin.viewport.ViewportStatusObserver;
import com.mapbox.maps.plugin.viewport.ViewportUtils;
import com.mapbox.maps.plugin.viewport.data.DefaultViewportTransitionOptions;
import com.mapbox.maps.plugin.viewport.data.FollowPuckViewportStateBearing;
import com.mapbox.maps.plugin.viewport.data.FollowPuckViewportStateOptions;
import com.mapbox.maps.plugin.viewport.data.OverviewViewportStateOptions;
import com.mapbox.maps.plugin.viewport.data.ViewportStatusChangeReason;
import com.mapbox.maps.plugin.viewport.state.FollowPuckViewportState;
import com.mapbox.maps.plugin.viewport.state.OverviewViewportState;
import com.mapbox.maps.plugin.viewport.state.ViewportState;
import com.mapbox.maps.plugin.viewport.transition.DefaultViewportTransition;
import com.mapbox.maps.plugin.viewport.transition.ViewportTransition;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.WriteableMapArrayOfKt;
import com.rnmapbox.rnmbx.utils.extensions.ReadableMapKt;
import io.reactivex.annotations.SchedulerSupport;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 @2\u00020\u0001:\u0002?@B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u001dH\u0016J\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010\"\u001a\u00020#H\u0002J\u0010\u0010&\u001a\u00020'2\u0006\u0010\"\u001a\u00020#H\u0002J\u0012\u0010(\u001a\u00020)2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020#H\u0002J\u001c\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002J \u0010/\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#2\b\u00100\u001a\u0004\u0018\u00010#2\u0006\u00101\u001a\u000202J\u0006\u00103\u001a\u00020\u0011J\u0012\u00104\u001a\u0004\u0018\u0001052\u0006\u00100\u001a\u00020.H\u0002J\u0012\u00106\u001a\u0004\u0018\u0001052\u0006\u0010\"\u001a\u00020\u001fH\u0002J\u0012\u00107\u001a\u0004\u0018\u0001052\u0006\u00108\u001a\u000209H\u0002J\u0010\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=H\u0002J\b\u0010>\u001a\u0004\u0018\u000105R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t@FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0014\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/RNMBXViewport;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "mContext", "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/components/camera/RNMBXViewportManager;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/camera/RNMBXViewportManager;)V", "value", "", "transitionsToIdleUponUserInteraction", "getTransitionsToIdleUponUserInteraction", "()Ljava/lang/Boolean;", "setTransitionsToIdleUponUserInteraction", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "applyTransitionsToIdleUponUserIntraction", "", "mapView", "Lcom/mapbox/maps/MapView;", "hasStatusChanged", "getHasStatusChanged", "()Z", "setHasStatusChanged", "(Z)V", "statusObserver", "Lcom/mapbox/maps/plugin/viewport/ViewportStatusObserver;", "applyHasStatusChanged", "addToMap", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "toState", "Lcom/mapbox/maps/plugin/viewport/state/ViewportState;", "viewport", "Lcom/mapbox/maps/plugin/viewport/ViewportPlugin;", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/facebook/react/bridge/ReadableMap;", "parseFollowViewportOptions", "Lcom/mapbox/maps/plugin/viewport/data/FollowPuckViewportStateOptions;", "parseOverviewViewportOption", "Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions;", "toDefaultViewportTransitionOptions", "Lcom/mapbox/maps/plugin/viewport/data/DefaultViewportTransitionOptions;", "toGeometry", "Lcom/mapbox/geojson/Geometry;", "geometry", "toTransition", "Lcom/mapbox/maps/plugin/viewport/transition/ViewportTransition;", "transitionTo", "transition", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "idle", "transitionToMap", "Lcom/facebook/react/bridge/WritableMap;", "stateToMap", "statusToMap", "status", "Lcom/mapbox/maps/plugin/viewport/ViewportStatus;", "reasonToSrting", "", "reason", "Lcom/mapbox/maps/plugin/viewport/data/ViewportStatusChangeReason;", "getState", "FollowPuckViewportStateBearingOrNull", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXViewport extends AbstractMapFeature {
    public static final String LOG_TAG = "RNMBXViewport";
    private boolean hasStatusChanged;
    private final Context mContext;
    private final RNMBXViewportManager mManager;
    private ViewportStatusObserver statusObserver;
    private Boolean transitionsToIdleUponUserInteraction;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReadableType.values().length];
            try {
                iArr[ReadableType.Number.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadableType.String.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReadableType.Null.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RNMBXViewport(Context mContext, RNMBXViewportManager mManager) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mContext = mContext;
        this.mManager = mManager;
    }

    public final Boolean getTransitionsToIdleUponUserInteraction() {
        return this.transitionsToIdleUponUserInteraction;
    }

    public final void setTransitionsToIdleUponUserInteraction(Boolean bool) {
        RNMBXMapView mMapView;
        this.transitionsToIdleUponUserInteraction = bool;
        if (bool == null || (mMapView = getMMapView()) == null) {
            return;
        }
        applyTransitionsToIdleUponUserIntraction(mMapView.getMapView());
    }

    public final void applyTransitionsToIdleUponUserIntraction(MapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Boolean bool = this.transitionsToIdleUponUserInteraction;
        if (bool != null) {
            MapView mapView2 = mapView;
            ViewportUtils.getViewport(mapView2).setOptions(ViewportUtils.getViewport(mapView2).getOptions().toBuilder().transitionsToIdleUponUserInteraction(bool.booleanValue()).build());
        }
    }

    public final boolean getHasStatusChanged() {
        return this.hasStatusChanged;
    }

    public final void setHasStatusChanged(boolean z) {
        this.hasStatusChanged = z;
        RNMBXMapView mMapView = getMMapView();
        if (mMapView != null) {
            applyHasStatusChanged(mMapView.getMapView());
        }
    }

    private final void applyHasStatusChanged(MapView mapView) {
        ViewportPlugin viewport = ViewportUtils.getViewport(mapView);
        if (this.hasStatusChanged) {
            if (this.statusObserver == null) {
                ViewportStatusObserver viewportStatusObserver = new ViewportStatusObserver() {
                    @Override
                    public final void onViewportStatusChanged(ViewportStatus viewportStatus, ViewportStatus viewportStatus2, ViewportStatusChangeReason viewportStatusChangeReason) {
                        RNMBXViewport.applyHasStatusChanged$lambda$3(this.f$0, viewportStatus, viewportStatus2, viewportStatusChangeReason);
                    }
                };
                this.statusObserver = viewportStatusObserver;
                viewport.addStatusObserver(viewportStatusObserver);
                return;
            }
            return;
        }
        ViewportStatusObserver viewportStatusObserver2 = this.statusObserver;
        if (viewportStatusObserver2 != null) {
            viewport.removeStatusObserver(viewportStatusObserver2);
        }
    }

    public static final void applyHasStatusChanged$lambda$3(RNMBXViewport rNMBXViewport, ViewportStatus from, ViewportStatus to, ViewportStatusChangeReason reason) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(reason, "reason");
        rNMBXViewport.mManager.dispatchEvent(new BaseEvent(UIManagerHelper.getSurfaceId(rNMBXViewport.mContext), rNMBXViewport.getId(), EventKeys.VIEWPORT_STATUS_CHANGE.getValue(), WriteableMapArrayOfKt.writableMapOf(TuplesKt.to(SVGParser.XML_STYLESHEET_ATTR_TYPE, "statuschanged"), TuplesKt.to("payload", WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("from", rNMBXViewport.statusToMap(from)), TuplesKt.to(TypedValues.TransitionType.S_TO, rNMBXViewport.statusToMap(to)), TuplesKt.to("reason", rNMBXViewport.reasonToSrting(reason))))), false, 16, null));
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        applyTransitionsToIdleUponUserIntraction(mapView.getMapView());
        applyHasStatusChanged(mapView.getMapView());
    }

    private final ViewportState toState(ViewportPlugin viewport, ReadableMap state) {
        String andLogIfNotString$default = ReadableMapKt.getAndLogIfNotString$default(state, "kind", null, 2, null);
        if (Intrinsics.areEqual(andLogIfNotString$default, "followPuck")) {
            return viewport.makeFollowPuckViewportState(parseFollowViewportOptions(state));
        }
        if (Intrinsics.areEqual(andLogIfNotString$default, "overview")) {
            return viewport.makeOverviewViewportState(parseOverviewViewportOption(state));
        }
        Logger.INSTANCE.e("RNMBXViewport", "toState: unexpected state: " + andLogIfNotString$default);
        return null;
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/RNMBXViewport$FollowPuckViewportStateBearingOrNull;", "", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/maps/plugin/viewport/data/FollowPuckViewportStateBearing;", "<init>", "(Lcom/mapbox/maps/plugin/viewport/data/FollowPuckViewportStateBearing;)V", "getState", "()Lcom/mapbox/maps/plugin/viewport/data/FollowPuckViewportStateBearing;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class FollowPuckViewportStateBearingOrNull {
        private final FollowPuckViewportStateBearing state;

        public static FollowPuckViewportStateBearingOrNull copy$default(FollowPuckViewportStateBearingOrNull followPuckViewportStateBearingOrNull, FollowPuckViewportStateBearing followPuckViewportStateBearing, int i, Object obj) {
            if ((i & 1) != 0) {
                followPuckViewportStateBearing = followPuckViewportStateBearingOrNull.state;
            }
            return followPuckViewportStateBearingOrNull.copy(followPuckViewportStateBearing);
        }

        public final FollowPuckViewportStateBearing getState() {
            return this.state;
        }

        public final FollowPuckViewportStateBearingOrNull copy(FollowPuckViewportStateBearing state) {
            return new FollowPuckViewportStateBearingOrNull(state);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof FollowPuckViewportStateBearingOrNull) && Intrinsics.areEqual(this.state, ((FollowPuckViewportStateBearingOrNull) other).state);
        }

        public int hashCode() {
            FollowPuckViewportStateBearing followPuckViewportStateBearing = this.state;
            if (followPuckViewportStateBearing == null) {
                return 0;
            }
            return followPuckViewportStateBearing.hashCode();
        }

        public String toString() {
            return "FollowPuckViewportStateBearingOrNull(state=" + this.state + ")";
        }

        public FollowPuckViewportStateBearingOrNull(FollowPuckViewportStateBearing followPuckViewportStateBearing) {
            this.state = followPuckViewportStateBearing;
        }

        public final FollowPuckViewportStateBearing getState() {
            return this.state;
        }
    }

    private final FollowPuckViewportStateOptions parseFollowViewportOptions(ReadableMap state) {
        EdgeInsets padding;
        FollowPuckViewportStateBearingOrNull followPuckViewportStateBearingOrNull;
        FollowPuckViewportStateOptions.Builder builder = new FollowPuckViewportStateOptions.Builder();
        ReadableMap andLogIfNotMap = ReadableMapKt.getAndLogIfNotMap(state, "options", "RNMBXViewport");
        if (andLogIfNotMap != null) {
            if (andLogIfNotMap.hasKey("zoom")) {
                if (RNMBXViewportKt.isKeep(andLogIfNotMap, "zoom")) {
                    builder.zoom(null);
                } else {
                    Double andLogIfNotDouble = ReadableMapKt.getAndLogIfNotDouble(andLogIfNotMap, "zoom", "RNMBXViewport");
                    if (andLogIfNotDouble != null) {
                        builder.zoom(Double.valueOf(andLogIfNotDouble.doubleValue()));
                    }
                }
            }
            if (andLogIfNotMap.hasKey("pitch")) {
                if (RNMBXViewportKt.isKeep(andLogIfNotMap, "pitch")) {
                    builder.pitch(null);
                } else {
                    Double andLogIfNotDouble2 = ReadableMapKt.getAndLogIfNotDouble(andLogIfNotMap, "pitch", "RNMBXViewport");
                    if (andLogIfNotDouble2 != null) {
                        builder.pitch(Double.valueOf(andLogIfNotDouble2.doubleValue()));
                    }
                }
            }
            if (andLogIfNotMap.hasKey("bearing")) {
                int i = WhenMappings.$EnumSwitchMapping$0[andLogIfNotMap.getType("bearing").ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        String string = andLogIfNotMap.getString("bearing");
                        if (string != null) {
                            int iHashCode = string.hashCode();
                            if (iHashCode != -1354571749) {
                                if (iHashCode != 3287941) {
                                    if (iHashCode == 795311618 && string.equals("heading")) {
                                        followPuckViewportStateBearingOrNull = new FollowPuckViewportStateBearingOrNull(FollowPuckViewportStateBearing.SyncWithLocationPuck.INSTANCE);
                                    }
                                } else if (string.equals("keep")) {
                                    followPuckViewportStateBearingOrNull = new FollowPuckViewportStateBearingOrNull(null);
                                }
                            } else if (string.equals("course")) {
                                followPuckViewportStateBearingOrNull = new FollowPuckViewportStateBearingOrNull(FollowPuckViewportStateBearing.SyncWithLocationPuck.INSTANCE);
                            }
                        }
                        Logger.INSTANCE.e("RNMBXViewport", "bearing in viewport options should be either a constant number or syncWithLocationPuck");
                    } else {
                        Logger.INSTANCE.e("RNMBXViewport", "bearing in viewport options should be either constant number or course or heading or keep");
                    }
                    followPuckViewportStateBearingOrNull = null;
                } else {
                    followPuckViewportStateBearingOrNull = new FollowPuckViewportStateBearingOrNull(new FollowPuckViewportStateBearing.Constant(andLogIfNotMap.getDouble("bearing")));
                }
                if (followPuckViewportStateBearingOrNull != null) {
                    builder.bearing(followPuckViewportStateBearingOrNull.getState());
                }
            }
            if (andLogIfNotMap.hasKey(ViewProps.PADDING)) {
                if (andLogIfNotMap.isNull(ViewProps.PADDING)) {
                    builder.padding(null);
                } else {
                    ReadableMap andLogIfNotMap2 = ReadableMapKt.getAndLogIfNotMap(andLogIfNotMap, ViewProps.PADDING, "RNMBXViewport");
                    if (andLogIfNotMap2 != null && andLogIfNotMap2 != null && (padding = ReadableMapKt.toPadding(andLogIfNotMap2, "RNMBXViewport", getResources().getDisplayMetrics().density)) != null) {
                        builder.padding(padding);
                    }
                }
            }
        }
        return builder.build();
    }

    private final OverviewViewportStateOptions parseOverviewViewportOption(ReadableMap state) {
        ReadableMap andLogIfNotMap$default;
        Geometry geometry;
        Double andLogIfNotDouble;
        ReadableMap andLogIfNotMap;
        EdgeInsets padding;
        OverviewViewportStateOptions.Builder builder = new OverviewViewportStateOptions.Builder();
        ReadableMap andLogIfNotMap2 = ReadableMapKt.getAndLogIfNotMap(state, "options", "RNMBXViewport");
        if (andLogIfNotMap2 != null) {
            if (andLogIfNotMap2.hasKey(ViewProps.PADDING) && !andLogIfNotMap2.isNull(ViewProps.PADDING) && (andLogIfNotMap = ReadableMapKt.getAndLogIfNotMap(andLogIfNotMap2, ViewProps.PADDING, "RNMBXViewport")) != null && andLogIfNotMap != null && (padding = ReadableMapKt.toPadding(andLogIfNotMap, "RNMBXViewport", getResources().getDisplayMetrics().density)) != null) {
                builder.padding(padding);
            }
            if (andLogIfNotMap2.hasKey("bearing")) {
                int i = WhenMappings.$EnumSwitchMapping$0[andLogIfNotMap2.getType("bearing").ordinal()];
                if (i == 1) {
                    builder.bearing(Double.valueOf(andLogIfNotMap2.getDouble("bearing")));
                } else if (i == 3) {
                    builder.bearing(null);
                } else {
                    Logger.INSTANCE.e("RNMBXViewport", "bearing in viewport options should be either constant number or null");
                }
            }
            if (andLogIfNotMap2.hasKey("pitch")) {
                if (andLogIfNotMap2.isNull("pitch")) {
                    builder.pitch(null);
                } else {
                    Double andLogIfNotDouble2 = ReadableMapKt.getAndLogIfNotDouble(andLogIfNotMap2, "pitch", "RNMBXViewport");
                    if (andLogIfNotDouble2 != null) {
                        builder.pitch(Double.valueOf(andLogIfNotDouble2.doubleValue()));
                    }
                }
            }
            if (andLogIfNotMap2.hasKey("animationDuration") && !andLogIfNotMap2.isNull("animationDuration") && (andLogIfNotDouble = ReadableMapKt.getAndLogIfNotDouble(andLogIfNotMap2, "zoom", "RNMBXViewport")) != null) {
                builder.animationDurationMs((long) (andLogIfNotDouble.doubleValue() * 1000.0d));
            }
            if (andLogIfNotMap2.hasKey("geometry") && (andLogIfNotMap$default = ReadableMapKt.getAndLogIfNotMap$default(andLogIfNotMap2, "geometry", null, 2, null)) != null && (geometry = ReadableMapKt.toGeometry(andLogIfNotMap$default)) != null) {
                builder.geometry(geometry);
            }
        }
        return builder.build();
    }

    private final DefaultViewportTransitionOptions toDefaultViewportTransitionOptions(ReadableMap state) {
        DefaultViewportTransitionOptions.Builder builder = new DefaultViewportTransitionOptions.Builder();
        if (state != null && state.hasKey("maxDurationMs")) {
            Double andLogIfNotDouble = ReadableMapKt.getAndLogIfNotDouble(state, "maxDurationMs", "RNMBXViewport");
            if (andLogIfNotDouble != null) {
                builder.maxDurationMs((long) andLogIfNotDouble.doubleValue());
            }
            builder.build();
        }
        return builder.build();
    }

    private final Geometry toGeometry(ReadableMap geometry) {
        return ReadableMapKt.toGeometry(geometry);
    }

    private final ViewportTransition toTransition(ViewportPlugin viewport, ReadableMap state) {
        viewport.idle();
        String andLogIfNotString = state != null ? ReadableMapKt.getAndLogIfNotString(state, "kind", "RNMBXViewport") : null;
        if (Intrinsics.areEqual(andLogIfNotString, "default")) {
            return viewport.makeDefaultViewportTransition(toDefaultViewportTransitionOptions(state != null ? state.getMap("options") : null));
        }
        if (Intrinsics.areEqual(andLogIfNotString, "immediate")) {
            return viewport.makeImmediateViewportTransition();
        }
        if (andLogIfNotString == null) {
            return null;
        }
        Logger.INSTANCE.e("RNMBXViewport", "toTransition: unexpected transition to: " + andLogIfNotString);
        return null;
    }

    public final void transitionTo(ReadableMap state, ReadableMap transition, final Promise promise) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(promise, "promise");
        RNMBXMapView mMapView = getMMapView();
        if (mMapView == null) {
            Logger.INSTANCE.e("RNMBXViewport", "transitionTo: mapView is null");
            return;
        }
        ViewportState state2 = toState(ViewportUtils.getViewport(mMapView.getMapView()), state);
        if (state2 == null) {
            Logger.INSTANCE.e("RNMBXViewport", "transitionTo: no state to transition to: " + state);
        } else {
            ViewportUtils.getViewport(mMapView.getMapView()).transitionTo(state2, toTransition(ViewportUtils.getViewport(mMapView.getMapView()), transition), new CompletionListener() {
                @Override
                public final void onComplete(boolean z) {
                    RNMBXViewport.transitionTo$lambda$18(promise, z);
                }
            });
        }
    }

    public static final void transitionTo$lambda$18(Promise promise, boolean z) {
        promise.resolve(Boolean.valueOf(z));
    }

    public final void idle() {
        RNMBXMapView mMapView = getMMapView();
        if (mMapView == null) {
            Logger.INSTANCE.e("RNMBXViewport", "transitionTo: mapView is null");
        } else {
            ViewportUtils.getViewport(mMapView.getMapView()).idle();
        }
    }

    private final WritableMap transitionToMap(ViewportTransition transition) {
        if (transition instanceof DefaultViewportTransition) {
            return WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("kind", "default"), TuplesKt.to("maxDurationMs", Long.valueOf(((DefaultViewportTransition) transition).getOptions().getMaxDurationMs())));
        }
        String string = transition.getClass().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return StringsKt.indexOf$default((CharSequence) string, "ImmediateViewportTransition", 0, false, 6, (Object) null) >= 0 ? WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("kind", "immediate")) : WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("kind", "unknown"));
    }

    private final WritableMap stateToMap(ViewportState state) {
        if (state instanceof FollowPuckViewportState) {
            return WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("kind", "followPuck"));
        }
        return state instanceof OverviewViewportState ? WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("kind", "overview")) : WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("kind", SchedulerSupport.CUSTOM), TuplesKt.to("impl", state.getClass().toString()));
    }

    private final WritableMap statusToMap(ViewportStatus status) {
        if (status instanceof ViewportStatus.Idle) {
            return WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("kind", "idle"));
        }
        if (status instanceof ViewportStatus.State) {
            return WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("kind", RemoteConfigConstants.ResponseFieldKey.STATE), TuplesKt.to(RemoteConfigConstants.ResponseFieldKey.STATE, stateToMap(((ViewportStatus.State) status).getState())));
        }
        if (!(status instanceof ViewportStatus.Transition)) {
            throw new NoWhenBranchMatchedException();
        }
        ViewportStatus.Transition transition = (ViewportStatus.Transition) status;
        return WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("kind", "transition"), TuplesKt.to("transition", transitionToMap(transition.getTransition())), TuplesKt.to("toState", stateToMap(transition.getToState())));
    }

    private final String reasonToSrting(ViewportStatusChangeReason reason) {
        if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.IDLE_REQUESTED)) {
            return "IdleRequested";
        }
        if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.TRANSITION_FAILED)) {
            return "TransitionFailed";
        }
        if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.TRANSITION_STARTED)) {
            return "TransitionStarted";
        }
        if (Intrinsics.areEqual(reason, ViewportStatusChangeReason.USER_INTERACTION)) {
            return "UserInteraction";
        }
        return Intrinsics.areEqual(reason, ViewportStatusChangeReason.TRANSITION_SUCCEEDED) ? "TransitionSucceeded" : "Unknown:" + reason;
    }

    public final WritableMap getState() {
        RNMBXMapView mMapView = getMMapView();
        if (mMapView == null) {
            Logger.INSTANCE.e("RNMBXViewport", "getState: mapView is null");
            return null;
        }
        return statusToMap(ViewportUtils.getViewport(mMapView.getMapView()).getStatus());
    }
}
