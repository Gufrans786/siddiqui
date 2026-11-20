.class public Lcom/intentfilter/androidpermissions/models/DeniedPermission;
.super Ljava/lang/Object;
.source "DeniedPermission.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field final permission:Ljava/lang/String;

.field final shouldShowRationale:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Lorg/parceler/ParcelConstructor;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->permission:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->shouldShowRationale:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->permission:Ljava/lang/String;

    check-cast p1, Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    iget-object p1, p1, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->permission:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->permission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public shouldShowRationale()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->shouldShowRationale:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->permission:Ljava/lang/String;

    return-object v0
.end method
