.class public final Lcom/mapbox/common/TileRegionApplyUpdateOptions$Builder;
.super Ljava/lang/Object;
.source "TileRegionApplyUpdateOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/common/TileRegionApplyUpdateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private extraOptions:Lcom/mapbox/bindgen/Value;

.field private networkRestriction:Lcom/mapbox/common/NetworkRestriction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/mapbox/common/NetworkRestriction;->DISALLOW_EXPENSIVE:Lcom/mapbox/common/NetworkRestriction;

    iput-object v0, p0, Lcom/mapbox/common/TileRegionApplyUpdateOptions$Builder;->networkRestriction:Lcom/mapbox/common/NetworkRestriction;

    return-void
.end method


# virtual methods
.method public build()Lcom/mapbox/common/TileRegionApplyUpdateOptions;
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/mapbox/common/TileRegionApplyUpdateOptions$Builder;->networkRestriction:Lcom/mapbox/common/NetworkRestriction;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/mapbox/common/TileRegionApplyUpdateOptions;

    iget-object v1, p0, Lcom/mapbox/common/TileRegionApplyUpdateOptions$Builder;->networkRestriction:Lcom/mapbox/common/NetworkRestriction;

    iget-object v2, p0, Lcom/mapbox/common/TileRegionApplyUpdateOptions$Builder;->extraOptions:Lcom/mapbox/bindgen/Value;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mapbox/common/TileRegionApplyUpdateOptions;-><init>(Lcom/mapbox/common/NetworkRestriction;Lcom/mapbox/bindgen/Value;Lcom/mapbox/common/TileRegionApplyUpdateOptions$1;)V

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "networkRestriction shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extraOptions(Lcom/mapbox/bindgen/Value;)Lcom/mapbox/common/TileRegionApplyUpdateOptions$Builder;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/mapbox/common/TileRegionApplyUpdateOptions$Builder;->extraOptions:Lcom/mapbox/bindgen/Value;

    return-object p0
.end method

.method public networkRestriction(Lcom/mapbox/common/NetworkRestriction;)Lcom/mapbox/common/TileRegionApplyUpdateOptions$Builder;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mapbox/common/TileRegionApplyUpdateOptions$Builder;->networkRestriction:Lcom/mapbox/common/NetworkRestriction;

    return-object p0
.end method
