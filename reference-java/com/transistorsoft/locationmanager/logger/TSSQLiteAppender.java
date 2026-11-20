package com.transistorsoft.locationmanager.logger;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteStatement;
import android.util.Log;
import ch.qos.logback.classic.android.SQLiteLogCleaner;
import ch.qos.logback.classic.db.SQLBuilder;
import ch.qos.logback.classic.db.names.ColumnName;
import ch.qos.logback.classic.db.names.DBNameResolver;
import ch.qos.logback.classic.db.names.DefaultDBNameResolver;
import ch.qos.logback.classic.db.names.TableName;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.classic.spi.IThrowableProxy;
import ch.qos.logback.classic.spi.StackTraceElementProxy;
import ch.qos.logback.classic.spi.ThrowableProxyUtil;
import ch.qos.logback.core.UnsynchronizedAppenderBase;
import ch.qos.logback.core.android.AndroidContextUtil;
import ch.qos.logback.core.util.Duration;
import com.facebook.cache.disk.DefaultDiskStorage;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicLong;

public class TSSQLiteAppender extends UnsynchronizedAppenderBase<ILoggingEvent> {
    private static final String k = "transistor_logback.db";
    private static final long l = 5000000;
    private static final long m = 86400000;

    private static final int f3745n = 1;
    private static final int o = 2;
    private static final int p = 3;
    private static final int q = 4;
    private static final int r = 5;
    private static final int s = 6;
    private static final int t = 7;
    private static final int u = 11;
    private static final int v = 12;
    private static final int w = 13;
    private static final int x = 14;
    private static final short y = 1;
    private static final short z = 2;
    private SQLiteDatabase a;
    private String b;
    private String c;
    private String d;
    private String e;
    private DBNameResolver f;
    private Duration g;
    private SQLiteLogCleaner i;
    private final AtomicLong h = new AtomicLong(0);
    private final ThreadPoolExecutor j = (ThreadPoolExecutor) Executors.newFixedThreadPool(2);

    class a implements SQLiteLogCleaner {
        a() {
        }

        @Override
        public void performLogCleanup(SQLiteDatabase sQLiteDatabase, Duration duration) {
            TSSQLiteAppender.this.j.execute(TSSQLiteAppender.this.new c(sQLiteDatabase, duration));
        }
    }

    class b implements Runnable {
        private final ILoggingEvent a;

        b(ILoggingEvent iLoggingEvent) {
            this.a = iLoggingEvent;
        }

        @Override
        public void run() {
            try {
                TSSQLiteAppender tSSQLiteAppender = TSSQLiteAppender.this;
                tSSQLiteAppender.a(tSSQLiteAppender.a);
                SQLiteStatement sQLiteStatementCompileStatement = TSSQLiteAppender.this.a.compileStatement(TSSQLiteAppender.this.d);
                try {
                    TSSQLiteAppender.this.a.beginTransaction();
                    long jA = TSSQLiteAppender.this.a(this.a, sQLiteStatementCompileStatement);
                    if (jA != -1) {
                        TSSQLiteAppender.this.a(this.a, jA);
                        TSSQLiteAppender.this.a.setTransactionSuccessful();
                    }
                } catch (SQLiteException e) {
                    e.printStackTrace();
                } finally {
                    if (TSSQLiteAppender.this.a.inTransaction()) {
                        TSSQLiteAppender.this.a.endTransaction();
                    }
                    sQLiteStatementCompileStatement.close();
                }
            } catch (Throwable th) {
                TSSQLiteAppender.this.addError("Cannot append event", th);
            }
        }
    }

    private class c implements Runnable {
        private final SQLiteDatabase a;
        private final Duration b;

        c(SQLiteDatabase sQLiteDatabase, Duration duration) {
            this.a = sQLiteDatabase;
            this.b = duration;
        }

        @Override
        public void run() {
            try {
                this.a.execSQL(SQLBuilder.buildDeleteExpiredLogsSQL(TSSQLiteAppender.this.f, System.currentTimeMillis() - this.b.getMilliseconds()));
                TSLog.logger.debug(TSLog.info("Cleared logs older than " + this.b));
            } catch (SQLiteException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean destroyLog() {
        if (b() && a()) {
            TSLog.logger.debug(TSLog.notice("Destroy log success"));
            return true;
        }
        Log.e("TSLocationManager", "‼️   Failed to destroy log");
        return false;
    }

    protected void finalize() throws Throwable {
        this.a.close();
    }

    public File getDatabaseFile(String str) {
        File file = (str == null || str.trim().length() <= 0) ? null : new File(str);
        if (file == null || file.isDirectory()) {
            if (getContext() == null) {
                return null;
            }
            AndroidContextUtil androidContextUtil = new AndroidContextUtil();
            String packageName = androidContextUtil.getPackageName();
            if (packageName != null && packageName.trim().length() > 0) {
                return new File(androidContextUtil.getDatabasePath(k));
            }
        }
        return file;
    }

    public String getFilename() {
        return this.e;
    }

    public SQLiteLogCleaner getLogCleaner() {
        if (this.i == null) {
            this.i = new a();
        }
        return this.i;
    }

    public String getMaxHistory() {
        Duration duration = this.g;
        return duration != null ? duration.toString() : "";
    }

    public long getMaxHistoryMs() {
        Duration duration = this.g;
        if (duration != null) {
            return duration.getMilliseconds();
        }
        return 0L;
    }

    public void setDbNameResolver(DBNameResolver dBNameResolver) {
        this.f = dBNameResolver;
    }

    public void setFilename(String str) {
        this.e = str;
    }

    public void setLogCleaner(SQLiteLogCleaner sQLiteLogCleaner) {
        this.i = sQLiteLogCleaner;
    }

    public void setMaxHistory(String str) {
        this.g = Duration.valueOf(str);
    }

    @Override
    public void start() {
        this.started = false;
        setFilename(new AndroidContextUtil().getDatabasePath(k));
        File file = new File(this.e + DefaultDiskStorage.FileType.TEMP);
        File databaseFile = getDatabaseFile(this.e);
        if (file.exists()) {
            File file2 = new File(this.e + ".tmp-journal");
            if (file2.exists()) {
                file2.delete();
            }
            databaseFile = getDatabaseFile(this.e);
        } else if (databaseFile.exists() && databaseFile.length() / 1024 > l) {
            if (databaseFile.delete()) {
                Log.d("TSLocationManager", TSLog.warn("Detected excessively large log database file."));
            }
            databaseFile = getDatabaseFile(this.e + DefaultDiskStorage.FileType.TEMP);
            try {
                if (databaseFile.createNewFile()) {
                    Log.d("TSLocationManager", TSLog.warn("Created temporary database file"));
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (databaseFile == null) {
            addError("Cannot determine database filename");
            return;
        }
        try {
            databaseFile.getParentFile().mkdirs();
            addInfo("db path: " + databaseFile.getAbsolutePath());
            SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(databaseFile.getPath(), (SQLiteDatabase.CursorFactory) null);
            this.a = sQLiteDatabaseOpenOrCreateDatabase;
            sQLiteDatabaseOpenOrCreateDatabase.execSQL("PRAGMA foreign_keys=ON");
            if (this.f == null) {
                this.f = new DefaultDBNameResolver();
            }
            this.c = SQLBuilder.buildInsertExceptionSQL(this.f);
            this.b = SQLBuilder.buildInsertPropertiesSQL(this.f);
            this.d = SQLBuilder.buildInsertSQL(this.f);
            a();
            if (!c()) {
                Log.d("TSLocationManager", "⚠️   logback-android tables have no cascading deletes.  Re-creating logger tables with ON DELETE CASCADE");
                b();
                a();
            }
            a(this.a);
            super.start();
            this.started = true;
        } catch (SQLiteException e2) {
            addError("Cannot open database", e2);
        }
    }

    @Override
    public void stop() {
        this.a.close();
        this.h.set(0L);
    }

    private Map<String, String> b(ILoggingEvent iLoggingEvent) {
        HashMap map = new HashMap();
        Map<String, String> propertyMap = iLoggingEvent.getLoggerContextVO().getPropertyMap();
        if (propertyMap != null) {
            map.putAll(propertyMap);
        }
        Map<String, String> mDCPropertyMap = iLoggingEvent.getMDCPropertyMap();
        if (mDCPropertyMap != null) {
            map.putAll(mDCPropertyMap);
        }
        return map;
    }

    private boolean c() {
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = this.a.rawQuery("SELECT sql FROM sqlite_master WHERE name='" + this.f.getTableName(TableName.LOGGING_EVENT_PROPERTY) + "'", null);
            boolean z2 = false;
            if (cursorRawQuery.moveToFirst() && cursorRawQuery.getString(0).contains("ON DELETE CASCADE")) {
                z2 = true;
            }
            cursorRawQuery.close();
            return z2;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    @Override
    public void append(ILoggingEvent iLoggingEvent) {
        if (isStarted()) {
            this.j.execute(new b(iLoggingEvent));
        }
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        if (a(this.g, this.h.get())) {
            this.h.set(System.currentTimeMillis());
            getLogCleaner().performLogCleanup(sQLiteDatabase, this.g);
        }
    }

    private boolean a(Duration duration, long j) {
        if (duration == null || duration.getMilliseconds() <= 0) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        return j <= 0 || jCurrentTimeMillis > 86400000 || jCurrentTimeMillis >= duration.getMilliseconds();
    }

    public long a(ILoggingEvent iLoggingEvent, SQLiteStatement sQLiteStatement) throws SQLException {
        a(sQLiteStatement, iLoggingEvent);
        a(sQLiteStatement, iLoggingEvent.getArgumentArray());
        a(sQLiteStatement, iLoggingEvent.getCallerData());
        try {
            return sQLiteStatement.executeInsert();
        } catch (SQLiteException e) {
            addWarn("Failed to insert loggingEvent", e);
            return -1L;
        }
    }

    private boolean b() {
        try {
            this.a.execSQL("DROP TABLE IF EXISTS " + this.f.getTableName(TableName.LOGGING_EVENT_PROPERTY));
            this.a.execSQL("DROP TABLE IF EXISTS " + this.f.getTableName(TableName.LOGGING_EVENT_EXCEPTION));
            this.a.execSQL("DROP TABLE IF EXISTS " + this.f.getTableName(TableName.LOGGING_EVENT));
            return true;
        } catch (SQLiteException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static String b(DBNameResolver dBNameResolver) {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        StringBuilder sbAppend = sb.append(dBNameResolver.getTableName(TableName.LOGGING_EVENT_PROPERTY)).append(" (");
        ColumnName columnName = ColumnName.EVENT_ID;
        StringBuilder sbAppend2 = sbAppend.append(dBNameResolver.getColumnName(columnName)).append(" BIGINT NOT NULL, ");
        ColumnName columnName2 = ColumnName.MAPPED_KEY;
        sbAppend2.append(dBNameResolver.getColumnName(columnName2)).append(" VARCHAR(254) NOT NULL, ").append(dBNameResolver.getColumnName(ColumnName.MAPPED_VALUE)).append(" VARCHAR(254) NOT NULL, PRIMARY KEY (").append(dBNameResolver.getColumnName(columnName)).append(", ").append(dBNameResolver.getColumnName(columnName2)).append("), FOREIGN KEY (").append(dBNameResolver.getColumnName(columnName)).append(") REFERENCES ").append(dBNameResolver.getTableName(TableName.LOGGING_EVENT)).append(" (").append(dBNameResolver.getColumnName(columnName)).append(")  ON DELETE CASCADE )");
        return sb.toString();
    }

    public void a(ILoggingEvent iLoggingEvent, long j) throws SQLException {
        a(b(iLoggingEvent), j);
        if (iLoggingEvent.getThrowableProxy() != null) {
            a(iLoggingEvent.getThrowableProxy(), j);
        }
    }

    private void a(SQLiteStatement sQLiteStatement, ILoggingEvent iLoggingEvent) throws SQLException {
        sQLiteStatement.bindLong(1, iLoggingEvent.getTimeStamp());
        sQLiteStatement.bindString(2, iLoggingEvent.getFormattedMessage());
        sQLiteStatement.bindString(3, iLoggingEvent.getLoggerName());
        sQLiteStatement.bindString(4, iLoggingEvent.getLevel().toString());
        sQLiteStatement.bindString(5, iLoggingEvent.getThreadName());
        sQLiteStatement.bindLong(6, a(iLoggingEvent));
    }

    private void a(SQLiteStatement sQLiteStatement, Object[] objArr) throws SQLException {
        int length = objArr != null ? objArr.length : 0;
        for (int i = 0; i < length && i < 4; i++) {
            sQLiteStatement.bindString(i + 7, a(objArr[i]));
        }
    }

    private String a(Object obj) {
        String string = obj != null ? obj.toString() : null;
        if (string != null && string.length() > 254) {
            string = string.substring(0, 254);
        }
        return string == null ? "" : string;
    }

    private static short a(ILoggingEvent iLoggingEvent) {
        short s2 = ((iLoggingEvent.getMDCPropertyMap() != null ? iLoggingEvent.getMDCPropertyMap().keySet().size() : 0) > 0 || (iLoggingEvent.getLoggerContextVO().getPropertyMap() != null ? iLoggingEvent.getLoggerContextVO().getPropertyMap().size() : 0) > 0) ? (short) 1 : (short) 0;
        return iLoggingEvent.getThrowableProxy() != null ? (short) (s2 | 2) : s2;
    }

    private void a(Map<String, String> map, long j) throws SQLException {
        if (map.size() > 0) {
            SQLiteStatement sQLiteStatementCompileStatement = this.a.compileStatement(this.b);
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    sQLiteStatementCompileStatement.bindLong(1, j);
                    sQLiteStatementCompileStatement.bindString(2, entry.getKey());
                    sQLiteStatementCompileStatement.bindString(3, entry.getValue());
                    sQLiteStatementCompileStatement.executeInsert();
                }
                sQLiteStatementCompileStatement.close();
            } catch (Throwable th) {
                sQLiteStatementCompileStatement.close();
                throw th;
            }
        }
    }

    private void a(SQLiteStatement sQLiteStatement, StackTraceElement[] stackTraceElementArr) throws SQLException {
        StackTraceElement stackTraceElement;
        if (stackTraceElementArr == null || stackTraceElementArr.length <= 0 || (stackTraceElement = stackTraceElementArr[0]) == null) {
            return;
        }
        sQLiteStatement.bindString(11, stackTraceElement.getFileName() != null ? stackTraceElement.getFileName() : "unknown");
        sQLiteStatement.bindString(12, stackTraceElement.getClassName());
        sQLiteStatement.bindString(13, stackTraceElement.getMethodName());
        sQLiteStatement.bindString(14, Integer.toString(stackTraceElement.getLineNumber()));
    }

    private void a(SQLiteStatement sQLiteStatement, String str, short s2, long j) throws SQLException {
        sQLiteStatement.bindLong(1, j);
        sQLiteStatement.bindLong(2, s2);
        sQLiteStatement.bindString(3, str);
        sQLiteStatement.executeInsert();
    }

    private void a(IThrowableProxy iThrowableProxy, long j) throws SQLException {
        SQLiteStatement sQLiteStatementCompileStatement = this.a.compileStatement(this.c);
        short s2 = 0;
        while (iThrowableProxy != null) {
            try {
                StringBuilder sb = new StringBuilder();
                ThrowableProxyUtil.subjoinFirstLine(sb, iThrowableProxy);
                long j2 = j;
                a(sQLiteStatementCompileStatement, sb.toString(), s2, j2);
                int commonFrames = iThrowableProxy.getCommonFrames();
                StackTraceElementProxy[] stackTraceElementProxyArray = iThrowableProxy.getStackTraceElementProxyArray();
                s2 = (short) (s2 + 1);
                int i = 0;
                while (i < stackTraceElementProxyArray.length - commonFrames) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append('\t');
                    ThrowableProxyUtil.subjoinSTEP(sb2, stackTraceElementProxyArray[i]);
                    a(sQLiteStatementCompileStatement, sb2.toString(), s2, j2);
                    i++;
                    s2 = (short) (s2 + 1);
                }
                if (commonFrames > 0) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append('\t').append("... ").append(commonFrames).append(" common frames omitted");
                    a(sQLiteStatementCompileStatement, sb3.toString(), s2, j2);
                    s2 = (short) (s2 + 1);
                }
                iThrowableProxy = iThrowableProxy.getCause();
                j = j2;
            } catch (Throwable th) {
                sQLiteStatementCompileStatement.close();
                throw th;
            }
        }
        sQLiteStatementCompileStatement.close();
    }

    private boolean a() {
        try {
            this.a.execSQL(SQLBuilder.buildCreateLoggingEventTableSQL(this.f));
            this.a.execSQL(b(this.f));
            this.a.execSQL(a(this.f));
            return true;
        } catch (SQLiteException e) {
            Log.e("TSLocationManager", "Failed to create logback-android tables: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    private static String a(DBNameResolver dBNameResolver) {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        StringBuilder sbAppend = sb.append(dBNameResolver.getTableName(TableName.LOGGING_EVENT_EXCEPTION)).append(" (");
        ColumnName columnName = ColumnName.EVENT_ID;
        StringBuilder sbAppend2 = sbAppend.append(dBNameResolver.getColumnName(columnName)).append(" BIGINT NOT NULL, ");
        ColumnName columnName2 = ColumnName.I;
        sbAppend2.append(dBNameResolver.getColumnName(columnName2)).append(" SMALLINT NOT NULL, ").append(dBNameResolver.getColumnName(ColumnName.TRACE_LINE)).append(" VARCHAR(254) NOT NULL, PRIMARY KEY (").append(dBNameResolver.getColumnName(columnName)).append(", ").append(dBNameResolver.getColumnName(columnName2)).append("), FOREIGN KEY (").append(dBNameResolver.getColumnName(columnName)).append(") REFERENCES ").append(dBNameResolver.getTableName(TableName.LOGGING_EVENT)).append(" (").append(dBNameResolver.getColumnName(columnName)).append(")  ON DELETE CASCADE )");
        return sb.toString();
    }
}
