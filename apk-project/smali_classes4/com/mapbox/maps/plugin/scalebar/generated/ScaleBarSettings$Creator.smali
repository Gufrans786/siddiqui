.class public final Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Creator;
.super Ljava/lang/Object;
.source "ScaleBarSettings.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;
    .locals 23

    const-string v0, "parcel"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    move v4, v3

    goto :goto_0

    :cond_0
    move v0, v2

    move v2, v3

    move v4, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    move v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    move v7, v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    move v8, v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    move v9, v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move v10, v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move v11, v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move v12, v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    move v13, v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    move v14, v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    move v15, v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    move/from16 v16, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1

    move/from16 v17, v16

    move/from16 v16, v0

    goto :goto_1

    :cond_1
    move/from16 v17, v16

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_2

    move/from16 v20, v17

    move-wide/from16 v17, v18

    move/from16 v19, v0

    goto :goto_2

    :cond_2
    move/from16 v20, v17

    move-wide/from16 v17, v18

    move/from16 v19, v20

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v0, v20

    :goto_3
    const/16 v22, 0x0

    move/from16 v20, v21

    move/from16 v21, v0

    invoke-direct/range {v1 .. v22}, Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;-><init>(ZIFFFFIIIFFFFFZJZFZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;
    .locals 0

    new-array p1, p1, [Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Creator;->newArray(I)[Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;

    move-result-object p1

    return-object p1
.end method
