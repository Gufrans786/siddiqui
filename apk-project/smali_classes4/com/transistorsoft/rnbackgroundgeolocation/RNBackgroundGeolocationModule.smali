.class public Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNBackgroundGeolocationModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$MotionChangeCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ActivityChangeCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationProviderChangeCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$GeofencesChangeCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$GeofenceCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$HeartbeatCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$HttpResponseCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ScheduleCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$PowerSaveChangeCallack;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ConnectivityChangeCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$EnabledChangeCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$NotificationActionCallback;,
        Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$AuthorizationCallback;
    }
.end annotation


# static fields
.field public static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field public static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final EVENT_WATCHPOSITION:Ljava/lang/String; = "watchposition"

.field private static final JOB_SERVICE_CLASS:Ljava/lang/String; = "HeadlessTask"

.field public static final REQUEST_ACTION_GET_CURRENT_POSITION:I = 0x2

.field public static final REQUEST_ACTION_START:I = 0x1

.field public static final REQUEST_ACTION_START_GEOFENCES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TSLocationManager"


# instance fields
.field private mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReady:Z


# direct methods
.method static bridge synthetic -$$Nest$mgetState(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getState()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandlePlayServicesConnectError(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->handlePlayServicesConnectError(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLocationError(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->onLocationError(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEvent(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEvent(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->sendEvent(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEvent(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mInitialized:Z

    .line 88
    iput-boolean v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mReady:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mListeners:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    .line 97
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    const/4 v0, 0x1

    .line 100
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->useCLLocationAccuracy(Ljava/lang/Boolean;)V

    .line 102
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithBuilder()Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".HeadlessTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->setHeadlessJobService(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->commit()V

    .line 107
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "location"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "motionchange"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "activitychange"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "providerchange"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "geofenceschange"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "geofence"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "heartbeat"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "http"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "schedule"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "powersavechange"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "connectivitychange"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "enabledchange"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "notificationaction"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mEvents:Ljava/util/List;

    const-string v0, "authorization"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static arrayToJson(Lcom/facebook/react/bridge/ReadableArray;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1178
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 1179
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1180
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    .line 1181
    sget-object v3, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$33;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1183
    :pswitch_0
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1198
    :pswitch_1
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->arrayToJson(Lcom/facebook/react/bridge/ReadableArray;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1195
    :pswitch_2
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1189
    :pswitch_3
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    goto :goto_1

    .line 1186
    :pswitch_4
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    goto :goto_1

    .line 1192
    :pswitch_5
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildGeofence(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;
        }
    .end annotation

    .line 709
    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;-><init>()V

    .line 710
    const-string v1, "identifier"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setIdentifier(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 711
    :cond_0
    const-string v1, "latitude"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setLatitude(D)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 712
    :cond_1
    const-string v1, "longitude"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setLongitude(D)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 713
    :cond_2
    const-string v1, "radius"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setRadius(F)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 714
    :cond_3
    const-string v1, "notifyOnEntry"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setNotifyOnEntry(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 715
    :cond_4
    const-string v1, "notifyOnExit"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setNotifyOnExit(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 716
    :cond_5
    const-string v1, "notifyOnDwell"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setNotifyOnDwell(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 717
    :cond_6
    const-string v1, "loiteringDelay"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setLoiteringDelay(I)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 718
    :cond_7
    const-string v1, "extras"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setExtras(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 719
    :cond_8
    const-string/jumbo v1, "vertices"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 721
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 722
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v1, 0x0

    move v3, v1

    .line 724
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 726
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    .line 727
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 728
    invoke-interface {v4, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    .line 729
    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 732
    :cond_9
    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setVertices(Ljava/util/List;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 735
    :cond_a
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->build()Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object p1

    return-object p1
.end method

.method public static convertJsonToArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1122
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    const/4 v1, 0x0

    .line 1124
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1125
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1126
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 1127
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->jsonToMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 1128
    :cond_0
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 1129
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->convertJsonToArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_1

    .line 1130
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 1131
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    goto :goto_1

    .line 1132
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 1133
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_1

    .line 1134
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 1135
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto :goto_1

    .line 1136
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1137
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 1139
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
    .locals 1

    .line 1239
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    return-object v0
.end method

.method private getState()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 1231
    :try_start_0
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->jsonToMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1233
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private handlePlayServicesConnectError(Ljava/lang/Integer;)V
    .locals 3

    .line 1069
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1073
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initializeLocationManager()V
    .locals 2

    .line 1206
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1210
    :cond_0
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    .line 1211
    invoke-virtual {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->setActivity(Landroid/app/Activity;)V

    .line 1213
    new-instance v0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$32;

    invoke-direct {v0, p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$32;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;)V

    invoke-virtual {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onPlayServicesConnectError(Lcom/transistorsoft/locationmanager/adapter/callback/TSPlayServicesConnectErrorCallback;)V

    const/4 v0, 0x1

    .line 1219
    iput-boolean v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mInitialized:Z

    return-void
.end method

.method public static jsonToMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1089
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1094
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1095
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1096
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1097
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1098
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 1099
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->jsonToMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 1100
    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 1101
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->convertJsonToArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 1102
    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 1103
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1104
    :cond_3
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 1105
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1106
    :cond_4
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 1107
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 1108
    :cond_5
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_6

    .line 1109
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 1110
    :cond_6
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_7

    .line 1111
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 1112
    :cond_7
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 1113
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    :goto_1
    return-object v0
.end method

.method public static mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;
    .locals 5

    .line 1146
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 1147
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1150
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1151
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 1152
    sget-object v3, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$33;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 1166
    :cond_0
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->arrayToJson(Lcom/facebook/react/bridge/ReadableArray;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1163
    :cond_1
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1160
    :cond_2
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 1157
    :cond_3
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 1154
    :cond_4
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-object v1

    :catch_0
    move-exception p0

    .line 1172
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private onLocationError(Ljava/lang/Integer;)V
    .locals 2

    .line 1063
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 1064
    const-string v1, "error"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1065
    const-string p1, "location"

    invoke-direct {p0, p1, v0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method private parseSQLQuery(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/locationmanager/data/SQLQuery;
    .locals 3

    .line 935
    invoke-static {}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->create()Lcom/transistorsoft/locationmanager/data/SQLQuery;

    move-result-object v0

    .line 936
    const-string/jumbo v1, "start"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 937
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 938
    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->setStart(J)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    .line 940
    :cond_0
    const-string v1, "end"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 941
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 942
    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->setEnd(J)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    .line 944
    :cond_1
    const-string v1, "order"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 945
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->setOrder(I)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    .line 947
    :cond_2
    const-string v1, "limit"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 948
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->setLimit(I)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    :cond_3
    return-object v0
.end method

.method private registerEvents()V
    .locals 3

    .line 133
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onLocation(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    .line 135
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$MotionChangeCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$MotionChangeCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onMotionChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    .line 136
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ActivityChangeCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ActivityChangeCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onActivityChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSActivityChangeCallback;)V

    .line 137
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationProviderChangeCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationProviderChangeCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onLocationProviderChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationProviderChangeCallback;)V

    .line 138
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$GeofencesChangeCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$GeofencesChangeCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onGeofencesChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofencesChangeCallback;)V

    .line 139
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$GeofenceCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$GeofenceCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onGeofence(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceCallback;)V

    .line 140
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$HeartbeatCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$HeartbeatCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onHeartbeat(Lcom/transistorsoft/locationmanager/adapter/callback/TSHeartbeatCallback;)V

    .line 141
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$HttpResponseCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$HttpResponseCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onHttp(Lcom/transistorsoft/locationmanager/adapter/callback/TSHttpResponseCallback;)V

    .line 142
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ScheduleCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ScheduleCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onSchedule(Lcom/transistorsoft/locationmanager/adapter/callback/TSScheduleCallback;)V

    .line 143
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$PowerSaveChangeCallack;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$PowerSaveChangeCallack;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onPowerSaveChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSPowerSaveChangeCallback;)V

    .line 144
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ConnectivityChangeCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ConnectivityChangeCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onConnectivityChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSConnectivityChangeCallback;)V

    .line 145
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$EnabledChangeCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$EnabledChangeCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onEnabledChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSEnabledChangeCallback;)V

    .line 146
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$NotificationActionCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$NotificationActionCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onNotificationAction(Lcom/transistorsoft/locationmanager/adapter/callback/TSNotificationActionCallback;)V

    .line 147
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$AuthorizationCallback;

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$AuthorizationCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->onAuthorization(Lcom/transistorsoft/locationmanager/adapter/callback/TSAuthorizationCallback;)V

    return-void
.end method

.method private removeAllListeners()V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 1057
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1058
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->removeListeners()V

    return-void

    :catchall_0
    move-exception v1

    .line 1058
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 1077
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 1085
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1081
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setHeadlessJobService(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 2

    .line 1223
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 1224
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".HeadlessTask"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "headlessJobService"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addGeofence(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 677
    :try_start_0
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->buildGeofence(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object p1

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$17;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$17;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->addGeofence(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    :try_end_0
    .catch Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 682
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public addGeofences(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 689
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 691
    :try_start_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->buildGeofence(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 693
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p1

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$18;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$18;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p1, v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->addGeofences(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public beginBackgroundTask(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 813
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p2

    new-instance v0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$24;

    invoke-direct {v0, p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$24;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p2, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->startBackgroundTask(Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V

    return-void
.end method

.method public changePace(Ljava/lang/Boolean;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 488
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$6;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$6;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->changePace(ZLcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public clearDatabase(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 538
    invoke-virtual {p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->destroyLocations(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public configure(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 422
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->reset()V

    .line 424
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->setHeadlessJobService(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithJSONObject(Lorg/json/JSONObject;)V

    .line 426
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$2;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->ready(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public destroyLocation(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 553
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$10;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$10;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->destroyLocation(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public destroyLocations(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 543
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$9;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->destroyLocations(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public destroyLog(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 563
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$11;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->destroyLog(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public destroyTransistorToken(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$26;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$26;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-static {v0, p1, v1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->destroyTokenForUrl(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public emailLog(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 903
    invoke-direct {p0, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->parseSQLQuery(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    move-result-object p2

    .line 905
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$28;

    invoke-direct {v1, p0, p3, p4}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$28;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-static {v0, p1, p2, v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->emailLog(Landroid/app/Activity;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;)V

    return-void
.end method

.method public finish(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 824
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->stopBackgroundTask(I)V

    .line 825
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public finishHeadlessTask(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 836
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 837
    const-class v1, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->hasSubscriberForEvent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 841
    const-string p1, "finishHeadlessTask failed to find an EventBus subscriber for HeadlessEvent"

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    .line 842
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 845
    :cond_0
    new-instance p3, Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;

    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {p3, v1, p1}, Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;-><init>(Landroid/content/Context;I)V

    .line 846
    invoke-virtual {v0, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 847
    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public geofenceExists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 803
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$23;

    invoke-direct {v1, p0, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$23;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->geofenceExists(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;)V

    return-void
.end method

.method public getCount(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 520
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrentPosition(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 595
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 597
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$13;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$13;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->setCallback(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 610
    const-string p2, "samples"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->setSamples(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 611
    :cond_0
    const-string p2, "extras"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->setExtras(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 612
    :cond_1
    const-string p2, "persist"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->setPersist(Z)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 613
    :cond_2
    const-string/jumbo p2, "timeout"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->setTimeout(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 614
    :cond_3
    const-string p2, "maximumAge"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p2

    int-to-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->setMaximumAge(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    .line 615
    :cond_4
    const-string p2, "desiredAccuracy"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->setDesiredAccuracy(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 617
    :cond_5
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getCurrentPosition(Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;)V

    return-void
.end method

.method public getDeviceInfo(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 967
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    move-result-object p2

    .line 969
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 970
    const-string v1, "manufacturer"

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v1, "model"

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string/jumbo v1, "version"

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v1, "platform"

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string p2, "framework"

    const-string v1, "react-native"

    invoke-interface {v0, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getGeofence(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 786
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$22;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$22;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getGeofence(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofenceCallback;)V

    return-void
.end method

.method public getGeofences(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 767
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$21;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getGeofences(Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofencesCallback;)V

    return-void
.end method

.method public getLocations(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 501
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$7;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getLocations(Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLocationsCallback;)V

    return-void
.end method

.method public getLog(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 889
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->parseSQLQuery(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    move-result-object p1

    .line 891
    new-instance v0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$27;

    invoke-direct {v0, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$27;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->getLog(Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, "RNBackgroundGeolocation"

    return-object v0
.end method

.method public getOdometer(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 657
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getOdometer()Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getProviderState(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1015
    :try_start_0
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getProviderState()Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->jsonToMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1017
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getSensors(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 955
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/util/Sensors;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/util/Sensors;

    move-result-object p2

    .line 956
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 957
    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v1, "accelerometer"

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/util/Sensors;->hasAccelerometer()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 959
    const-string v1, "magnetometer"

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/util/Sensors;->hasMagnetometer()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 960
    const-string v1, "gyroscope"

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/util/Sensors;->hasGyroscope()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 961
    const-string/jumbo v1, "significant_motion"

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/util/Sensors;->hasSignificantMotion()Z

    move-result p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 962
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getState(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 496
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getState()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getTransistorToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 853
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$25;

    invoke-direct {v1, p0, p4, p5}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$25;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-static {v0, p1, p2, p3, v1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->findOrCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;)V

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public insertLocation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 525
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$8;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$8;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->insertLocation(Lorg/json/JSONObject;Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;)V

    return-void
.end method

.method public isIgnoringBatteryOptimizations(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 985
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->isIgnoringBatteryOptimizations()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 986
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public isPowerSaveMode(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 980
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->isPowerSaveMode()Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 931
    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1244
    iput-boolean v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mInitialized:Z

    .line 1245
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->removeAllListeners()V

    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mInitialized:Z

    .line 353
    iput-boolean v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mReady:Z

    .line 354
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->removeAllListeners()V

    .line 355
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onActivityDestroy()V

    return-void
.end method

.method public onHostPause()V
    .locals 4

    .line 344
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 345
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v0

    const-string v1, "TERMINATE_EVENT"

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 2

    .line 332
    iget-boolean v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mInitialized:Z

    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->initializeLocationManager()V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 339
    :cond_1
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 884
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->startTone(Ljava/lang/String;)V

    return-void
.end method

.method public ready(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 378
    const-string v1, "reset"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 379
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 382
    :goto_0
    iget-boolean v2, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mReady:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 384
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "#ready already called.  Redirecting to #setConfig"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, p1, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->setConfig(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void

    .line 387
    :cond_1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p3, "#ready already called.  Ignored config since reset: false"

    invoke-static {p3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getState()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 392
    :cond_2
    iput-boolean v3, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mReady:Z

    .line 393
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->registerEvents()V

    .line 395
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isFirstBoot()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->setHeadlessJobService(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithJSONObject(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 399
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->reset()V

    .line 400
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->setHeadlessJobService(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithJSONObject(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 401
    :cond_4
    const-string v1, "authorization"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 402
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 404
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 406
    const-string v2, "expires"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithBuilder()Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;-><init>(Ljava/util/Map;)V

    .line 409
    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->setAuthorization(Lcom/transistorsoft/locationmanager/config/TSAuthorization;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->commit()V

    .line 414
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$1;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->ready(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public registerPlugin(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public removeGeofence(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 740
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$19;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$19;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->removeGeofence(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public removeGeofences(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$20;

    invoke-direct {v2, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$20;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v1, v0, v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->removeGeofences(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public requestPermission(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1023
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p2

    new-instance v0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$30;

    invoke-direct {v0, p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$30;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p2, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->requestPermission(Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V

    return-void
.end method

.method public requestSettings(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 991
    const-string v0, "action"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 992
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->requestSettings(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->jsonToMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 997
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to find "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " screen for device "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public requestTemporaryFullAccuracy(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1035
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p3

    new-instance v0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$31;

    invoke-direct {v0, p0, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$31;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p3, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->requestTemporaryFullAccuracy(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V

    return-void
.end method

.method public reset(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p3

    invoke-static {p3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p3

    .line 442
    invoke-virtual {p3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->reset()V

    .line 443
    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->setHeadlessJobService(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithJSONObject(Lorg/json/JSONObject;)V

    .line 444
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getState()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public setConfig(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p3

    invoke-static {p3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p3

    .line 435
    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithJSONObject(Lorg/json/JSONObject;)V

    .line 436
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getState()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public setOdometer(Ljava/lang/Float;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 661
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$16;

    invoke-direct {v1, p0, p2, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$16;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->setOdometer(Ljava/lang/Float;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method public showSettings(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1003
    const-string v0, "action"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1004
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->showSettings(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1006
    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 1008
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to find "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " screen for device "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public start(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 449
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$3;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->start(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public startGeofences(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 472
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$4;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->startGeofences(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public startSchedule(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 457
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->startSchedule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getState()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 460
    :cond_0
    const-string p1, "Failed to start schedule.  Did you configure a #schedule?"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public stop(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 480
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$5;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->stop(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public stopSchedule(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 466
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->stopSchedule()V

    .line 467
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getState()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public stopWatchPosition(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 646
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$15;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->stopWatchPosition(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public sync(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 575
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$12;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->sync(Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V

    return-void
.end method

.method public uploadLog(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 917
    invoke-direct {p0, p2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->parseSQLQuery(Lcom/facebook/react/bridge/ReadableMap;)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    move-result-object p2

    .line 919
    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$29;

    invoke-direct {v1, p0, p3, p4}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$29;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-static {v0, p1, p2, v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->uploadLog(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public watchPosition(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 621
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;

    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 623
    new-instance v1, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$14;

    invoke-direct {v1, p0, p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$14;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->setCallback(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 636
    const-string p3, "interval"

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p3

    int-to-long v1, p3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->setInterval(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;

    .line 637
    :cond_0
    const-string p3, "extras"

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-static {p3}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->mapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->setExtras(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 638
    :cond_1
    const-string p3, "persist"

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->setPersist(Z)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 639
    :cond_2
    const-string p3, "desiredAccuracy"

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->setDesiredAccuracy(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    .line 641
    :cond_3
    invoke-direct {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->getAdapter()Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->watchPosition(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;)V

    const/4 p1, 0x0

    .line 642
    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
