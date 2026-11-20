package com.rnmapbox.rnmbx.components.camera;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.rnmapbox.rnmbx.NativeRNMBXViewportModuleSpec;
import com.rnmapbox.rnmbx.components.mapview.CommandResponse;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000  2\u00020\u0001:\u0001 B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J9\u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000b0\u0012H\u0002¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010H\u0002J%\u0010\u0018\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u0019J7\u0010\u001a\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u001eJ%\u0010\u001f\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0006\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006!"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/RNMBXViewportModule;", "Lcom/rnmapbox/rnmbx/NativeRNMBXViewportModuleSpec;", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "withViewportOnUIThread", "", "viewRef", "", "Lcom/rnmapbox/rnmbx/utils/ViewRefTag;", "reject", "Lcom/facebook/react/bridge/Promise;", "fn", "Lkotlin/Function1;", "Lcom/rnmapbox/rnmbx/components/camera/RNMBXViewport;", "(Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V", "createCommandResponse", "Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;", BaseJavaModule.METHOD_TYPE_PROMISE, "getState", "(Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;)V", "transitionTo", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/facebook/react/bridge/ReadableMap;", "transition", "(Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V", "idle", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXViewportModule extends NativeRNMBXViewportModuleSpec {
    public static final String NAME = "RNMBXViewportModule";
    private final ViewTagResolver viewTagResolver;

    public RNMBXViewportModule(ReactApplicationContext context, ViewTagResolver viewTagResolver) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        this.viewTagResolver = viewTagResolver;
    }

    public final ViewTagResolver getViewTagResolver() {
        return this.viewTagResolver;
    }

    private final void withViewportOnUIThread(Double viewRef, Promise reject, Function1<? super RNMBXViewport, Unit> fn) {
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
    public void getState(Double viewRef, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withViewportOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXViewportModule.getState$lambda$0(promise, (RNMBXViewport) obj);
            }
        });
    }

    public static final Unit getState$lambda$0(Promise promise, RNMBXViewport it) {
        Intrinsics.checkNotNullParameter(it, "it");
        promise.resolve(it.getState());
        return Unit.INSTANCE;
    }

    @Override
    public void transitionTo(Double viewRef, final ReadableMap state, final ReadableMap transition, final Promise promise) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(promise, "promise");
        withViewportOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXViewportModule.transitionTo$lambda$1(state, transition, promise, (RNMBXViewport) obj);
            }
        });
    }

    public static final Unit transitionTo$lambda$1(ReadableMap readableMap, ReadableMap readableMap2, Promise promise, RNMBXViewport it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.transitionTo(readableMap, readableMap2, promise);
        return Unit.INSTANCE;
    }

    @Override
    public void idle(Double viewRef, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        withViewportOnUIThread(viewRef, promise, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXViewportModule.idle$lambda$2(promise, (RNMBXViewport) obj);
            }
        });
    }

    public static final Unit idle$lambda$2(Promise promise, RNMBXViewport it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.idle();
        promise.resolve(true);
        return Unit.INSTANCE;
    }
}
