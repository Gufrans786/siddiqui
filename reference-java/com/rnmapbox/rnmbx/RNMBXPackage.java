package com.rnmapbox.rnmbx;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.TurboReactPackage;
import com.facebook.react.bridge.JavaScriptModule;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.module.model.ReactModuleInfo;
import com.facebook.react.module.model.ReactModuleInfoProvider;
import com.facebook.react.uimanager.ViewManager;
import com.rnmapbox.rnmbx.components.annotation.RNMBXCalloutManager;
import com.rnmapbox.rnmbx.components.annotation.RNMBXMarkerViewContentManager;
import com.rnmapbox.rnmbx.components.annotation.RNMBXMarkerViewManager;
import com.rnmapbox.rnmbx.components.annotation.RNMBXPointAnnotationManager;
import com.rnmapbox.rnmbx.components.annotation.RNMBXPointAnnotationModule;
import com.rnmapbox.rnmbx.components.camera.RNMBXCameraManager;
import com.rnmapbox.rnmbx.components.camera.RNMBXCameraModule;
import com.rnmapbox.rnmbx.components.camera.RNMBXViewportManager;
import com.rnmapbox.rnmbx.components.camera.RNMBXViewportModule;
import com.rnmapbox.rnmbx.components.images.RNMBXImageManager;
import com.rnmapbox.rnmbx.components.images.RNMBXImageModule;
import com.rnmapbox.rnmbx.components.images.RNMBXImagesManager;
import com.rnmapbox.rnmbx.components.location.RNMBXCustomLocationProviderManager;
import com.rnmapbox.rnmbx.components.location.RNMBXNativeUserLocationManager;
import com.rnmapbox.rnmbx.components.mapview.NativeMapViewModule;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapViewManager;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleImportManager;
import com.rnmapbox.rnmbx.components.styles.atmosphere.RNMBXAtmosphereManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXBackgroundLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXCircleLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXFillExtrusionLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXFillLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXHeatmapLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXLineLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXModelLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXRasterLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXRasterParticleLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXSkyLayerManager;
import com.rnmapbox.rnmbx.components.styles.layers.RNMBXSymbolLayerManager;
import com.rnmapbox.rnmbx.components.styles.light.RNMBXLightManager;
import com.rnmapbox.rnmbx.components.styles.model.RNMBXModelsManager;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXImageSourceManager;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXRasterArraySourceManager;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXRasterDemSourceManager;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXRasterSourceManager;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXShapeSourceManager;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXShapeSourceModule;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXVectorSourceManager;
import com.rnmapbox.rnmbx.components.styles.terrain.RNMBXTerrainManager;
import com.rnmapbox.rnmbx.events.RNMBXCameraGestureObserverManager;
import com.rnmapbox.rnmbx.modules.RNMBXLocationModule;
import com.rnmapbox.rnmbx.modules.RNMBXLogging;
import com.rnmapbox.rnmbx.modules.RNMBXModule;
import com.rnmapbox.rnmbx.modules.RNMBXOfflineModule;
import com.rnmapbox.rnmbx.modules.RNMBXOfflineModuleLegacy;
import com.rnmapbox.rnmbx.modules.RNMBXSnapshotModule;
import com.rnmapbox.rnmbx.modules.RNMBXTileStoreModule;
import com.rnmapbox.rnmbx.shapeAnimators.RNMBXChangeLineOffsetsShapeAnimatorModule;
import com.rnmapbox.rnmbx.shapeAnimators.RNMBXMovePointShapeAnimatorModule;
import com.rnmapbox.rnmbx.shapeAnimators.ShapeAnimatorManager;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u0014\u001a\u00020\u0015J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J\u0018\u0010\u001a\u001a\u0012\u0012\u000e\u0012\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001d0\u001c0\u001bH\u0007J\u001e\u0010\u001e\u001a\u0010\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u001f0\u001b2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J\b\u0010 \u001a\u00020!H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\""}, d2 = {"Lcom/rnmapbox/rnmbx/RNMBXPackage;", "Lcom/facebook/react/TurboReactPackage;", "<init>", "()V", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "setViewTagResolver", "(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/bridge/ReactApplicationContext;", "module", "", "shapeAnimators", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;", "getShapeAnimators", "()Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;", "setShapeAnimators", "(Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;)V", "resetViewTagResolver", "", "getModule", "Lcom/facebook/react/bridge/NativeModule;", "s", "reactApplicationContext", "createJSModules", "", "Ljava/lang/Class;", "Lcom/facebook/react/bridge/JavaScriptModule;", "createViewManagers", "Lcom/facebook/react/uimanager/ViewManager;", "getReactModuleInfoProvider", "Lcom/facebook/react/module/model/ReactModuleInfoProvider;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXPackage extends TurboReactPackage {
    private ShapeAnimatorManager shapeAnimators;
    private ViewTagResolver viewTagResolver;

    public final ViewTagResolver getViewTagResolver() {
        return this.viewTagResolver;
    }

    public final void setViewTagResolver(ViewTagResolver viewTagResolver) {
        this.viewTagResolver = viewTagResolver;
    }

    public final ViewTagResolver getViewTagResolver(ReactApplicationContext context, String module) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(module, "module");
        ViewTagResolver viewTagResolver = this.viewTagResolver;
        if (viewTagResolver != null) {
            return viewTagResolver;
        }
        ViewTagResolver viewTagResolver2 = new ViewTagResolver(context);
        this.viewTagResolver = viewTagResolver2;
        return viewTagResolver2;
    }

    public final ShapeAnimatorManager getShapeAnimators() {
        return this.shapeAnimators;
    }

    public final void setShapeAnimators(ShapeAnimatorManager shapeAnimatorManager) {
        this.shapeAnimators = shapeAnimatorManager;
    }

    public final ShapeAnimatorManager getShapeAnimators(String module) {
        Intrinsics.checkNotNullParameter(module, "module");
        ShapeAnimatorManager shapeAnimatorManager = this.shapeAnimators;
        if (shapeAnimatorManager != null) {
            return shapeAnimatorManager;
        }
        ShapeAnimatorManager shapeAnimatorManager2 = new ShapeAnimatorManager();
        this.shapeAnimators = shapeAnimatorManager2;
        return shapeAnimatorManager2;
    }

    public final void resetViewTagResolver() {
        this.viewTagResolver = null;
    }

    @Override
    public NativeModule getModule(String s, ReactApplicationContext reactApplicationContext) {
        Intrinsics.checkNotNullParameter(s, "s");
        Intrinsics.checkNotNullParameter(reactApplicationContext, "reactApplicationContext");
        switch (s.hashCode()) {
            case -1901408384:
                if (s.equals("RNMBXImageModule")) {
                    return new RNMBXImageModule(reactApplicationContext, getViewTagResolver(reactApplicationContext, s));
                }
                return null;
            case -1750082248:
                if (s.equals("RNMBXCameraModule")) {
                    return new RNMBXCameraModule(reactApplicationContext, getViewTagResolver(reactApplicationContext, s));
                }
                return null;
            case -1252531272:
                if (s.equals(RNMBXLogging.REACT_CLASS)) {
                    return new RNMBXLogging(reactApplicationContext);
                }
                return null;
            case -1145220932:
                if (s.equals("RNMBXMovePointShapeAnimatorModule")) {
                    return new RNMBXMovePointShapeAnimatorModule(reactApplicationContext, getShapeAnimators(s));
                }
                return null;
            case -1061070840:
                if (s.equals("RNMBXLocationModule")) {
                    return new RNMBXLocationModule(reactApplicationContext);
                }
                return null;
            case -650272572:
                if (s.equals("RNMBXPointAnnotationModule")) {
                    return new RNMBXPointAnnotationModule(reactApplicationContext, getViewTagResolver(reactApplicationContext, s));
                }
                return null;
            case -303762177:
                if (s.equals("RNMBXChangeLineOffsetsShapeAnimatorModule")) {
                    return new RNMBXChangeLineOffsetsShapeAnimatorModule(reactApplicationContext, getShapeAnimators(s));
                }
                return null;
            case -186550215:
                if (s.equals("RNMBXViewportModule")) {
                    return new RNMBXViewportModule(reactApplicationContext, getViewTagResolver(reactApplicationContext, s));
                }
                return null;
            case -79975034:
                if (s.equals("RNMBXMapViewModule")) {
                    return new NativeMapViewModule(reactApplicationContext, getViewTagResolver(reactApplicationContext, s));
                }
                return null;
            case 97110648:
                if (s.equals("RNMBXTileStoreModule")) {
                    return new RNMBXTileStoreModule(reactApplicationContext);
                }
                return null;
            case 178455985:
                if (s.equals(RNMBXOfflineModuleLegacy.REACT_CLASS)) {
                    return new RNMBXOfflineModuleLegacy(reactApplicationContext);
                }
                return null;
            case 450173896:
                if (s.equals("RNMBXOfflineModule")) {
                    return new RNMBXOfflineModule(reactApplicationContext);
                }
                return null;
            case 957980403:
                if (s.equals("RNMBXModule")) {
                    return new RNMBXModule(reactApplicationContext);
                }
                return null;
            case 1086960065:
                if (s.equals("RNMBXShapeSourceModule")) {
                    return new RNMBXShapeSourceModule(reactApplicationContext, getViewTagResolver(reactApplicationContext, s));
                }
                return null;
            case 1579779799:
                if (s.equals(RNMBXSnapshotModule.REACT_CLASS)) {
                    return new RNMBXSnapshotModule(reactApplicationContext);
                }
                return null;
            default:
                return null;
        }
    }

    @Deprecated(message = "")
    public final List<Class<? extends JavaScriptModule>> createJSModules() {
        return CollectionsKt.emptyList();
    }

    @Override
    public List<ViewManager<?, ?>> createViewManagers(ReactApplicationContext reactApplicationContext) {
        Intrinsics.checkNotNullParameter(reactApplicationContext, "reactApplicationContext");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new RNMBXCameraManager(reactApplicationContext, getViewTagResolver(reactApplicationContext, "RNMBXCameraManager")));
        arrayList.add(new RNMBXViewportManager(reactApplicationContext, getViewTagResolver(reactApplicationContext, "RNMBXViewportManager")));
        arrayList.add(new RNMBXMapViewManager(reactApplicationContext, getViewTagResolver(reactApplicationContext, RNMBXMapViewManager.LOG_TAG)));
        arrayList.add(new RNMBXStyleImportManager(reactApplicationContext));
        arrayList.add(new RNMBXModelsManager(reactApplicationContext));
        arrayList.add(new RNMBXCameraGestureObserverManager(reactApplicationContext));
        arrayList.add(new RNMBXMarkerViewManager(reactApplicationContext));
        arrayList.add(new RNMBXMarkerViewContentManager(reactApplicationContext));
        arrayList.add(new RNMBXPointAnnotationManager(reactApplicationContext, getViewTagResolver(reactApplicationContext, "RNMBXPointAnnotationManager")));
        arrayList.add(new RNMBXCalloutManager());
        arrayList.add(new RNMBXNativeUserLocationManager());
        arrayList.add(new RNMBXCustomLocationProviderManager());
        arrayList.add(new RNMBXVectorSourceManager(reactApplicationContext));
        arrayList.add(new RNMBXShapeSourceManager(reactApplicationContext, getViewTagResolver(reactApplicationContext, "RNMBXShapeSourceManager"), getShapeAnimators("RNMBXShapeSourceManager")));
        arrayList.add(new RNMBXRasterDemSourceManager(reactApplicationContext));
        arrayList.add(new RNMBXRasterSourceManager(reactApplicationContext));
        arrayList.add(new RNMBXRasterArraySourceManager(reactApplicationContext));
        arrayList.add(new RNMBXImageSourceManager());
        arrayList.add(new RNMBXImagesManager(reactApplicationContext));
        arrayList.add(new RNMBXImageManager(reactApplicationContext, getViewTagResolver(reactApplicationContext, "RNMBXImageManager")));
        arrayList.add(new RNMBXFillLayerManager());
        arrayList.add(new RNMBXFillExtrusionLayerManager());
        arrayList.add(new RNMBXHeatmapLayerManager());
        arrayList.add(new RNMBXLineLayerManager());
        arrayList.add(new RNMBXCircleLayerManager());
        arrayList.add(new RNMBXSymbolLayerManager());
        arrayList.add(new RNMBXRasterLayerManager());
        arrayList.add(new RNMBXRasterParticleLayerManager());
        arrayList.add(new RNMBXSkyLayerManager());
        arrayList.add(new RNMBXTerrainManager());
        arrayList.add(new RNMBXAtmosphereManager());
        arrayList.add(new RNMBXBackgroundLayerManager());
        arrayList.add(new RNMBXLightManager());
        arrayList.add(new RNMBXModelLayerManager());
        return arrayList;
    }

    @Override
    public ReactModuleInfoProvider getReactModuleInfoProvider() {
        resetViewTagResolver();
        return new ReactModuleInfoProvider() {
            @Override
            public final Map getReactModuleInfos() {
                return RNMBXPackage.getReactModuleInfoProvider$lambda$0();
            }
        };
    }

    public static final Map getReactModuleInfoProvider$lambda$0() {
        HashMap map = new HashMap();
        map.put("RNMBXModule", new ReactModuleInfo("RNMBXModule", "RNMBXModule", false, false, true, false, false));
        map.put("RNMBXLocationModule", new ReactModuleInfo("RNMBXLocationModule", "RNMBXLocationModule", false, false, true, false, true));
        map.put("RNMBXOfflineModule", new ReactModuleInfo("RNMBXOfflineModule", "RNMBXOfflineModule", false, false, true, false, false));
        map.put("RNMBXTileStoreModule", new ReactModuleInfo("RNMBXTileStoreModule", "RNMBXTileStoreModule", false, false, true, false, false));
        map.put(RNMBXOfflineModuleLegacy.REACT_CLASS, new ReactModuleInfo(RNMBXOfflineModuleLegacy.REACT_CLASS, RNMBXOfflineModuleLegacy.REACT_CLASS, false, false, true, false, false));
        map.put(RNMBXSnapshotModule.REACT_CLASS, new ReactModuleInfo(RNMBXSnapshotModule.REACT_CLASS, RNMBXSnapshotModule.REACT_CLASS, false, false, true, false, false));
        map.put(RNMBXLogging.REACT_CLASS, new ReactModuleInfo(RNMBXLogging.REACT_CLASS, RNMBXLogging.REACT_CLASS, false, false, true, false, false));
        map.put("RNMBXMapViewModule", new ReactModuleInfo("RNMBXMapViewModule", "RNMBXMapViewModule", false, false, false, false, true));
        map.put("RNMBXViewportModule", new ReactModuleInfo("RNMBXViewportModule", "RNMBXViewportModule", false, false, false, false, true));
        map.put("RNMBXCameraModule", new ReactModuleInfo("RNMBXCameraModule", "RNMBXCameraModule", false, false, false, false, true));
        map.put("RNMBXShapeSourceModule", new ReactModuleInfo("RNMBXShapeSourceModule", "RNMBXShapeSourceModule", false, false, false, false, true));
        map.put("RNMBXImageModule", new ReactModuleInfo("RNMBXImageModule", "RNMBXImageModule", false, false, false, false, true));
        map.put("RNMBXPointAnnotationModule", new ReactModuleInfo("RNMBXPointAnnotationModule", "RNMBXPointAnnotationModule", false, false, false, false, true));
        map.put("RNMBXMovePointShapeAnimatorModule", new ReactModuleInfo("RNMBXMovePointShapeAnimatorModule", "RNMBXMovePointShapeAnimatorModule", false, false, false, false, true));
        map.put("RNMBXChangeLineOffsetsShapeAnimatorModule", new ReactModuleInfo("RNMBXChangeLineOffsetsShapeAnimatorModule", "RNMBXChangeLineOffsetsShapeAnimatorModule", false, false, false, false, true));
        return map;
    }
}
