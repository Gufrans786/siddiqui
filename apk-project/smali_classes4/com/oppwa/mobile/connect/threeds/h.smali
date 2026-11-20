.class Lcom/oppwa/mobile/connect/threeds/h;
.super Ljava/lang/Object;
.source "SchemeConfigLoader.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/threeds/SchemeConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    invoke-static {v1}, Lcom/oppwa/mobile/connect/threeds/ThreeDSBrandsUtils;->getThreeDSBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 58
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 59
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/oppwa/mobile/connect/threeds/f;->a()Lcom/oppwa/mobile/connect/threeds/f;

    move-result-object v2

    sget-object v3, Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;->LIVE:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    .line 44
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oppwa/mobile/connect/threeds/h;->b(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    move-result-object v4

    .line 45
    invoke-virtual {v2, v3, v1, v4}, Lcom/oppwa/mobile/connect/threeds/f;->a(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;Lcom/oppwa/mobile/connect/threeds/SchemeConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "dsRefId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "dsCert"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppwa/mobile/connect/threeds/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "dsRootCa"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    invoke-direct {v2, v0, v1, p1}, Lcom/oppwa/mobile/connect/threeds/SchemeConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private b(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)Z
    .locals 1

    .line 5
    sget-object v0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;->TEST:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/h;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/h;->a:Ljava/util/Map;

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;
    .locals 1

    .line 26
    invoke-static {p2}, Lcom/oppwa/mobile/connect/threeds/ThreeDSBrandsUtils;->getThreeDSBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/threeds/h;->b(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/h;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    return-object p1

    .line 31
    :cond_0
    invoke-static {}, Lcom/oppwa/mobile/connect/threeds/f;->a()Lcom/oppwa/mobile/connect/threeds/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppwa/mobile/connect/threeds/f;->a(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/threeds/SchemeConfig;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/threeds/h;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1, v1}, Lcom/oppwa/mobile/connect/threeds/h;->a(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/threeds/SchemeConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/h;->a:Ljava/util/Map;

    return-void
.end method

.method a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/threeds/h;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 6
    :try_start_0
    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/threeds/d;->a(Landroid/content/Context;Ljava/util/Set;)Ljava/io/InputStream;

    move-result-object v2

    .line 7
    invoke-direct {p0, v2}, Lcom/oppwa/mobile/connect/threeds/h;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v3

    .line 8
    invoke-direct {p0, v3}, Lcom/oppwa/mobile/connect/threeds/h;->a(Lorg/json/JSONObject;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while downloading scheme configs: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oppwa/mobile/connect/threeds/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    const-string p2, "Error while downloading scheme configs: max retry reached"

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/threeds/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method
