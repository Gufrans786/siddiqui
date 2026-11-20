package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzet;
import com.google.android.gms.internal.auth.zzev;

public class zzet<MessageType extends zzev<MessageType, BuilderType>, BuilderType extends zzet<MessageType, BuilderType>> extends zzdp<MessageType, BuilderType> {
    protected zzev zza;
    private final zzev zzb;

    protected zzet(MessageType messagetype) {
        this.zzb = messagetype;
        if (messagetype.zzm()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.zza = messagetype.zzc();
    }

    @Override
    public final zzet clone() {
        zzet zzetVar = (zzet) this.zzb.zzn(5, null, null);
        zzetVar.zza = zzd();
        return zzetVar;
    }

    @Override
    public MessageType zzd() {
        if (!this.zza.zzm()) {
            return (MessageType) this.zza;
        }
        this.zza.zzi();
        return (MessageType) this.zza;
    }

    @Override
    public final zzfx zze() {
        throw null;
    }
}
