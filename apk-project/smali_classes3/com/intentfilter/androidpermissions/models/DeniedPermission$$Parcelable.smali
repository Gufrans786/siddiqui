.class public Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable;
.super Ljava/lang/Object;
.source "DeniedPermission$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper<",
        "Lcom/intentfilter/androidpermissions/models/DeniedPermission;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deniedPermission$$0:Lcom/intentfilter/androidpermissions/models/DeniedPermission;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable$1;

    invoke-direct {v0}, Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/intentfilter/androidpermissions/models/DeniedPermission;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable;->deniedPermission$$0:Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lorg/parceler/IdentityCollection;)Lcom/intentfilter/androidpermissions/models/DeniedPermission;
    .locals 4

    .line 69
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    invoke-virtual {p1, v0}, Lorg/parceler/IdentityCollection;->containsKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p1, v0}, Lorg/parceler/IdentityCollection;->isReserved(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Lorg/parceler/IdentityCollection;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    return-object p0

    .line 72
    :cond_0
    new-instance p0, Lorg/parceler/ParcelerRuntimeException;

    const-string p1, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {p0, p1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_1
    invoke-virtual {p1}, Lorg/parceler/IdentityCollection;->reserve()I

    move-result v1

    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 80
    :goto_0
    new-instance p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    invoke-direct {p0, v2, v3}, Lcom/intentfilter/androidpermissions/models/DeniedPermission;-><init>(Ljava/lang/String;Z)V

    .line 81
    invoke-virtual {p1, v1, p0}, Lorg/parceler/IdentityCollection;->put(ILjava/lang/Object;)V

    .line 83
    invoke-virtual {p1, v0, p0}, Lorg/parceler/IdentityCollection;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static write(Lcom/intentfilter/androidpermissions/models/DeniedPermission;Landroid/os/Parcel;ILorg/parceler/IdentityCollection;)V
    .locals 1

    .line 48
    invoke-virtual {p3, p0}, Lorg/parceler/IdentityCollection;->getKey(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 52
    :cond_0
    invoke-virtual {p3, p0}, Lorg/parceler/IdentityCollection;->put(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object p2, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->permission:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-boolean p0, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->shouldShowRationale:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/intentfilter/androidpermissions/models/DeniedPermission;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable;->deniedPermission$$0:Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable;->getParcel()Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable;->deniedPermission$$0:Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    new-instance v1, Lorg/parceler/IdentityCollection;

    invoke-direct {v1}, Lorg/parceler/IdentityCollection;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/intentfilter/androidpermissions/models/DeniedPermission$$Parcelable;->write(Lcom/intentfilter/androidpermissions/models/DeniedPermission;Landroid/os/Parcel;ILorg/parceler/IdentityCollection;)V

    return-void
.end method
