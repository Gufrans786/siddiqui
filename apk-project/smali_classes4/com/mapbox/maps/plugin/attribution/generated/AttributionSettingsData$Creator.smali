.class public final Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData$Creator;
.super Ljava/lang/Object;
.source "AttributionSettingsData.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData;
    .locals 10

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v5, v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v6, v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    move v7, v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    move v8, v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    move v9, v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v9, v0

    :cond_1
    invoke-direct/range {v1 .. v9}, Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData;-><init>(ZIIFFFFZ)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData;
    .locals 0

    new-array p1, p1, [Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData$Creator;->newArray(I)[Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettingsData;

    move-result-object p1

    return-object p1
.end method
