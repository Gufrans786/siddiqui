package com.mapbox.common.module.cronet;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.net.CronetProviderInstaller;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.mapbox.bindgen.Value;
import com.mapbox.common.FeatureTelemetryCounter;
import com.mapbox.common.MapboxCommonLogger;
import com.mapbox.common.MapboxSDKCommon;
import com.mapbox.common.SettingsServiceFactory;
import com.mapbox.common.SettingsServiceStorageType;
import io.grpc.internal.GrpcUtil;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetProvider;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0003J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0003J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\t\u001a\u0004\u0018\u00010\n8F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/mapbox/common/module/cronet/LazyEngine;", "", "executor", "Ljava/util/concurrent/Executor;", "(Ljava/util/concurrent/Executor;)V", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "cronetProvider", "Lorg/chromium/net/CronetProvider;", "<set-?>", "Lorg/chromium/net/CronetEngine;", "engine", "getEngine", "()Lorg/chromium/net/CronetEngine;", "configureEngine", "handleCronetLogging", "", "initializeProvider", "tryInstallFromGooglePlay", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LazyEngine {

    public static final Companion INSTANCE = new Companion(null);
    private final Context context;
    private CronetProvider cronetProvider;
    private volatile CronetEngine engine;
    private final Executor executor;

    public LazyEngine(Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.executor = executor;
        this.context = MapboxSDKCommon.INSTANCE.getContext();
        initializeProvider();
    }

    public final CronetEngine getEngine() {
        if (this.cronetProvider == null) {
            return null;
        }
        if (this.engine == null) {
            synchronized (this) {
                if (this.engine == null) {
                    this.engine = configureEngine();
                }
                Unit unit = Unit.INSTANCE;
            }
        }
        return this.engine;
    }

    private final void initializeProvider() {
        CronetProvider cronetProviderFindCronetProvider = LazyEngineKt.findCronetProvider(this.context);
        this.cronetProvider = cronetProviderFindCronetProvider;
        if (cronetProviderFindCronetProvider == null) {
            tryInstallFromGooglePlay();
        }
    }

    private final void tryInstallFromGooglePlay() {
        Companion companion = INSTANCE;
        if (companion.canInstallFromGooglePlay()) {
            Task<Void> taskInstallCronetFromPlayServices = companion.installCronetFromPlayServices(this.context);
            final Function1<Void, Unit> function1 = new Function1<Void, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(Void r1) {
                    invoke2(r1);
                    return Unit.INSTANCE;
                }

                public final void invoke2(Void r2) {
                    LazyEngine lazyEngine = LazyEngine.this;
                    lazyEngine.cronetProvider = LazyEngineKt.findCronetProvider(lazyEngine.context);
                }
            };
            taskInstallCronetFromPlayServices.addOnSuccessListener(new OnSuccessListener() {
                @Override
                public final void onSuccess(Object obj) {
                    LazyEngine.tryInstallFromGooglePlay$lambda$1(function1, obj);
                }
            }).addOnFailureListener(new OnFailureListener() {
                @Override
                public final void onFailure(Exception exc) {
                    LazyEngine.tryInstallFromGooglePlay$lambda$2(exc);
                }
            });
            return;
        }
        companion.onCronetNotAvailable();
    }

    public static final void tryInstallFromGooglePlay$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void tryInstallFromGooglePlay$lambda$2(Exception it) {
        Intrinsics.checkNotNullParameter(it, "it");
        INSTANCE.onCronetNotAvailable();
    }

    private final CronetEngine configureEngine() {
        try {
            CronetProvider cronetProvider = this.cronetProvider;
            Intrinsics.checkNotNull(cronetProvider);
            CronetEngine cronetEngineBuild = cronetProvider.createBuilder().enableBrotli(true).enableQuic(true).enableHttp2(true).addQuicHint("api.mapbox.com", GrpcUtil.DEFAULT_PORT_SSL, GrpcUtil.DEFAULT_PORT_SSL).addQuicHint("events.mapbox.com", GrpcUtil.DEFAULT_PORT_SSL, GrpcUtil.DEFAULT_PORT_SSL).addQuicHint("config.mapbox.com", GrpcUtil.DEFAULT_PORT_SSL, GrpcUtil.DEFAULT_PORT_SSL).enableHttpCache(0, 0L).build();
            cronetEngineBuild.addRequestFinishedListener(new CronetRequestFinishedListener(this.executor));
            handleCronetLogging(cronetEngineBuild);
            Companion companion = INSTANCE;
            CronetProvider cronetProvider2 = this.cronetProvider;
            Intrinsics.checkNotNull(cronetProvider2);
            companion.onCronetAvailable(cronetProvider2);
            return cronetEngineBuild;
        } catch (Throwable unused) {
            CopyOnWriteArraySet<String> disabledProviders = LazyEngineKt.getDisabledProviders();
            CronetProvider cronetProvider3 = this.cronetProvider;
            Intrinsics.checkNotNull(cronetProvider3);
            disabledProviders.add(cronetProvider3.getName());
            initializeProvider();
            if (this.cronetProvider != null) {
                return configureEngine();
            }
            return null;
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\b\u0010\u000e\u001a\u00020\u000bH\u0007¨\u0006\u000f"}, d2 = {"Lcom/mapbox/common/module/cronet/LazyEngine$Companion;", "", "()V", "canInstallFromGooglePlay", "", "installCronetFromPlayServices", "Lcom/google/android/gms/tasks/Task;", "Ljava/lang/Void;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "onCronetAvailable", "", "provider", "Lorg/chromium/net/CronetProvider;", "onCronetNotAvailable", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void onCronetNotAvailable() {
            FeatureTelemetryCounter.create("common/network/http3/CronetNotAvailable").increment();
            MapboxCommonLogger.INSTANCE.logW$common_release("HTTP", "HTTP/3 will not be available: Cannot find a valid Cronet provider. In order to\nenable HTTP/3 in the Mapbox SDKs, it's necessary that the application depends on\na valid Cronet provider. Valid providers include the Google Play Services\nprovider (from \"com.google.android.gms:play-services-cronet\"), in which case\nCronet will be used from Play Services, or you may choose to embed Cronet with\nyour application by depending on \"org.chromium.net:cronet-embedded\".");
        }

        public final void onCronetAvailable(CronetProvider provider) {
            String str;
            Intrinsics.checkNotNullParameter(provider, "provider");
            String name = provider.getName();
            if (!Intrinsics.areEqual(name, CronetProvider.PROVIDER_NAME_APP_PACKAGED)) {
                if (LazyEngineKt.isPlayServicesCronetProviderInstallerAvailable && Intrinsics.areEqual(name, "Google-Play-Services-Cronet-Provider")) {
                    str = "PlayServices";
                } else {
                    str = "UnknownSource";
                }
            } else {
                str = "Embedded";
            }
            FeatureTelemetryCounter.create("common/network/http3/Cronet" + str + "Available").increment();
        }

        public final Task<Void> installCronetFromPlayServices(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Task<Void> taskInstallProvider = CronetProviderInstaller.installProvider(context);
            Intrinsics.checkNotNullExpressionValue(taskInstallProvider, "installProvider(context)");
            return taskInstallProvider;
        }

        public final boolean canInstallFromGooglePlay() {
            return LazyEngineKt.canInstallFromGooglePlay.getAndSet(false);
        }
    }

    private final void handleCronetLogging(CronetEngine engine) {
        if (!Intrinsics.areEqual(SettingsServiceFactory.getInstance(SettingsServiceStorageType.NON_PERSISTENT).get("com.mapbox.common.http.engine.debug.log.enabled", new Value(false)).getValue(), new Value(true))) {
            if (engine != null) {
                engine.stopNetLog();
            }
        } else {
            String str = MapboxSDKCommon.INSTANCE.getContext().getFilesDir().getAbsolutePath() + "/cronet-log-" + new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-SSS").format(new Date()) + ".json";
            if (engine != null) {
                engine.startNetLogToFile(str, false);
            }
            MapboxCommonLogger.INSTANCE.logW$common_release("HTTP", "Started writing cronet logs to " + str);
        }
    }
}
