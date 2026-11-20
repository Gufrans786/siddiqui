package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;

public interface AutoMigrationSpec {
    default void onPostMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
    }
}
