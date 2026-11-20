.class public Lcom/transistorsoft/locationmanager/config/TSNotification;
.super Lcom/transistorsoft/locationmanager/config/a;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/config/IModule;


# static fields
.field public static final NAME:Ljava/lang/String; = "notification"

.field static final p:Ljava/lang/String; = ""

.field static final q:Ljava/lang/String; = "Location Service activated"

.field static final r:Ljava/lang/Integer;

.field static final s:Ljava/lang/String; = "TSLocationManager"


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/config/TSNotification;->r:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "notification"

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    .line 12
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->applyDefaults()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18
    const-string v0, "notification"

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    .line 40
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    .line 43
    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    .line 46
    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    .line 49
    :cond_2
    const-string/jumbo v0, "smallIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    .line 52
    :cond_3
    const-string v0, "largeIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    .line 55
    :cond_4
    const-string v0, "priority"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    .line 58
    :cond_5
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    .line 61
    :cond_6
    const-string v0, "channelName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    .line 64
    :cond_7
    const-string v0, "channelId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    .line 67
    :cond_8
    const-string/jumbo v0, "strings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 71
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/transistorsoft/locationmanager/config/TSNotification;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_9
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 80
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transistorsoft/locationmanager/config/TSNotification;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_a
    const-string/jumbo v0, "sticky"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    :cond_b
    if-eqz p2, :cond_c

    .line 87
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->applyDefaults()V

    :cond_c
    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyDefaults()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    const-string v0, "Location Service activated"

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 8
    sget-object v0, Lcom/transistorsoft/locationmanager/config/TSNotification;->r:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 11
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 14
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 17
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 20
    const-string v0, "TSLocationManager"

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 23
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 26
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    .line 28
    :cond_8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    .line 31
    :cond_9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    if-nez v0, :cond_a

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    :cond_b
    return-void
.end method

.method public equals(Lcom/transistorsoft/locationmanager/config/TSNotification;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLayout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getStrings()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getPriority()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSmallIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLargeIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSticky()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDirtyFields()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transistorsoft/locationmanager/config/a;->getDirtyFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLargeIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousValues()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getPriority()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSmallIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSticky()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStrings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    return-void
.end method

.method public setLargeIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    return-void
.end method

.method public setLayout(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    return-void
.end method

.method public setSmallIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    return-void
.end method

.method public setSticky(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    return-void
.end method

.method public toJson(Z)Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 6
    const-string v2, "layout"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string/jumbo v2, "text"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v2, "color"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v2, "channelName"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v2, "channelId"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string/jumbo v2, "smallIcon"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v2, "largeIcon"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v2, "priority"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string/jumbo v2, "sticky"

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo v2, "strings"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 26
    :cond_1
    const-string v0, "actions"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TSLocationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
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
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    const-string v2, "layout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    const-string v2, "color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    const-string v2, "channelName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    const-string v2, "channelId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    const-string/jumbo v2, "smallIcon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    const-string v2, "largeIcon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    const-string v2, "priority"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    const-string/jumbo v2, "strings"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    const-string v2, "actions"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    const-string/jumbo v2, "sticky"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public update(Lcom/transistorsoft/locationmanager/config/TSNotification;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->toMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->c:Ljava/util/Map;

    .line 2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/a;->a()V

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->e:Ljava/lang/String;

    .line 6
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->f:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLayout()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLayout()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->d:Ljava/lang/String;

    .line 14
    const-string v0, "layout"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->j:Ljava/lang/String;

    .line 18
    const-string v0, "color"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSmallIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSmallIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSmallIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->g:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "smallIcon"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLargeIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLargeIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getLargeIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->h:Ljava/lang/String;

    .line 26
    const-string v0, "largeIcon"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 28
    :cond_5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getPriority()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getPriority()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 29
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getPriority()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->i:Ljava/lang/Integer;

    .line 30
    const-string v0, "priority"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 32
    :cond_6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSticky()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSticky()Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 33
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSticky()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->o:Ljava/lang/Boolean;

    .line 34
    const-string/jumbo v0, "sticky"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 36
    :cond_7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 39
    :cond_8
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getActions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->n:Ljava/util/List;

    .line 40
    const-string v0, "actions"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 42
    :cond_9
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getStrings()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getStrings()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 43
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getStrings()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->m:Ljava/util/Map;

    .line 44
    const-string/jumbo v0, "strings"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 46
    :cond_a
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 47
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->k:Ljava/lang/String;

    .line 48
    const-string v0, "channelName"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 50
    :cond_b
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 51
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSNotification;->l:Ljava/lang/String;

    .line 52
    const-string p1, "channelId"

    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/config/a;->a(Ljava/lang/String;)V

    .line 54
    :cond_c
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getDirtyFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
