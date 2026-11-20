package com.mapbox.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.startup.Initializer;
import ch.qos.logback.core.CoreConstants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\u000e0\rH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/mapbox/common/MapboxSDKCommonInitializerImpl;", "Landroidx/startup/Initializer;", "Lcom/mapbox/common/MapboxSDKCommon;", "()V", "lifecycleService", "Lcom/mapbox/common/LifecycleService;", "lifecycleServiceConnection", "com/mapbox/common/MapboxSDKCommonInitializerImpl$lifecycleServiceConnection$1", "Lcom/mapbox/common/MapboxSDKCommonInitializerImpl$lifecycleServiceConnection$1;", "create", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "dependencies", "", "Ljava/lang/Class;", "initTileStoreServiceIfAvailable", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapboxSDKCommonInitializerImpl implements Initializer<MapboxSDKCommon> {
    private LifecycleService lifecycleService;
    private final MapboxSDKCommonInitializerImpl$lifecycleServiceConnection$1 lifecycleServiceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            if (service instanceof LifecycleService.Binder) {
                this.this$0.lifecycleService = ((LifecycleService.Binder) service).getThis$0();
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            this.this$0.lifecycleService = null;
        }
    };

    @Override
    public MapboxSDKCommon create(Context context) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(context, "context");
        initTileStoreServiceIfAvailable(context);
        context.bindService(new Intent(context, (Class<?>) LifecycleService.class), this.lifecycleServiceConnection, 1);
        return MapboxSDKCommon.INSTANCE;
    }

    private final void initTileStoreServiceIfAvailable(Context context) throws IllegalAccessException, InvocationTargetException {
        Class<?> cls;
        Method declaredMethod;
        try {
            cls = Class.forName("com.mapbox.common.tilestore.TileStoreServiceInitializer");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null || (declaredMethod = cls.getDeclaredMethod("init", Context.class)) == null) {
            return;
        }
        declaredMethod.invoke(null, context);
    }

    @Override
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.listOf(CoreInitializer.class);
    }
}
