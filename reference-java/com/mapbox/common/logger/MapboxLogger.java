package com.mapbox.common.logger;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.mapbox.base.common.logger.Logger;
import com.mapbox.base.common.logger.model.Message;
import com.mapbox.base.common.logger.model.Tag;
import com.nimbusds.jose.HeaderParameterNames;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012J$\u0010\u000f\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u000e\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012J$\u0010\u0017\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u000e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012J$\u0010\u0018\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J:\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00100\u001cH\u0002J\u0006\u0010\u001d\u001a\u00020\u0010J\u000e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u000eJ\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012J$\u0010\u001f\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u000e\u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010 \u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012J$\u0010 \u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R \u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/mapbox/common/logger/MapboxLogger;", "Lcom/mapbox/base/common/logger/Logger;", "()V", "DEFAULT_TAG", "", "logLevel", "", "getLogLevel$annotations", "getLogLevel", "()I", "setLogLevel", "(I)V", "observer", "Ljava/util/concurrent/atomic/AtomicReference;", "Lcom/mapbox/common/logger/LoggerObserver;", "d", "", NotificationCompat.CATEGORY_MESSAGE, "Lcom/mapbox/base/common/logger/model/Message;", "tr", "", HeaderParameterNames.AUTHENTICATION_TAG, "Lcom/mapbox/base/common/logger/model/Tag;", JWKParameterNames.RSA_EXPONENT, "i", TSLog.ACTION_LOG, "requiredLogLevel", "logBlock", "Lkotlin/Function0;", "removeObserver", "setObserver", "v", "w", "liblogger_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapboxLogger implements Logger {
    private static final String DEFAULT_TAG = "MapboxLogger";
    public static final MapboxLogger INSTANCE = new MapboxLogger();
    private static volatile int logLevel = 2;
    private static final AtomicReference<LoggerObserver> observer = new AtomicReference<>();

    public static void getLogLevel$annotations() {
    }

    private MapboxLogger() {
    }

    public final int getLogLevel() {
        return logLevel;
    }

    public final void setLogLevel(int i) {
        logLevel = i;
    }

    public final void setObserver(LoggerObserver observer2) {
        Intrinsics.checkNotNullParameter(observer2, "observer");
        observer.set(observer2);
    }

    public final void removeObserver() {
        observer.set(null);
    }

    public final void v(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        v(null, msg, null);
    }

    public final void v(Message msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tr, "tr");
        v(null, msg, tr);
    }

    public final void v(Tag tag, Message msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        v(tag, msg, null);
    }

    @Override
    public void v(final Tag tag, final Message msg, final Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        log(2, tag != null ? tag.getTag() : null, msg.getMessage(), tr, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                String tag2;
                Tag tag3 = tag;
                if (tag3 == null || (tag2 = tag3.getTag()) == null) {
                    tag2 = MapboxLogger.DEFAULT_TAG;
                }
                Log.v(tag2, msg.getMessage(), tr);
            }
        });
    }

    public final void d(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        d(null, msg, null);
    }

    public final void d(Message msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tr, "tr");
        d(null, msg, tr);
    }

    public final void d(Tag tag, Message msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        d(tag, msg, null);
    }

    @Override
    public void d(final Tag tag, final Message msg, final Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        log(3, tag != null ? tag.getTag() : null, msg.getMessage(), tr, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                String tag2;
                Tag tag3 = tag;
                if (tag3 == null || (tag2 = tag3.getTag()) == null) {
                    tag2 = MapboxLogger.DEFAULT_TAG;
                }
                Log.d(tag2, msg.getMessage(), tr);
            }
        });
    }

    public final void i(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        i(null, msg, null);
    }

    public final void i(Message msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tr, "tr");
        i(null, msg, tr);
    }

    public final void i(Tag tag, Message msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        i(tag, msg, null);
    }

    @Override
    public void i(final Tag tag, final Message msg, final Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        log(4, tag != null ? tag.getTag() : null, msg.getMessage(), tr, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                String tag2;
                Tag tag3 = tag;
                if (tag3 == null || (tag2 = tag3.getTag()) == null) {
                    tag2 = MapboxLogger.DEFAULT_TAG;
                }
                Log.i(tag2, msg.getMessage(), tr);
            }
        });
    }

    public final void w(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        w(null, msg, null);
    }

    public final void w(Message msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tr, "tr");
        w(null, msg, tr);
    }

    public final void w(Tag tag, Message msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        w(tag, msg, null);
    }

    @Override
    public void w(final Tag tag, final Message msg, final Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        log(5, tag != null ? tag.getTag() : null, msg.getMessage(), tr, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                String tag2;
                Tag tag3 = tag;
                if (tag3 == null || (tag2 = tag3.getTag()) == null) {
                    tag2 = MapboxLogger.DEFAULT_TAG;
                }
                Log.w(tag2, msg.getMessage(), tr);
            }
        });
    }

    public final void e(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        e(null, msg, null);
    }

    public final void e(Message msg, Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tr, "tr");
        e(null, msg, tr);
    }

    public final void e(Tag tag, Message msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        e(tag, msg, null);
    }

    @Override
    public void e(final Tag tag, final Message msg, final Throwable tr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        log(6, tag != null ? tag.getTag() : null, msg.getMessage(), tr, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                String tag2;
                Tag tag3 = tag;
                if (tag3 == null || (tag2 = tag3.getTag()) == null) {
                    tag2 = MapboxLogger.DEFAULT_TAG;
                }
                Log.e(tag2, msg.getMessage(), tr);
            }
        });
    }

    private final void log(int requiredLogLevel, String tag, String msg, Throwable tr, Function0<Unit> logBlock) {
        if (logLevel <= requiredLogLevel) {
            logBlock.invoke();
            LoggerObserver loggerObserver = observer.get();
            if (loggerObserver != null) {
                loggerObserver.log(requiredLogLevel, new LogEntry(tag, msg, tr));
            }
        }
    }
}
