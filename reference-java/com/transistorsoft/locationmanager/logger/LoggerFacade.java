package com.transistorsoft.locationmanager.logger;

import ch.qos.logback.classic.Level;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.Marker;

public class LoggerFacade implements Logger {
    private final List<a> a = new ArrayList();
    private boolean b = false;

    void a() {
        this.b = true;
        synchronized (this.a) {
            this.a.clear();
        }
    }

    @Override
    public void debug(String str, Object obj) {
    }

    @Override
    public void debug(String str, Object obj, Object obj2) {
    }

    @Override
    public void debug(String str, Object... objArr) {
    }

    @Override
    public void debug(Marker marker, String str) {
    }

    @Override
    public void debug(Marker marker, String str, Object obj) {
    }

    @Override
    public void debug(Marker marker, String str, Object obj, Object obj2) {
    }

    @Override
    public void debug(Marker marker, String str, Throwable th) {
    }

    @Override
    public void debug(Marker marker, String str, Object... objArr) {
    }

    @Override
    public void error(String str, Object obj) {
    }

    @Override
    public void error(String str, Object obj, Object obj2) {
    }

    @Override
    public void error(String str, Object... objArr) {
    }

    @Override
    public void error(Marker marker, String str) {
    }

    @Override
    public void error(Marker marker, String str, Object obj) {
    }

    @Override
    public void error(Marker marker, String str, Object obj, Object obj2) {
    }

    @Override
    public void error(Marker marker, String str, Throwable th) {
    }

    @Override
    public void error(Marker marker, String str, Object... objArr) {
    }

    @Override
    public String getName() {
        return "LoggerFacade";
    }

    public List<a> getQueue() {
        ArrayList arrayList;
        synchronized (this.a) {
            arrayList = new ArrayList(this.a);
            this.a.clear();
        }
        return arrayList;
    }

    @Override
    public void info(String str, Object obj) {
    }

    @Override
    public void info(String str, Object obj, Object obj2) {
    }

    @Override
    public void info(String str, Object... objArr) {
    }

    @Override
    public void info(Marker marker, String str) {
    }

    @Override
    public void info(Marker marker, String str, Object obj) {
    }

    @Override
    public void info(Marker marker, String str, Object obj, Object obj2) {
    }

    @Override
    public void info(Marker marker, String str, Throwable th) {
    }

    @Override
    public void info(Marker marker, String str, Object... objArr) {
    }

    @Override
    public boolean isDebugEnabled() {
        return true;
    }

    @Override
    public boolean isDebugEnabled(Marker marker) {
        return true;
    }

    @Override
    public boolean isErrorEnabled() {
        return true;
    }

    @Override
    public boolean isErrorEnabled(Marker marker) {
        return true;
    }

    @Override
    public boolean isInfoEnabled() {
        return true;
    }

    @Override
    public boolean isInfoEnabled(Marker marker) {
        return true;
    }

    @Override
    public boolean isTraceEnabled() {
        return false;
    }

    @Override
    public boolean isTraceEnabled(Marker marker) {
        return false;
    }

    @Override
    public boolean isWarnEnabled() {
        return true;
    }

    @Override
    public boolean isWarnEnabled(Marker marker) {
        return true;
    }

    @Override
    public void trace(String str) {
    }

    @Override
    public void trace(String str, Object obj) {
    }

    @Override
    public void trace(String str, Object obj, Object obj2) {
    }

    @Override
    public void trace(String str, Throwable th) {
    }

    @Override
    public void trace(String str, Object... objArr) {
    }

    @Override
    public void trace(Marker marker, String str) {
    }

    @Override
    public void trace(Marker marker, String str, Object obj) {
    }

    @Override
    public void trace(Marker marker, String str, Object obj, Object obj2) {
    }

    @Override
    public void trace(Marker marker, String str, Throwable th) {
    }

    @Override
    public void trace(Marker marker, String str, Object... objArr) {
    }

    @Override
    public void warn(String str, Object obj) {
    }

    @Override
    public void warn(String str, Object obj, Object obj2) {
    }

    @Override
    public void warn(String str, Object... objArr) {
    }

    @Override
    public void warn(Marker marker, String str) {
    }

    @Override
    public void warn(Marker marker, String str, Object obj) {
    }

    @Override
    public void warn(Marker marker, String str, Object obj, Object obj2) {
    }

    @Override
    public void warn(Marker marker, String str, Throwable th) {
    }

    @Override
    public void warn(Marker marker, String str, Object... objArr) {
    }

    static class a {
        private final Level a;
        private final String b;
        private Throwable c;

        a(Level level, String str) {
            this.a = level;
            this.b = str;
        }

        void a(Logger logger) {
            Level level = this.a;
            if (level == Level.DEBUG) {
                Throwable th = this.c;
                if (th != null) {
                    logger.debug(this.b, th);
                    return;
                } else {
                    logger.debug(this.b);
                    return;
                }
            }
            if (level == Level.INFO) {
                Throwable th2 = this.c;
                if (th2 != null) {
                    logger.info(this.b);
                    return;
                } else {
                    logger.info(this.b, th2);
                    return;
                }
            }
            if (level == Level.WARN) {
                Throwable th3 = this.c;
                if (th3 != null) {
                    logger.warn(this.b);
                    return;
                } else {
                    logger.warn(this.b, th3);
                    return;
                }
            }
            if (level == Level.ERROR) {
                Throwable th4 = this.c;
                if (th4 != null) {
                    logger.error(this.b);
                } else {
                    logger.error(this.b, th4);
                }
            }
        }

        a(Level level, String str, Throwable th) {
            this.a = level;
            this.b = str;
            this.c = th;
        }
    }

    @Override
    public void debug(String str) {
        if (this.b) {
            return;
        }
        synchronized (this.a) {
            this.a.add(new a(Level.DEBUG, str));
        }
    }

    @Override
    public void error(String str, Throwable th) {
        if (this.b) {
            return;
        }
        synchronized (this.a) {
            this.a.add(new a(Level.ERROR, str, th));
        }
    }

    @Override
    public void info(String str) {
        if (this.b) {
            return;
        }
        synchronized (this.a) {
            this.a.add(new a(Level.INFO, str));
        }
    }

    @Override
    public void warn(String str) {
        if (this.b) {
            return;
        }
        synchronized (this.a) {
            this.a.add(new a(Level.WARN, str));
        }
    }

    @Override
    public void debug(String str, Throwable th) {
        if (this.b) {
            return;
        }
        synchronized (this.a) {
            this.a.add(new a(Level.DEBUG, str, th));
        }
    }

    @Override
    public void error(String str) {
        if (this.b) {
            return;
        }
        synchronized (this.a) {
            this.a.add(new a(Level.ERROR, str));
        }
    }

    @Override
    public void info(String str, Throwable th) {
        if (this.b) {
            return;
        }
        synchronized (this.a) {
            this.a.add(new a(Level.INFO, str, th));
        }
    }

    @Override
    public void warn(String str, Throwable th) {
        if (this.b) {
            return;
        }
        synchronized (this.a) {
            this.a.add(new a(Level.WARN, str, th));
        }
    }
}
