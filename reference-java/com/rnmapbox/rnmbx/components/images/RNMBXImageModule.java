package com.rnmapbox.rnmbx.components.images;

import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;
import com.rnmapbox.rnmbx.NativeRNMBXImageModuleSpec;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = "RNMBXImageModule")
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J9\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0\u0010H\u0002¢\u0006\u0002\u0010\u0012J%\u0010\u0013\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\u0014\u001a\u00020\u000eH\u0017¢\u0006\u0002\u0010\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/RNMBXImageModule;", "Lcom/rnmapbox/rnmbx/NativeRNMBXImageModuleSpec;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "withImageOnUIThread", "", "viewRef", "", "Lcom/rnmapbox/rnmbx/utils/ViewRefTag;", "reject", "Lcom/facebook/react/bridge/Promise;", "fn", "Lkotlin/Function1;", "Lcom/rnmapbox/rnmbx/components/images/RNMBXImage;", "(Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V", "refresh", BaseJavaModule.METHOD_TYPE_PROMISE, "(Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;)V", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXImageModule extends NativeRNMBXImageModuleSpec {
    public static final String NAME = "RNMBXImageModule";
    private final ViewTagResolver viewTagResolver;

    public RNMBXImageModule(ReactApplicationContext reactApplicationContext, ViewTagResolver viewTagResolver) {
        super(reactApplicationContext);
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        this.viewTagResolver = viewTagResolver;
    }

    private final void withImageOnUIThread(Double viewRef, Promise reject, Function1<? super RNMBXImage, Unit> fn) {
        if (viewRef == null) {
            reject.reject(new Exception("viewRef is null for RNMBXImage"));
        } else {
            this.viewTagResolver.withViewResolved((int) viewRef.doubleValue(), reject, fn);
        }
    }

    @Override
    @ReactMethod
    public void refresh(Double viewRef, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withImageOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXImageModule.refresh$lambda$0(promise, (RNMBXImage) obj);
            }
        });
    }

    public static final Unit refresh$lambda$0(Promise promise, RNMBXImage it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.refresh();
        promise.resolve(null);
        return Unit.INSTANCE;
    }
}
