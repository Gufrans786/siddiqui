.class public final synthetic Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleLegacy$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mapbox/maps/OfflineRegionCallback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Promise;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleLegacy$$ExternalSyntheticLambda13;->f$0:Lcom/facebook/react/bridge/Promise;

    iput-object p2, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleLegacy$$ExternalSyntheticLambda13;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final run(Lcom/mapbox/bindgen/Expected;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleLegacy$$ExternalSyntheticLambda13;->f$0:Lcom/facebook/react/bridge/Promise;

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleLegacy$$ExternalSyntheticLambda13;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0, v1, p1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleLegacy;->$r8$lambda$KzijFc_RlNVBKBE6ApNGZ4nXb-c(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/internal/Ref$IntRef;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method
