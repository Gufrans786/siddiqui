package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class zzd extends Fragment implements LifecycleFragment {
    private static final WeakHashMap zza = new WeakHashMap();
    private final zzc zzb = new zzc();

    public static zzd zza(FragmentActivity fragmentActivity) {
        zzd zzdVar;
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        WeakHashMap weakHashMap = zza;
        WeakReference weakReference = (WeakReference) weakHashMap.get(fragmentActivity);
        if (weakReference != null && (zzdVar = (zzd) weakReference.get()) != null) {
            return zzdVar;
        }
        try {
            zzd zzdVar2 = (zzd) supportFragmentManager.findFragmentByTag("SLifecycleFragmentImpl");
            if (zzdVar2 == null || zzdVar2.isRemoving()) {
                zzdVar2 = new zzd();
                supportFragmentManager.beginTransaction().add(zzdVar2, "SLifecycleFragmentImpl").commitAllowingStateLoss();
            }
            weakHashMap.put(fragmentActivity, new WeakReference(zzdVar2));
            return zzdVar2;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e);
        }
    }

    @Override
    public final void addCallback(String str, LifecycleCallback lifecycleCallback) {
        this.zzb.zzb(str, lifecycleCallback);
    }

    @Override
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        this.zzb.zzl(str, fileDescriptor, printWriter, strArr);
    }

    @Override
    public final <T extends LifecycleCallback> T getCallbackOrNull(String str, Class<T> cls) {
        return (T) this.zzb.zza(str, cls);
    }

    @Override
    public final Activity getLifecycleActivity() {
        return getActivity();
    }

    @Override
    public final boolean isCreated() {
        return this.zzb.zzc();
    }

    @Override
    public final boolean isStarted() {
        return this.zzb.zzd();
    }

    @Override
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.zzb.zzh(i, i2, intent);
    }

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzb.zze(bundle);
    }

    @Override
    public final void onDestroy() {
        super.onDestroy();
        this.zzb.zzk();
    }

    @Override
    public final void onResume() {
        super.onResume();
        this.zzb.zzg();
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.zzb.zzi(bundle);
    }

    @Override
    public final void onStart() {
        super.onStart();
        this.zzb.zzf();
    }

    @Override
    public final void onStop() {
        super.onStop();
        this.zzb.zzj();
    }
}
