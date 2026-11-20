.class public interface abstract Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofencesCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence;",
            ">;)V"
        }
    .end annotation
.end method
