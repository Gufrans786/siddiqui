package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

final class zzz {
    final zzad zza;
    private com.google.android.gms.internal.measurement.zzhs zzb;
    private Long zzc;
    private long zzd;

    zzz(zzad zzadVar, byte[] bArr) {
        Objects.requireNonNull(zzadVar);
        this.zza = zzadVar;
    }

    final com.google.android.gms.internal.measurement.zzhs zza(String str, com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        zzav zzavVarZzj;
        ?? r7;
        com.google.android.gms.internal.measurement.zzhs zzhsVar2;
        long j;
        Cursor cursorRawQuery;
        ?? r0;
        Pair pairCreate;
        Pair pair;
        ?? LongValue;
        String strZzd = zzhsVar.zzd();
        List listZza = zzhsVar.zza();
        zzad zzadVar = this.zza;
        zzpg zzpgVar = zzadVar.zzg;
        zzpgVar.zzp();
        Long l = (Long) zzpk.zzI(zzhsVar, "_eid");
        if (l != null) {
            if (strZzd.equals("_ep")) {
                Preconditions.checkNotNull(l);
                zzpgVar.zzp();
                String str2 = (String) zzpk.zzI(zzhsVar, "_en");
                if (TextUtils.isEmpty(str2)) {
                    zzadVar.zzu.zzaV().zzc().zzb("Extra parameter without an event name. eventId", l);
                    return null;
                }
                if (this.zzb == null || this.zzc == null) {
                    zzavVarZzj = zzpgVar.zzj();
                    zzavVarZzj.zzg();
                    zzavVarZzj.zzaw();
                    try {
                        try {
                            cursorRawQuery = zzavVarZzj.zze().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, l.toString()});
                            try {
                                if (cursorRawQuery.moveToFirst()) {
                                    zzhsVar2 = null;
                                    try {
                                        try {
                                            pairCreate = Pair.create((com.google.android.gms.internal.measurement.zzhs) ((com.google.android.gms.internal.measurement.zzhr) zzpk.zzw(com.google.android.gms.internal.measurement.zzhs.zzk(), cursorRawQuery.getBlob(0))).zzbc(), Long.valueOf(cursorRawQuery.getLong(1)));
                                            pair = pairCreate;
                                            if (cursorRawQuery != null) {
                                                cursorRawQuery.close();
                                                pair = pairCreate;
                                            }
                                        } catch (IOException e) {
                                            j = 0;
                                            try {
                                                zzavVarZzj.zzu.zzaV().zzb().zzd("Failed to merge main event. appId, eventId", zzgu.zzl(str), l, e);
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                            } catch (SQLiteException e2) {
                                                e = e2;
                                                zzavVarZzj.zzu.zzaV().zzb().zzb("Error selecting main event", e);
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                                r0 = zzhsVar2;
                                                if (r0 != 0) {
                                                }
                                                this.zza.zzu.zzaV().zzc().zzc("Extra parameter without existing main event. eventName, eventId", str2, l);
                                                return zzhsVar2;
                                            }
                                            r0 = zzhsVar2;
                                        }
                                    } catch (SQLiteException e3) {
                                        e = e3;
                                        j = 0;
                                        zzavVarZzj.zzu.zzaV().zzb().zzb("Error selecting main event", e);
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        r0 = zzhsVar2;
                                    }
                                } else {
                                    zzavVarZzj.zzu.zzaV().zzk().zza("Main event not found");
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    pair = null;
                                    zzhsVar2 = null;
                                }
                                j = 0;
                                r0 = pair;
                            } catch (SQLiteException e4) {
                                e = e4;
                                zzhsVar2 = null;
                            }
                        } catch (Throwable th) {
                            th = th;
                            r7 = LongValue;
                            if (r7 != 0) {
                                r7.close();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e5) {
                        e = e5;
                        zzhsVar2 = null;
                        j = 0;
                        cursorRawQuery = null;
                    } catch (Throwable th2) {
                        th = th2;
                        r7 = 0;
                        if (r7 != 0) {
                            r7.close();
                        }
                        throw th;
                    }
                    if (r0 != 0 || ((Pair) r0).first == null) {
                        this.zza.zzu.zzaV().zzc().zzc("Extra parameter without existing main event. eventName, eventId", str2, l);
                        return zzhsVar2;
                    }
                    this.zzb = (com.google.android.gms.internal.measurement.zzhs) ((Pair) r0).first;
                    this.zzd = ((Long) ((Pair) r0).second).longValue();
                    this.zza.zzg.zzp();
                    this.zzc = (Long) zzpk.zzI(this.zzb, "_eid");
                } else {
                    LongValue = l.longValue();
                    if (LongValue != this.zzc.longValue()) {
                        zzavVarZzj = zzpgVar.zzj();
                        zzavVarZzj.zzg();
                        zzavVarZzj.zzaw();
                        cursorRawQuery = zzavVarZzj.zze().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, l.toString()});
                        if (cursorRawQuery.moveToFirst()) {
                            zzavVarZzj.zzu.zzaV().zzk().zza("Main event not found");
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            pair = null;
                            zzhsVar2 = null;
                        } else {
                            zzhsVar2 = null;
                            pairCreate = Pair.create((com.google.android.gms.internal.measurement.zzhs) ((com.google.android.gms.internal.measurement.zzhr) zzpk.zzw(com.google.android.gms.internal.measurement.zzhs.zzk(), cursorRawQuery.getBlob(0))).zzbc(), Long.valueOf(cursorRawQuery.getLong(1)));
                            pair = pairCreate;
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                                pair = pairCreate;
                            }
                        }
                        j = 0;
                        r0 = pair;
                        if (r0 != 0) {
                        }
                        this.zza.zzu.zzaV().zzc().zzc("Extra parameter without existing main event. eventName, eventId", str2, l);
                        return zzhsVar2;
                    }
                    j = 0;
                }
                long j2 = this.zzd - 1;
                this.zzd = j2;
                if (j2 <= j) {
                    zzav zzavVarZzj2 = this.zza.zzg.zzj();
                    zzavVarZzj2.zzg();
                    zzavVarZzj2.zzu.zzaV().zzk().zzb("Clearing complex main event info. appId", str);
                    try {
                        zzavVarZzj2.zze().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                    } catch (SQLiteException e6) {
                        zzavVarZzj2.zzu.zzaV().zzb().zzb("Error clearing complex main event", e6);
                    }
                } else {
                    this.zza.zzg.zzj().zzT(str, l, this.zzd, this.zzb);
                }
                ArrayList arrayList = new ArrayList();
                for (com.google.android.gms.internal.measurement.zzhw zzhwVar : this.zzb.zza()) {
                    this.zza.zzg.zzp();
                    if (zzpk.zzF(zzhsVar, zzhwVar.zzb()) == null) {
                        arrayList.add(zzhwVar);
                    }
                }
                if (arrayList.isEmpty()) {
                    this.zza.zzu.zzaV().zzc().zzb("No unique parameters in main event. eventName", str2);
                } else {
                    arrayList.addAll(listZza);
                    listZza = arrayList;
                }
                strZzd = str2;
            } else {
                this.zzc = l;
                this.zzb = zzhsVar;
                zzpgVar.zzp();
                long jLongValue = ((Long) zzpk.zzJ(zzhsVar, "_epc", 0L)).longValue();
                this.zzd = jLongValue;
                if (jLongValue <= 0) {
                    zzadVar.zzu.zzaV().zzc().zzb("Complex event with zero extra param count. eventName", strZzd);
                } else {
                    zzpgVar.zzj().zzT(str, (Long) Preconditions.checkNotNull(l), this.zzd, zzhsVar);
                }
            }
        }
        com.google.android.gms.internal.measurement.zzhr zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzhsVar.zzcl();
        zzhrVar.zzl(strZzd);
        zzhrVar.zzi();
        zzhrVar.zzh(listZza);
        return (com.google.android.gms.internal.measurement.zzhs) zzhrVar.zzbc();
    }
}
