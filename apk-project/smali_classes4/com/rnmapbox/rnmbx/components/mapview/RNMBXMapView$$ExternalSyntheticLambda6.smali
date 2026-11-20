.class public final synthetic Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;


# direct methods
.method public synthetic constructor <init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda6;->f$0:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda6;->f$0:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;

    check-cast p1, Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;

    invoke-static {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->$r8$lambda$rBz1KD8o9AQIThv5Htzz-p2Jkuw(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
