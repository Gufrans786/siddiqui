package com.horcrux.svg;

import com.facebook.react.BaseReactPackage;
import com.facebook.react.ViewManagerOnDemandReactPackage;
import com.facebook.react.bridge.JavaScriptModule;
import com.facebook.react.bridge.ModuleSpec;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.module.model.ReactModuleInfo;
import com.facebook.react.module.model.ReactModuleInfoProvider;
import com.facebook.react.uimanager.ViewManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nonnull;
import javax.inject.Provider;

public class SvgPackage extends BaseReactPackage implements ViewManagerOnDemandReactPackage {
    private Map<String, ModuleSpec> mViewManagers;

    private Map<String, ModuleSpec> getViewManagersMap(ReactApplicationContext reactApplicationContext) {
        if (this.mViewManagers == null) {
            HashMap mapNewHashMap = MapBuilder.newHashMap();
            mapNewHashMap.put(RenderableViewManager.GroupViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.GroupViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.PathViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.PathViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.CircleViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.CircleViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.EllipseViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.EllipseViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.LineViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.LineViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.RectViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.RectViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.TextViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.TextViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.TSpanViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.TSpanViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.TextPathViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.TextPathViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.ImageViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.ImageViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.ClipPathViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.ClipPathViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.DefsViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.DefsViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.UseViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.UseViewManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.SymbolManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.SymbolManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.LinearGradientManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.LinearGradientManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.RadialGradientManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.RadialGradientManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.PatternManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.PatternManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.MaskManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.MaskManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.FilterManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.FilterManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.FeBlendManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.FeBlendManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.FeColorMatrixManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.FeColorMatrixManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.FeCompositeManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.FeCompositeManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.FeFloodManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.FeFloodManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.FeGaussianBlurManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.FeGaussianBlurManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.FeMergeManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.FeMergeManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.FeOffsetManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.FeOffsetManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.ForeignObjectManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.ForeignObjectManager();
                }
            }));
            mapNewHashMap.put(RenderableViewManager.MarkerManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new RenderableViewManager.MarkerManager();
                }
            }));
            mapNewHashMap.put(SvgViewManager.REACT_CLASS, ModuleSpec.viewManagerSpec(new Provider<NativeModule>() {
                @Override
                public NativeModule get() {
                    return new SvgViewManager();
                }
            }));
            this.mViewManagers = mapNewHashMap;
        }
        return this.mViewManagers;
    }

    @Override
    public List<String> getViewManagerNames(ReactApplicationContext reactApplicationContext) {
        return new ArrayList(getViewManagersMap(reactApplicationContext).keySet());
    }

    @Override
    protected List<ModuleSpec> getViewManagers(ReactApplicationContext reactApplicationContext) {
        return new ArrayList(getViewManagersMap(reactApplicationContext).values());
    }

    @Override
    public ViewManager createViewManager(ReactApplicationContext reactApplicationContext, String str) {
        ModuleSpec moduleSpec = getViewManagersMap(reactApplicationContext).get(str);
        if (moduleSpec != null) {
            return (ViewManager) moduleSpec.getProvider().get();
        }
        return null;
    }

    @Override
    public NativeModule getModule(String str, @Nonnull ReactApplicationContext reactApplicationContext) {
        str.hashCode();
        if (str.equals("RNSVGRenderableModule")) {
            return new RNSVGRenderableManager(reactApplicationContext);
        }
        if (str.equals("RNSVGSvgViewModule")) {
            return new SvgViewModule(reactApplicationContext);
        }
        return null;
    }

    @Override
    public ReactModuleInfoProvider getReactModuleInfoProvider() {
        try {
            return (ReactModuleInfoProvider) Class.forName("com.horcrux.svg.SvgPackage$$ReactModuleInfoProvider").newInstance();
        } catch (ClassNotFoundException unused) {
            return new ReactModuleInfoProvider() {
                @Override
                public Map<String, ReactModuleInfo> getReactModuleInfos() {
                    HashMap map = new HashMap();
                    Class[] clsArr = {SvgViewModule.class, RNSVGRenderableManager.class};
                    for (int i = 0; i < 2; i++) {
                        Class cls = clsArr[i];
                        ReactModule reactModule = (ReactModule) cls.getAnnotation(ReactModule.class);
                        map.put(reactModule.name(), new ReactModuleInfo(reactModule.name(), cls.getName(), reactModule.canOverrideExistingModule(), reactModule.needsEagerInit(), reactModule.isCxxModule(), true));
                    }
                    return map;
                }
            };
        } catch (IllegalAccessException e) {
            e = e;
            throw new RuntimeException("No ReactModuleInfoProvider for MyPackage$$ReactModuleInfoProvider", e);
        } catch (InstantiationException e2) {
            e = e2;
            throw new RuntimeException("No ReactModuleInfoProvider for MyPackage$$ReactModuleInfoProvider", e);
        }
    }

    public List<Class<? extends JavaScriptModule>> createJSModules() {
        return Collections.emptyList();
    }
}
