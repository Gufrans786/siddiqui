.class public final Lcom/rnmapbox/rnmbx/modules/RNMBXLocationModule$getLastKnownLocation$1;
.super Ljava/lang/Object;
.source "RNMBXLocationModule.kt"

# interfaces
.implements Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnmapbox/rnmbx/modules/RNMBXLocationModule;->getLastKnownLocation(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/rnmapbox/rnmbx/modules/RNMBXLocationModule$getLastKnownLocation$1",
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;",
        "onSuccess",
        "",
        "result",
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;",
        "onFailure",
        "exception",
        "Ljava/lang/Exception;",
        "rnmapbox_maps_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXLocationModule$getLastKnownLocation$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXLocationModule$getLastKnownLocation$1;->$promise:Lcom/facebook/react/bridge/Promise;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->getLastLocation()Lcom/mapbox/common/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    new-instance v0, Lcom/rnmapbox/rnmbx/events/LocationEvent;

    invoke-direct {v0, p1}, Lcom/rnmapbox/rnmbx/events/LocationEvent;-><init>(Lcom/mapbox/common/location/Location;)V

    .line 119
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXLocationModule$getLastKnownLocation$1;->$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/events/LocationEvent;->getPayload()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXLocationModule$getLastKnownLocation$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
