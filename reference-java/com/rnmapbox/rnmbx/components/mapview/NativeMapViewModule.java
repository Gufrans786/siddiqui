package com.rnmapbox.rnmbx.components.mapview;

import android.graphics.PointF;
import android.graphics.RectF;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.rnmapbox.rnmbx.NativeMapViewModuleSpec;
import com.rnmapbox.rnmbx.utils.ConvertUtils;
import com.rnmapbox.rnmbx.utils.ExpressionParser;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import com.rnmapbox.rnmbx.utils.extensions.DynamicKt;
import com.rnmapbox.rnmbx.utils.extensions.ReadableArrayKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 D2\u00020\u0001:\u0001DB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J9\u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000b0\u0012H\u0002¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010H\u0002J-\u0010\u0018\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u001bJ-\u0010\u001c\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u001fJ?\u0010 \u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010%J%\u0010&\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010'J-\u0010(\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010)\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u001fJ-\u0010*\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010+\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u001fJ%\u0010,\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010'J%\u0010-\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010'J=\u0010.\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010)\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u00101J?\u00102\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u00103\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\u001e2\b\u00100\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u00101J1\u00104\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\b\u00105\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0002\u0010\u001fJ%\u00106\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010'JG\u00107\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020:2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010;J?\u0010<\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u00108\u001a\u00020#2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010=JI\u0010>\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u00108\u001a\u00020#2\b\u0010?\u001a\u0004\u0018\u00010#2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010@J=\u0010A\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\"\u001a\u00020#2\u0006\u0010/\u001a\u00020\u001e2\u0006\u0010B\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010CR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006E"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/NativeMapViewModule;", "Lcom/rnmapbox/rnmbx/NativeMapViewModuleSpec;", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "withMapViewOnUIThread", "", "viewRef", "", "Lcom/rnmapbox/rnmbx/utils/ViewRefTag;", "reject", "Lcom/facebook/react/bridge/Promise;", "fn", "Lkotlin/Function1;", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "(Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V", "createCommandResponse", "Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;", BaseJavaModule.METHOD_TYPE_PROMISE, "takeSnap", "writeToDisk", "", "(Ljava/lang/Double;ZLcom/facebook/react/bridge/Promise;)V", "queryTerrainElevation", "coordinates", "Lcom/facebook/react/bridge/ReadableArray;", "(Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V", "setSourceVisibility", ViewProps.VISIBLE, "sourceId", "", "sourceLayerId", "(Ljava/lang/Double;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V", "getCenter", "(Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;)V", "getCoordinateFromView", "atPoint", "getPointInView", "atCoordinate", "getZoom", "getVisibleBounds", "queryRenderedFeaturesAtPoint", "withFilter", "withLayerIDs", "(Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V", "queryRenderedFeaturesInRect", "withBBox", "setHandledMapChangedEvents", "events", "clearData", "setFeatureState", "featureId", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/facebook/react/bridge/ReadableMap;", "(Ljava/lang/Double;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V", "getFeatureState", "(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V", "removeFeatureState", "stateKey", "(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V", "querySourceFeatures", "withSourceLayerIDs", "(Ljava/lang/Double;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NativeMapViewModule extends NativeMapViewModuleSpec {
    public static final String NAME = "RNMBXMapViewModule";
    private final ViewTagResolver viewTagResolver;

    public NativeMapViewModule(ReactApplicationContext context, ViewTagResolver viewTagResolver) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        this.viewTagResolver = viewTagResolver;
    }

    public final ViewTagResolver getViewTagResolver() {
        return this.viewTagResolver;
    }

    private final void withMapViewOnUIThread(Double viewRef, Promise reject, Function1<? super RNMBXMapView, Unit> fn) {
        if (viewRef == null) {
            reject.reject(new Exception("viewRef is null"));
        } else {
            this.viewTagResolver.withViewResolved((int) viewRef.doubleValue(), reject, fn);
        }
    }

    private final CommandResponse createCommandResponse(final Promise promise) {
        return new CommandResponse() {
            @Override
            public void success(Function1<? super WritableMap, Unit> builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                WritableNativeMap writableNativeMap = new WritableNativeMap();
                builder.invoke(writableNativeMap);
                promise.resolve(writableNativeMap);
            }

            @Override
            public void error(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                promise.reject(new Exception(message));
            }
        };
    }

    @Override
    public void takeSnap(Double viewRef, final boolean writeToDisk, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.takeSnap$lambda$0(writeToDisk, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit takeSnap$lambda$0(boolean z, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.takeSnap(z, nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void queryTerrainElevation(Double viewRef, final ReadableArray coordinates, final Promise promise) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.queryTerrainElevation$lambda$1(coordinates, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit queryTerrainElevation$lambda$1(ReadableArray readableArray, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.queryTerrainElevation(readableArray.getDouble(0), readableArray.getDouble(1), nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void setSourceVisibility(Double viewRef, final boolean visible, final String sourceId, final String sourceLayerId, final Promise promise) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.setSourceVisibility$lambda$2(visible, sourceId, sourceLayerId, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit setSourceVisibility$lambda$2(boolean z, String str, String str2, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setSourceVisibility(z, str, str2);
        promise.resolve(null);
        return Unit.INSTANCE;
    }

    @Override
    public void getCenter(Double viewRef, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.getCenter$lambda$3(this.f$0, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit getCenter$lambda$3(NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.getCenter(nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void getCoordinateFromView(Double viewRef, final ReadableArray atPoint, final Promise promise) {
        Intrinsics.checkNotNullParameter(atPoint, "atPoint");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.getCoordinateFromView$lambda$4(atPoint, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit getCoordinateFromView$lambda$4(ReadableArray readableArray, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.getCoordinateFromView(ReadableArrayKt.toScreenCoordinate(readableArray), nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void getPointInView(Double viewRef, final ReadableArray atCoordinate, final Promise promise) {
        Intrinsics.checkNotNullParameter(atCoordinate, "atCoordinate");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.getPointInView$lambda$5(atCoordinate, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit getPointInView$lambda$5(ReadableArray readableArray, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.getPointInView(ReadableArrayKt.toCoordinate(readableArray), nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void getZoom(Double viewRef, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.getZoom$lambda$6(this.f$0, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit getZoom$lambda$6(NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.getZoom(nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void getVisibleBounds(Double viewRef, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.getVisibleBounds$lambda$7(this.f$0, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit getVisibleBounds$lambda$7(NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.getVisibleBounds(nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void queryRenderedFeaturesAtPoint(Double viewRef, final ReadableArray atPoint, final ReadableArray withFilter, final ReadableArray withLayerIDs, final Promise promise) {
        Intrinsics.checkNotNullParameter(atPoint, "atPoint");
        Intrinsics.checkNotNullParameter(withFilter, "withFilter");
        Intrinsics.checkNotNullParameter(withLayerIDs, "withLayerIDs");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.queryRenderedFeaturesAtPoint$lambda$8(withLayerIDs, atPoint, withFilter, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit queryRenderedFeaturesAtPoint$lambda$8(ReadableArray readableArray, ReadableArray readableArray2, ReadableArray readableArray3, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        List<String> stringList = ConvertUtils.INSTANCE.toStringList(readableArray);
        PointF pointF = ConvertUtils.INSTANCE.toPointF(readableArray2);
        Expression expressionFrom = ExpressionParser.from(readableArray3);
        if (stringList.size() == 0) {
            stringList = null;
        }
        it.queryRenderedFeaturesAtPoint(pointF, expressionFrom, stringList, nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void queryRenderedFeaturesInRect(Double viewRef, final ReadableArray withBBox, final ReadableArray withFilter, final ReadableArray withLayerIDs, final Promise promise) {
        Intrinsics.checkNotNullParameter(withBBox, "withBBox");
        Intrinsics.checkNotNullParameter(withFilter, "withFilter");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.queryRenderedFeaturesInRect$lambda$9(withLayerIDs, withBBox, withFilter, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit queryRenderedFeaturesInRect$lambda$9(ReadableArray readableArray, ReadableArray readableArray2, ReadableArray readableArray3, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        List<String> stringList = ConvertUtils.INSTANCE.toStringList(readableArray);
        RectF rectF = ConvertUtils.INSTANCE.toRectF(readableArray2);
        Expression expressionFrom = ExpressionParser.from(readableArray3);
        if (stringList.size() == 0) {
            stringList = null;
        }
        it.queryRenderedFeaturesInRect(rectF, expressionFrom, stringList, nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void setHandledMapChangedEvents(Double viewRef, final ReadableArray events, final Promise promise) {
        Intrinsics.checkNotNull(promise);
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.setHandledMapChangedEvents$lambda$10(events, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit setHandledMapChangedEvents$lambda$10(ReadableArray readableArray, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Intrinsics.checkNotNull(readableArray);
        it.setHandledMapChangedEvents(RNMBXMapViewManagerKt.asArrayString(readableArray));
        promise.resolve(null);
        return Unit.INSTANCE;
    }

    @Override
    public void clearData(Double viewRef, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.clearData$lambda$11(this.f$0, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit clearData$lambda$11(NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.clearData(nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void setFeatureState(Double viewRef, final String featureId, final ReadableMap state, final String sourceId, final String sourceLayerId, final Promise promise) {
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.setFeatureState$lambda$12(featureId, state, sourceId, sourceLayerId, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit setFeatureState$lambda$12(String str, ReadableMap readableMap, String str2, String str3, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.setFeatureState(str, DynamicKt.toValueHashMap(readableMap), str2, str3, nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void getFeatureState(Double viewRef, final String featureId, final String sourceId, final String sourceLayerId, final Promise promise) {
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.getFeatureState$lambda$13(featureId, sourceId, sourceLayerId, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit getFeatureState$lambda$13(String str, String str2, String str3, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.getFeatureState(str, str2, str3, nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void removeFeatureState(Double viewRef, final String featureId, final String stateKey, final String sourceId, final String sourceLayerId, final Promise promise) {
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.removeFeatureState$lambda$14(featureId, stateKey, sourceId, sourceLayerId, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit removeFeatureState$lambda$14(String str, String str2, String str3, String str4, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.removeFeatureState(str, str2, str3, str4, nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }

    @Override
    public void querySourceFeatures(Double viewRef, final String sourceId, final ReadableArray withFilter, final ReadableArray withSourceLayerIDs, final Promise promise) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(withFilter, "withFilter");
        Intrinsics.checkNotNullParameter(withSourceLayerIDs, "withSourceLayerIDs");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withMapViewOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return NativeMapViewModule.querySourceFeatures$lambda$15(withSourceLayerIDs, sourceId, withFilter, this, promise, (RNMBXMapView) obj);
            }
        });
    }

    public static final Unit querySourceFeatures$lambda$15(ReadableArray readableArray, String str, ReadableArray readableArray2, NativeMapViewModule nativeMapViewModule, Promise promise, RNMBXMapView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        List<String> stringList = ConvertUtils.INSTANCE.toStringList(readableArray);
        Expression expressionFrom = ExpressionParser.from(readableArray2);
        if (stringList.size() == 0) {
            stringList = null;
        }
        it.querySourceFeatures(str, expressionFrom, stringList, nativeMapViewModule.createCommandResponse(promise));
        return Unit.INSTANCE;
    }
}
