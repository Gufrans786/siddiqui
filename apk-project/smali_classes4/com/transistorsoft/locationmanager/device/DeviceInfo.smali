.class public Lcom/transistorsoft/locationmanager/device/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_GET_DEVICE_INFO:Ljava/lang/String; = "getDeviceInfo"

.field public static MANUFACTURER_HUAWEI:Ljava/lang/String; = null

.field private static e:Lcom/transistorsoft/locationmanager/device/DeviceInfo; = null

.field private static final f:Ljava/lang/String; = "Android"

.field private static final g:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/a/A;->getPlatform()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->g:Ljava/lang/String;

    .line 3
    const-string v0, "Huawei"

    sput-object v0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->MANUFACTURER_HUAWEI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->b:Ljava/lang/String;

    .line 3
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->c:Ljava/lang/String;

    .line 4
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->d:Ljava/lang/String;

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/device/DeviceInfo;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->e:Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->e:Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    .line 2
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->e:Lcom/transistorsoft/locationmanager/device/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/device/DeviceInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->e:Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->e:Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    .line 4
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->e:Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    return-object p0
.end method


# virtual methods
.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Android"

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public print()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transistorsoft/locationmanager/a/A;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "model"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "manufacturer"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "framework"

    sget-object v2, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 9
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->b:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->c:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->d:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v1, "platform"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->g:Ljava/lang/String;

    const-string v2, "framework"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
