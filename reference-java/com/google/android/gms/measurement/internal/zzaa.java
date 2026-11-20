package com.google.android.gms.measurement.internal;

import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzpu;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

final class zzaa extends zzab {
    final zzad zza;
    private final com.google.android.gms.internal.measurement.zzff zzh;

    zzaa(zzad zzadVar, String str, int i, com.google.android.gms.internal.measurement.zzff zzffVar) {
        super(str, i);
        Objects.requireNonNull(zzadVar);
        this.zza = zzadVar;
        this.zzh = zzffVar;
    }

    @Override
    final int zza() {
        return this.zzh.zzb();
    }

    @Override
    final boolean zzb() {
        return false;
    }

    @Override
    final boolean zzc() {
        return this.zzh.zzg();
    }

    final boolean zzd(Long l, Long l2, com.google.android.gms.internal.measurement.zzhs zzhsVar, long j, zzbc zzbcVar, boolean z) {
        HashSet hashSet;
        Iterator it;
        ArrayMap arrayMap;
        Iterator it2;
        Iterator it3;
        com.google.android.gms.internal.measurement.zzfh zzfhVar;
        boolean z2;
        String strZzh;
        V v;
        Boolean boolZzg;
        Boolean boolZzh;
        String str;
        Boolean boolZzi;
        com.google.android.gms.internal.measurement.zzhw zzhwVar;
        Long lValueOf;
        Double dValueOf;
        com.google.android.gms.internal.measurement.zzfh zzfhVar2;
        zzpu.zza();
        zzad zzadVar = this.zza;
        zzic zzicVar = zzadVar.zzu;
        zzal zzalVarZzc = zzicVar.zzc();
        String str2 = this.zzb;
        boolean zZzp = zzalVarZzc.zzp(str2, zzfy.zzaF);
        com.google.android.gms.internal.measurement.zzff zzffVar = this.zzh;
        long j2 = zzffVar.zzm() ? zzbcVar.zze : j;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        Boolean bool = null;
        if (Log.isLoggable(zzicVar.zzaV().zzn(), 2)) {
            zzicVar.zzaV().zzk().zzd("Evaluating filter. audience, filter, event", Integer.valueOf(this.zzc), zzffVar.zza() ? Integer.valueOf(zzffVar.zzb()) : null, zzicVar.zzl().zza(zzffVar.zzc()));
            zzicVar.zzaV().zzk().zzb("Filter definition", zzadVar.zzg.zzp().zzj(zzffVar));
        }
        if (!zzffVar.zza() || zzffVar.zzb() > 256) {
            zzicVar.zzaV().zze().zzc("Invalid event filter ID. appId, id", zzgu.zzl(str2), String.valueOf(zzffVar.zza() ? Integer.valueOf(zzffVar.zzb()) : null));
            return false;
        }
        Object[] objArr = zzffVar.zzi() || zzffVar.zzj() || zzffVar.zzm();
        if (z && objArr != true) {
            zzicVar.zzaV().zzk().zzc("Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzc), zzffVar.zza() ? Integer.valueOf(zzffVar.zzb()) : null);
            return true;
        }
        String strZzd = zzhsVar.zzd();
        if (!zzffVar.zzg()) {
            hashSet = new HashSet();
            it = zzffVar.zzd().iterator();
            while (true) {
                if (it.hasNext()) {
                    arrayMap = new ArrayMap();
                    it2 = zzhsVar.zza().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            it3 = zzffVar.zzd().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    bool = true;
                                    break;
                                }
                                zzfhVar = (com.google.android.gms.internal.measurement.zzfh) it3.next();
                                if (zzfhVar.zze() || !zzfhVar.zzf()) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                strZzh = zzfhVar.zzh();
                                if (strZzh.isEmpty()) {
                                    v = arrayMap.get(strZzh);
                                    if (v instanceof Long) {
                                        if (v instanceof Double) {
                                            if (v instanceof String) {
                                                if (v == 0) {
                                                    zzicVar.zzaV().zze().zzc("Unknown param type. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                    break;
                                                }
                                                zzicVar.zzaV().zzk().zzc("Missing param for filter. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                bool = false;
                                                break;
                                            }
                                            if (zzfhVar.zza()) {
                                                if (zzfhVar.zzc()) {
                                                    zzicVar.zzaV().zze().zzc("No filter for String param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                    break;
                                                }
                                                str = (String) v;
                                                if (zzpk.zzm(str)) {
                                                    zzicVar.zzaV().zze().zzc("Invalid param value for number filter. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                    break;
                                                }
                                                boolZzi = zzi(str, zzfhVar.zzd());
                                            } else {
                                                boolZzi = zzf((String) v, zzfhVar.zzb(), zzicVar.zzaV());
                                            }
                                            if (boolZzi != null) {
                                                break;
                                            }
                                            if (boolZzi.booleanValue() == z2) {
                                                bool = false;
                                                break;
                                            }
                                        } else {
                                            if (zzfhVar.zzc()) {
                                                zzicVar.zzaV().zze().zzc("No number filter for double param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                break;
                                            }
                                            boolZzh = zzh(((Double) v).doubleValue(), zzfhVar.zzd());
                                            if (boolZzh != null) {
                                                break;
                                            }
                                            if (boolZzh.booleanValue() == z2) {
                                                bool = false;
                                                break;
                                            }
                                        }
                                    } else {
                                        if (zzfhVar.zzc()) {
                                            zzicVar.zzaV().zze().zzc("No number filter for long param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                            break;
                                        }
                                        boolZzg = zzg(((Long) v).longValue(), zzfhVar.zzd());
                                        if (boolZzg != null) {
                                            break;
                                        }
                                        if (boolZzg.booleanValue() == z2) {
                                            bool = false;
                                            break;
                                        }
                                    }
                                } else {
                                    zzicVar.zzaV().zze().zzb("Event has empty param name. event", zzicVar.zzl().zza(strZzd));
                                    break;
                                }
                            }
                        } else {
                            zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it2.next();
                            if (!hashSet.contains(zzhwVar.zzb())) {
                                if (zzhwVar.zze()) {
                                    if (zzhwVar.zzi()) {
                                        if (zzhwVar.zzc()) {
                                            zzicVar.zzaV().zze().zzc("Unknown value for param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(zzhwVar.zzb()));
                                            break;
                                        }
                                        arrayMap.put(zzhwVar.zzb(), zzhwVar.zzd());
                                    } else {
                                        String strZzb = zzhwVar.zzb();
                                        if (zzhwVar.zzi()) {
                                            dValueOf = Double.valueOf(zzhwVar.zzj());
                                        } else {
                                            dValueOf = null;
                                        }
                                        arrayMap.put(strZzb, dValueOf);
                                    }
                                } else {
                                    String strZzb2 = zzhwVar.zzb();
                                    if (zzhwVar.zze()) {
                                        lValueOf = Long.valueOf(zzhwVar.zzf());
                                    } else {
                                        lValueOf = null;
                                    }
                                    arrayMap.put(strZzb2, lValueOf);
                                }
                            }
                        }
                    }
                } else {
                    zzfhVar2 = (com.google.android.gms.internal.measurement.zzfh) it.next();
                    if (zzfhVar2.zzh().isEmpty()) {
                        zzicVar.zzaV().zze().zzb("null or empty param name in filter. event", zzicVar.zzl().zza(strZzd));
                        break;
                    }
                    hashSet.add(zzfhVar2.zzh());
                }
            }
        } else {
            Boolean boolZzg2 = zzg(j2, zzffVar.zzh());
            if (boolZzg2 != null) {
                if (boolZzg2.booleanValue()) {
                    hashSet = new HashSet();
                    it = zzffVar.zzd().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            arrayMap = new ArrayMap();
                            it2 = zzhsVar.zza().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    it3 = zzffVar.zzd().iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            bool = true;
                                            break;
                                        }
                                        zzfhVar = (com.google.android.gms.internal.measurement.zzfh) it3.next();
                                        if (zzfhVar.zze()) {
                                            z2 = false;
                                        } else {
                                            z2 = false;
                                        }
                                        strZzh = zzfhVar.zzh();
                                        if (strZzh.isEmpty()) {
                                            v = arrayMap.get(strZzh);
                                            if (v instanceof Long) {
                                                if (v instanceof Double) {
                                                    if (v instanceof String) {
                                                        if (v == 0) {
                                                            zzicVar.zzaV().zze().zzc("Unknown param type. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                            break;
                                                        }
                                                        zzicVar.zzaV().zzk().zzc("Missing param for filter. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                        bool = false;
                                                        break;
                                                    }
                                                    if (zzfhVar.zza()) {
                                                        if (zzfhVar.zzc()) {
                                                            zzicVar.zzaV().zze().zzc("No filter for String param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                            break;
                                                        }
                                                        str = (String) v;
                                                        if (zzpk.zzm(str)) {
                                                            zzicVar.zzaV().zze().zzc("Invalid param value for number filter. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                            break;
                                                        }
                                                        boolZzi = zzi(str, zzfhVar.zzd());
                                                    } else {
                                                        boolZzi = zzf((String) v, zzfhVar.zzb(), zzicVar.zzaV());
                                                    }
                                                    if (boolZzi != null) {
                                                        break;
                                                        break;
                                                    }
                                                    if (boolZzi.booleanValue() == z2) {
                                                        bool = false;
                                                        break;
                                                    }
                                                } else if (zzfhVar.zzc()) {
                                                    boolZzh = zzh(((Double) v).doubleValue(), zzfhVar.zzd());
                                                    if (boolZzh != null) {
                                                        break;
                                                        break;
                                                    }
                                                    if (boolZzh.booleanValue() == z2) {
                                                        bool = false;
                                                        break;
                                                    }
                                                } else {
                                                    zzicVar.zzaV().zze().zzc("No number filter for double param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                    break;
                                                }
                                            } else if (zzfhVar.zzc()) {
                                                boolZzg = zzg(((Long) v).longValue(), zzfhVar.zzd());
                                                if (boolZzg != null) {
                                                    break;
                                                    break;
                                                }
                                                if (boolZzg.booleanValue() == z2) {
                                                    bool = false;
                                                    break;
                                                }
                                            } else {
                                                zzicVar.zzaV().zze().zzc("No number filter for long param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                                break;
                                            }
                                        } else {
                                            zzicVar.zzaV().zze().zzb("Event has empty param name. event", zzicVar.zzl().zza(strZzd));
                                            break;
                                        }
                                    }
                                } else {
                                    zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it2.next();
                                    if (!hashSet.contains(zzhwVar.zzb())) {
                                        if (zzhwVar.zze()) {
                                            if (zzhwVar.zzi()) {
                                                if (zzhwVar.zzc()) {
                                                    zzicVar.zzaV().zze().zzc("Unknown value for param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(zzhwVar.zzb()));
                                                    break;
                                                }
                                                arrayMap.put(zzhwVar.zzb(), zzhwVar.zzd());
                                            } else {
                                                String strZzb3 = zzhwVar.zzb();
                                                if (zzhwVar.zzi()) {
                                                    dValueOf = Double.valueOf(zzhwVar.zzj());
                                                } else {
                                                    dValueOf = null;
                                                }
                                                arrayMap.put(strZzb3, dValueOf);
                                            }
                                        } else {
                                            String strZzb4 = zzhwVar.zzb();
                                            if (zzhwVar.zze()) {
                                                lValueOf = Long.valueOf(zzhwVar.zzf());
                                            } else {
                                                lValueOf = null;
                                            }
                                            arrayMap.put(strZzb4, lValueOf);
                                        }
                                    }
                                }
                            }
                        } else {
                            zzfhVar2 = (com.google.android.gms.internal.measurement.zzfh) it.next();
                            if (zzfhVar2.zzh().isEmpty()) {
                                zzicVar.zzaV().zze().zzb("null or empty param name in filter. event", zzicVar.zzl().zza(strZzd));
                                break;
                            }
                            hashSet.add(zzfhVar2.zzh());
                        }
                    }
                } else {
                    bool = false;
                }
            }
        }
        zzicVar.zzaV().zzk().zzb("Event filter result", bool == null ? AbstractJsonLexerKt.NULL : bool);
        if (bool == null) {
            return false;
        }
        this.zzd = true;
        if (!bool.booleanValue()) {
            return true;
        }
        this.zze = true;
        if (objArr != false && zzhsVar.zze()) {
            Long lValueOf2 = Long.valueOf(zzhsVar.zzf());
            if (zzffVar.zzj()) {
                if (zZzp && zzffVar.zzg()) {
                    lValueOf2 = l;
                }
                this.zzg = lValueOf2;
            } else {
                if (zZzp && zzffVar.zzg()) {
                    lValueOf2 = l2;
                }
                this.zzf = lValueOf2;
            }
        }
        return true;
    }
}
