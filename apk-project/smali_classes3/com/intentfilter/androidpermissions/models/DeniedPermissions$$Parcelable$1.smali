.class Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable$1;
.super Ljava/lang/Object;
.source "DeniedPermissions$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;
    .locals 2

    .line 27
    new-instance v0, Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;

    new-instance v1, Lorg/parceler/IdentityCollection;

    invoke-direct {v1}, Lorg/parceler/IdentityCollection;-><init>()V

    invoke-static {p1, v1}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;->read(Landroid/os/Parcel;Lorg/parceler/IdentityCollection;)Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;-><init>(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;
    .locals 0

    .line 32
    new-array p1, p1, [Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable$1;->newArray(I)[Lcom/intentfilter/androidpermissions/models/DeniedPermissions$$Parcelable;

    move-result-object p1

    return-object p1
.end method
