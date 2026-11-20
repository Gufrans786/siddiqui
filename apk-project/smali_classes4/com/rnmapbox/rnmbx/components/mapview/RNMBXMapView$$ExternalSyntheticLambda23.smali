.class public final synthetic Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/mapbox/bindgen/Expected;


# direct methods
.method public synthetic constructor <init>(Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda23;->f$0:Lcom/mapbox/bindgen/Expected;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda23;->f$0:Lcom/mapbox/bindgen/Expected;

    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->$r8$lambda$dmrMHN8XOojSL0Z-djDJPwELjT0(Lcom/mapbox/bindgen/Expected;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
