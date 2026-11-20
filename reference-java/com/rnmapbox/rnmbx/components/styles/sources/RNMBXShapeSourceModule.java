package com.rnmapbox.rnmbx.components.styles.sources;

import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;
import com.rnmapbox.rnmbx.NativeRNMBXShapeSourceModuleSpec;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = "RNMBXShapeSourceModule")
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\b\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J9\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0\u0010H\u0002¢\u0006\u0002\u0010\u0012J-\u0010\u0013\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000eH\u0017¢\u0006\u0002\u0010\u0017J=\u0010\u0018\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000eH\u0017¢\u0006\u0002\u0010\u001bJ-\u0010\u001c\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000eH\u0017¢\u0006\u0002\u0010\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXShapeSourceModule;", "Lcom/rnmapbox/rnmbx/NativeRNMBXShapeSourceModuleSpec;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "withShapeSourceOnUIThread", "", "viewRef", "", "Lcom/rnmapbox/rnmbx/utils/ViewRefTag;", "reject", "Lcom/facebook/react/bridge/Promise;", "fn", "Lkotlin/Function1;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXShapeSource;", "(Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V", "getClusterExpansionZoom", "featureJSON", "", BaseJavaModule.METHOD_TYPE_PROMISE, "(Ljava/lang/Double;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V", "getClusterLeaves", "number", "offset", "(Ljava/lang/Double;Ljava/lang/String;DDLcom/facebook/react/bridge/Promise;)V", "getClusterChildren", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXShapeSourceModule extends NativeRNMBXShapeSourceModuleSpec {
    public static final String NAME = "RNMBXShapeSourceModule";
    private final ViewTagResolver viewTagResolver;

    public RNMBXShapeSourceModule(ReactApplicationContext reactApplicationContext, ViewTagResolver viewTagResolver) {
        super(reactApplicationContext);
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        this.viewTagResolver = viewTagResolver;
    }

    private final void withShapeSourceOnUIThread(Double viewRef, Promise reject, Function1<? super RNMBXShapeSource, Unit> fn) {
        if (viewRef == null) {
            reject.reject(new Exception("viewRef is null for RNMBXShapeSource"));
        } else {
            this.viewTagResolver.withViewResolved((int) viewRef.doubleValue(), reject, fn);
        }
    }

    @Override
    @ReactMethod
    public void getClusterExpansionZoom(Double viewRef, final String featureJSON, final Promise promise) {
        Intrinsics.checkNotNullParameter(featureJSON, "featureJSON");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withShapeSourceOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXShapeSourceModule.getClusterExpansionZoom$lambda$0(featureJSON, promise, (RNMBXShapeSource) obj);
            }
        });
    }

    public static final Unit getClusterExpansionZoom$lambda$0(String str, Promise promise, RNMBXShapeSource it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.getClusterExpansionZoom(str, promise);
        return Unit.INSTANCE;
    }

    @Override
    @ReactMethod
    public void getClusterLeaves(Double viewRef, final String featureJSON, final double number, final double offset, final Promise promise) {
        Intrinsics.checkNotNullParameter(featureJSON, "featureJSON");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withShapeSourceOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXShapeSourceModule.getClusterLeaves$lambda$1(featureJSON, number, offset, promise, (RNMBXShapeSource) obj);
            }
        });
    }

    public static final Unit getClusterLeaves$lambda$1(String str, double d, double d2, Promise promise, RNMBXShapeSource it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.getClusterLeaves(str, (int) d, (int) d2, promise);
        return Unit.INSTANCE;
    }

    @Override
    @ReactMethod
    public void getClusterChildren(Double viewRef, final String featureJSON, final Promise promise) {
        Intrinsics.checkNotNullParameter(featureJSON, "featureJSON");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withShapeSourceOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXShapeSourceModule.getClusterChildren$lambda$2(featureJSON, promise, (RNMBXShapeSource) obj);
            }
        });
    }

    public static final Unit getClusterChildren$lambda$2(String str, Promise promise, RNMBXShapeSource it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.getClusterChildren(str, promise);
        return Unit.INSTANCE;
    }
}
