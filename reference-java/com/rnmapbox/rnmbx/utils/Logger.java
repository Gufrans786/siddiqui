package com.rnmapbox.rnmbx.utils;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.nimbusds.jose.HeaderParameterNames;
import com.nimbusds.jose.jwk.JWKParameterNames;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001dB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u0016\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u0016\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u0016\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u001e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J \u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u001c\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/Logger;", "", "<init>", "()V", "logger", "Lcom/rnmapbox/rnmbx/utils/Logger$LoggerDefinition;", "getLogger", "()Lcom/rnmapbox/rnmbx/utils/Logger$LoggerDefinition;", "setLogger", "(Lcom/rnmapbox/rnmbx/utils/Logger$LoggerDefinition;)V", "setVerbosity", "", "logLevel", "", "setLoggerDefinition", "dest", "d", HeaderParameterNames.AUTHENTICATION_TAG, "", NotificationCompat.CATEGORY_MESSAGE, "v", "i", "w", "tr", "", JWKParameterNames.RSA_EXPONENT, "logged", "callback", "Lkotlin/Function0;", "LoggerDefinition", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Logger {
    private static int logLevel;
    public static final Logger INSTANCE = new Logger();
    private static LoggerDefinition logger = new LoggerDefinition() {
        @Override
        public void v(String tag, String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Log.v(tag, msg);
        }

        @Override
        public void v(String tag, String msg, Throwable tr) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Intrinsics.checkNotNullParameter(tr, "tr");
            Log.v(tag, msg, tr);
        }

        @Override
        public void d(String tag, String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Log.d(tag, msg);
        }

        @Override
        public void d(String tag, String msg, Throwable tr) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Intrinsics.checkNotNullParameter(tr, "tr");
            Log.d(tag, msg);
        }

        @Override
        public void i(String tag, String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Log.i(tag, msg);
        }

        @Override
        public void i(String tag, String msg, Throwable tr) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Intrinsics.checkNotNullParameter(tr, "tr");
            Log.i(tag, msg, tr);
        }

        @Override
        public void w(String tag, String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Log.w(tag, msg);
        }

        @Override
        public void w(String tag, String msg, Throwable tr) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Intrinsics.checkNotNullParameter(tr, "tr");
            Log.w(tag, msg);
        }

        @Override
        public void e(String tag, String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Log.e(tag, msg);
        }

        @Override
        public void e(String tag, String msg, Throwable tr) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Intrinsics.checkNotNullParameter(tr, "tr");
            Log.e(tag, msg, tr);
        }
    };

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH&J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J \u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\r"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/Logger$LoggerDefinition;", "", "v", "", HeaderParameterNames.AUTHENTICATION_TAG, "", NotificationCompat.CATEGORY_MESSAGE, "tr", "", "d", "i", "w", JWKParameterNames.RSA_EXPONENT, "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface LoggerDefinition {
        void d(String tag, String msg);

        void d(String tag, String msg, Throwable tr);

        void e(String tag, String msg);

        void e(String tag, String msg, Throwable tr);

        void i(String tag, String msg);

        void i(String tag, String msg, Throwable tr);

        void v(String tag, String msg);

        void v(String tag, String msg, Throwable tr);

        void w(String tag, String msg);

        void w(String tag, String msg, Throwable tr);
    }

    private Logger() {
    }

    public final LoggerDefinition getLogger() {
        return logger;
    }

    public final void setLogger(LoggerDefinition loggerDefinition) {
        Intrinsics.checkNotNullParameter(loggerDefinition, "<set-?>");
        logger = loggerDefinition;
    }

    public final void setVerbosity(int logLevel2) {
        logLevel = logLevel2;
    }

    public final void setLoggerDefinition(LoggerDefinition dest) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        logger = dest;
    }

    public final void d(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logLevel <= 3) {
            logger.d(tag, msg);
        }
    }

    public final void v(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logLevel <= 2) {
            logger.v(tag, msg);
        }
    }

    public final void i(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logLevel <= 4) {
            logger.i(tag, msg);
        }
    }

    public final void w(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logLevel <= 2) {
            logger.w(tag, msg);
        }
    }

    public final void w(String tag, String msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tr, "tr");
        if (logLevel <= 2) {
            logger.w(tag, msg, tr);
        }
    }

    public final void e(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logLevel <= 6) {
            logger.e(tag, msg);
        }
    }

    @JvmStatic
    public static final void e(String tag, String msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tr, "tr");
        if (logLevel <= 6) {
            logger.e(tag, msg, tr);
        }
    }

    public final void logged(String tag, Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            callback.invoke();
        } catch (Exception e) {
            INSTANCE.e(tag, "Exception - error: " + e);
        }
    }
}
