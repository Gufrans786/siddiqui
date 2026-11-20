.class public Lcom/transistorsoft/locationmanager/config/TSCrashDetector;
.super Lcom/transistorsoft/locationmanager/config/a;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/config/IModule;


# static fields
.field public static final NAME:Ljava/lang/String; = "crashDetector"


# instance fields
.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Double;

.field private e:Ljava/lang/Double;

.field private f:Ljava/lang/Double;

.field private g:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "crashDetector"

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->applyDefaults()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3
    const-string v0, "crashDetector"

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;-><init>(Ljava/lang/String;)V

    .line 4
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    .line 7
    :cond_0
    const-string v0, "accelerometerThresholdHigh"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    .line 10
    :cond_1
    const-string v0, "accelerometerThresholdLow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    .line 13
    :cond_2
    const-string v0, "gyroscopeThresholdHigh"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    .line 16
    :cond_3
    const-string v0, "gyroscopeThresholdLow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    :cond_4
    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->applyDefaults()V

    :cond_5
    return-void
.end method


# virtual methods
.method public applyDefaults()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    if-nez v0, :cond_1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    const-wide/high16 v3, 0x4012000000000000L    # 4.5

    if-nez v0, :cond_2

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    if-nez v0, :cond_3

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    if-nez v0, :cond_4

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    :cond_4
    return-void
.end method

.method public equals(Lcom/transistorsoft/locationmanager/config/TSCrashDetector;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdHigh()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdLow()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdHigh()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdLow()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAccelerometerThresholdHigh()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    return-object v0
.end method

.method public getAccelerometerThresholdLow()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public bridge synthetic getDirtyFields()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transistorsoft/locationmanager/config/a;->getDirtyFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGyroscopeThresholdHigh()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    return-object v0
.end method

.method public getGyroscopeThresholdLow()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public setAccelerometerThresholdHigh(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    return-void
.end method

.method public setAccelerometerThresholdLow(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public setGyroscopeThresholdHigh(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    return-void
.end method

.method public setGyroscopeThresholdLow(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    return-void
.end method

.method public toJson(Z)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v0, "enabled"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v0, "accelerometerThresholdHigh"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v0, "accelerometerThresholdLow"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v0, "gyroscopeThresholdHigh"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v0, "gyroscopeThresholdLow"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TSLocationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    const-string v2, "accelerometerThresholdHigh"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    const-string v2, "accelerometerThresholdLow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    const-string v2, "gyroscopeThresholdHigh"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    const-string v2, "gyroscopeThresholdLow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public update(Lcom/transistorsoft/locationmanager/config/TSCrashDetector;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/a;->a()V

    .line 2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->c:Ljava/lang/Boolean;

    .line 4
    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdHigh()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdHigh()Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdHigh()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->d:Ljava/lang/Double;

    .line 8
    const-string v0, "accelerometerThresholdHigh"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdLow()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdLow()Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdLow()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->e:Ljava/lang/Double;

    .line 12
    const-string v0, "accelerometerThresholdLow"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdHigh()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdHigh()Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdHigh()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->f:Ljava/lang/Double;

    .line 16
    const-string v0, "gyroscopeThresholdHigh"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdLow()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdLow()Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdLow()Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->g:Ljava/lang/Double;

    .line 20
    const-string p1, "gyroscopeThresholdLow"

    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getDirtyFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
