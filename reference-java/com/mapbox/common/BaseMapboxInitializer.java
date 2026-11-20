package com.mapbox.common;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import androidx.exifinterface.media.ExifInterface;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import ch.qos.logback.core.CoreConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\b&\u0018\u0000 \u0010*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0005J\u0013\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0018\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00030\u00070\u000fR \u0010\u0006\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/mapbox/common/BaseMapboxInitializer;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/startup/Initializer;", "", "()V", "initializerClass", "Ljava/lang/Class;", "getInitializerClass", "()Ljava/lang/Class;", "create", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Landroid/content/Context;)Ljava/lang/Boolean;", "dependencies", "", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class BaseMapboxInitializer<T> implements Initializer<Boolean> {
    private static final long LOCK_WAIT_TIME_MS = 50;
    private static final String TAG = "MapboxInitializer";
    private static Context appContext;

    public static final Companion INSTANCE = new Companion(null);
    private static final HashMap<Class<? extends Initializer<?>>, InitializerData> initializersMap = new HashMap<>();
    private static final ReentrantLock globalLock = new ReentrantLock();

    public static final HashMap<Class<? extends Initializer<?>>, InitializerData> getInitializersMap() {
        return INSTANCE.getInitializersMap();
    }

    @JvmStatic
    public static final <T> void init(Class<? extends Initializer<T>> cls) {
        INSTANCE.init(cls);
    }

    public abstract Class<? extends Initializer<T>> getInitializerClass();

    @Override
    public final Boolean create(Context context) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Unit unit;
        Intrinsics.checkNotNullParameter(context, "context");
        android.util.Log.i(TAG, getClass().getSimpleName() + " create() is called");
        Companion companion = INSTANCE;
        appContext = context.getApplicationContext();
        try {
            companion.init(getInitializerClass(), true);
        } catch (Throwable th) {
            android.util.Log.w(TAG, "Exception occurred when initializing " + getInitializerClass().getSimpleName() + ": " + th.getMessage());
            InitializerData initializerData = initializersMap.get(getInitializerClass());
            if (initializerData != null) {
                INSTANCE.updateState(getInitializerClass(), initializerData, InitializerState.FAILURE);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                throw th;
            }
        }
        return true;
    }

    @Override
    public final List<Class<? extends Initializer<?>>> dependencies() {
        return new ArrayList();
    }

    @Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u000e0\r2\u0018\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u000e0\r0\u0018H\u0002J\n\u0010\u0019\u001a\u0004\u0018\u00010\bH\u0003J(\u0010\u001a\u001a\u00020\u0015\"\b\b\u0001\u0010\u001b*\u00020\u00012\u0014\u0010\u001c\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u001b0\u000e0\rH\u0007J0\u0010\u001a\u001a\u00020\u0015\"\b\b\u0001\u0010\u001b*\u00020\u00012\u0014\u0010\u001c\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u001b0\u000e0\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J'\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\u000f2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00150#H\u0082\bJ,\u0010$\u001a\u00020\u00152\u0012\u0010\u001c\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u000e0\r2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020&H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000RP\u0010\u000b\u001a6\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u000e0\r\u0012\u0004\u0012\u00020\u000f0\fj\u001a\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u000e0\r\u0012\u0004\u0012\u00020\u000f`\u00108\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u0012\u0010\u0013¨\u0006'"}, d2 = {"Lcom/mapbox/common/BaseMapboxInitializer$Companion;", "", "()V", "LOCK_WAIT_TIME_MS", "", "TAG", "", "appContext", "Landroid/content/Context;", "globalLock", "Ljava/util/concurrent/locks/ReentrantLock;", "initializersMap", "Ljava/util/HashMap;", "Ljava/lang/Class;", "Landroidx/startup/Initializer;", "Lcom/mapbox/common/InitializerData;", "Lkotlin/collections/HashMap;", "getInitializersMap$annotations", "getInitializersMap", "()Ljava/util/HashMap;", "getAllDependencies", "", "parentInitializerClass", "dependencySet", "", "getApplicationContextFromActivityThread", "init", ExifInterface.GPS_DIRECTION_TRUE, "initializerClass", "calledFromCreate", "", "runCatchingEnhanced", CoreConstants.CONTEXT_SCOPE_VALUE, "initializerData", "function", "Lkotlin/Function0;", "updateState", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/common/InitializerState;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static void getInitializersMap$annotations() {
        }

        private Companion() {
        }

        public final HashMap<Class<? extends Initializer<?>>, InitializerData> getInitializersMap() {
            return BaseMapboxInitializer.initializersMap;
        }

        @JvmStatic
        public final <T> void init(Class<? extends Initializer<T>> initializerClass) {
            Intrinsics.checkNotNullParameter(initializerClass, "initializerClass");
            init(initializerClass, false);
        }

        public final <T> void init(Class<? extends Initializer<T>> initializerClass, boolean calledFromCreate) {
            InitializerData initializerData;
            if (BaseMapboxInitializerKt.skipFurtherInitialization(initializerClass)) {
                if (calledFromCreate) {
                    try {
                        android.util.Log.i(BaseMapboxInitializer.TAG, "Already initialized " + initializerClass.getSimpleName() + " before successfully");
                        return;
                    } catch (Throwable unused) {
                        return;
                    }
                }
                return;
            }
            Context applicationContextFromActivityThread = BaseMapboxInitializer.appContext;
            if (applicationContextFromActivityThread == null) {
                try {
                    android.util.Log.w(BaseMapboxInitializer.TAG, "Trying to call static BaseMapboxInitializer.init() before running BaseMapboxInitializer.create()! Please make sure that Mapbox SDK is initialized before any APIs are called.");
                } catch (Throwable unused2) {
                }
                applicationContextFromActivityThread = getApplicationContextFromActivityThread();
                if (applicationContextFromActivityThread == null) {
                    return;
                }
            }
            while (!BaseMapboxInitializer.globalLock.tryLock(50L, TimeUnit.MILLISECONDS)) {
                if (BaseMapboxInitializerKt.skipFurtherInitialization(initializerClass)) {
                    return;
                }
            }
            try {
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = (T) getInitializersMap().get(initializerClass);
                if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                    InitializerData initializerData2 = (InitializerData) objectRef.element;
                    if ((initializerData2 != null ? initializerData2.getState() : null) != InitializerState.IN_PROGRESS) {
                        android.util.Log.w(BaseMapboxInitializer.TAG, "Init for " + initializerClass.getSimpleName() + " is happening from non-main thread!");
                    }
                }
                try {
                    if (objectRef.element != null) {
                        if (!BaseMapboxInitializerKt.skipFurtherInitialization(initializerClass)) {
                        }
                        BaseMapboxInitializer.globalLock.unlock();
                        return;
                    } else {
                        objectRef.element = (T) new InitializerData(0L, null, 0, 7, null);
                        getInitializersMap().put(initializerClass, objectRef.element);
                    }
                    BaseMapboxInitializer.INSTANCE.updateState(initializerClass, (InitializerData) objectRef.element, InitializerState.IN_PROGRESS);
                    AppInitializer.getInstance(applicationContextFromActivityThread).initializeComponent(initializerClass);
                    android.util.Log.i(BaseMapboxInitializer.TAG, "Initialized " + initializerClass.getSimpleName() + " successfully");
                    getInitializersMap().put(initializerClass, InitializerData.copy$default((InitializerData) objectRef.element, 0L, InitializerState.SUCCESS, 0, 5, null));
                    BaseMapboxInitializer.globalLock.unlock();
                    return;
                } catch (Throwable th) {
                    throw new MapboxInitializerException(initializerData, applicationContextFromActivityThread, th);
                }
                objectRef.element = (T) InitializerData.copy$default((InitializerData) objectRef.element, 0L, null, ((InitializerData) objectRef.element).getCurrentInitAttempt() + 1, 3, null);
                getInitializersMap().put(initializerClass, objectRef.element);
                android.util.Log.i(BaseMapboxInitializer.TAG, "MapboxInitializer started " + initializerClass.getSimpleName() + " initialization, attempt " + ((InitializerData) objectRef.element).getCurrentInitAttempt());
                initializerData = (InitializerData) objectRef.element;
            } catch (Throwable th2) {
                BaseMapboxInitializer.globalLock.unlock();
                throw th2;
            }
        }

        public final void updateState(Class<? extends Initializer<?>> initializerClass, InitializerData initializerData, InitializerState state) throws IllegalAccessException, InstantiationException, InvocationTargetException {
            InitializerState initializerState;
            Unit unit;
            LinkedHashSet<Class<? extends Initializer<?>>> linkedHashSet = new LinkedHashSet();
            getAllDependencies(initializerClass, linkedHashSet);
            for (Class<? extends Initializer<?>> cls : linkedHashSet) {
                InitializerData dependencyInitializerData = BaseMapboxInitializer.INSTANCE.getInitializersMap().get(cls);
                if (dependencyInitializerData != null) {
                    if (dependencyInitializerData.getState() != InitializerState.SUCCESS) {
                        HashMap<Class<? extends Initializer<?>>, InitializerData> initializersMap = BaseMapboxInitializer.INSTANCE.getInitializersMap();
                        Intrinsics.checkNotNullExpressionValue(dependencyInitializerData, "dependencyInitializerData");
                        initializerState = state;
                        initializersMap.put(cls, InitializerData.copy$default(dependencyInitializerData, 0L, initializerState, 0, 5, null));
                    } else {
                        initializerState = state;
                    }
                    unit = Unit.INSTANCE;
                } else {
                    initializerState = state;
                    unit = null;
                }
                if (unit == null) {
                    BaseMapboxInitializer.INSTANCE.getInitializersMap().put(cls, new InitializerData(initializerData.getFirstInitElapsedTimeMs(), initializerState, initializerData.getCurrentInitAttempt()));
                }
                state = initializerState;
            }
            getInitializersMap().put(initializerClass, InitializerData.copy$default(initializerData, 0L, state, 0, 5, null));
        }

        private final void getAllDependencies(Class<? extends Initializer<?>> parentInitializerClass, Set<Class<? extends Initializer<?>>> dependencySet) throws IllegalAccessException, InstantiationException, InvocationTargetException {
            Initializer<?> initializerNewInstance = parentInitializerClass.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            Intrinsics.checkNotNullExpressionValue(initializerNewInstance, "parentInitializerClass.g…nstructor().newInstance()");
            Initializer<?> initializer = initializerNewInstance;
            if (initializer.dependencies().isEmpty()) {
                return;
            }
            List<Class<? extends Initializer<?>>> listDependencies = initializer.dependencies();
            Intrinsics.checkNotNullExpressionValue(listDependencies, "instance.dependencies()");
            for (Class<? extends Initializer<?>> childInitializerClass : listDependencies) {
                Intrinsics.checkNotNullExpressionValue(childInitializerClass, "childInitializerClass");
                dependencySet.add(childInitializerClass);
                BaseMapboxInitializer.INSTANCE.getAllDependencies(childInitializerClass, dependencySet);
            }
        }

        private final void runCatchingEnhanced(Context context, InitializerData initializerData, Function0<Unit> function) throws MapboxInitializerException {
            try {
                function.invoke();
            } catch (Throwable th) {
                throw new MapboxInitializerException(initializerData, context, th);
            }
        }

        private final Context getApplicationContextFromActivityThread() {
            if (Intrinsics.areEqual("robolectric", Build.FINGERPRINT)) {
                return null;
            }
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                Object objInvoke = cls.getMethod("getApplication", new Class[0]).invoke(cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
                Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type android.content.Context");
                return (Context) objInvoke;
            } catch (Throwable th) {
                try {
                    android.util.Log.w(BaseMapboxInitializer.TAG, "Unable to get application context from ActivityThread", th);
                } catch (Throwable unused) {
                }
                return null;
            }
        }
    }
}
