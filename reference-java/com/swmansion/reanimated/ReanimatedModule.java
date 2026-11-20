package com.swmansion.reanimated;

import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;
import com.swmansion.worklets.WorkletsModule;

@ReactModule(name = NativeReanimatedModuleSpec.NAME)
public class ReanimatedModule extends NativeReanimatedModuleSpec implements LifecycleEventListener {
    private final NodesManager mNodesManager;
    private final WorkletsModule mWorkletsModule;

    @ReactMethod
    public void addListener(String str) {
    }

    @Override
    public void onHostDestroy() {
    }

    @ReactMethod
    public void removeListeners(Integer num) {
    }

    public ReanimatedModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        reactApplicationContext.assertOnJSQueueThread();
        WorkletsModule workletsModule = (WorkletsModule) reactApplicationContext.getNativeModule(WorkletsModule.class);
        this.mWorkletsModule = workletsModule;
        this.mNodesManager = new NodesManager(reactApplicationContext, workletsModule);
    }

    @Override
    public void initialize() {
        ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        reactApplicationContext.assertOnJSQueueThread();
        reactApplicationContext.addLifecycleEventListener(this);
    }

    @Override
    public void onHostPause() {
        this.mNodesManager.onHostPause();
    }

    @Override
    public void onHostResume() {
        this.mNodesManager.onHostResume();
    }

    public NodesManager getNodesManager() {
        return this.mNodesManager;
    }

    @Override
    @ReactMethod(isBlockingSynchronousMethod = true)
    public boolean installTurboModule() {
        getReactApplicationContext().assertOnJSQueueThread();
        this.mNodesManager.getNativeProxy().installJSIBindings();
        return true;
    }

    @Override
    public void invalidate() {
        super.invalidate();
        this.mNodesManager.invalidate();
        getReactApplicationContext().removeLifecycleEventListener(this);
    }
}
