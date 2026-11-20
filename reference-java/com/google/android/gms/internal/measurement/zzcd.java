package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class zzcd implements SharedPreferences {
    private final Map zza = new HashMap();
    private final Set zzb = new HashSet();

    private final Object zzc(String str, Object obj) {
        Object obj2 = this.zza.get(str);
        return obj2 != null ? obj2 : obj;
    }

    @Override
    public final boolean contains(String str) {
        return this.zza.containsKey(str);
    }

    @Override
    public final SharedPreferences.Editor edit() {
        return new zzcc(this, null);
    }

    @Override
    public final Map getAll() {
        return this.zza;
    }

    @Override
    public final boolean getBoolean(String str, boolean z) {
        return ((Boolean) zzc(str, Boolean.valueOf(z))).booleanValue();
    }

    @Override
    public final float getFloat(String str, float f) {
        return ((Float) zzc(str, Float.valueOf(f))).floatValue();
    }

    @Override
    public final int getInt(String str, int i) {
        return ((Integer) zzc(str, Integer.valueOf(i))).intValue();
    }

    @Override
    public final long getLong(String str, long j) {
        return ((Long) zzc(str, Long.valueOf(j))).longValue();
    }

    @Override
    public final String getString(String str, String str2) {
        return (String) zzc(str, str2);
    }

    @Override
    public final Set getStringSet(String str, Set set) {
        return (Set) zzc(str, set);
    }

    @Override
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.zzb.add(onSharedPreferenceChangeListener);
    }

    @Override
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.zzb.remove(onSharedPreferenceChangeListener);
    }

    final Map zza() {
        return this.zza;
    }

    final Set zzb() {
        return this.zzb;
    }
}
