.class public Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->d:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->e:J

    .line 7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->a:Ljava/lang/String;

    .line 8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->b:Ljava/lang/String;

    .line 9
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->c:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->d:Z

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->e:J

    .line 24
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v3, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->a:Ljava/lang/String;

    .line 25
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->b:Ljava/lang/String;

    .line 26
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->c:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->e:J

    cmp-long p2, p2, v1

    if-lez p2, :cond_0

    const/4 v0, 0x1

    .line 28
    :cond_0
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->d:Z

    .line 29
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->a:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->b:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->c:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->d:Z

    const-string v2, "seen"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->e:J

    const-string v3, "lastSeenAt"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->f:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
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
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->a:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->b:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->c:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "seen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastSeenAt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->f:Ljava/lang/String;

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
