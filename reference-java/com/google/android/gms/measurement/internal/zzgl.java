package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import androidx.exifinterface.media.ExifInterface;
import com.caverock.androidsvg.SVGParser;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.List;
import sa.lg.android.locate.BuildConfig;

public final class zzgl extends zzg {
    private static final String[] zza = {"app_version", "ALTER TABLE messages ADD COLUMN app_version TEXT;", "app_version_int", "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"};
    private final zzgj zzb;
    private boolean zzc;

    zzgl(zzic zzicVar) {
        super(zzicVar);
        Context contextZzaY = this.zzu.zzaY();
        this.zzu.zzc();
        this.zzb = new zzgj(this, contextZzaY, "google_app_measurement_local.db");
    }

    private final boolean zzs(int i, byte[] bArr) throws Throwable {
        SQLiteDatabase sQLiteDatabaseZzp;
        boolean z;
        Cursor cursorRawQuery;
        zzg();
        boolean z2 = false;
        z2 = false;
        if (!this.zzc) {
            zzic zzicVar = this.zzu;
            zzal zzalVarZzc = zzicVar.zzc();
            zzfx zzfxVar = zzfy.zzbb;
            Cursor cursor = null;
            cursor = null;
            zzr zzrVarZzh = zzalVarZzc.zzp(null, zzfxVar) ? this.zzu.zzv().zzh(null) : null;
            ContentValues contentValues = new ContentValues();
            contentValues.put(SVGParser.XML_STYLESHEET_ATTR_TYPE, Integer.valueOf(i));
            contentValues.put("entry", bArr);
            if (zzicVar.zzc().zzp(null, zzfxVar) && zzrVarZzh != null) {
                contentValues.put("app_version", zzrVarZzh.zzc);
                contentValues.put("app_version_int", Long.valueOf(zzrVarZzh.zzj));
            }
            zzicVar.zzc();
            int i2 = 0;
            int i3 = 5;
            for (int i4 = 5; i2 < i4; i4 = 5) {
                try {
                    sQLiteDatabaseZzp = zzp();
                    if (sQLiteDatabaseZzp == null) {
                        this.zzc = true;
                    } else {
                        try {
                            sQLiteDatabaseZzp.beginTransaction();
                            cursorRawQuery = sQLiteDatabaseZzp.rawQuery("select count(1) from messages", null);
                            long j = 0;
                            if (cursorRawQuery != null) {
                                try {
                                    if (cursorRawQuery.moveToFirst()) {
                                        j = cursorRawQuery.getLong(z2 ? 1 : 0);
                                    }
                                } catch (SQLiteDatabaseLockedException unused) {
                                    z = z2 ? 1 : 0;
                                    SystemClock.sleep(i3);
                                    i3 += 20;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseZzp != null) {
                                        sQLiteDatabaseZzp.close();
                                    }
                                    i2++;
                                    z2 = z;
                                } catch (SQLiteFullException e) {
                                    e = e;
                                    z = z2 ? 1 : 0;
                                    this.zzu.zzaV().zzb().zzb("Error writing entry; local database full", e);
                                    this.zzc = true;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseZzp != null) {
                                        sQLiteDatabaseZzp.close();
                                    }
                                    i2++;
                                    z2 = z;
                                } catch (SQLiteException e2) {
                                    e = e2;
                                    z = z2 ? 1 : 0;
                                    if (sQLiteDatabaseZzp != null) {
                                        try {
                                            if (sQLiteDatabaseZzp.inTransaction()) {
                                                sQLiteDatabaseZzp.endTransaction();
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            cursor = cursorRawQuery;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (sQLiteDatabaseZzp != null) {
                                                sQLiteDatabaseZzp.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    this.zzu.zzaV().zzb().zzb("Error writing entry to local database", e);
                                    this.zzc = true;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseZzp != null) {
                                        sQLiteDatabaseZzp.close();
                                    }
                                    i2++;
                                    z2 = z;
                                }
                            }
                            if (j >= 100000) {
                                zzicVar.zzaV().zzb().zza("Data loss, local db full");
                                String[] strArr = new String[1];
                                long j2 = 100001 - j;
                                strArr[z2 ? 1 : 0] = Long.toString(j2);
                                long jDelete = sQLiteDatabaseZzp.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", strArr);
                                if (jDelete != j2) {
                                    zzgs zzgsVarZzb = zzicVar.zzaV().zzb();
                                    z = z2 ? 1 : 0;
                                    try {
                                        zzgsVarZzb.zzd("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j2), Long.valueOf(jDelete), Long.valueOf(j2 - jDelete));
                                    } catch (SQLiteDatabaseLockedException unused2) {
                                        SystemClock.sleep(i3);
                                        i3 += 20;
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        if (sQLiteDatabaseZzp != null) {
                                            sQLiteDatabaseZzp.close();
                                        }
                                        i2++;
                                        z2 = z;
                                    } catch (SQLiteFullException e3) {
                                        e = e3;
                                        this.zzu.zzaV().zzb().zzb("Error writing entry; local database full", e);
                                        this.zzc = true;
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        if (sQLiteDatabaseZzp != null) {
                                            sQLiteDatabaseZzp.close();
                                        }
                                        i2++;
                                        z2 = z;
                                    } catch (SQLiteException e4) {
                                        e = e4;
                                        if (sQLiteDatabaseZzp != null) {
                                            if (sQLiteDatabaseZzp.inTransaction()) {
                                                sQLiteDatabaseZzp.endTransaction();
                                            }
                                        }
                                        this.zzu.zzaV().zzb().zzb("Error writing entry to local database", e);
                                        this.zzc = true;
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        if (sQLiteDatabaseZzp != null) {
                                            sQLiteDatabaseZzp.close();
                                        }
                                        i2++;
                                        z2 = z;
                                    }
                                } else {
                                    z = z2 ? 1 : 0;
                                }
                            } else {
                                z = z2 ? 1 : 0;
                            }
                            sQLiteDatabaseZzp.insertOrThrow("messages", null, contentValues);
                            sQLiteDatabaseZzp.setTransactionSuccessful();
                            sQLiteDatabaseZzp.endTransaction();
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            sQLiteDatabaseZzp.close();
                            return true;
                        } catch (SQLiteDatabaseLockedException unused3) {
                            z = z2 ? 1 : 0;
                            cursorRawQuery = null;
                        } catch (SQLiteFullException e5) {
                            e = e5;
                            z = z2 ? 1 : 0;
                            cursorRawQuery = null;
                        } catch (SQLiteException e6) {
                            e = e6;
                            z = z2 ? 1 : 0;
                            cursorRawQuery = null;
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (sQLiteDatabaseZzp != null) {
                                sQLiteDatabaseZzp.close();
                            }
                            throw th;
                        }
                    }
                } catch (SQLiteDatabaseLockedException unused4) {
                    z = z2 ? 1 : 0;
                    sQLiteDatabaseZzp = null;
                    cursorRawQuery = null;
                } catch (SQLiteFullException e7) {
                    e = e7;
                    z = z2 ? 1 : 0;
                    sQLiteDatabaseZzp = null;
                    cursorRawQuery = null;
                } catch (SQLiteException e8) {
                    e = e8;
                    z = z2 ? 1 : 0;
                    sQLiteDatabaseZzp = null;
                    cursorRawQuery = null;
                } catch (Throwable th3) {
                    th = th3;
                    sQLiteDatabaseZzp = null;
                }
            }
            boolean z3 = z2 ? 1 : 0;
            this.zzu.zzaV().zzk().zza("Failed to write entry to local database");
            return z3;
        }
        return z2;
    }

    @Override
    protected final boolean zze() {
        return false;
    }

    public final void zzh() {
        int iDelete;
        zzg();
        try {
            SQLiteDatabase sQLiteDatabaseZzp = zzp();
            if (sQLiteDatabaseZzp == null || (iDelete = sQLiteDatabaseZzp.delete("messages", null, null)) <= 0) {
                return;
            }
            this.zzu.zzaV().zzk().zzb("Reset local analytics data. records", Integer.valueOf(iDelete));
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzb("Error resetting local analytics data. error", e);
        }
    }

    public final boolean zzi(zzbg zzbgVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzbh.zza(zzbgVar, parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return zzs(0, bArrMarshall);
        }
        this.zzu.zzaV().zzc().zza("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean zzj(zzpl zzplVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzpm.zza(zzplVar, parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return zzs(1, bArrMarshall);
        }
        this.zzu.zzaV().zzc().zza("User property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean zzk(zzah zzahVar) {
        zzic zzicVar = this.zzu;
        byte[] bArrZzae = zzicVar.zzk().zzae(zzahVar);
        if (bArrZzae.length <= 131072) {
            return zzs(2, bArrZzae);
        }
        zzicVar.zzaV().zzc().zza("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean zzl(zzbe zzbeVar) {
        zzic zzicVar = this.zzu;
        byte[] bArrZzae = zzicVar.zzk().zzae(zzbeVar);
        if (bArrZzae == null) {
            zzicVar.zzaV().zzc().zza("Null default event parameters; not writing to database");
            return false;
        }
        if (bArrZzae.length <= 131072) {
            return zzs(4, bArrZzae);
        }
        zzicVar.zzaV().zzc().zza("Default event parameters too long for local database. Sending directly to service");
        return false;
    }

    public final List zzm(int i) {
        Cursor cursor;
        ?? r13;
        int i2;
        ?? Zzp;
        Cursor cursorQuery;
        Cursor cursorQuery2;
        long j;
        ?? r17;
        ?? r16;
        int i3;
        long j2;
        String string;
        zzfx zzfxVar;
        int i4;
        int i5;
        zzbe zzbeVarCreateFromParcel;
        zzah zzahVarCreateFromParcel;
        zzpl zzplVarCreateFromParcel;
        String str = "entry";
        String str2 = SVGParser.XML_STYLESHEET_ATTR_TYPE;
        String str3 = "rowid";
        zzg();
        ?? r6 = 0;
        if (this.zzc) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!zzq()) {
            return arrayList;
        }
        int i6 = 5;
        int i7 = 0;
        int i8 = 5;
        int i9 = 0;
        while (i9 < i6) {
            int i10 = 1;
            try {
                Zzp = zzp();
                if (Zzp == 0) {
                    this.zzc = true;
                    return r6;
                }
                try {
                    try {
                        Zzp.beginTransaction();
                        try {
                            String[] strArr = new String[1];
                            strArr[i7] = str3;
                            try {
                                String[] strArr2 = new String[1];
                                strArr2[i7] = ExifInterface.GPS_MEASUREMENT_3D;
                                cursorQuery2 = Zzp.query("messages", strArr, "type=?", strArr2, null, null, "rowid desc", BuildConfig.IOS_VERSION_CODE);
                                try {
                                    long j3 = -1;
                                    if (cursorQuery2.moveToFirst()) {
                                        j = cursorQuery2.getLong(i7);
                                        if (cursorQuery2 != null) {
                                            try {
                                                cursorQuery2.close();
                                            } catch (SQLiteDatabaseLockedException unused) {
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i7 = i7;
                                                i2 = 5;
                                                cursorQuery = null;
                                                SystemClock.sleep(i8);
                                                i8 += 20;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                if (Zzp != 0) {
                                                    Zzp.close();
                                                }
                                                i9++;
                                                i7 = i7;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i6 = i2;
                                                r6 = 0;
                                            } catch (SQLiteFullException e) {
                                                e = e;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i7 = i7;
                                                i2 = 5;
                                                cursorQuery = null;
                                                this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                                this.zzc = true;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                if (Zzp != 0) {
                                                    Zzp.close();
                                                }
                                                i9++;
                                                i7 = i7;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i6 = i2;
                                                r6 = 0;
                                            } catch (SQLiteException e2) {
                                                e = e2;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i7 = i7;
                                                i2 = 5;
                                                cursorQuery = null;
                                                if (Zzp != 0) {
                                                    Zzp.endTransaction();
                                                }
                                                this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                                this.zzc = true;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                if (Zzp != 0) {
                                                    Zzp.close();
                                                }
                                                i9++;
                                                i7 = i7;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i6 = i2;
                                                r6 = 0;
                                            }
                                        }
                                        i9++;
                                        i7 = i7;
                                        str = str;
                                        str2 = str2;
                                        str3 = str3;
                                        i6 = i2;
                                        r6 = 0;
                                    } else {
                                        if (cursorQuery2 != null) {
                                            cursorQuery2.close();
                                        }
                                        j = -1;
                                    }
                                    if (j != -1) {
                                        String[] strArr3 = new String[1];
                                        strArr3[i7] = String.valueOf(j);
                                        r16 = "rowid<?";
                                        r17 = strArr3;
                                    } else {
                                        ?? r18 = r6;
                                        r17 = r18;
                                        r16 = r18;
                                    }
                                    String[] strArr4 = new String[3];
                                    strArr4[i7] = str3;
                                    strArr4[1] = str2;
                                    strArr4[2] = str;
                                    zzic zzicVar = this.zzu;
                                    ?? Zzc = zzicVar.zzc();
                                    int i11 = 3;
                                    zzfx zzfxVar2 = zzfy.zzbb;
                                    if (Zzc.zzp(r6, zzfxVar2)) {
                                        try {
                                            strArr4 = new String[5];
                                            strArr4[i7] = str3;
                                            strArr4[1] = str2;
                                            strArr4[2] = str;
                                            strArr4[3] = "app_version";
                                            strArr4[4] = "app_version_int";
                                            i3 = 5;
                                        } catch (SQLiteDatabaseLockedException unused2) {
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i7 = i7;
                                            i2 = 5;
                                            cursorQuery = null;
                                            SystemClock.sleep(i8);
                                            i8 += 20;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (Zzp != 0) {
                                                Zzp.close();
                                            }
                                            i9++;
                                            i7 = i7;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i6 = i2;
                                            r6 = 0;
                                        } catch (SQLiteFullException e3) {
                                            e = e3;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i7 = i7;
                                            i2 = 5;
                                            cursorQuery = null;
                                            this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                            this.zzc = true;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (Zzp != 0) {
                                                Zzp.close();
                                            }
                                            i9++;
                                            i7 = i7;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i6 = i2;
                                            r6 = 0;
                                        } catch (SQLiteException e4) {
                                            e = e4;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i7 = i7;
                                            i2 = 5;
                                            cursorQuery = null;
                                            if (Zzp != 0) {
                                                Zzp.endTransaction();
                                            }
                                            this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                            this.zzc = true;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (Zzp != 0) {
                                                Zzp.close();
                                            }
                                            i9++;
                                            i7 = i7;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i6 = i2;
                                            r6 = 0;
                                        }
                                    } else {
                                        i3 = 5;
                                    }
                                    try {
                                        i2 = i3;
                                        int i12 = 2;
                                        try {
                                            cursorQuery = Zzp.query("messages", strArr4, r16, r17, null, null, "rowid asc", Integer.toString(100));
                                            while (cursorQuery.moveToNext()) {
                                                try {
                                                    try {
                                                        try {
                                                            try {
                                                                j3 = cursorQuery.getLong(i7);
                                                                int i13 = cursorQuery.getInt(i10);
                                                                byte[] blob = cursorQuery.getBlob(i12);
                                                                try {
                                                                    if (zzicVar.zzc().zzp(null, zzfxVar2)) {
                                                                        string = cursorQuery.getString(i11);
                                                                        j2 = cursorQuery.getLong(4);
                                                                    } else {
                                                                        j2 = 0;
                                                                        string = null;
                                                                    }
                                                                    String str4 = str;
                                                                    long j4 = j2;
                                                                    str2 = str2;
                                                                    if (i13 == 0) {
                                                                        try {
                                                                            Parcel parcelObtain = Parcel.obtain();
                                                                            zzfxVar = zzfxVar2;
                                                                            try {
                                                                                str3 = str3;
                                                                                try {
                                                                                    try {
                                                                                        parcelObtain.unmarshall(blob, 0, blob.length);
                                                                                        parcelObtain.setDataPosition(0);
                                                                                        zzbg zzbgVarCreateFromParcel = zzbg.CREATOR.createFromParcel(parcelObtain);
                                                                                        try {
                                                                                            parcelObtain.recycle();
                                                                                            if (zzbgVarCreateFromParcel != null) {
                                                                                                arrayList.add(new zzgk(zzbgVarCreateFromParcel, string, j4));
                                                                                            }
                                                                                        } catch (SQLiteDatabaseLockedException unused3) {
                                                                                            str = str4;
                                                                                            i7 = 0;
                                                                                            SystemClock.sleep(i8);
                                                                                            i8 += 20;
                                                                                            if (cursorQuery != null) {
                                                                                                cursorQuery.close();
                                                                                            }
                                                                                            if (Zzp != 0) {
                                                                                                Zzp.close();
                                                                                            }
                                                                                            i9++;
                                                                                            i7 = i7;
                                                                                            str = str;
                                                                                            str2 = str2;
                                                                                            str3 = str3;
                                                                                            i6 = i2;
                                                                                            r6 = 0;
                                                                                        } catch (SQLiteFullException e5) {
                                                                                            e = e5;
                                                                                            str = str4;
                                                                                            i7 = 0;
                                                                                            this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                                                                            this.zzc = true;
                                                                                            if (cursorQuery != null) {
                                                                                                cursorQuery.close();
                                                                                            }
                                                                                            if (Zzp != 0) {
                                                                                                Zzp.close();
                                                                                            }
                                                                                            i9++;
                                                                                            i7 = i7;
                                                                                            str = str;
                                                                                            str2 = str2;
                                                                                            str3 = str3;
                                                                                            i6 = i2;
                                                                                            r6 = 0;
                                                                                        } catch (SQLiteException e6) {
                                                                                            e = e6;
                                                                                            str = str4;
                                                                                            i7 = 0;
                                                                                            if (Zzp != 0 && Zzp.inTransaction()) {
                                                                                                Zzp.endTransaction();
                                                                                            }
                                                                                            this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                                                                            this.zzc = true;
                                                                                            if (cursorQuery != null) {
                                                                                                cursorQuery.close();
                                                                                            }
                                                                                            if (Zzp != 0) {
                                                                                                Zzp.close();
                                                                                            }
                                                                                            i9++;
                                                                                            i7 = i7;
                                                                                            str = str;
                                                                                            str2 = str2;
                                                                                            str3 = str3;
                                                                                            i6 = i2;
                                                                                            r6 = 0;
                                                                                        }
                                                                                    } catch (SafeParcelReader.ParseException unused4) {
                                                                                        this.zzu.zzaV().zzb().zza("Failed to load event from local database");
                                                                                        parcelObtain.recycle();
                                                                                    }
                                                                                } catch (Throwable th) {
                                                                                    th = th;
                                                                                    parcelObtain.recycle();
                                                                                    throw th;
                                                                                }
                                                                            } catch (SafeParcelReader.ParseException unused5) {
                                                                                str3 = str3;
                                                                            } catch (Throwable th2) {
                                                                                th = th2;
                                                                            }
                                                                            str = str4;
                                                                            i5 = 2;
                                                                            i4 = 3;
                                                                        } catch (SQLiteDatabaseLockedException unused6) {
                                                                            str3 = str3;
                                                                        } catch (SQLiteFullException e7) {
                                                                            e = e7;
                                                                            str3 = str3;
                                                                        } catch (SQLiteException e8) {
                                                                            e = e8;
                                                                            str3 = str3;
                                                                        }
                                                                    } else {
                                                                        zzfxVar = zzfxVar2;
                                                                        str3 = str3;
                                                                        if (i13 == 1) {
                                                                            Parcel parcelObtain2 = Parcel.obtain();
                                                                            try {
                                                                                try {
                                                                                    parcelObtain2.unmarshall(blob, 0, blob.length);
                                                                                    parcelObtain2.setDataPosition(0);
                                                                                    zzplVarCreateFromParcel = zzpl.CREATOR.createFromParcel(parcelObtain2);
                                                                                    parcelObtain2.recycle();
                                                                                } catch (Throwable th3) {
                                                                                    parcelObtain2.recycle();
                                                                                    throw th3;
                                                                                }
                                                                            } catch (SafeParcelReader.ParseException unused7) {
                                                                                this.zzu.zzaV().zzb().zza("Failed to load user property from local database");
                                                                                parcelObtain2.recycle();
                                                                                zzplVarCreateFromParcel = null;
                                                                            }
                                                                            if (zzplVarCreateFromParcel != null) {
                                                                                arrayList.add(new zzgk(zzplVarCreateFromParcel, string, j4));
                                                                            }
                                                                            str = str4;
                                                                            i5 = 2;
                                                                            i4 = 3;
                                                                        } else {
                                                                            i5 = 2;
                                                                            if (i13 == 2) {
                                                                                Parcel parcelObtain3 = Parcel.obtain();
                                                                                try {
                                                                                    str = str4;
                                                                                    try {
                                                                                        try {
                                                                                            parcelObtain3.unmarshall(blob, 0, blob.length);
                                                                                            parcelObtain3.setDataPosition(0);
                                                                                            zzahVarCreateFromParcel = zzah.CREATOR.createFromParcel(parcelObtain3);
                                                                                            try {
                                                                                                parcelObtain3.recycle();
                                                                                                if (zzahVarCreateFromParcel != null) {
                                                                                                    arrayList.add(new zzgk(zzahVarCreateFromParcel, string, j4));
                                                                                                }
                                                                                            } catch (SQLiteDatabaseLockedException unused8) {
                                                                                                i7 = 0;
                                                                                                SystemClock.sleep(i8);
                                                                                                i8 += 20;
                                                                                                if (cursorQuery != null) {
                                                                                                    cursorQuery.close();
                                                                                                }
                                                                                                if (Zzp != 0) {
                                                                                                    Zzp.close();
                                                                                                }
                                                                                                i9++;
                                                                                                i7 = i7;
                                                                                                str = str;
                                                                                                str2 = str2;
                                                                                                str3 = str3;
                                                                                                i6 = i2;
                                                                                                r6 = 0;
                                                                                            } catch (SQLiteFullException e9) {
                                                                                                e = e9;
                                                                                                i7 = 0;
                                                                                                this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                                                                                this.zzc = true;
                                                                                                if (cursorQuery != null) {
                                                                                                    cursorQuery.close();
                                                                                                }
                                                                                                if (Zzp != 0) {
                                                                                                    Zzp.close();
                                                                                                }
                                                                                                i9++;
                                                                                                i7 = i7;
                                                                                                str = str;
                                                                                                str2 = str2;
                                                                                                str3 = str3;
                                                                                                i6 = i2;
                                                                                                r6 = 0;
                                                                                            } catch (SQLiteException e10) {
                                                                                                e = e10;
                                                                                                i7 = 0;
                                                                                                if (Zzp != 0) {
                                                                                                    Zzp.endTransaction();
                                                                                                }
                                                                                                this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                                                                                this.zzc = true;
                                                                                                if (cursorQuery != null) {
                                                                                                    cursorQuery.close();
                                                                                                }
                                                                                                if (Zzp != 0) {
                                                                                                    Zzp.close();
                                                                                                }
                                                                                                i9++;
                                                                                                i7 = i7;
                                                                                                str = str;
                                                                                                str2 = str2;
                                                                                                str3 = str3;
                                                                                                i6 = i2;
                                                                                                r6 = 0;
                                                                                            }
                                                                                        } catch (SafeParcelReader.ParseException unused9) {
                                                                                            this.zzu.zzaV().zzb().zza("Failed to load conditional user property from local database");
                                                                                            parcelObtain3.recycle();
                                                                                            zzahVarCreateFromParcel = null;
                                                                                        }
                                                                                    } catch (Throwable th4) {
                                                                                        th = th4;
                                                                                        parcelObtain3.recycle();
                                                                                        throw th;
                                                                                    }
                                                                                } catch (SafeParcelReader.ParseException unused10) {
                                                                                    str = str4;
                                                                                } catch (Throwable th5) {
                                                                                    th = th5;
                                                                                }
                                                                            } else {
                                                                                str = str4;
                                                                                if (i13 == 4) {
                                                                                    Parcel parcelObtain4 = Parcel.obtain();
                                                                                    try {
                                                                                        try {
                                                                                            parcelObtain4.unmarshall(blob, 0, blob.length);
                                                                                            parcelObtain4.setDataPosition(0);
                                                                                            zzbeVarCreateFromParcel = zzbe.CREATOR.createFromParcel(parcelObtain4);
                                                                                            parcelObtain4.recycle();
                                                                                        } catch (Throwable th6) {
                                                                                            parcelObtain4.recycle();
                                                                                            throw th6;
                                                                                        }
                                                                                    } catch (SafeParcelReader.ParseException unused11) {
                                                                                        this.zzu.zzaV().zzb().zza("Failed to load default event parameters from local database");
                                                                                        parcelObtain4.recycle();
                                                                                        zzbeVarCreateFromParcel = null;
                                                                                    }
                                                                                    if (zzbeVarCreateFromParcel != null) {
                                                                                        arrayList.add(new zzgk(zzbeVarCreateFromParcel, string, j4));
                                                                                    }
                                                                                } else {
                                                                                    i4 = 3;
                                                                                    if (i13 == 3) {
                                                                                        this.zzu.zzaV().zzk().zza("Skipping app launch break");
                                                                                    } else {
                                                                                        this.zzu.zzaV().zzb().zza("Unknown record type in local database");
                                                                                    }
                                                                                }
                                                                            }
                                                                            i4 = 3;
                                                                        }
                                                                    }
                                                                    i11 = i4;
                                                                    str = str;
                                                                    str2 = str2;
                                                                    str3 = str3;
                                                                    i7 = 0;
                                                                    i10 = 1;
                                                                    i12 = i5;
                                                                    zzfxVar2 = zzfxVar;
                                                                } catch (SQLiteDatabaseLockedException unused12) {
                                                                    str = str;
                                                                    str2 = str2;
                                                                    str3 = str3;
                                                                }
                                                            } catch (SQLiteFullException e11) {
                                                                e = e11;
                                                                str = str;
                                                                str2 = str2;
                                                                str3 = str3;
                                                            } catch (SQLiteException e12) {
                                                                e = e12;
                                                                str = str;
                                                                str2 = str2;
                                                                str3 = str3;
                                                            }
                                                        } catch (SQLiteDatabaseLockedException unused13) {
                                                            str = str;
                                                            str2 = str2;
                                                            str3 = str3;
                                                            i7 = i7;
                                                        }
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        cursor = cursorQuery;
                                                        r13 = Zzp;
                                                        if (cursor != null) {
                                                            cursor.close();
                                                        }
                                                        if (r13 != 0) {
                                                            r13.close();
                                                        }
                                                        throw th;
                                                    }
                                                } catch (SQLiteFullException e13) {
                                                    e = e13;
                                                    str = str;
                                                    str2 = str2;
                                                    str3 = str3;
                                                    i7 = i7;
                                                } catch (SQLiteException e14) {
                                                    e = e14;
                                                    str = str;
                                                    str2 = str2;
                                                    str3 = str3;
                                                    i7 = i7;
                                                }
                                            }
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            String[] strArr5 = new String[1];
                                            i7 = 0;
                                            try {
                                                strArr5[0] = Long.toString(j3);
                                                if (Zzp.delete("messages", "rowid <= ?", strArr5) < arrayList.size()) {
                                                    this.zzu.zzaV().zzb().zza("Fewer entries removed from local database than expected");
                                                }
                                                Zzp.setTransactionSuccessful();
                                                Zzp.endTransaction();
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                Zzp.close();
                                                return arrayList;
                                            } catch (SQLiteDatabaseLockedException unused14) {
                                                SystemClock.sleep(i8);
                                                i8 += 20;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                if (Zzp != 0) {
                                                    Zzp.close();
                                                }
                                                i9++;
                                                i7 = i7;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i6 = i2;
                                                r6 = 0;
                                            } catch (SQLiteFullException e15) {
                                                e = e15;
                                                this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                                this.zzc = true;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                if (Zzp != 0) {
                                                    Zzp.close();
                                                }
                                                i9++;
                                                i7 = i7;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i6 = i2;
                                                r6 = 0;
                                            } catch (SQLiteException e16) {
                                                e = e16;
                                                if (Zzp != 0) {
                                                    Zzp.endTransaction();
                                                }
                                                this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                                this.zzc = true;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                if (Zzp != 0) {
                                                    Zzp.close();
                                                }
                                                i9++;
                                                i7 = i7;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i6 = i2;
                                                r6 = 0;
                                            }
                                        } catch (SQLiteDatabaseLockedException unused15) {
                                            i7 = i7;
                                            cursorQuery = null;
                                            SystemClock.sleep(i8);
                                            i8 += 20;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (Zzp != 0) {
                                                Zzp.close();
                                            }
                                            i9++;
                                            i7 = i7;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i6 = i2;
                                            r6 = 0;
                                        } catch (SQLiteFullException e17) {
                                            e = e17;
                                            i7 = i7;
                                            cursorQuery = null;
                                            this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                            this.zzc = true;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (Zzp != 0) {
                                                Zzp.close();
                                            }
                                            i9++;
                                            i7 = i7;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i6 = i2;
                                            r6 = 0;
                                        } catch (SQLiteException e18) {
                                            e = e18;
                                            i7 = i7;
                                            cursorQuery = null;
                                            if (Zzp != 0) {
                                                Zzp.endTransaction();
                                            }
                                            this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                            this.zzc = true;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (Zzp != 0) {
                                                Zzp.close();
                                            }
                                            i9++;
                                            i7 = i7;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i6 = i2;
                                            r6 = 0;
                                        }
                                    } catch (SQLiteDatabaseLockedException unused16) {
                                        str = str;
                                        str3 = str3;
                                        i7 = i7;
                                        i2 = i3;
                                        str2 = str2;
                                        cursorQuery = null;
                                        SystemClock.sleep(i8);
                                        i8 += 20;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (Zzp != 0) {
                                            Zzp.close();
                                        }
                                        i9++;
                                        i7 = i7;
                                        str = str;
                                        str2 = str2;
                                        str3 = str3;
                                        i6 = i2;
                                        r6 = 0;
                                    } catch (SQLiteFullException e19) {
                                        e = e19;
                                        str = str;
                                        str3 = str3;
                                        i7 = i7;
                                        i2 = i3;
                                        str2 = str2;
                                        cursorQuery = null;
                                        this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                        this.zzc = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (Zzp != 0) {
                                            Zzp.close();
                                        }
                                        i9++;
                                        i7 = i7;
                                        str = str;
                                        str2 = str2;
                                        str3 = str3;
                                        i6 = i2;
                                        r6 = 0;
                                    } catch (SQLiteException e20) {
                                        e = e20;
                                        str = str;
                                        str3 = str3;
                                        i7 = i7;
                                        i2 = i3;
                                        str2 = str2;
                                        cursorQuery = null;
                                        if (Zzp != 0) {
                                            Zzp.endTransaction();
                                        }
                                        this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                        this.zzc = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (Zzp != 0) {
                                            Zzp.close();
                                        }
                                        i9++;
                                        i7 = i7;
                                        str = str;
                                        str2 = str2;
                                        str3 = str3;
                                        i6 = i2;
                                        r6 = 0;
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    str = str;
                                    str2 = str2;
                                    str3 = str3;
                                    i7 = i7;
                                    i2 = 5;
                                    if (cursorQuery2 != null) {
                                        try {
                                            cursorQuery2.close();
                                        } catch (SQLiteDatabaseLockedException unused17) {
                                            cursorQuery = null;
                                            SystemClock.sleep(i8);
                                            i8 += 20;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (Zzp != 0) {
                                                Zzp.close();
                                            }
                                            i9++;
                                            i7 = i7;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i6 = i2;
                                            r6 = 0;
                                        } catch (SQLiteFullException e21) {
                                            e = e21;
                                            cursorQuery = null;
                                            this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                            this.zzc = true;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (Zzp != 0) {
                                                Zzp.close();
                                            }
                                            i9++;
                                            i7 = i7;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i6 = i2;
                                            r6 = 0;
                                        } catch (SQLiteException e22) {
                                            e = e22;
                                            cursorQuery = null;
                                            if (Zzp != 0) {
                                                Zzp.endTransaction();
                                            }
                                            this.zzu.zzaV().zzb().zzb("Error reading entries from local database", e);
                                            this.zzc = true;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            if (Zzp != 0) {
                                                Zzp.close();
                                            }
                                            i9++;
                                            i7 = i7;
                                            str = str;
                                            str2 = str2;
                                            str3 = str3;
                                            i6 = i2;
                                            r6 = 0;
                                        }
                                    }
                                    throw th;
                                }
                            } catch (Throwable th9) {
                                th = th9;
                                i2 = 5;
                                cursorQuery2 = null;
                                if (cursorQuery2 != null) {
                                    cursorQuery2.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th10) {
                            th = th10;
                            i2 = i6;
                        }
                    } catch (Throwable th11) {
                        th = th11;
                        cursor = null;
                        r13 = Zzp;
                    }
                } catch (SQLiteDatabaseLockedException unused18) {
                    i2 = i6;
                } catch (SQLiteFullException e23) {
                    e = e23;
                    i2 = i6;
                } catch (SQLiteException e24) {
                    e = e24;
                    i2 = i6;
                }
            } catch (SQLiteDatabaseLockedException unused19) {
                str = str;
                str2 = str2;
                str3 = str3;
                i2 = i6;
                i7 = i7;
                Zzp = 0;
            } catch (SQLiteFullException e25) {
                e = e25;
                str = str;
                str2 = str2;
                str3 = str3;
                i2 = i6;
                i7 = i7;
                Zzp = 0;
            } catch (SQLiteException e26) {
                e = e26;
                str = str;
                str2 = str2;
                str3 = str3;
                i2 = i6;
                i7 = i7;
                Zzp = 0;
            } catch (Throwable th12) {
                th = th12;
                cursor = null;
                r13 = 0;
            }
        }
        this.zzu.zzaV().zze().zza("Failed to read events from database in reasonable time");
        return null;
    }

    public final boolean zzn() {
        return zzs(3, new byte[0]);
    }

    public final boolean zzo() {
        zzg();
        if (!this.zzc && zzq()) {
            int i = 5;
            for (int i2 = 0; i2 < 5; i2++) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    try {
                        try {
                            SQLiteDatabase sQLiteDatabaseZzp = zzp();
                            if (sQLiteDatabaseZzp != null) {
                                sQLiteDatabaseZzp.beginTransaction();
                                sQLiteDatabaseZzp.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                                sQLiteDatabaseZzp.setTransactionSuccessful();
                                sQLiteDatabaseZzp.endTransaction();
                                sQLiteDatabaseZzp.close();
                                return true;
                            }
                            this.zzc = true;
                        } catch (SQLiteFullException e) {
                            this.zzu.zzaV().zzb().zzb("Error deleting app launch break from local database", e);
                            this.zzc = true;
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                        }
                    } catch (SQLiteException e2) {
                        if (0 != 0) {
                            try {
                                if (sQLiteDatabase.inTransaction()) {
                                    sQLiteDatabase.endTransaction();
                                }
                            } catch (Throwable th) {
                                if (0 != 0) {
                                    sQLiteDatabase.close();
                                }
                                throw th;
                            }
                        }
                        this.zzu.zzaV().zzb().zzb("Error deleting app launch break from local database", e2);
                        this.zzc = true;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                    }
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i);
                    i += 20;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            this.zzu.zzaV().zze().zza("Error deleting app launch break from local database in reasonable time");
        }
        return false;
    }

    final SQLiteDatabase zzp() throws SQLiteException {
        if (this.zzc) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zzb.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzc = true;
        return null;
    }

    final boolean zzq() {
        zzic zzicVar = this.zzu;
        Context contextZzaY = zzicVar.zzaY();
        zzicVar.zzc();
        return contextZzaY.getDatabasePath("google_app_measurement_local.db").exists();
    }
}
