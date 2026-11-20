package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import java.util.Objects;

final class zzgj extends com.google.android.gms.internal.measurement.zzby {
    final zzgl zza;

    zzgj(zzgl zzglVar, Context context, String str) {
        super(context, "google_app_measurement_local.db", null, 1);
        Objects.requireNonNull(zzglVar);
        this.zza = zzglVar;
    }

    @Override
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException unused) {
            zzic zzicVar = this.zza.zzu;
            zzicVar.zzaV().zzb().zza("Opening the local database failed, dropping and recreating it");
            zzicVar.zzc();
            if (!zzicVar.zzaY().getDatabasePath("google_app_measurement_local.db").delete()) {
                zzicVar.zzaV().zzb().zzb("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e2) {
                this.zza.zzu.zzaV().zzb().zzb("Failed to open local database. Events will bypass local storage", e2);
                return null;
            }
        }
    }

    @Override
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        zzaw.zzb(this.zza.zzu.zzaV(), sQLiteDatabase);
    }

    @Override
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override
    public final void onOpen(SQLiteDatabase sQLiteDatabase) throws Throwable {
        zzaw.zza(this.zza.zzu.zzaV(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", zzgl.zza);
    }

    @Override
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
