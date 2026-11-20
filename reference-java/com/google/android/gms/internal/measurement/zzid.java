package com.google.android.gms.internal.measurement;

import androidx.core.view.accessibility.AccessibilityEventCompat;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

public final class zzid extends zzmf implements zznn {
    private static final zzid zzat;
    private int zzA;
    private boolean zzD;
    private int zzG;
    private int zzH;
    private int zzI;
    private long zzK;
    private long zzL;
    private int zzO;
    private zzig zzQ;
    private long zzS;
    private long zzT;
    private int zzW;
    private boolean zzX;
    private boolean zzZ;
    private zzhy zzaa;
    private long zzae;
    private boolean zzaf;
    private boolean zzah;
    private int zzaj;
    private zzhe zzal;
    private int zzam;
    private zzha zzan;
    private zzis zzap;
    private long zzaq;
    private zzho zzas;
    private int zzb;
    private int zzd;
    private int zze;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private int zzq;
    private long zzu;
    private long zzv;
    private boolean zzx;
    private long zzz;
    private zzmo zzf = zzcv();
    private zzmo zzg = zzcv();
    private String zzm = "";
    private String zzn = "";
    private String zzo = "";
    private String zzp = "";
    private String zzr = "";
    private String zzs = "";
    private String zzt = "";
    private String zzw = "";
    private String zzy = "";
    private String zzB = "";
    private String zzC = "";
    private zzmo zzE = zzcv();
    private String zzF = "";
    private String zzJ = "";
    private String zzM = "";
    private String zzN = "";
    private String zzP = "";
    private zzmm zzR = zzcs();
    private String zzU = "";
    private String zzV = "";
    private String zzY = "";
    private String zzab = "";
    private zzmo zzac = zzmf.zzcv();
    private String zzad = "";
    private String zzag = "";
    private String zzai = "";
    private String zzak = "";
    private String zzao = "";
    private String zzar = "";

    static {
        zzid zzidVar = new zzid();
        zzat = zzidVar;
        zzmf.zzcp(zzid.class, zzidVar);
    }

    private zzid() {
    }

    public static zzic zzaE() {
        return (zzic) zzat.zzck();
    }

    public static zzic zzaF(zzid zzidVar) {
        zzmb zzmbVarZzck = zzat.zzck();
        zzmbVarZzck.zzbd(zzidVar);
        return (zzic) zzmbVarZzck;
    }

    private final void zzcy() {
        zzmo zzmoVar = this.zzf;
        if (zzmoVar.zza()) {
            return;
        }
        this.zzf = zzmf.zzcw(zzmoVar);
    }

    private final void zzcz() {
        zzmo zzmoVar = this.zzg;
        if (zzmoVar.zza()) {
            return;
        }
        this.zzg = zzmf.zzcw(zzmoVar);
    }

    public final String zzA() {
        return this.zzs;
    }

    public final String zzB() {
        return this.zzt;
    }

    public final boolean zzC() {
        return (this.zzb & 16384) != 0;
    }

    public final long zzD() {
        return this.zzu;
    }

    public final boolean zzE() {
        return (this.zzb & 32768) != 0;
    }

    public final long zzF() {
        return this.zzv;
    }

    public final String zzG() {
        return this.zzw;
    }

    public final boolean zzH() {
        return (this.zzb & 131072) != 0;
    }

    public final boolean zzI() {
        return this.zzx;
    }

    public final String zzJ() {
        return this.zzy;
    }

    public final boolean zzK() {
        return (this.zzb & 524288) != 0;
    }

    public final long zzL() {
        return this.zzz;
    }

    public final boolean zzM() {
        return (this.zzb & 1048576) != 0;
    }

    public final int zzN() {
        return this.zzA;
    }

    public final String zzO() {
        return this.zzB;
    }

    public final String zzP() {
        return this.zzC;
    }

    public final boolean zzQ() {
        return (this.zzb & 8388608) != 0;
    }

    public final boolean zzR() {
        return this.zzD;
    }

    public final List zzS() {
        return this.zzE;
    }

    public final String zzT() {
        return this.zzF;
    }

    public final boolean zzU() {
        return (this.zzb & 33554432) != 0;
    }

    public final int zzV() {
        return this.zzG;
    }

    public final boolean zzW() {
        return (this.zzb & PKIFailureInfo.duplicateCertReq) != 0;
    }

    public final long zzX() {
        return this.zzK;
    }

    public final boolean zzY() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final String zzZ() {
        return this.zzM;
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final boolean zzaA() {
        return (this.zzd & 134217728) != 0;
    }

    public final long zzaB() {
        return this.zzaq;
    }

    public final boolean zzaC() {
        return (this.zzd & PKIFailureInfo.duplicateCertReq) != 0;
    }

    public final zzho zzaD() {
        zzho zzhoVar = this.zzas;
        return zzhoVar == null ? zzho.zzc() : zzhoVar;
    }

    final void zzaG(int i) {
        this.zzb |= 1;
        this.zze = 1;
    }

    final void zzaH(int i, zzhs zzhsVar) {
        zzhsVar.getClass();
        zzcy();
        this.zzf.set(i, zzhsVar);
    }

    final void zzaI(zzhs zzhsVar) {
        zzhsVar.getClass();
        zzcy();
        this.zzf.add(zzhsVar);
    }

    final void zzaJ(Iterable iterable) {
        zzcy();
        zzks.zzce(iterable, this.zzf);
    }

    final void zzaK() {
        this.zzf = zzcv();
    }

    final void zzaL(int i) {
        zzcy();
        this.zzf.remove(i);
    }

    final void zzaM(int i, zziu zziuVar) {
        zziuVar.getClass();
        zzcz();
        this.zzg.set(i, zziuVar);
    }

    final void zzaN(zziu zziuVar) {
        zziuVar.getClass();
        zzcz();
        this.zzg.add(zziuVar);
    }

    final void zzaO(Iterable iterable) {
        zzcz();
        zzks.zzce(iterable, this.zzg);
    }

    final void zzaP(int i) {
        zzcz();
        this.zzg.remove(i);
    }

    final void zzaQ(long j) {
        this.zzb |= 2;
        this.zzh = j;
    }

    final void zzaR() {
        this.zzb &= -3;
        this.zzh = 0L;
    }

    final void zzaS(long j) {
        this.zzb |= 4;
        this.zzi = j;
    }

    final void zzaT(long j) {
        this.zzb |= 8;
        this.zzj = j;
    }

    final void zzaU(long j) {
        this.zzb |= 16;
        this.zzk = j;
    }

    final void zzaV() {
        this.zzb &= -17;
        this.zzk = 0L;
    }

    final void zzaW(long j) {
        this.zzb |= 32;
        this.zzl = j;
    }

    final void zzaX() {
        this.zzb &= -33;
        this.zzl = 0L;
    }

    final void zzaY(String str) {
        this.zzb |= 64;
        this.zzm = "android";
    }

    final void zzaZ(String str) {
        str.getClass();
        this.zzb |= 128;
        this.zzn = str;
    }

    public final boolean zzaa() {
        return (this.zzd & 2) != 0;
    }

    public final int zzab() {
        return this.zzO;
    }

    public final boolean zzac() {
        return (this.zzd & 16) != 0;
    }

    public final long zzad() {
        return this.zzS;
    }

    public final boolean zzae() {
        return (this.zzd & 128) != 0;
    }

    public final String zzaf() {
        return this.zzV;
    }

    public final boolean zzag() {
        return (this.zzd & 8192) != 0;
    }

    public final String zzah() {
        return this.zzab;
    }

    public final boolean zzai() {
        return (this.zzd & 32768) != 0;
    }

    public final long zzaj() {
        return this.zzae;
    }

    public final boolean zzak() {
        return this.zzaf;
    }

    public final boolean zzal() {
        return (this.zzd & 131072) != 0;
    }

    public final String zzam() {
        return this.zzag;
    }

    public final boolean zzan() {
        return (this.zzd & 262144) != 0;
    }

    public final boolean zzao() {
        return this.zzah;
    }

    public final boolean zzap() {
        return (this.zzd & 524288) != 0;
    }

    public final String zzaq() {
        return this.zzai;
    }

    public final int zzar() {
        return this.zzaj;
    }

    public final boolean zzas() {
        return (this.zzd & 4194304) != 0;
    }

    public final zzhe zzat() {
        zzhe zzheVar = this.zzal;
        return zzheVar == null ? zzhe.zzi() : zzheVar;
    }

    public final boolean zzau() {
        return (this.zzd & 8388608) != 0;
    }

    public final int zzav() {
        return this.zzam;
    }

    public final boolean zzaw() {
        return (this.zzd & 16777216) != 0;
    }

    public final zzha zzax() {
        zzha zzhaVar = this.zzan;
        return zzhaVar == null ? zzha.zzs() : zzhaVar;
    }

    public final boolean zzay() {
        return (this.zzd & AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL) != 0;
    }

    public final zzis zzaz() {
        zzis zzisVar = this.zzap;
        return zzisVar == null ? zzis.zzc() : zzisVar;
    }

    public final int zzb() {
        return this.zze;
    }

    final void zzbA(long j) {
        this.zzb |= PKIFailureInfo.duplicateCertReq;
        this.zzK = j;
    }

    final void zzbB(String str) {
        str.getClass();
        this.zzb |= Integer.MIN_VALUE;
        this.zzM = str;
    }

    final void zzbC() {
        this.zzb &= Integer.MAX_VALUE;
        this.zzM = zzat.zzM;
    }

    final void zzbD(int i) {
        this.zzd |= 2;
        this.zzO = i;
    }

    final void zzbE(zzig zzigVar) {
        zzigVar.getClass();
        this.zzQ = zzigVar;
        this.zzd |= 8;
    }

    final void zzbF(Iterable iterable) {
        zzmm zzmmVar = this.zzR;
        if (!zzmmVar.zza()) {
            int size = zzmmVar.size();
            this.zzR = zzmmVar.zzg(size + size);
        }
        zzks.zzce(iterable, this.zzR);
    }

    final void zzbG(long j) {
        this.zzd |= 16;
        this.zzS = j;
    }

    final void zzbH(long j) {
        this.zzd |= 32;
        this.zzT = j;
    }

    final void zzbI(String str) {
        this.zzd |= 128;
        this.zzV = str;
    }

    final void zzbJ(String str) {
        str.getClass();
        this.zzd |= 8192;
        this.zzab = str;
    }

    final void zzbK() {
        this.zzd &= -8193;
        this.zzab = zzat.zzab;
    }

    final void zzbL(Iterable iterable) {
        zzmo zzmoVar = this.zzac;
        if (!zzmoVar.zza()) {
            this.zzac = zzmf.zzcw(zzmoVar);
        }
        zzks.zzce(iterable, this.zzac);
    }

    final void zzbM(String str) {
        str.getClass();
        this.zzd |= 16384;
        this.zzad = str;
    }

    final void zzbN(long j) {
        this.zzd |= 32768;
        this.zzae = j;
    }

    final void zzbO(boolean z) {
        this.zzd |= 65536;
        this.zzaf = z;
    }

    final void zzbP(String str) {
        this.zzd |= 131072;
        this.zzag = str;
    }

    final void zzbQ(boolean z) {
        this.zzd |= 262144;
        this.zzah = z;
    }

    final void zzbR(String str) {
        str.getClass();
        this.zzd |= 524288;
        this.zzai = str;
    }

    final void zzbS(int i) {
        this.zzd |= 1048576;
        this.zzaj = i;
    }

    final void zzbT(zzhe zzheVar) {
        zzheVar.getClass();
        this.zzal = zzheVar;
        this.zzd |= 4194304;
    }

    final void zzbU(int i) {
        this.zzd |= 8388608;
        this.zzam = i;
    }

    final void zzbV(zzha zzhaVar) {
        zzhaVar.getClass();
        this.zzan = zzhaVar;
        this.zzd |= 16777216;
    }

    final void zzbW(zzis zzisVar) {
        this.zzap = zzisVar;
        this.zzd |= AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
    }

    final void zzbX(long j) {
        this.zzd |= 134217728;
        this.zzaq = j;
    }

    final void zzbY(String str) {
        this.zzd |= 268435456;
        this.zzar = "";
    }

    final void zzbZ(zzho zzhoVar) {
        zzhoVar.getClass();
        this.zzas = zzhoVar;
        this.zzd |= PKIFailureInfo.duplicateCertReq;
    }

    final void zzba(String str) {
        str.getClass();
        this.zzb |= 256;
        this.zzo = str;
    }

    final void zzbb() {
        this.zzb &= -257;
        this.zzo = zzat.zzo;
    }

    final void zzbc(String str) {
        str.getClass();
        this.zzb |= 512;
        this.zzp = str;
    }

    final void zzbd(int i) {
        this.zzb |= 1024;
        this.zzq = i;
    }

    final void zzbe(String str) {
        str.getClass();
        this.zzb |= 2048;
        this.zzr = str;
    }

    final void zzbf(String str) {
        str.getClass();
        this.zzb |= 4096;
        this.zzs = str;
    }

    final void zzbg(String str) {
        str.getClass();
        this.zzb |= 8192;
        this.zzt = str;
    }

    final void zzbh(long j) {
        this.zzb |= 16384;
        this.zzu = j;
    }

    final void zzbi(long j) {
        this.zzb |= 32768;
        this.zzv = 133005L;
    }

    final void zzbj(String str) {
        str.getClass();
        this.zzb |= 65536;
        this.zzw = str;
    }

    final void zzbk() {
        this.zzb &= -65537;
        this.zzw = zzat.zzw;
    }

    final void zzbl(boolean z) {
        this.zzb |= 131072;
        this.zzx = z;
    }

    final void zzbm() {
        this.zzb &= -131073;
        this.zzx = false;
    }

    final void zzbn(String str) {
        str.getClass();
        this.zzb |= 262144;
        this.zzy = str;
    }

    final void zzbo() {
        this.zzb &= -262145;
        this.zzy = zzat.zzy;
    }

    final void zzbp(long j) {
        this.zzb |= 524288;
        this.zzz = j;
    }

    final void zzbq(int i) {
        this.zzb |= 1048576;
        this.zzA = i;
    }

    final void zzbr(String str) {
        this.zzb |= 2097152;
        this.zzB = str;
    }

    final void zzbs() {
        this.zzb &= -2097153;
        this.zzB = zzat.zzB;
    }

    final void zzbt(String str) {
        str.getClass();
        this.zzb |= 4194304;
        this.zzC = str;
    }

    final void zzbu(boolean z) {
        this.zzb |= 8388608;
        this.zzD = z;
    }

    final void zzbv(Iterable iterable) {
        zzmo zzmoVar = this.zzE;
        if (!zzmoVar.zza()) {
            this.zzE = zzmf.zzcw(zzmoVar);
        }
        zzks.zzce(iterable, this.zzE);
    }

    final void zzbw() {
        this.zzE = zzcv();
    }

    final void zzbx(String str) {
        str.getClass();
        this.zzb |= 16777216;
        this.zzF = str;
    }

    final void zzby(int i) {
        this.zzb |= 33554432;
        this.zzG = i;
    }

    final void zzbz() {
        this.zzb &= -268435457;
        this.zzJ = zzat.zzJ;
    }

    public final List zzc() {
        return this.zzf;
    }

    public final int zzd() {
        return this.zzf.size();
    }

    public final zzhs zze(int i) {
        return (zzhs) this.zzf.get(i);
    }

    public final List zzf() {
        return this.zzg;
    }

    public final int zzg() {
        return this.zzg.size();
    }

    public final zziu zzh(int i) {
        return (zziu) this.zzg.get(i);
    }

    public final boolean zzi() {
        return (this.zzb & 2) != 0;
    }

    public final long zzj() {
        return this.zzh;
    }

    public final boolean zzk() {
        return (this.zzb & 4) != 0;
    }

    @Override
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzcq(zzat, "\u0004C\u0000\u0002\u0001VC\u0000\u0005\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5᠌(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.Cဂ/Dဇ0Gဈ1Hဇ2Iဈ3Jင4Kဈ5Lဉ6Mင7Oဉ8Pဈ9Qဉ:Rဂ;Sဈ<Vဉ=", new Object[]{"zzb", "zzd", "zze", "zzf", zzhs.class, "zzg", zziu.class, "zzh", "zzi", "zzj", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzk", "zzD", "zzE", zzhg.class, "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", zzgw.zza, "zzX", "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas"});
        }
        if (i2 == 3) {
            return new zzid();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzic(bArr);
        }
        if (i2 == 5) {
            return zzat;
        }
        throw null;
    }

    public final long zzm() {
        return this.zzi;
    }

    public final boolean zzn() {
        return (this.zzb & 8) != 0;
    }

    public final long zzo() {
        return this.zzj;
    }

    public final boolean zzp() {
        return (this.zzb & 16) != 0;
    }

    public final long zzq() {
        return this.zzk;
    }

    public final boolean zzr() {
        return (this.zzb & 32) != 0;
    }

    public final long zzs() {
        return this.zzl;
    }

    public final String zzt() {
        return this.zzm;
    }

    public final String zzu() {
        return this.zzn;
    }

    public final String zzv() {
        return this.zzo;
    }

    public final String zzw() {
        return this.zzp;
    }

    public final boolean zzx() {
        return (this.zzb & 1024) != 0;
    }

    public final int zzy() {
        return this.zzq;
    }

    public final String zzz() {
        return this.zzr;
    }
}
