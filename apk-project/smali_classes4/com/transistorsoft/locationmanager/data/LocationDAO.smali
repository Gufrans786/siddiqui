.class public interface abstract Lcom/transistorsoft/locationmanager/data/LocationDAO;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract all()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract allWithLocking(Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clear()Z
.end method

.method public abstract close()V
.end method

.method public abstract count()I
.end method

.method public abstract destroy(Lcom/transistorsoft/locationmanager/data/LocationModel;)Z
.end method

.method public abstract destroyAll(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract first()Lcom/transistorsoft/locationmanager/data/LocationModel;
.end method

.method public abstract persist(Lorg/json/JSONObject;)Ljava/lang/String;
.end method

.method public abstract persist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z
.end method

.method public abstract prune(I)V
.end method

.method public abstract unlock()Z
.end method

.method public abstract unlock(Lcom/transistorsoft/locationmanager/data/LocationModel;)Z
.end method

.method public abstract unlock(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;)Z"
        }
    .end annotation
.end method
