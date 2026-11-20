.class public Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public elapsed()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isGPSEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isNetworkEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isPermissionGranted()Z

    move-result v0

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isPermissionGranted()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->getAccuracyAuthorization()I

    move-result v0

    iget v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isAirplaneMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->f:Z

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->getStatus()I

    move-result p1

    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAccuracyAuthorization()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    return v0
.end method

.method public getPermission()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->a:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->g:J

    .line 2
    sget v0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->ACCURACY_AUTHORIZATION_FULL:I

    iput v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    .line 3
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->a:I

    .line 4
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->f:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 10
    const-string v6, "location"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    if-eqz v6, :cond_3

    .line 13
    invoke-static {v6}, Landroidx/core/location/LocationManagerCompat;->isLocationEnabled(Landroid/location/LocationManager;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 14
    const-string v8, "gps"

    invoke-virtual {v6, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    iput-boolean v8, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    if-eqz v7, :cond_2

    .line 15
    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    .line 17
    :cond_3
    iput v5, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    if-nez v1, :cond_4

    .line 19
    sget p1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->PERMISSION_DENIED:I

    iput p1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    return-void

    :cond_4
    const/16 v1, 0x1d

    if-lt v2, v1, :cond_8

    .line 22
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->PERMISSION_ALWAYS:I

    goto :goto_3

    :cond_5
    sget v1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->PERMISSION_WHEN_IN_USE:I

    :goto_3
    iput v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    const/16 v1, 0x1f

    if-lt v2, v1, :cond_7

    .line 24
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    sget p1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->ACCURACY_AUTHORIZATION_FULL:I

    goto :goto_4

    :cond_6
    sget p1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->ACCURACY_AUTHORIZATION_REDUCED:I

    :goto_4
    iput p1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    :cond_7
    return-void

    .line 27
    :cond_8
    sget p1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->PERMISSION_ALWAYS:I

    iput p1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    return-void
.end method

.method public isAirplaneMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->f:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isGPSEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    return v0
.end method

.method public isNetworkEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    return v0
.end method

.method public isPermissionGranted()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->init(Landroid/content/Context;)V

    .line 2
    const-class v0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    const-string v0, "TSProviderManager"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3
    const-string v0, "networkEnabled"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    .line 7
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    const-string v1, "gpsEnabled"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    .line 8
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->a:I

    const-string v1, "permission"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->a:I

    .line 9
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    const-string v1, "accuracyAuthorization"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    .line 10
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->f:Z

    const-string v1, "isAirplaneMode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->f:Z

    .line 11
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    const-string/jumbo v1, "status"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    return-void
.end method

.method public save(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-class v0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    const-string v0, "TSProviderManager"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    const-string v1, "networkEnabled"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    const-string v1, "gpsEnabled"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->a:I

    const-string v1, "permission"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    const-string v1, "accuracyAuthorization"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->f:Z

    const-string v1, "isAirplaneMode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    const-string/jumbo v1, "status"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v1, "network"

    iget-boolean v2, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    const-string v1, "gps"

    iget-boolean v2, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    const-string v1, "enabled"

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7
    const-string/jumbo v1, "status"

    iget v2, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string v1, "accuracyAuthorization"

    iget v2, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    const-string v1, "airplane"

    iget-boolean v2, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->f:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 11
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

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
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "gps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "accuracyAuthorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "airplane"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public update(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->g:J

    .line 2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->getAccuracyAuthorization()I

    move-result v0

    iput v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->e:I

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->getPermission()I

    move-result v0

    iput v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->a:I

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isAirplaneMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->f:Z

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isGPSEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->b:Z

    .line 6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isNetworkEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->c:Z

    .line 7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->getStatus()I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->d:I

    return-void
.end method
