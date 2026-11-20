package com.mapbox.maps.renderer.egl;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.renderer.RendererError;
import com.mapbox.maps.renderer.RendererSetupErrorListener;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0001\u0018\u0000 @2\u00020\u0001:\u0001@B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0015\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\"H\u0000¢\u0006\u0002\b&J\u0017\u0010'\u001a\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\tH\u0002¢\u0006\u0002\u0010)J\u0017\u0010*\u001a\u0004\u0018\u00010\u00052\u0006\u0010+\u001a\u00020\tH\u0002¢\u0006\u0002\u0010)J\r\u0010,\u001a\u00020$H\u0000¢\u0006\u0002\b-J\u0016\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0005J\u000e\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u001bJ\u0006\u00106\u001a\u00020\u0003J\u0010\u00107\u001a\u00020$2\u0006\u00108\u001a\u00020\u0010H\u0002J\u0006\u00109\u001a\u00020\u0003J\u0006\u0010:\u001a\u00020\u0005J\u0006\u0010;\u001a\u00020$J\u000e\u0010<\u001a\u00020$2\u0006\u00105\u001a\u00020\u001bJ\u0015\u0010=\u001a\u00020$2\u0006\u0010%\u001a\u00020\"H\u0000¢\u0006\u0002\b>J\u000e\u0010?\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u001bR\u0014\u0010\u000b\u001a\u00020\tX\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u00020\u001bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lcom/mapbox/maps/renderer/egl/EGLCore;", "", "translucentSurface", "", "antialiasingSampleCount", "", "sharedContext", "Landroid/opengl/EGLContext;", "mapName", "", "(ZILandroid/opengl/EGLContext;Ljava/lang/String;)V", "TAG", "getTAG$annotations", "()V", "accumulatedRendererErrorList", "Ljava/util/LinkedList;", "Lcom/mapbox/maps/renderer/RendererError;", "eglConfig", "Landroid/opengl/EGLConfig;", "eglContext", "getEglContext$maps_sdk_release", "()Landroid/opengl/EGLContext;", "setEglContext$maps_sdk_release", "(Landroid/opengl/EGLContext;)V", "eglDisplay", "Landroid/opengl/EGLDisplay;", "eglNoSurface", "Landroid/opengl/EGLSurface;", "getEglNoSurface$maps_sdk_release", "()Landroid/opengl/EGLSurface;", "mainHandler", "Landroid/os/Handler;", "rendererSetupErrorListenerSet", "Ljava/util/HashSet;", "Lcom/mapbox/maps/renderer/RendererSetupErrorListener;", "addRendererStateListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addRendererStateListener$maps_sdk_release", "checkEglError", NotificationCompat.CATEGORY_MESSAGE, "(Ljava/lang/String;)Ljava/lang/Integer;", "checkEglErrorAndNotify", "functionName", "clearRendererStateListeners", "clearRendererStateListeners$maps_sdk_release", "createOffscreenSurface", "width", "height", "createWindowSurface", "surface", "Landroid/view/Surface;", "makeCurrent", "eglSurface", "makeNothingCurrent", "notifyListeners", "error", "prepareEgl", "queryContextVersion", "release", "releaseSurface", "removeRendererStateListener", "removeRendererStateListener$maps_sdk_release", "swapBuffers", "Companion", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class EGLCore {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final int[] attribsEgl3 = {12440, 3, 12344};
    private final String TAG;
    private final LinkedList<RendererError> accumulatedRendererErrorList;
    private final int antialiasingSampleCount;
    private EGLConfig eglConfig;
    private EGLContext eglContext;
    private EGLDisplay eglDisplay;
    private final EGLSurface eglNoSurface;
    private final Handler mainHandler;
    private final String mapName;
    private final HashSet<RendererSetupErrorListener> rendererSetupErrorListenerSet;
    private final EGLContext sharedContext;
    private final boolean translucentSurface;

    private static void getTAG$annotations() {
    }

    public EGLCore(boolean z, int i, EGLContext sharedContext, String mapName) {
        Intrinsics.checkNotNullParameter(sharedContext, "sharedContext");
        Intrinsics.checkNotNullParameter(mapName, "mapName");
        this.translucentSurface = z;
        this.antialiasingSampleCount = i;
        this.sharedContext = sharedContext;
        this.mapName = mapName;
        EGLDisplay EGL_NO_DISPLAY = EGL14.EGL_NO_DISPLAY;
        Intrinsics.checkNotNullExpressionValue(EGL_NO_DISPLAY, "EGL_NO_DISPLAY");
        this.eglDisplay = EGL_NO_DISPLAY;
        EGLContext EGL_NO_CONTEXT = EGL14.EGL_NO_CONTEXT;
        Intrinsics.checkNotNullExpressionValue(EGL_NO_CONTEXT, "EGL_NO_CONTEXT");
        this.eglContext = EGL_NO_CONTEXT;
        EGLSurface EGL_NO_SURFACE = EGL14.EGL_NO_SURFACE;
        Intrinsics.checkNotNullExpressionValue(EGL_NO_SURFACE, "EGL_NO_SURFACE");
        this.eglNoSurface = EGL_NO_SURFACE;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.accumulatedRendererErrorList = new LinkedList<>();
        this.rendererSetupErrorListenerSet = new HashSet<>();
        this.TAG = "Mbgl-EglCore" + (!StringsKt.isBlank(mapName) ? "\\" + mapName : "");
    }

    public EGLCore(boolean z, int i, EGLContext EGL_NO_CONTEXT, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 4) != 0) {
            EGL_NO_CONTEXT = EGL14.EGL_NO_CONTEXT;
            Intrinsics.checkNotNullExpressionValue(EGL_NO_CONTEXT, "EGL_NO_CONTEXT");
        }
        this(z, i, EGL_NO_CONTEXT, str);
    }

    public final EGLContext getEglContext() {
        return this.eglContext;
    }

    public final void setEglContext$maps_sdk_release(EGLContext eGLContext) {
        Intrinsics.checkNotNullParameter(eGLContext, "<set-?>");
        this.eglContext = eGLContext;
    }

    public final EGLSurface getEglNoSurface() {
        return this.eglNoSurface;
    }

    public final boolean prepareEgl() {
        Unit unit;
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        Intrinsics.checkNotNullExpressionValue(eGLDisplayEglGetDisplay, "eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)");
        this.eglDisplay = eGLDisplayEglGetDisplay;
        if (Intrinsics.areEqual(eGLDisplayEglGetDisplay, EGL14.EGL_NO_DISPLAY)) {
            MapboxLogger.logW(this.TAG, "Unable to get default display, eglInitialize will most likely fail shortly.");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(this.eglDisplay, iArr, 0, iArr, 1)) {
            checkEglErrorAndNotify("eglInitialize");
            return false;
        }
        EGLConfig eGLConfigChooseConfig = new EGLConfigChooser(this.translucentSurface, this.antialiasingSampleCount, this.mapName).chooseConfig(this.eglDisplay);
        EGLConfig eGLConfig = null;
        if (eGLConfigChooseConfig != null) {
            this.eglConfig = eGLConfigChooseConfig;
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            notifyListeners(RendererError.NO_VALID_EGL_CONFIG_FOUND);
            return false;
        }
        EGLDisplay eGLDisplay = this.eglDisplay;
        EGLConfig eGLConfig2 = this.eglConfig;
        if (eGLConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eglConfig");
        } else {
            eGLConfig = eGLConfig2;
        }
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, this.sharedContext, attribsEgl3, 0);
        if (checkEglError("eglCreateContext") != null) {
            throw new IllegalStateException("OpenGL ES 3.0 context could not be created");
        }
        Intrinsics.checkNotNullExpressionValue(eGLContextEglCreateContext, "{\n      contextEgl3\n    }");
        this.eglContext = eGLContextEglCreateContext;
        MapboxLogger.logI(this.TAG, "EGLContext created, client version " + queryContextVersion());
        return true;
    }

    public final int queryContextVersion() {
        int[] iArr = new int[1];
        if (!EGL14.eglQueryContext(this.eglDisplay, this.eglContext, 12440, iArr, 0)) {
            checkEglErrorAndNotify("eglQueryContext");
        }
        return iArr[0];
    }

    public final void release() {
        if (!Intrinsics.areEqual(this.eglDisplay, EGL14.EGL_NO_DISPLAY)) {
            makeNothingCurrent();
            EGL14.eglDestroyContext(this.eglDisplay, this.eglContext);
            EGL14.eglTerminate(this.eglDisplay);
        }
        EGLDisplay EGL_NO_DISPLAY = EGL14.EGL_NO_DISPLAY;
        Intrinsics.checkNotNullExpressionValue(EGL_NO_DISPLAY, "EGL_NO_DISPLAY");
        this.eglDisplay = EGL_NO_DISPLAY;
        EGLContext EGL_NO_CONTEXT = EGL14.EGL_NO_CONTEXT;
        Intrinsics.checkNotNullExpressionValue(EGL_NO_CONTEXT, "EGL_NO_CONTEXT");
        this.eglContext = EGL_NO_CONTEXT;
    }

    public final void releaseSurface(EGLSurface eglSurface) {
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
        if (!Intrinsics.areEqual(eglSurface, EGL14.EGL_NO_SURFACE) && !Intrinsics.areEqual(this.eglDisplay, EGL14.EGL_NO_DISPLAY)) {
            EGL14.eglDestroySurface(this.eglDisplay, eglSurface);
            MapboxLogger.logI(this.TAG, "EGL surface was destroyed.");
        } else {
            MapboxLogger.logI(this.TAG, "EGL surface was already destroyed before.");
        }
    }

    public final EGLSurface createWindowSurface(Surface surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        try {
            int[] iArr = {12344};
            EGLDisplay eGLDisplay = this.eglDisplay;
            EGLConfig eGLConfig = this.eglConfig;
            if (eGLConfig == null) {
                Intrinsics.throwUninitializedPropertyAccessException("eglConfig");
                eGLConfig = null;
            }
            EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLDisplay, eGLConfig, surface, iArr, 0);
            if (checkEglErrorAndNotify("eglCreateWindowSurface") == null && eGLSurfaceEglCreateWindowSurface != null) {
                return eGLSurfaceEglCreateWindowSurface;
            }
            return this.eglNoSurface;
        } catch (Exception e) {
            MapboxLogger.logE(this.TAG, "eglCreateWindowSurface has thrown an exception:\n" + e.getLocalizedMessage());
            return this.eglNoSurface;
        }
    }

    public final EGLSurface createOffscreenSurface(int width, int height) {
        int[] iArr = {12375, width, 12374, height, 12344};
        EGLDisplay eGLDisplay = this.eglDisplay;
        EGLConfig eGLConfig = this.eglConfig;
        if (eGLConfig == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eglConfig");
            eGLConfig = null;
        }
        EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, iArr, 0);
        if (checkEglErrorAndNotify("eglCreatePbufferSurface") != null || eGLSurfaceEglCreatePbufferSurface == null) {
            return this.eglNoSurface;
        }
        MapboxLogger.logI(this.TAG, "Created PBuffer, w = " + width + ", h = " + height);
        return eGLSurfaceEglCreatePbufferSurface;
    }

    public final boolean makeNothingCurrent() {
        if (EGL14.eglMakeCurrent(this.eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)) {
            return true;
        }
        checkEglErrorAndNotify("makeNothingCurrent");
        return false;
    }

    public final boolean makeCurrent(EGLSurface eglSurface) {
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
        if (Intrinsics.areEqual(EGL14.eglGetCurrentContext(), this.eglContext)) {
            return true;
        }
        if (Intrinsics.areEqual(this.eglDisplay, EGL14.EGL_NO_DISPLAY)) {
            MapboxLogger.logI(this.TAG, "NOTE: makeCurrent but eglDisplay is EGL_NO_DISPLAY");
        }
        if (EGL14.eglMakeCurrent(this.eglDisplay, eglSurface, eglSurface, this.eglContext)) {
            return true;
        }
        checkEglErrorAndNotify("eglMakeCurrent");
        return false;
    }

    public final int swapBuffers(EGLSurface eglSurface) {
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
        if (EGL14.eglSwapBuffers(this.eglDisplay, eglSurface)) {
            return 12288;
        }
        return EGL14.eglGetError();
    }

    public final void addRendererStateListener$maps_sdk_release(final RendererSetupErrorListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.rendererSetupErrorListenerSet.add(listener);
        if (this.accumulatedRendererErrorList.isEmpty()) {
            return;
        }
        final LinkedList linkedList = new LinkedList(this.accumulatedRendererErrorList);
        this.mainHandler.post(new Runnable() {
            @Override
            public final void run() {
                EGLCore.addRendererStateListener$lambda$3(linkedList, listener);
            }
        });
    }

    public static final void addRendererStateListener$lambda$3(LinkedList immutableCopy, RendererSetupErrorListener listener) {
        Intrinsics.checkNotNullParameter(immutableCopy, "$immutableCopy");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Iterator it = immutableCopy.iterator();
        while (it.hasNext()) {
            RendererError error = (RendererError) it.next();
            Intrinsics.checkNotNullExpressionValue(error, "error");
            listener.onError(error);
        }
    }

    public final void removeRendererStateListener$maps_sdk_release(RendererSetupErrorListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.rendererSetupErrorListenerSet.remove(listener);
    }

    public final void clearRendererStateListeners$maps_sdk_release() {
        this.accumulatedRendererErrorList.clear();
        this.rendererSetupErrorListenerSet.clear();
    }

    private final Integer checkEglErrorAndNotify(String functionName) {
        RendererError rendererError;
        Integer numCheckEglError = checkEglError(functionName);
        if (numCheckEglError != null) {
            if (numCheckEglError.intValue() == 12291) {
                rendererError = RendererError.OUT_OF_MEMORY;
            } else {
                rendererError = new RendererError(numCheckEglError.intValue());
            }
            MapboxLogger.logE(this.TAG, "EGL error " + rendererError.getEglErrorCode() + " occurred for " + functionName + '!');
            notifyListeners(rendererError);
        }
        return numCheckEglError;
    }

    private final Integer checkEglError(String msg) {
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            return null;
        }
        MapboxLogger.logE(this.TAG, msg + ": EGL error: 0x" + Integer.toHexString(iEglGetError));
        return Integer.valueOf(iEglGetError);
    }

    private final void notifyListeners(final RendererError error) {
        this.accumulatedRendererErrorList.add(error);
        if (this.rendererSetupErrorListenerSet.isEmpty()) {
            return;
        }
        final HashSet hashSet = new HashSet(this.rendererSetupErrorListenerSet);
        this.mainHandler.post(new Runnable() {
            @Override
            public final void run() {
                EGLCore.notifyListeners$lambda$5(hashSet, error);
            }
        });
    }

    public static final void notifyListeners$lambda$5(HashSet immutableCopy, RendererError error) {
        Intrinsics.checkNotNullParameter(immutableCopy, "$immutableCopy");
        Intrinsics.checkNotNullParameter(error, "$error");
        Iterator it = immutableCopy.iterator();
        while (it.hasNext()) {
            ((RendererSetupErrorListener) it.next()).onError(error);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/renderer/egl/EGLCore$Companion;", "", "()V", "attribsEgl3", "", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
