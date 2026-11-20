.class public Lcom/intentfilter/androidpermissions/models/DeniedPermissions;
.super Ljava/util/HashSet;
.source "DeniedPermissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/intentfilter/androidpermissions/models/DeniedPermission;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method

.method public static varargs create([Lcom/intentfilter/androidpermissions/models/DeniedPermission;)Lcom/intentfilter/androidpermissions/models/DeniedPermissions;
    .locals 1

    .line 18
    new-instance v0, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    invoke-direct {v0}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;-><init>()V

    .line 19
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public stripped()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intentfilter/androidpermissions/models/DeniedPermission;

    .line 27
    iget-object v2, v2, Lcom/intentfilter/androidpermissions/models/DeniedPermission;->permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
