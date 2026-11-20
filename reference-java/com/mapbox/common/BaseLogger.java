package com.mapbox.common;

import app.notifee.core.event.LogEvent;
import com.mapbox.annotation.module.MapboxModuleType;
import com.mapbox.base.common.logger.Logger;
import com.mapbox.base.common.logger.model.Message;
import com.mapbox.base.common.logger.model.Tag;
import com.mapbox.common.module.provider.MapboxModuleProvider;
import com.mapbox.common.module.provider.ModuleProviderArgument;
import com.nimbusds.jose.HeaderParameterNames;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0007J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0007J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0007J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0007R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/mapbox/common/BaseLogger;", "", "()V", "loggerInstance", "Lcom/mapbox/base/common/logger/Logger;", "getLoggerInstance", "()Lcom/mapbox/base/common/logger/Logger;", "loggerInstance$delegate", "Lkotlin/Lazy;", LogEvent.LEVEL_DEBUG, "", HeaderParameterNames.AUTHENTICATION_TAG, "", "message", "error", LogEvent.LEVEL_INFO, "warning", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class BaseLogger {
    public static final BaseLogger INSTANCE = new BaseLogger();

    private static final Lazy loggerInstance = LazyKt.lazy(new Function0<Logger>() {
        @Override
        public final Logger invoke() {
            return (Logger) MapboxModuleProvider.INSTANCE.createModule(MapboxModuleType.CommonLogger, new Function1<MapboxModuleType, ModuleProviderArgument[]>() {
                @Override
                public final ModuleProviderArgument[] invoke(MapboxModuleType it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ModuleProviderArgument[0];
                }
            });
        }
    });

    private BaseLogger() {
    }

    private final Logger getLoggerInstance() {
        return (Logger) loggerInstance.getValue();
    }

    @JvmStatic
    public static final void debug(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Logger.DefaultImpls.d$default(INSTANCE.getLoggerInstance(), new Tag(tag), new Message(message), null, 4, null);
    }

    @JvmStatic
    public static final void info(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Logger.DefaultImpls.i$default(INSTANCE.getLoggerInstance(), new Tag(tag), new Message(message), null, 4, null);
    }

    @JvmStatic
    public static final void warning(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Logger.DefaultImpls.w$default(INSTANCE.getLoggerInstance(), new Tag(tag), new Message(message), null, 4, null);
    }

    @JvmStatic
    public static final void error(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Logger.DefaultImpls.e$default(INSTANCE.getLoggerInstance(), new Tag(tag), new Message(message), null, 4, null);
    }
}
