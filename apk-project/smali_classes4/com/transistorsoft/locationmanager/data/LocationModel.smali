.class public Lcom/transistorsoft/locationmanager/data/LocationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/transistorsoft/locationmanager/data/LocationDAO;

.field public destroyed:Z

.field public id:Ljava/lang/Integer;

.field public json:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/transistorsoft/locationmanager/data/LocationDAO;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->json:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->destroyed:Z

    .line 10
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->c:Lcom/transistorsoft/locationmanager/data/LocationDAO;

    .line 11
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->id:Ljava/lang/Integer;

    .line 12
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->a:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->b:Ljava/lang/String;

    .line 16
    :try_start_0
    invoke-virtual {p5, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x7b

    if-ne p1, p2, :cond_0

    .line 18
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->json:Ljava/lang/Object;

    return-void

    :cond_0
    const/16 p2, 0x5b

    if-ne p1, p2, :cond_1

    .line 20
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->json:Ljava/lang/Object;

    return-void

    .line 22
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Invalid JSON"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 25
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "JSON Error: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public destroy()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->destroyed:Z

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->c:Lcom/transistorsoft/locationmanager/data/LocationDAO;

    invoke-interface {v0, p0}, Lcom/transistorsoft/locationmanager/data/LocationDAO;->destroy(Lcom/transistorsoft/locationmanager/data/LocationModel;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getJson()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->json:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public unlock()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/LocationModel;->c:Lcom/transistorsoft/locationmanager/data/LocationDAO;

    invoke-interface {v0, p0}, Lcom/transistorsoft/locationmanager/data/LocationDAO;->unlock(Lcom/transistorsoft/locationmanager/data/LocationModel;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
