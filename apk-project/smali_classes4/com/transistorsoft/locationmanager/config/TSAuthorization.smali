.class public Lcom/transistorsoft/locationmanager/config/TSAuthorization;
.super Lcom/transistorsoft/locationmanager/config/a;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/config/IModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;,
        Lcom/transistorsoft/locationmanager/config/TSAuthorization$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final FIELD_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final FIELD_EXPIRES:Ljava/lang/String; = "expires"

.field public static final FIELD_REFRESH_HEADERS:Ljava/lang/String; = "refreshHeaders"

.field public static final FIELD_REFRESH_PAYLOAD:Ljava/lang/String; = "refreshPayload"

.field public static final FIELD_REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"

.field public static final FIELD_REFRESH_URL:Ljava/lang/String; = "refreshUrl"

.field public static final FIELD_STRATEGY:Ljava/lang/String; = "strategy"

.field public static final NAME:Ljava/lang/String; = "authorization"

.field public static final STRATEGY_JWT:Ljava/lang/String; = "JWT"

.field public static final STRATEGY_SAS:Ljava/lang/String; = "SAS"

.field private static final m:Ljava/lang/String; = "{refreshToken}"

.field private static final n:Ljava/lang/String; = "{accessToken}"

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^[A-Za-z0-9-_=]+\\.[A-Za-z0-9-_=]+\\.?[A-Za-z0-9-_.+/=]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->o:Ljava/util/regex/Pattern;

    .line 2
    const-string v0, "^[A-Za-z0-9-_=]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->p:Ljava/util/regex/Pattern;

    .line 4
    const-string v0, "^(access|auth|id_token)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->q:Ljava/util/regex/Pattern;

    .line 5
    const-string v0, "^(renew|refresh)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->r:Ljava/util/regex/Pattern;

    .line 6
    const-string v0, "^expir.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->s:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "authorization"

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    .line 7
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->j:Z

    .line 12
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->k:Z

    .line 13
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->l:Z

    .line 17
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->applyDefaults()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18
    const-string v0, "authorization"

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    .line 24
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->j:Z

    .line 29
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->k:Z

    .line 30
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->l:Z

    .line 50
    const-string/jumbo v0, "strategy"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    .line 53
    :cond_0
    const-string v0, "accessToken"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    .line 56
    :cond_1
    const-string v0, "refreshToken"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    .line 59
    :cond_2
    const-string v0, "refreshUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    .line 62
    :cond_3
    const-string v0, "refreshPayload"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    .line 65
    :cond_4
    const-string v0, "refreshHeaders"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    .line 68
    :cond_5
    const-string v0, "expires"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    :cond_6
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    const-string v0, "authorization"

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    .line 77
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 78
    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->j:Z

    .line 82
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->k:Z

    .line 83
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->l:Z

    .line 130
    const-string/jumbo v0, "strategy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    .line 131
    :cond_0
    const-string v0, "accessToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    .line 132
    :cond_1
    const-string v0, "refreshToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    .line 133
    :cond_2
    const-string v0, "refreshUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    .line 134
    :cond_3
    const-string v0, "refreshPayload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/Util;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    .line 135
    :cond_4
    const-string v0, "refreshHeaders"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/Util;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    .line 136
    :cond_5
    const-string v0, "expires"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    :cond_6
    if-eqz p2, :cond_7

    .line 138
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->applyDefaults()V

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    return-object p1
.end method

.method private a(ILjava/lang/String;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V
    .locals 3

    .line 6
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ud83d\udd11 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

    invoke-direct {v0, p1, p2}, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;->invoke(Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V

    return-void
.end method

.method private a(Landroid/content/Context;ILorg/json/JSONObject;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V
    .locals 3

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->j:Z

    .line 9
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->k:Z

    .line 10
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->l:Z

    .line 12
    :try_start_0
    new-instance v0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->setStrategy(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->setRefreshToken(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->setRefreshPayload(Ljava/util/Map;)V

    .line 16
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->setRefreshHeaders(Ljava/util/Map;)V

    .line 18
    invoke-direct {p0, p3, v0}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lorg/json/JSONObject;Lcom/transistorsoft/locationmanager/config/TSAuthorization;)V

    .line 19
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithBuilder()Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->setAuthorization(Lcom/transistorsoft/locationmanager/config/TSAuthorization;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->commit()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iget-boolean p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->j:Z

    if-eqz p1, :cond_0

    .line 27
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\ud83d\udd11 Refresh token success"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 28
    new-instance p1, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

    invoke-direct {p1, p2, p3}, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;-><init>(ILorg/json/JSONObject;)V

    invoke-interface {p4, p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;->invoke(Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V

    return-void

    .line 30
    :cond_0
    new-instance p1, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\ud83d\udd11 Failed to find refreshToken or accessToken in response from "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;->invoke(Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V

    return-void

    :catch_0
    move-exception p1

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error parsing response data from refreshUrl: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 32
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ud83d\udd11 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    new-instance p1, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

    invoke-direct {p1, p2, p3}, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;->invoke(Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;ILjava/lang/String;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(ILjava/lang/String;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Landroid/content/Context;ILorg/json/JSONObject;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Landroid/content/Context;ILorg/json/JSONObject;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/transistorsoft/locationmanager/config/TSAuthorization;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 40
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 41
    check-cast v2, Lorg/json/JSONObject;

    invoke-direct {p0, v2, p2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lorg/json/JSONObject;Lcom/transistorsoft/locationmanager/config/TSAuthorization;)V

    goto :goto_0

    .line 43
    :cond_1
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    .line 50
    iget-boolean v4, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->j:Z

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 51
    sget-object v4, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 52
    iput-boolean v5, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->j:Z

    .line 53
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v3, "\ud83d\udd11 Received accessToken"

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, v2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->setAccessToken(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_3
    iget-boolean v4, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->k:Z

    if-nez v4, :cond_4

    .line 59
    sget-object v4, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 60
    iput-boolean v5, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->k:Z

    .line 61
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v3, "\ud83d\udd11 Received refreshToken"

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2, v2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->setRefreshToken(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_4
    iget-boolean v3, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->l:Z

    if-nez v3, :cond_0

    .line 67
    sget-object v3, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iput-boolean v5, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->l:Z

    .line 69
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v3, "\ud83d\udd11 Received expires"

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 70
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->setExpires(J)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public apply(Lokhttp3/Request$Builder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    const-string v1, "JWT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Authorization"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    const-string v2, "SAS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_1
    return-void
.end method

.method public applyDefaults()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    const-string v1, "JWT"

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Authorization"

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    const-string v2, "Bearer {accessToken}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    const-string v2, "SAS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    const-string/jumbo v2, "{accessToken}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public canRefreshAuthorizationToken()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/transistorsoft/locationmanager/config/TSAuthorization;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshPayload()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    .line 8
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getExpires()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDirtyFields()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transistorsoft/locationmanager/config/a;->getDirtyFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    return-wide v0
.end method

.method public getRefreshHeaders()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getRefreshPayload()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    return-object v0
.end method

.method public refreshAuthorizationToken(Landroid/content/Context;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 3
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "{refreshToken}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 13
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 15
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 18
    :cond_1
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 20
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 23
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHeaders()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 28
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 30
    const-string v5, "content-type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 32
    :try_start_0
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    :catch_0
    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid header ignored: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_3
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 43
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 44
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_4

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "{accessToken}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 49
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 51
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_2

    .line 54
    :cond_5
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;-><init>(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    return-void
.end method

.method public setExpires(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    return-void
.end method

.method public setRefreshHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    return-void
.end method

.method public setRefreshPayload(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    return-void
.end method

.method public setRefreshUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    return-void
.end method

.method public toJson(Z)Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "<redacted>"

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eqz p1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_1
    iget-object v5, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10
    :cond_2
    :try_start_0
    const-string/jumbo p1, "strategy"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string p1, "accessToken"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string p1, "refreshToken"

    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string p1, "refreshUrl"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string p1, "refreshPayload"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 15
    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string p1, "refreshHeaders"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    if-eqz v1, :cond_4

    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 17
    :cond_4
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string p1, "expires"

    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TSLocationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    const-string/jumbo v2, "strategy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    const-string v2, "accessToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    const-string v2, "refreshToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    const-string v2, "refreshUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    const-string v2, "refreshPayload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    const-string v2, "refreshHeaders"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "expires"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public update(Lcom/transistorsoft/locationmanager/config/TSAuthorization;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/a;->a()V

    .line 2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getStrategy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getStrategy()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getStrategy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->c:Ljava/lang/String;

    .line 4
    const-string/jumbo v0, "strategy"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->d:Ljava/lang/String;

    .line 8
    const-string v0, "accessToken"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->f:Ljava/lang/String;

    .line 12
    const-string v0, "refreshToken"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->e:Ljava/lang/String;

    .line 16
    const-string v0, "refreshUrl"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshPayload()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshPayload()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshPayload()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->g:Ljava/util/Map;

    .line 20
    const-string v0, "refreshPayload"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 24
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getRefreshHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->h:Ljava/util/Map;

    .line 25
    const-string v0, "refreshHeaders"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 27
    :cond_5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getExpires()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getExpires()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->i:J

    .line 29
    const-string p1, "expires"

    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 31
    :cond_6
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->getDirtyFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
