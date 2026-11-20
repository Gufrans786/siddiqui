.class public Lcom/transistorsoft/locationmanager/location/TSLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOCATION_OPTIONS_ODOMETER:Ljava/lang/String; = "odometer"

.field private static final a:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/transistorsoft/locationmanager/util/TSTemplate;

.field private static d:Lcom/transistorsoft/locationmanager/util/TSTemplate;

.field private static e:Ljava/text/DecimalFormat;

.field private static f:Ljava/text/DecimalFormat;


# instance fields
.field private A:Ljava/lang/Integer;

.field private B:Ljava/lang/Boolean;

.field private C:Ljava/lang/Double;

.field private D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Lorg/json/JSONObject;

.field private H:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Long;

.field public id:Ljava/lang/Integer;

.field private j:Z

.field public json:Lorg/json/JSONObject;

.field private k:Ljava/lang/Double;

.field private l:Ljava/lang/Double;

.field private m:Ljava/lang/Double;

.field public mLocation:Landroid/location/Location;

.field private n:Ljava/lang/Double;

.field private o:Ljava/lang/Double;

.field private p:Ljava/lang/Double;

.field private q:Ljava/lang/Double;

.field private r:Ljava/lang/Double;

.field private s:Ljava/lang/Double;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/Float;

.field private v:Ljava/lang/Boolean;

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/lang/Boolean;

.field private y:Lcom/google/android/gms/location/DetectedActivity;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSLocation$a;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/location/TSLocation$a;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/location/TSLocation;->b:Ljava/lang/ThreadLocal;

    .line 121
    invoke-static {}, Lcom/transistorsoft/locationmanager/location/TSLocation;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->id:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->mLocation:Landroid/location/Location;

    .line 5
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->json:Lorg/json/JSONObject;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    .line 26
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    .line 27
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->x:Ljava/lang/Boolean;

    .line 33
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->B:Ljava/lang/Boolean;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->C:Ljava/lang/Double;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->id:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->mLocation:Landroid/location/Location;

    .line 64
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->json:Lorg/json/JSONObject;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    .line 85
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    .line 86
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->x:Ljava/lang/Boolean;

    .line 92
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->B:Ljava/lang/Boolean;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->C:Ljava/lang/Double;

    .line 122
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->H:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    return-void
.end method

.method static a(Landroid/location/Location;)J
    .locals 4

    .line 113
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const-wide v2, 0x16806b5bc00L

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const-wide v2, 0x9032100000L

    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method private static a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Lcom/transistorsoft/locationmanager/util/TSTemplate;
    .locals 1

    .line 215
    sget-object v0, Lcom/transistorsoft/locationmanager/location/TSLocation;->d:Lcom/transistorsoft/locationmanager/util/TSTemplate;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasGeofenceTemplate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceTemplate()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_0
    new-instance v0, Lcom/transistorsoft/locationmanager/util/TSTemplate;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/util/TSTemplate;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transistorsoft/locationmanager/location/TSLocation;->d:Lcom/transistorsoft/locationmanager/util/TSTemplate;

    .line 222
    :cond_1
    sget-object p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->d:Lcom/transistorsoft/locationmanager/util/TSTemplate;

    return-object p0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/location/TSLocation;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 140
    const-string/jumbo v0, "timestamp"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 141
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 142
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 145
    :try_start_0
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    const-string v4, "event"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    const-string v5, "providerchange"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->H:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    if-eqz v4, :cond_0

    .line 148
    const-string v5, "provider"

    invoke-virtual {v4}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_0
    const-string v4, "is_moving"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->v:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string/jumbo v4, "uuid"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->g:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v4, "age"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->i:Ljava/lang/Long;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    iget-boolean v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->j:Z

    if-eqz v4, :cond_1

    .line 156
    const-string/jumbo v4, "timestampMeta"

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->d()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_1
    const-string v4, "odometer"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->u:Ljava/lang/Float;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const-string v4, "mock"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_2
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->x:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    const-string v4, "sample"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->x:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_3
    const-string v4, "latitude"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->q:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v4, "longitude"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->r:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v4, "accuracy"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->k:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string/jumbo v4, "speed"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->s:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string/jumbo v4, "speed_accuracy"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->l:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v4, "heading"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->o:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v4, "heading_accuracy"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->p:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v4, "altitude"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->m:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v4, "ellipsoidal_altitude"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->m:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v4, "altitude_accuracy"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->n:Ljava/lang/Double;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v4, "coords"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v2, "type"

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->z:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v2, "confidence"

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->A:Ljava/lang/Integer;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v2, "activity"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 192
    const-string v3, "is_charging"

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->B:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v3, "level"

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->C:Ljava/lang/Double;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v3, "battery"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "extras"

    if-eqz v2, :cond_5

    .line 198
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 199
    const-string v4, "identifier"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v5}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v4, "action"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->E:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->F:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_4
    const-string v0, "geofence"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 208
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-object v1

    :catch_0
    move-exception v0

    .line 212
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "JSON Error"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 11

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 125
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    if-lt v0, v1, :cond_2

    .line 119
    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    const/4 v0, 0x4

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/4 v1, 0x6

    .line 121
    invoke-virtual {p1, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p1

    .line 123
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    int-to-float v0, v0

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v0, v7

    float-to-double v7, v0

    invoke-virtual {v1, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->C:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    iput-object v6, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->C:Ljava/lang/Double;

    :goto_0
    if-eq p1, v5, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    move v2, v4

    .line 127
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->B:Ljava/lang/Boolean;

    goto :goto_2

    .line 129
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 130
    const-string v0, "level"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, -0x1

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 132
    const-string v7, "scale"

    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 134
    :try_start_1
    sget-object v8, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    int-to-float v0, v0

    int-to-float v7, v7

    div-float/2addr v0, v7

    float-to-double v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->C:Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 136
    :catch_1
    iput-object v6, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->C:Ljava/lang/Double;

    .line 138
    :goto_1
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v5, :cond_3

    if-ne p1, v3, :cond_4

    :cond_3
    move v2, v4

    .line 139
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->B:Ljava/lang/Boolean;

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V
    .locals 8

    .line 2
    invoke-static/range {p1 .. p2}, Lsa/lg/android/locate/autobid/AppLocationOverride;->androidLocation(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Location;
    move-result-object p2

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->mLocation:Landroid/location/Location;

    .line 3
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {p2, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 10
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1

    .line 12
    invoke-virtual {p2}, Landroid/location/Location;->isMock()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    .line 19
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->g:Ljava/lang/String;

    .line 22
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->mLocation:Landroid/location/Location;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Landroid/location/Location;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->h:Ljava/lang/String;

    .line 23
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->mLocation:Landroid/location/Location;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->i:Ljava/lang/Long;

    .line 24
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnableTimestampMeta()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->j:Z

    .line 27
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->q:Ljava/lang/Double;

    .line 28
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->r:Ljava/lang/Double;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 30
    :try_start_0
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_1

    :cond_3
    move-wide v4, v2

    .line 31
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->k:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 33
    :catch_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->k:Ljava/lang/Double;

    .line 36
    :goto_2
    :try_start_1
    invoke-virtual {p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_3

    :cond_4
    move-wide v4, v2

    .line 37
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->m:Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 39
    :catch_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->m:Ljava/lang/Double;

    .line 41
    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->n:Ljava/lang/Double;

    .line 42
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_5

    .line 43
    invoke-virtual {p2}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_5

    .line 45
    :try_start_2
    sget-object v4, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->n:Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 47
    :catch_2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->n:Ljava/lang/Double;

    .line 52
    :cond_5
    :goto_5
    :try_start_3
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_6

    :cond_6
    move-wide v6, v2

    .line 53
    :goto_6
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->s:Ljava/lang/Double;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    .line 55
    :catch_3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->s:Ljava/lang/Double;

    .line 57
    :goto_7
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->l:Ljava/lang/Double;

    .line 58
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_8

    .line 60
    :try_start_4
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_8

    :cond_7
    move-wide v6, v2

    .line 61
    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->l:Ljava/lang/Double;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    .line 63
    :catch_4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->l:Ljava/lang/Double;

    .line 68
    :cond_8
    :goto_9
    :try_start_5
    invoke-virtual {p2}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_a

    :cond_9
    move-wide v6, v2

    .line 69
    :goto_a
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->o:Ljava/lang/Double;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    .line 71
    :catch_5
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->o:Ljava/lang/Double;

    .line 73
    :goto_b
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->p:Ljava/lang/Double;

    .line 74
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_b

    .line 76
    :try_start_6
    invoke-virtual {p2}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p2}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result p2

    float-to-double v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_c

    :cond_a
    move-wide v4, v2

    .line 77
    :goto_c
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->p:Ljava/lang/Double;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_d

    .line 79
    :catch_6
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->p:Ljava/lang/Double;

    :cond_b
    :goto_d
    const/16 p2, 0x64

    if-eqz p3, :cond_c

    .line 83
    invoke-virtual {p3}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result p3

    invoke-static {p3}, Lcom/transistorsoft/locationmanager/util/Util;->getActivityName(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->z:Ljava/lang/String;

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->A:Ljava/lang/Integer;

    goto :goto_e

    .line 86
    :cond_c
    const-string/jumbo p3, "unknown"

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->z:Ljava/lang/String;

    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->A:Ljava/lang/Integer;

    .line 91
    :goto_e
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->v:Ljava/lang/Boolean;

    .line 92
    const-string p2, "sample"

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 93
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->x:Ljava/lang/Boolean;

    .line 95
    :cond_d
    const-string p2, "event"

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 96
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    .line 98
    :cond_e
    const-string p2, "is_heartbeat"

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 99
    const-string p2, "heartbeat"

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    .line 105
    :cond_f
    sget-object p2, Lcom/transistorsoft/locationmanager/location/TSLocation;->f:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getOdometer()Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->u:Ljava/lang/Float;

    .line 109
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getExtras()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Lcom/transistorsoft/locationmanager/util/TSTemplate;Ljava/lang/Exception;)V
    .locals 1

    .line 223
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->b(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Lcom/transistorsoft/locationmanager/util/TSTemplate;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const-string p2, "locationTemplate"

    goto :goto_0

    :cond_0
    const-string p2, "geofenceTemplate"

    .line 225
    :goto_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDebug()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    new-instance p1, Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;

    invoke-direct {p1, p2, p3}, Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 227
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 231
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "You have an error in your "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":\n\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized applyExtras(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Location;
    .locals 5

    const-class v0, Lcom/transistorsoft/locationmanager/location/TSLocation;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    :cond_0
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getOdometer()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "odometer"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 10
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 13
    const-string v4, "scale"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 15
    const-string v4, "battery_level"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 18
    const-string/jumbo v2, "status"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 20
    :goto_1
    const-string v2, "is_charging"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    :cond_3
    invoke-virtual {p1, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static b(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Lcom/transistorsoft/locationmanager/util/TSTemplate;
    .locals 1

    .line 5
    sget-object v0, Lcom/transistorsoft/locationmanager/location/TSLocation;->c:Lcom/transistorsoft/locationmanager/util/TSTemplate;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasLocationTemplate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLocationTemplate()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/transistorsoft/locationmanager/util/TSTemplate;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/util/TSTemplate;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transistorsoft/locationmanager/location/TSLocation;->c:Lcom/transistorsoft/locationmanager/util/TSTemplate;

    .line 12
    :cond_1
    sget-object p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->c:Lcom/transistorsoft/locationmanager/util/TSTemplate;

    return-object p0
.end method

.method private b()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->c()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "geofence.identifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->E:Ljava/lang/String;

    const-string v2, "geofence.action"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->F:Ljava/lang/String;

    const-string v2, "geofence.timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static buildFromJson(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/location/TSLocation;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "event"

    const-string v1, "odometer"

    new-instance v2, Landroid/location/Location;

    const-string v3, "fused"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5
    :try_start_0
    const-string v4, "coords"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 6
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 7
    const-string v5, "battery"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    new-instance v5, Lcom/google/android/gms/location/ActivityTransitionEvent;

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9, v7, v8}, Lcom/google/android/gms/location/ActivityTransitionEvent;-><init>(IIJ)V

    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 14
    const-string v1, "sample"

    invoke-virtual {v3, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string p1, "latitude"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 19
    const-string p1, "longitude"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 20
    const-string p1, "accuracy"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {v2, p1}, Landroid/location/Location;->setAccuracy(F)V

    .line 21
    const-string/jumbo p1, "speed"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {v2, p1}, Landroid/location/Location;->setSpeed(F)V

    .line 22
    const-string p1, "heading"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {v2, p1}, Landroid/location/Location;->setBearing(F)V

    .line 23
    const-string p1, "altitude"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 25
    new-instance p1, Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-direct {p1, p0, v2, v5}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 28
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error building TSLocation from json: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    throw p0
.end method

.method private c()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->h:Ljava/lang/String;

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "age"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->g:Ljava/lang/String;

    const-string/jumbo v2, "uuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->q:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->r:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->s:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "speed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->l:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "speed_accuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->o:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "heading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->p:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "heading_accuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->k:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->m:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "altitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->m:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ellipsoidal_altitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->n:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "altitude_accuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->v:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_moving"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->u:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "odometer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->z:Ljava/lang/String;

    const-string v2, "activity.type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->A:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity.confidence"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->C:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery.level"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->B:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery.is_charging"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :try_start_0
    const-string/jumbo v1, "timestampMeta"

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private d()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->mLocation:Landroid/location/Location;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Landroid/location/Location;)J

    move-result-wide v1

    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "systemTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    const-string/jumbo v5, "systemClockElapsedRealtime"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    div-long/2addr v1, v3

    const-string v3, "elapsedRealtime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static e()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/location/TSLocation;->e:Ljava/text/DecimalFormat;

    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.#"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/location/TSLocation;->f:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static resetGeofenceTemplate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/transistorsoft/locationmanager/location/TSLocation;->d:Lcom/transistorsoft/locationmanager/util/TSTemplate;

    return-void
.end method

.method public static resetLocationTemplate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/transistorsoft/locationmanager/location/TSLocation;->c:Lcom/transistorsoft/locationmanager/util/TSTemplate;

    return-void
.end method


# virtual methods
.method public addGeofencingEvent(ILcom/transistorsoft/locationmanager/geofence/TSGeofence;)V
    .locals 1

    .line 1
    const-string v0, "geofence"

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 5
    const-string p1, "ENTER"

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->E:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 7
    const-string p1, "EXIT"

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->E:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 9
    const-string p1, "DWELL"

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->E:Ljava/lang/String;

    .line 11
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->F:Ljava/lang/String;

    return-void
.end method

.method public getActivityConfidence()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryIsCharging()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBatteryLevel()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->C:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDetectedActivity()Lcom/google/android/gms/location/DetectedActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->y:Lcom/google/android/gms/location/DetectedActivity;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getGeofence()Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    return-object v0
.end method

.method public getGeofenceAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getGeofenceExtras()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getGeofenceIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeofenceTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMoving()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getJson()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getOdometer()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->u:Ljava/lang/Float;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hasGeofence()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSample()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public renderJson(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "event"

    const-string v1, "Invalid JSON: "

    .line 1
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    if-nez v3, :cond_0

    .line 7
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->b(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Lcom/transistorsoft/locationmanager/util/TSTemplate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->c()Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Lcom/transistorsoft/locationmanager/util/TSTemplate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->b()Ljava/util/HashMap;

    move-result-object v2

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 24
    :cond_2
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/transistorsoft/locationmanager/util/TSTemplate;->render(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 32
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 35
    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getExtras()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 36
    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    if-nez v5, :cond_3

    .line 37
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    .line 39
    :cond_3
    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->D:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getExtras()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transistorsoft/locationmanager/util/Util;->mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    const/16 v5, 0x7b

    const-string v6, "providerchange"

    if-ne v4, v5, :cond_9

    .line 43
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 45
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->H:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    if-eqz v0, :cond_6

    .line 49
    const-string v2, "provider"

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    const-string v0, "mock"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    .line 56
    invoke-static {v1, v0}, Lcom/transistorsoft/locationmanager/util/Util;->mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v1

    :cond_9
    const/16 v0, 0x5b

    if-ne v4, v0, :cond_d

    .line 62
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 64
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Appending #isMock to last index of [Array] in JSON template"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->w:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 67
    :cond_a
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    if-eqz v1, :cond_b

    .line 68
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Appending #extras to last index of [Array] in JSON template"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71
    :cond_b
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->H:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    if-eqz v1, :cond_c

    .line 72
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_c
    return-object v0

    .line 76
    :cond_d
    new-instance v0, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 80
    invoke-direct {p0, p1, v3, v0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Lcom/transistorsoft/locationmanager/util/TSTemplate;Ljava/lang/Exception;)V

    .line 81
    throw v0

    :catch_1
    move-exception v0

    .line 82
    invoke-direct {p0, p1, v3, v0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Lcom/transistorsoft/locationmanager/util/TSTemplate;Ljava/lang/Exception;)V

    .line 83
    throw v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->t:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/util/Util;->mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->G:Lorg/json/JSONObject;

    return-void
.end method

.method public declared-synchronized toJson()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->json:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->json:Lorg/json/JSONObject;

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocation;->json:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/Util;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
