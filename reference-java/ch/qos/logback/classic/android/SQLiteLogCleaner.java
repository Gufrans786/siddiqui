package ch.qos.logback.classic.android;

import android.database.sqlite.SQLiteDatabase;
import ch.qos.logback.core.util.Duration;

public interface SQLiteLogCleaner {
    void performLogCleanup(SQLiteDatabase sQLiteDatabase, Duration duration);
}
