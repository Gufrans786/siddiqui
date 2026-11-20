.class public final Lcom/mapbox/maps/plugin/LocationPuck3D$Creator;
.super Ljava/lang/Object;
.source "ConfigProperties.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/maps/plugin/LocationPuck3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mapbox/maps/plugin/LocationPuck3D;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/maps/plugin/LocationPuck3D;
    .locals 25

    const-string v0, "parcel"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-eq v5, v0, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    check-cast v3, Ljava/util/List;

    move v0, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    :goto_1
    if-eq v7, v5, :cond_1

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v6

    check-cast v5, Ljava/util/List;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v0

    :goto_2
    if-eq v9, v7, :cond_2

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move-object v7, v8

    check-cast v7, Ljava/util/List;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v0

    :goto_3
    if-eq v10, v8, :cond_3

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    move-object v8, v9

    check-cast v8, Ljava/util/List;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    move v9, v10

    goto :goto_4

    :cond_4
    move v9, v0

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move v10, v0

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/maps/plugin/ModelScaleMode;->valueOf(Ljava/lang/String;)Lcom/mapbox/maps/plugin/ModelScaleMode;

    move-result-object v11

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/List;

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/List;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mapbox/maps/plugin/ModelElevationReference;->valueOf(Ljava/lang/String;)Lcom/mapbox/maps/plugin/ModelElevationReference;

    move-result-object v22

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    new-instance v1, Lcom/mapbox/maps/plugin/LocationPuck3D;

    invoke-direct/range {v1 .. v24}, Lcom/mapbox/maps/plugin/LocationPuck3D;-><init>(Ljava/lang/String;Ljava/util/List;FLjava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZLcom/mapbox/maps/plugin/ModelScaleMode;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/mapbox/maps/plugin/ModelElevationReference;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/plugin/LocationPuck3D$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/maps/plugin/LocationPuck3D;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/mapbox/maps/plugin/LocationPuck3D;
    .locals 0

    new-array p1, p1, [Lcom/mapbox/maps/plugin/LocationPuck3D;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/plugin/LocationPuck3D$Creator;->newArray(I)[Lcom/mapbox/maps/plugin/LocationPuck3D;

    move-result-object p1

    return-object p1
.end method
