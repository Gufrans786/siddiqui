.class public Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Double;

.field private c:Ljava/lang/Double;

.field private d:Ljava/lang/Float;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Lorg/json/JSONObject;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->e:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->f:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->g:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->j:Lorg/json/JSONObject;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->k:Ljava/util/List;

    const/high16 v0, 0x43480000    # 200.0f

    .line 11
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->d:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->h:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->j:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic d(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->b:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic f(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->c:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic g(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->d:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic h(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic i(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic j(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic k(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->h:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->b:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->c:Ljava/lang/Double;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->a(Ljava/util/List;)[[D

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->a([[D)[D

    move-result-object v0

    .line 3
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MiniBall] Minimum Enclosing Circle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", radius: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x2

    aget-wide v6, v0, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 4
    aget-wide v1, v0, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->b:Ljava/lang/Double;

    .line 5
    aget-wide v1, v0, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->c:Ljava/lang/Double;

    .line 6
    aget-wide v1, v0, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->d:Ljava/lang/Float;

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->e:Ljava/lang/Boolean;

    .line 8
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->f:Ljava/lang/Boolean;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->b:Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 13
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->c:Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->d:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 19
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Geofence radius: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->d:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  recommended geofence radius is >= 150.0meters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 24
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 25
    :cond_3
    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;

    const-string v1, "A transition-type is required (notifyOnEntry | notifyOnExit | notifyOnDwell)"

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_4
    :goto_0
    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)V

    return-object v0

    .line 28
    :cond_5
    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;

    const-string v1, "Identifier is required"

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_6
    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;

    const-string v1, "Radius is required"

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_7
    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;

    const-string v1, "Longitude is required"

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_8
    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;

    const-string v1, "Latitude is required"

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtras(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->j:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid JSON provided to TSGeofence#setExtras: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setExtras(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->j:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setLatitude(D)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->b:Ljava/lang/Double;

    return-object p0
.end method

.method public setLoiteringDelay(I)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLongitude(D)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->c:Ljava/lang/Double;

    return-object p0
.end method

.method public setNotificationResponsiveness(I)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNotifyOnDwell(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setNotifyOnEntry(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setNotifyOnExit(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setRadius(F)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->d:Ljava/lang/Float;

    return-object p0
.end method

.method public setVertices(Ljava/util/List;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->k:Ljava/util/List;

    return-object p0
.end method
