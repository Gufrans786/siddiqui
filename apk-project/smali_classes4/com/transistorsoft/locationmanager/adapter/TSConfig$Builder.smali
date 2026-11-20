.class public Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/adapter/TSConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final IGNORED_FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityRecognitionInterval:Ljava/lang/Long;

.field private allowIdenticalLocations:Ljava/lang/Boolean;

.field private authorization:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

.field private autoSync:Ljava/lang/Boolean;

.field private autoSyncThreshold:Ljava/lang/Integer;

.field private backgroundPermissionRationale:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

.field private batchSync:Ljava/lang/Boolean;

.field private configUrl:Ljava/lang/String;

.field private crashDetector:Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

.field private debug:Ljava/lang/Boolean;

.field private deferTime:Ljava/lang/Long;

.field private desiredAccuracy:Ljava/lang/Integer;

.field private desiredOdometerAccuracy:Ljava/lang/Float;

.field private final dirtyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private disableAutoSyncOnCellular:Ljava/lang/Boolean;

.field private disableElasticity:Ljava/lang/Boolean;

.field private disableLocationAuthorizationAlert:Ljava/lang/Boolean;

.field private disableMotionActivityUpdates:Ljava/lang/Boolean;

.field private disableProviderChangeRecord:Ljava/lang/Boolean;

.field private disableStopDetection:Ljava/lang/Boolean;

.field private distanceFilter:Ljava/lang/Float;

.field private elasticityMultiplier:Ljava/lang/Float;

.field private enableHeadless:Ljava/lang/Boolean;

.field private enableTimestampMeta:Ljava/lang/Boolean;

.field private extras:Lorg/json/JSONObject;

.field private fastestLocationUpdateInterval:Ljava/lang/Long;

.field private foregroundService:Ljava/lang/Boolean;

.field private geofenceInitialTriggerEntry:Ljava/lang/Boolean;

.field private geofenceModeHighAccuracy:Ljava/lang/Boolean;

.field private geofenceProximityRadius:Ljava/lang/Long;

.field private geofenceTemplate:Ljava/lang/String;

.field private headers:Lorg/json/JSONObject;

.field private headlessJobService:Ljava/lang/String;

.field private heartbeatInterval:Ljava/lang/Integer;

.field private httpRootProperty:Ljava/lang/String;

.field private httpTimeout:Ljava/lang/Integer;

.field private isMoving:Ljava/lang/Boolean;

.field private locationAuthorizationRequest:Ljava/lang/String;

.field private locationTemplate:Ljava/lang/String;

.field private locationTimeout:Ljava/lang/Integer;

.field private locationUpdateInterval:Ljava/lang/Long;

.field private locationsOrderDirection:Ljava/lang/String;

.field private logLevel:Ljava/lang/Integer;

.field private logMaxDays:Ljava/lang/Integer;

.field private maxBatchSize:Ljava/lang/Integer;

.field private maxDaysToPersist:Ljava/lang/Integer;

.field private maxMonitoredGeofences:Ljava/lang/Integer;

.field private maxRecordsToPersist:Ljava/lang/Integer;

.field private method:Ljava/lang/String;

.field private minimumActivityRecognitionConfidence:Ljava/lang/Integer;

.field private motionTriggerDelay:Ljava/lang/Long;

.field private notification:Lcom/transistorsoft/locationmanager/config/TSNotification;

.field private params:Lorg/json/JSONObject;

.field private persist:Ljava/lang/Boolean;

.field private persistMode:Ljava/lang/Integer;

.field private schedule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scheduleUseAlarmManager:Ljava/lang/Boolean;

.field private speedJumpFilter:Ljava/lang/Integer;

.field private startOnBoot:Ljava/lang/Boolean;

.field private stationaryRadius:Ljava/lang/Integer;

.field private stopAfterElapsedMinutes:Ljava/lang/Integer;

.field private stopOnStationary:Ljava/lang/Boolean;

.field private stopOnTerminate:Ljava/lang/Boolean;

.field private stopTimeout:Ljava/lang/Long;

.field private triggerActivities:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private useSignificantChangesOnly:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "dirtyFields"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->IGNORED_FIELDS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    .line 86
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    .line 179
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a()V

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 181
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 183
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {p0, v4}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 187
    :cond_0
    :try_start_0
    const-class v7, Ljava/lang/Boolean;

    if-ne v6, v7, :cond_1

    .line 188
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 189
    :cond_1
    const-class v7, Ljava/lang/Long;

    if-ne v6, v7, :cond_2

    .line 190
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 191
    :cond_2
    const-class v7, Ljava/lang/Integer;

    if-ne v6, v7, :cond_3

    .line 192
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 193
    :cond_3
    const-class v7, Ljava/lang/Float;

    if-ne v6, v7, :cond_4

    .line 194
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 195
    :cond_4
    const-class v7, Ljava/lang/Double;

    if-ne v6, v7, :cond_5

    .line 196
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 197
    :cond_5
    const-class v7, Lorg/json/JSONObject;

    if-ne v6, v7, :cond_6

    .line 198
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 199
    :cond_6
    const-class v7, Lorg/json/JSONArray;

    if-ne v6, v7, :cond_7

    .line 200
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 201
    :cond_7
    const-class v7, Ljava/util/List;

    if-ne v6, v7, :cond_9

    .line 202
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 203
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v2

    .line 204
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 205
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 207
    :cond_8
    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 208
    :cond_9
    const-class v7, Ljava/util/Map;

    if-ne v6, v7, :cond_b

    .line 209
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 210
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 211
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 212
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 213
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 214
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 216
    :cond_a
    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 217
    :cond_b
    const-class v7, Lcom/transistorsoft/locationmanager/config/TSNotification;

    const/4 v8, 0x1

    if-ne v6, v7, :cond_c

    .line 218
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 219
    new-instance v6, Lcom/transistorsoft/locationmanager/config/TSNotification;

    invoke-direct {v6, v5, v8}, Lcom/transistorsoft/locationmanager/config/TSNotification;-><init>(Lorg/json/JSONObject;Z)V

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 220
    :cond_c
    const-class v7, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    if-ne v6, v7, :cond_d

    .line 221
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 222
    new-instance v6, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    invoke-direct {v6, v5, v8}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;-><init>(Lorg/json/JSONObject;Z)V

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 223
    :cond_d
    const-class v7, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    if-ne v6, v7, :cond_e

    .line 224
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 225
    new-instance v6, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-direct {v6, v5, v8}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;-><init>(Lorg/json/JSONObject;Z)V

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 226
    :cond_e
    const-class v7, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    if-ne v6, v7, :cond_f

    .line 227
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 228
    new-instance v6, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    invoke-direct {v6, v5, v8}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;-><init>(Lorg/json/JSONObject;Z)V

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 230
    :cond_f
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 235
    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v4

    .line 236
    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method static synthetic A(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxDaysToPersist:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic B(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxRecordsToPersist:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic C(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic E(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->triggerActivities:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->autoSync:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic G(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->autoSyncThreshold:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic H(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->batchSync:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic I(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxBatchSize:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic J(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->params:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic K(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headers:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic L(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->extras:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic M(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->httpRootProperty:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic N(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationTemplate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic O(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceTemplate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic P(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->b()Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Q(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationsOrderDirection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic R(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->httpTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic S(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableAutoSyncOnCellular:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic T(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableProviderChangeRecord:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic U(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/config/TSAuthorization;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->authorization:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    return-object p0
.end method

.method static synthetic V(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceProximityRadius:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic W(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxMonitoredGeofences:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic X(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceInitialTriggerEntry:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic Y(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceModeHighAccuracy:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic Z(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopOnTerminate:Ljava/lang/Boolean;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 208
    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 216
    invoke-virtual {p2, p3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 218
    invoke-virtual {p2, p3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredAccuracy:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredAccuracy:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 212
    invoke-virtual {p2, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 210
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-interface {p3, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    move-object p2, p3

    .line 226
    :cond_2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 227
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    .line 228
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    return-object p2
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 222
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;Z)Lorg/json/JSONObject;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->b(Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 220
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 221
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private a()V
    .locals 8

    const/high16 v0, 0x41200000    # 10.0f

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->distanceFilter:Ljava/lang/Float;

    const/16 v0, 0x64

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredAccuracy:Ljava/lang/Integer;

    .line 7
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a()Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a()Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredAccuracy:Ljava/lang/Integer;

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    .line 11
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredOdometerAccuracy:Ljava/lang/Float;

    const-wide/16 v2, 0x3e8

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationUpdateInterval:Ljava/lang/Long;

    const-wide/16 v4, -0x1

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->fastestLocationUpdateInterval:Ljava/lang/Long;

    const/16 v0, 0x3c

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationTimeout:Ljava/lang/Integer;

    const-wide/16 v4, 0x0

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->deferTime:Ljava/lang/Long;

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableElasticity:Ljava/lang/Boolean;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->elasticityMultiplier:Ljava/lang/Float;

    .line 18
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->allowIdenticalLocations:Ljava/lang/Boolean;

    .line 19
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->enableTimestampMeta:Ljava/lang/Boolean;

    const/16 v6, 0x12c

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->speedJumpFilter:Ljava/lang/Integer;

    .line 21
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->useSignificantChangesOnly:Ljava/lang/Boolean;

    .line 22
    const-string v6, "Always"

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationAuthorizationRequest:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableLocationAuthorizationAlert:Ljava/lang/Boolean;

    .line 25
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->isMoving:Ljava/lang/Boolean;

    const-wide/16 v6, 0x2710

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->activityRecognitionInterval:Ljava/lang/Long;

    const/16 v6, 0x4b

    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->minimumActivityRecognitionConfidence:Ljava/lang/Integer;

    .line 28
    const-string v6, "in_vehicle, on_bicycle, on_foot, running, walking"

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->triggerActivities:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableStopDetection:Ljava/lang/Boolean;

    .line 30
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableMotionActivityUpdates:Ljava/lang/Boolean;

    const/16 v6, 0x19

    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stationaryRadius:Ljava/lang/Integer;

    const-wide/16 v6, 0x5

    .line 32
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopTimeout:Ljava/lang/Long;

    .line 33
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopOnStationary:Ljava/lang/Boolean;

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->motionTriggerDelay:Ljava/lang/Long;

    .line 36
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->persist:Ljava/lang/Boolean;

    const/4 v5, 0x2

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->persistMode:Ljava/lang/Integer;

    const/4 v5, 0x1

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxDaysToPersist:Ljava/lang/Integer;

    const/4 v5, -0x1

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxRecordsToPersist:Ljava/lang/Integer;

    .line 40
    const-string v6, ""

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->url:Ljava/lang/String;

    .line 41
    const-string v7, "POST"

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->method:Ljava/lang/String;

    .line 42
    iput-object v4, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->autoSync:Ljava/lang/Boolean;

    .line 43
    sget-object v7, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->DEFAULT_AUTO_SYNC_THRESHOLD:Ljava/lang/Integer;

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->autoSyncThreshold:Ljava/lang/Integer;

    .line 44
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->batchSync:Ljava/lang/Boolean;

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxBatchSize:Ljava/lang/Integer;

    .line 46
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->params:Lorg/json/JSONObject;

    .line 47
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headers:Lorg/json/JSONObject;

    .line 48
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->extras:Lorg/json/JSONObject;

    .line 49
    const-string v7, "location"

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->httpRootProperty:Ljava/lang/String;

    .line 50
    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationTemplate:Ljava/lang/String;

    .line 51
    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceTemplate:Ljava/lang/String;

    .line 52
    const-string v7, "ASC"

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationsOrderDirection:Ljava/lang/String;

    const v7, 0xea60

    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->httpTimeout:Ljava/lang/Integer;

    .line 54
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableAutoSyncOnCellular:Ljava/lang/Boolean;

    .line 55
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableProviderChangeRecord:Ljava/lang/Boolean;

    .line 56
    new-instance v7, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-direct {v7}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;-><init>()V

    iput-object v7, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->authorization:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    .line 57
    invoke-virtual {v7}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->applyDefaults()V

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceProximityRadius:Ljava/lang/Long;

    const/16 v2, 0x61

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxMonitoredGeofences:Ljava/lang/Integer;

    .line 61
    iput-object v4, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceInitialTriggerEntry:Ljava/lang/Boolean;

    .line 62
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceModeHighAccuracy:Ljava/lang/Boolean;

    .line 64
    iput-object v4, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopOnTerminate:Ljava/lang/Boolean;

    .line 65
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->startOnBoot:Ljava/lang/Boolean;

    .line 66
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopAfterElapsedMinutes:Ljava/lang/Integer;

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->heartbeatInterval:Ljava/lang/Integer;

    .line 68
    iput-object v4, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->foregroundService:Ljava/lang/Boolean;

    .line 69
    new-instance v2, Lcom/transistorsoft/locationmanager/config/TSNotification;

    invoke-direct {v2}, Lcom/transistorsoft/locationmanager/config/TSNotification;-><init>()V

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->notification:Lcom/transistorsoft/locationmanager/config/TSNotification;

    .line 70
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/config/TSNotification;->applyDefaults()V

    .line 71
    new-instance v2, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    invoke-direct {v2}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;-><init>()V

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->crashDetector:Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    .line 72
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->applyDefaults()V

    .line 73
    new-instance v2, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    invoke-direct {v2}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;-><init>()V

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->backgroundPermissionRationale:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    .line 74
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->applyDefaults()V

    .line 75
    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->configUrl:Ljava/lang/String;

    .line 76
    sget-object v2, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->DEFAULT_SCHEDULE:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->schedule:Ljava/util/List;

    .line 77
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->scheduleUseAlarmManager:Ljava/lang/Boolean;

    .line 78
    iput-object v6, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headlessJobService:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->enableHeadless:Ljava/lang/Boolean;

    .line 81
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->debug:Ljava/lang/Boolean;

    .line 82
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->logLevel:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->logMaxDays:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    monitor-exit v0

    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 10

    .line 123
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 130
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-direct {p0, v4}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_3

    .line 136
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v9, v7, v2

    invoke-virtual {v8, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 138
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Boolean;

    if-ne v7, v8, :cond_2

    .line 139
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 140
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Long;

    if-ne v7, v8, :cond_3

    .line 141
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 142
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    if-ne v7, v8, :cond_4

    .line 143
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 144
    :cond_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Float;

    if-ne v7, v8, :cond_5

    .line 145
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 146
    :cond_5
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Double;

    if-ne v7, v8, :cond_6

    .line 147
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 148
    :cond_6
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_7

    .line 149
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 150
    :cond_7
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lorg/json/JSONObject;

    if-ne v7, v8, :cond_8

    .line 151
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 152
    :cond_8
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lorg/json/JSONArray;

    if-ne v7, v8, :cond_9

    .line 153
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 154
    :cond_9
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/util/List;

    if-ne v7, v8, :cond_b

    .line 155
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v7, v2

    .line 157
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 158
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 160
    :cond_a
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 161
    :cond_b
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/util/Map;

    if-ne v7, v8, :cond_d

    .line 162
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 163
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 164
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 165
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 166
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 167
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 169
    :cond_c
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 170
    :cond_d
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/transistorsoft/locationmanager/config/TSNotification;

    if-ne v7, v8, :cond_e

    .line 171
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 172
    new-instance v5, Lcom/transistorsoft/locationmanager/config/TSNotification;

    invoke-direct {v5, v4, v2}, Lcom/transistorsoft/locationmanager/config/TSNotification;-><init>(Lorg/json/JSONObject;Z)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 173
    :cond_e
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    if-ne v7, v8, :cond_f

    .line 174
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 175
    new-instance v5, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    invoke-direct {v5, v4, v2}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;-><init>(Lorg/json/JSONObject;Z)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 176
    :cond_f
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    if-ne v7, v8, :cond_10

    .line 177
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 178
    new-instance v5, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-direct {v5, v4, v2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;-><init>(Lorg/json/JSONObject;Z)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 179
    :cond_10
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    if-ne v4, v7, :cond_11

    .line 180
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 181
    new-instance v5, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    invoke-direct {v5, v4, v2}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;-><init>(Lorg/json/JSONObject;Z)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 183
    :cond_11
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 192
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TSLocationManager"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v4

    .line 193
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TSLocationManager"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v4

    .line 194
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TSLocationManager"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v4

    .line 195
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TSLocationManager"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_13
    :goto_4
    return-void

    :catchall_0
    move-exception p1

    .line 196
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private a(Z)V
    .locals 11

    .line 84
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;-><init>()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 86
    invoke-direct {p0, v5}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 92
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v7, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 96
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 106
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TSLocationManager"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v5

    .line 107
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TSLocationManager"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v5

    .line 108
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TSLocationManager"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 118
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    monitor-enter p1

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 122
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->commit()V

    return-void
.end method

.method private a(Ljava/lang/reflect/Field;)Z
    .locals 2

    .line 229
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->IGNORED_FIELDS:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->startOnBoot:Ljava/lang/Boolean;

    return-object p0
.end method

.method private b()Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->isMoving:Ljava/lang/Boolean;

    return-object p0
.end method

.method private b(Z)Lorg/json/JSONObject;
    .locals 11

    const-string v0, "TSLocationManager"

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_e

    aget-object v6, v2, v5

    .line 11
    invoke-direct {p0, v6}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_2

    .line 12
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_2

    .line 17
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/util/Map;

    if-ne v9, v10, :cond_2

    .line 18
    new-instance v6, Lorg/json/JSONObject;

    check-cast v8, Ljava/util/Map;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 19
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 20
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/util/List;

    if-ne v9, v10, :cond_4

    .line 21
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 22
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/util/ArrayList;

    if-ne v9, v10, :cond_d

    .line 23
    check-cast v8, Ljava/util/List;

    .line 24
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 25
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 29
    :cond_4
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Integer;

    if-ne v9, v10, :cond_5

    .line 30
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 31
    :cond_5
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Long;

    if-ne v9, v10, :cond_6

    .line 32
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 33
    :cond_6
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Double;

    if-ne v9, v10, :cond_7

    .line 34
    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_2

    .line 35
    :cond_7
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Float;

    if-ne v9, v10, :cond_8

    .line 36
    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_2

    .line 37
    :cond_8
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/transistorsoft/locationmanager/config/TSNotification;

    if-ne v9, v10, :cond_9

    .line 38
    check-cast v8, Lcom/transistorsoft/locationmanager/config/TSNotification;

    invoke-virtual {v8, p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 39
    :cond_9
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    if-ne v9, v10, :cond_a

    .line 40
    check-cast v8, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    invoke-virtual {v8, v4}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 41
    :cond_a
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    if-ne v9, v10, :cond_b

    .line 42
    check-cast v8, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-virtual {v8, p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 43
    :cond_b
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v9, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    if-ne v6, v9, :cond_c

    .line 44
    check-cast v8, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    invoke-virtual {v8, p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 46
    :cond_c
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_3
    return-object v1
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Z)V

    return-void
.end method

.method static synthetic b0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopAfterElapsedMinutes:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->distanceFilter:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic c0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->heartbeatInterval:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic d(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->elasticityMultiplier:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic d0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->foregroundService:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic e(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredOdometerAccuracy:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic e0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/config/TSNotification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->notification:Lcom/transistorsoft/locationmanager/config/TSNotification;

    return-object p0
.end method

.method static synthetic f(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationUpdateInterval:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic f0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/config/TSCrashDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->crashDetector:Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    return-object p0
.end method

.method static synthetic g(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->fastestLocationUpdateInterval:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic g0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->backgroundPermissionRationale:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    return-object p0
.end method

.method static synthetic h(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic h0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->configUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->deferTime:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic i0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->schedule:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableElasticity:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic j0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->scheduleUseAlarmManager:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic k(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->allowIdenticalLocations:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic k0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headlessJobService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->enableTimestampMeta:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic l0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->enableHeadless:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic m(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->speedJumpFilter:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic m0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->debug:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic n(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->useSignificantChangesOnly:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic n0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->logLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic o(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationAuthorizationRequest:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->logMaxDays:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic p(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableLocationAuthorizationAlert:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->dirtyFields:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->activityRecognitionInterval:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic r(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->minimumActivityRecognitionConfidence:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic s(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableStopDetection:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic t(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableMotionActivityUpdates:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic u(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stationaryRadius:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic v(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic w(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopOnStationary:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic x(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->motionTriggerDelay:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic y(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->persist:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic z(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->persistMode:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public commit()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a()Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a()Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->b(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    :cond_0
    return-void
.end method

.method public setActivityRecognitionInterval(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->activityRecognitionInterval:Ljava/lang/Long;

    const-string v1, "activityRecognitionInterval"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->activityRecognitionInterval:Ljava/lang/Long;

    return-object p0
.end method

.method public setAllowIdenticalLocations(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->allowIdenticalLocations:Ljava/lang/Boolean;

    const-string v1, "allowIdenticalLocations"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->allowIdenticalLocations:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAuthorization(Lcom/transistorsoft/locationmanager/config/TSAuthorization;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->authorization:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->update(Lcom/transistorsoft/locationmanager/config/TSAuthorization;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "authorization"

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->authorization:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getDirtyFields()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/util/List;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->authorization:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->applyDefaults()V

    return-object p0
.end method

.method public setAutoSync(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->autoSync:Ljava/lang/Boolean;

    const-string v1, "autoSync"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->autoSync:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAutoSyncThreshold(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->autoSyncThreshold:Ljava/lang/Integer;

    const-string v1, "autoSyncThreshold"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->autoSyncThreshold:Ljava/lang/Integer;

    return-object p0
.end method

.method public setBackgroundPermissionRationale(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->backgroundPermissionRationale:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->update(Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "backgroundPermissionRationale"

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->backgroundPermissionRationale:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->getDirtyFields()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/util/List;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->backgroundPermissionRationale:Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;->applyDefaults()V

    return-object p0
.end method

.method public setBatchSync(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->batchSync:Ljava/lang/Boolean;

    const-string v1, "batchSync"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->batchSync:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setConfigUrl(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->configUrl:Ljava/lang/String;

    const-string v1, "configUrl"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->configUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCrashDetector(Lcom/transistorsoft/locationmanager/config/TSCrashDetector;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->crashDetector:Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->update(Lcom/transistorsoft/locationmanager/config/TSCrashDetector;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "crashDetector"

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->crashDetector:Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getDirtyFields()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/util/List;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->crashDetector:Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->applyDefaults()V

    return-object p0
.end method

.method public setDebug(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->debug:Ljava/lang/Boolean;

    const-string v1, "debug"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->debug:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDeferTime(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->deferTime:Ljava/lang/Long;

    const-string v1, "deferTime"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->deferTime:Ljava/lang/Long;

    return-object p0
.end method

.method public setDesiredAccuracy(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredAccuracy:Ljava/lang/Integer;

    const-string v1, "desiredAccuracy"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredAccuracy:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDesiredOdometerAccuracy(Ljava/lang/Float;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredOdometerAccuracy:Ljava/lang/Float;

    const-string v1, "desiredOdometerAccuracy"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->desiredOdometerAccuracy:Ljava/lang/Float;

    return-object p0
.end method

.method public setDisableAutoSyncOnCellular(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableAutoSyncOnCellular:Ljava/lang/Boolean;

    const-string v1, "disableAutoSyncOnCellular"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableAutoSyncOnCellular:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDisableElasticity(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableElasticity:Ljava/lang/Boolean;

    const-string v1, "disableElasticity"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableElasticity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDisableLocationAuthorizationAlert(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableLocationAuthorizationAlert:Ljava/lang/Boolean;

    const-string v1, "disableLocationAuthorizationAlert"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableLocationAuthorizationAlert:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDisableMotionActivityUpdates(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableMotionActivityUpdates:Ljava/lang/Boolean;

    const-string v1, "disableMotionActivityUpdates"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableMotionActivityUpdates:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDisableProviderChangeRecord(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableProviderChangeRecord:Ljava/lang/Boolean;

    const-string v1, "disableProviderChangeRecord"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableProviderChangeRecord:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDisableStopDetection(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableStopDetection:Ljava/lang/Boolean;

    const-string v1, "disableStopDetection"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->disableStopDetection:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDistanceFilter(Ljava/lang/Float;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid distanceFilter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".  Applying DEFAULT_DISTANCE_FILTER: 10.0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->distanceFilter:Ljava/lang/Float;

    const-string v1, "distanceFilter"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->distanceFilter:Ljava/lang/Float;

    return-object p0
.end method

.method public setElasticityMultiplier(Ljava/lang/Float;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->elasticityMultiplier:Ljava/lang/Float;

    const-string v1, "elasticityMultiplier"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->elasticityMultiplier:Ljava/lang/Float;

    return-object p0
.end method

.method public setEnableHeadless(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->enableHeadless:Ljava/lang/Boolean;

    const-string v1, "enableHeadless"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->enableHeadless:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setEnableTimestampMeta(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->enableTimestampMeta:Ljava/lang/Boolean;

    const-string v1, "enableTimestampMeta"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->enableTimestampMeta:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setExtras(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->extras:Lorg/json/JSONObject;

    const-string v1, "extras"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->extras:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setFastestLocationUpdateInterval(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->fastestLocationUpdateInterval:Ljava/lang/Long;

    const-string v1, "fastestLocationUpdateInterval"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->fastestLocationUpdateInterval:Ljava/lang/Long;

    return-object p0
.end method

.method public setForegroundService(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->foregroundService:Ljava/lang/Boolean;

    const-string v1, "foregroundService"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->foregroundService:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGeofenceInitialTriggerEntry(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceInitialTriggerEntry:Ljava/lang/Boolean;

    const-string v1, "geofenceInitialTriggerEntry"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceInitialTriggerEntry:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGeofenceModeHighAccuracy(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceModeHighAccuracy:Ljava/lang/Boolean;

    const-string v1, "geofenceModeHighAccuracy"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceModeHighAccuracy:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGeofenceProximityRadius(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceProximityRadius:Ljava/lang/Long;

    const-string v1, "geofenceProximityRadius"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceProximityRadius:Ljava/lang/Long;

    return-object p0
.end method

.method public setGeofenceTemplate(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    const-string p1, ""

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceTemplate:Ljava/lang/String;

    const-string v1, "geofenceTemplate"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->geofenceTemplate:Ljava/lang/String;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headers:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headers:Lorg/json/JSONObject;

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headers:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p1, "headers"

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setHeaders(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headers:Lorg/json/JSONObject;

    const-string v1, "headers"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headers:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setHeadlessJobService(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headlessJobService:Ljava/lang/String;

    const-string v1, "headlessJobService"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->headlessJobService:Ljava/lang/String;

    return-object p0
.end method

.method public setHeartbeatInterval(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->heartbeatInterval:Ljava/lang/Integer;

    const-string v1, "heartbeatInterval"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->heartbeatInterval:Ljava/lang/Integer;

    return-object p0
.end method

.method public setHttpRootProperty(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->httpRootProperty:Ljava/lang/String;

    const-string v1, "httpRootProperty"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->httpRootProperty:Ljava/lang/String;

    return-object p0
.end method

.method public setHttpTimeout(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->httpTimeout:Ljava/lang/Integer;

    const-string v1, "httpTimeout"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->httpTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIsMoving(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->isMoving:Ljava/lang/Boolean;

    const-string v1, "isMoving"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->isMoving:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setLocationAuthorizationRequest(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationAuthorizationRequest:Ljava/lang/String;

    const-string v1, "locationAuthorizationRequest"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationAuthorizationRequest:Ljava/lang/String;

    return-object p0
.end method

.method public setLocationTemplate(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    const-string p1, ""

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationTemplate:Ljava/lang/String;

    const-string v1, "locationTemplate"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationTemplate:Ljava/lang/String;

    return-object p0
.end method

.method public setLocationTimeout(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationTimeout:Ljava/lang/Integer;

    const-string v1, "locationTimeout"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLocationUpdateInterval(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationUpdateInterval:Ljava/lang/Long;

    const-string v1, "locationUpdateInterval"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationUpdateInterval:Ljava/lang/Long;

    return-object p0
.end method

.method public setLocationsOrderDirection(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationsOrderDirection:Ljava/lang/String;

    const-string v1, "locationsOrderDirection"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->locationsOrderDirection:Ljava/lang/String;

    return-object p0
.end method

.method public setLogLevel(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->logLevel:Ljava/lang/Integer;

    const-string v1, "logLevel"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->logLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLogMaxDays(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->logMaxDays:Ljava/lang/Integer;

    const-string v1, "logMaxDays"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->logMaxDays:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxBatchSize(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxBatchSize:Ljava/lang/Integer;

    const-string v1, "maxBatchSize"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxBatchSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxDaysToPersist(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxDaysToPersist:Ljava/lang/Integer;

    const-string v1, "maxDaysToPersist"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxDaysToPersist:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxMonitoredGeofences(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x61

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxMonitoredGeofences:Ljava/lang/Integer;

    const-string v1, "maxMonitoredGeofences"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxMonitoredGeofences:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxRecordsToPersist(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxRecordsToPersist:Ljava/lang/Integer;

    const-string v1, "maxRecordsToPersist"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->maxRecordsToPersist:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->method:Ljava/lang/String;

    const-string v1, "method"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setMinimumActivityRecognitionConfidence(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->minimumActivityRecognitionConfidence:Ljava/lang/Integer;

    const-string v1, "minimumActivityRecognitionConfidence"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->minimumActivityRecognitionConfidence:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMotionTriggerDelay(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->motionTriggerDelay:Ljava/lang/Long;

    const-string v1, "motionTriggerDelay"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->motionTriggerDelay:Ljava/lang/Long;

    return-object p0
.end method

.method public setNotification(Lcom/transistorsoft/locationmanager/config/TSNotification;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->notification:Lcom/transistorsoft/locationmanager/config/TSNotification;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->update(Lcom/transistorsoft/locationmanager/config/TSNotification;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "notification"

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->notification:Lcom/transistorsoft/locationmanager/config/TSNotification;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getDirtyFields()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/util/List;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->notification:Lcom/transistorsoft/locationmanager/config/TSNotification;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->applyDefaults()V

    return-object p0
.end method

.method public setParams(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->params:Lorg/json/JSONObject;

    const-string v1, "params"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->params:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setPersist(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->persist:Ljava/lang/Boolean;

    const-string v1, "persist"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->persist:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPersistMode(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 8
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid value for persistMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".  Using default value: 2"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->persistMode:Ljava/lang/Integer;

    const-string v1, "persistMode"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->persistMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSchedule(Ljava/util/List;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->schedule:Ljava/util/List;

    const-string v1, "schedule"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->schedule:Ljava/util/List;

    return-object p0
.end method

.method public setScheduleUseAlarmManager(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->scheduleUseAlarmManager:Ljava/lang/Boolean;

    const-string v1, "scheduleUseAlarmManager"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->scheduleUseAlarmManager:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSpeedJumpFilter(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->speedJumpFilter:Ljava/lang/Integer;

    const-string/jumbo v1, "speedJumpFilter"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->speedJumpFilter:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStartOnBoot(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->startOnBoot:Ljava/lang/Boolean;

    const-string/jumbo v1, "startOnBoot"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->startOnBoot:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setStationaryRadius(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stationaryRadius:Ljava/lang/Integer;

    const-string/jumbo v1, "stationaryRadius"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stationaryRadius:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStopAfterElapsedMinutes(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopAfterElapsedMinutes:Ljava/lang/Integer;

    const-string/jumbo v1, "stopAfterElapsedMinutes"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopAfterElapsedMinutes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStopOnStationary(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopOnStationary:Ljava/lang/Boolean;

    const-string/jumbo v1, "stopOnStationary"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopOnStationary:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setStopOnTerminate(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopOnTerminate:Ljava/lang/Boolean;

    const-string/jumbo v1, "stopOnTerminate"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopOnTerminate:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setStopTimeout(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopTimeout:Ljava/lang/Long;

    const-string/jumbo v1, "stopTimeout"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->stopTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public setTriggerActivities(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->triggerActivities:Ljava/lang/String;

    const-string/jumbo v1, "triggerActivities"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->triggerActivities:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->url:Ljava/lang/String;

    const-string/jumbo v1, "url"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setUseSignificantChangesOnly(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->useSignificantChangesOnly:Ljava/lang/Boolean;

    const-string/jumbo v1, "useSignificantChangesOnly"

    invoke-direct {p0, v1, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->useSignificantChangesOnly:Ljava/lang/Boolean;

    return-object p0
.end method
