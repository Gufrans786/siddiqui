.class public Lcom/transistorsoft/locationmanager/event/HeadlessEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getActivityChangeEvent()Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;

    return-object v0
.end method

.method public getAuthorizationEvent()Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

    return-object v0
.end method

.method public getBootEvent()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public getConnectivityChangeEvent()Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getEnabledChangeEvent()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEvent()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getGeofenceEvent()Lcom/transistorsoft/locationmanager/event/GeofenceEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;

    return-object v0
.end method

.method public getGeofencesChangeEvent()Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;

    return-object v0
.end method

.method public getHeartbeatEvent()Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;

    return-object v0
.end method

.method public getHttpEvent()Lcom/transistorsoft/locationmanager/http/HttpResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/http/HttpResponse;

    return-object v0
.end method

.method public getLocationEvent()Lcom/transistorsoft/locationmanager/location/TSLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/location/TSLocation;

    return-object v0
.end method

.method public getMotionChangeEvent()Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPowerSaveChangeEvent()Lcom/transistorsoft/locationmanager/event/PowerSaveModeChangeEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/event/PowerSaveModeChangeEvent;

    return-object v0
.end method

.method public getProviderChangeEvent()Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    return-object v0
.end method

.method public getScheduleEvent()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTerminateEvent()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method
