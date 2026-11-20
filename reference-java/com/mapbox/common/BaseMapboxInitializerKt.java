package com.mapbox.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import ch.qos.logback.core.CoreConstants;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u0010\u0010\b\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\nH\u0002¨\u0006\u000b"}, d2 = {"gatherSystemInfo", "", "initializerData", "Lcom/mapbox/common/InitializerData;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, "", "skipFurtherInitialization", "", "Ljava/lang/Class;", "common_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class BaseMapboxInitializerKt {
    public static final boolean skipFurtherInitialization(Class<?> cls) {
        InitializerData initializerData = BaseMapboxInitializer.INSTANCE.getInitializersMap().get(cls);
        if (initializerData != null) {
            return initializerData.getState() == InitializerState.SUCCESS || initializerData.getState() == InitializerState.IN_PROGRESS;
        }
        return false;
    }

    public static final String gatherSystemInfo(InitializerData initializerData, Context context, Throwable th) {
        Object objM1463constructorimpl;
        Object objM1463constructorimpl2;
        Throwable cause;
        String simpleName;
        Throwable cause2;
        String message;
        Class<?> cls;
        PackageManager packageManager;
        String strJoinToString$default;
        ApplicationInfo applicationInfo;
        Boolean boolValueOf;
        try {
            Result.Companion companion = Result.INSTANCE;
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    PackageManager packageManager2 = context.getPackageManager();
                    if (packageManager2 != null) {
                        boolValueOf = Boolean.valueOf(packageManager2.isInstantApp());
                    }
                    objM1463constructorimpl = Result.m1463constructorimpl(boolValueOf);
                    Object obj = objM1463constructorimpl;
                    Result.Companion companion2 = Result.INSTANCE;
                    packageManager = context.getPackageManager();
                    if (packageManager != null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0)) == null) {
                        strJoinToString$default = null;
                    } else {
                        String[] list = new File(applicationInfo.nativeLibraryDir).list();
                        if (list != null) {
                            Intrinsics.checkNotNullExpressionValue(list, "list()");
                            strJoinToString$default = ArraysKt.joinToString$default(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null);
                            if (strJoinToString$default == null) {
                                strJoinToString$default = "";
                            }
                        } else {
                            strJoinToString$default = "";
                        }
                    }
                    objM1463constructorimpl2 = Result.m1463constructorimpl(strJoinToString$default);
                    StringBuilder sbAppend = new StringBuilder("Failed to initialize: Attempt=").append(initializerData.getCurrentInitAttempt()).append(", exception=[").append(th.getClass().getSimpleName()).append("], initializer called ").append(SystemClock.elapsedRealtime() - initializerData.getFirstInitElapsedTimeMs()).append(" ms ago, exception.message=[").append(th.getMessage()).append("], exception.cause=[");
                    cause = th.getCause();
                    if (cause != null || (cls = cause.getClass()) == null) {
                        simpleName = null;
                    } else {
                        simpleName = cls.getSimpleName();
                    }
                    StringBuilder sbAppend2 = sbAppend.append(simpleName).append("], exception.cause.message=[");
                    cause2 = th.getCause();
                    if (cause2 != null) {
                        message = cause2.getMessage();
                    } else {
                        message = null;
                    }
                    StringBuilder sbAppend3 = sbAppend2.append(message).append("], extractedNativeLibs=[");
                    if (Result.m1469isFailureimpl(objM1463constructorimpl2)) {
                        objM1463constructorimpl2 = null;
                    }
                    return sbAppend3.append((String) objM1463constructorimpl2).append("], isInstantApp=[").append(Result.m1469isFailureimpl(obj) ? null : obj).append("], isMainThread=[").append(Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())).append(AbstractJsonLexerKt.END_LIST).toString();
                }
                Result.Companion companion3 = Result.INSTANCE;
                packageManager = context.getPackageManager();
                if (packageManager != null) {
                    strJoinToString$default = null;
                } else {
                    strJoinToString$default = null;
                }
                objM1463constructorimpl2 = Result.m1463constructorimpl(strJoinToString$default);
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                objM1463constructorimpl2 = Result.m1463constructorimpl(ResultKt.createFailure(th2));
            }
            boolValueOf = null;
            objM1463constructorimpl = Result.m1463constructorimpl(boolValueOf);
        } catch (Throwable th3) {
            Result.Companion companion5 = Result.INSTANCE;
            objM1463constructorimpl = Result.m1463constructorimpl(ResultKt.createFailure(th3));
        }
        Object obj2 = objM1463constructorimpl;
        StringBuilder sbAppend4 = new StringBuilder("Failed to initialize: Attempt=").append(initializerData.getCurrentInitAttempt()).append(", exception=[").append(th.getClass().getSimpleName()).append("], initializer called ").append(SystemClock.elapsedRealtime() - initializerData.getFirstInitElapsedTimeMs()).append(" ms ago, exception.message=[").append(th.getMessage()).append("], exception.cause=[");
        cause = th.getCause();
        if (cause != null) {
            simpleName = null;
        } else {
            simpleName = null;
        }
        StringBuilder sbAppend5 = sbAppend4.append(simpleName).append("], exception.cause.message=[");
        cause2 = th.getCause();
        if (cause2 != null) {
            message = cause2.getMessage();
        } else {
            message = null;
        }
        StringBuilder sbAppend6 = sbAppend5.append(message).append("], extractedNativeLibs=[");
        if (Result.m1469isFailureimpl(objM1463constructorimpl2)) {
            objM1463constructorimpl2 = null;
        }
        return sbAppend6.append((String) objM1463constructorimpl2).append("], isInstantApp=[").append(Result.m1469isFailureimpl(obj2) ? null : obj2).append("], isMainThread=[").append(Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())).append(AbstractJsonLexerKt.END_LIST).toString();
    }
}
