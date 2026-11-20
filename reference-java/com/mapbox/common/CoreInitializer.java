package com.mapbox.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import androidx.startup.Initializer;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.common.core.module.CommonSingletonModuleProvider;
import com.mapbox.maps.MapboxConstants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\t0\bH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\r"}, d2 = {"Lcom/mapbox/common/CoreInitializer;", "Landroidx/startup/Initializer;", "Lcom/mapbox/common/MapboxSDKCommon;", "()V", "create", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "dependencies", "", "Ljava/lang/Class;", "setupSqlite", "", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CoreInitializer implements Initializer<MapboxSDKCommon> {

    public static final Companion INSTANCE = new Companion(null);
    private static final String SQLITE_TMPDIR_VAR_NAME = "SQLITE_TMPDIR";

    @JvmStatic
    public static final SystemInformation createSystemInformation() {
        return INSTANCE.createSystemInformation();
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\b\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/mapbox/common/CoreInitializer$Companion;", "", "()V", "SQLITE_TMPDIR_VAR_NAME", "", "createSystemInformation", "Lcom/mapbox/common/SystemInformation;", "isEmulator", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final boolean isEmulator() {
            String BRAND = Build.BRAND;
            Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
            if (StringsKt.startsWith$default(BRAND, "generic", false, 2, (Object) null)) {
                String DEVICE = Build.DEVICE;
                Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
                if (StringsKt.startsWith$default(DEVICE, "generic", false, 2, (Object) null)) {
                    return true;
                }
            }
            String FINGERPRINT = Build.FINGERPRINT;
            Intrinsics.checkNotNullExpressionValue(FINGERPRINT, "FINGERPRINT");
            if (StringsKt.startsWith$default(FINGERPRINT, "generic", false, 2, (Object) null)) {
                return true;
            }
            String FINGERPRINT2 = Build.FINGERPRINT;
            Intrinsics.checkNotNullExpressionValue(FINGERPRINT2, "FINGERPRINT");
            if (StringsKt.startsWith$default(FINGERPRINT2, "unknown", false, 2, (Object) null)) {
                return true;
            }
            String HARDWARE = Build.HARDWARE;
            Intrinsics.checkNotNullExpressionValue(HARDWARE, "HARDWARE");
            if (StringsKt.contains$default((CharSequence) HARDWARE, (CharSequence) "goldfish", false, 2, (Object) null)) {
                return true;
            }
            String HARDWARE2 = Build.HARDWARE;
            Intrinsics.checkNotNullExpressionValue(HARDWARE2, "HARDWARE");
            if (StringsKt.contains$default((CharSequence) HARDWARE2, (CharSequence) "ranchu", false, 2, (Object) null)) {
                return true;
            }
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            if (StringsKt.contains$default((CharSequence) MODEL, (CharSequence) "google_sdk", false, 2, (Object) null)) {
                return true;
            }
            String MODEL2 = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL2, "MODEL");
            if (StringsKt.contains$default((CharSequence) MODEL2, (CharSequence) "Emulator", false, 2, (Object) null)) {
                return true;
            }
            String MODEL3 = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL3, "MODEL");
            if (StringsKt.contains$default((CharSequence) MODEL3, (CharSequence) "Android SDK built for x86", false, 2, (Object) null)) {
                return true;
            }
            String MANUFACTURER = Build.MANUFACTURER;
            Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
            if (StringsKt.contains$default((CharSequence) MANUFACTURER, (CharSequence) "Genymotion", false, 2, (Object) null)) {
                return true;
            }
            String PRODUCT = Build.PRODUCT;
            Intrinsics.checkNotNullExpressionValue(PRODUCT, "PRODUCT");
            if (StringsKt.contains$default((CharSequence) PRODUCT, (CharSequence) "sdk_google", false, 2, (Object) null)) {
                return true;
            }
            String PRODUCT2 = Build.PRODUCT;
            Intrinsics.checkNotNullExpressionValue(PRODUCT2, "PRODUCT");
            if (StringsKt.contains$default((CharSequence) PRODUCT2, (CharSequence) "google_sdk", false, 2, (Object) null)) {
                return true;
            }
            String PRODUCT3 = Build.PRODUCT;
            Intrinsics.checkNotNullExpressionValue(PRODUCT3, "PRODUCT");
            if (StringsKt.contains$default((CharSequence) PRODUCT3, (CharSequence) "sdk", false, 2, (Object) null)) {
                return true;
            }
            String PRODUCT4 = Build.PRODUCT;
            Intrinsics.checkNotNullExpressionValue(PRODUCT4, "PRODUCT");
            if (StringsKt.contains$default((CharSequence) PRODUCT4, (CharSequence) "sdk_x86", false, 2, (Object) null)) {
                return true;
            }
            String PRODUCT5 = Build.PRODUCT;
            Intrinsics.checkNotNullExpressionValue(PRODUCT5, "PRODUCT");
            if (StringsKt.contains$default((CharSequence) PRODUCT5, (CharSequence) "vbox86p", false, 2, (Object) null)) {
                return true;
            }
            String PRODUCT6 = Build.PRODUCT;
            Intrinsics.checkNotNullExpressionValue(PRODUCT6, "PRODUCT");
            if (StringsKt.contains$default((CharSequence) PRODUCT6, (CharSequence) com.google.firebase.firestore.BuildConfig.TARGET_BACKEND, false, 2, (Object) null)) {
                return true;
            }
            String PRODUCT7 = Build.PRODUCT;
            Intrinsics.checkNotNullExpressionValue(PRODUCT7, "PRODUCT");
            return StringsKt.contains$default((CharSequence) PRODUCT7, (CharSequence) "simulator", false, 2, (Object) null);
        }

        @JvmStatic
        public final SystemInformation createSystemInformation() {
            String str;
            String str2;
            String strValueOf;
            PackageInfo packageInfo;
            String str3;
            Context context = MapboxSDKCommon.INSTANCE.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0)) == null) {
                str = "unknown";
                str2 = str;
                strValueOf = str2;
            } else {
                String string = packageManager.getApplicationLabel(packageInfo.applicationInfo).toString();
                if (packageInfo.versionName != null) {
                    str3 = packageInfo.versionName;
                    Intrinsics.checkNotNullExpressionValue(str3, "packageInfo.versionName");
                } else {
                    str3 = "";
                }
                str = string;
                strValueOf = String.valueOf(packageInfo.versionCode);
                str2 = str3;
            }
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            String str4 = applicationInfo != null ? applicationInfo.packageName : null;
            String str5 = str4 == null ? "unknown" : str4;
            String str6 = Build.DEVICE;
            String str7 = str6 == null ? "" : str6;
            String[] SUPPORTED_ABIS = Build.SUPPORTED_ABIS;
            Intrinsics.checkNotNullExpressionValue(SUPPORTED_ABIS, "SUPPORTED_ABIS");
            String str8 = (String) ArraysKt.firstOrNull(SUPPORTED_ABIS);
            String str9 = str8 == null ? "" : str8;
            String str10 = Build.MODEL;
            String str11 = (str10 == null || StringsKt.isBlank(str10)) ? "" : Build.MODEL;
            File filesDir = context.getFilesDir();
            String absolutePath = filesDir != null ? filesDir.getAbsolutePath() : null;
            String str12 = absolutePath == null ? "" : absolutePath;
            File cacheDir = context.getCacheDir();
            String absolutePath2 = cacheDir != null ? cacheDir.getAbsolutePath() : null;
            return new SystemInformation(Platform.ANDROID, "Android", Build.VERSION.RELEASE.toString(), str, str5, str2, strValueOf, str7, str9, str11, str12, !isEmulator(), absolutePath2 == null ? "" : absolutePath2);
        }
    }

    private final void setupSqlite(Context context) throws ErrnoException {
        String str = Os.getenv(SQLITE_TMPDIR_VAR_NAME);
        if (str == null || StringsKt.isBlank(str)) {
            Os.setenv(SQLITE_TMPDIR_VAR_NAME, context.getCacheDir().getAbsolutePath(), true);
        }
    }

    @Override
    public MapboxSDKCommon create(Context context) throws ErrnoException {
        Intrinsics.checkNotNullParameter(context, "context");
        setupSqlite(context);
        MapboxSDKCommon mapboxSDKCommonInvoke = MapboxSDKCommon.INSTANCE.invoke(context);
        CommonSingletonModuleProvider.INSTANCE.getLoaderInstance().load(MapboxConstants.CORE_SHARED_LIBRARY_NAME);
        Log.info("Using Mapbox Common SDK v" + Version.getCommonSDKVersionString() + CoreConstants.LEFT_PARENTHESIS_CHAR + Version.getCommonSDKRevisionString() + CoreConstants.RIGHT_PARENTHESIS_CHAR, "common");
        String accessToken = MapboxOptions.getAccessToken();
        if (StringsKt.isBlank(accessToken)) {
            Log.info("Telemetry service not started, missing token", "telemetry");
            return mapboxSDKCommonInvoke;
        }
        MapboxOptions.setAccessToken(accessToken);
        return mapboxSDKCommonInvoke;
    }

    @Override
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.emptyList();
    }
}
