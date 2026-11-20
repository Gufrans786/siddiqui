.class public Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$Builder;,
        Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$DirectoryServerInfo;,
        Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;
    }
.end annotation


# instance fields
.field public final ㆃ:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$\u3183;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->ㆃ:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;

    invoke-direct {v0, p1, p2, p3}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᾨ:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->ㆃ:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->ㆃ:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 p2, 0x14

    const/16 p3, 0x1b

    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGroup(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->ㆃ:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;

    .line 3
    invoke-virtual {v2, p1}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, v2, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᾨ:Ljava/lang/String;

    iget-object v2, v2, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᇭ:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getParamNamesInGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->ㆃ:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;

    .line 3
    invoke-virtual {v2, p1}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v2, v2, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᾨ:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;

    const-string v1, ""

    invoke-direct {v0, p1, p2, v1}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᾨ:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->ㆃ:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    if-eqz v1, :cond_2

    .line 11
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, v1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᇭ:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    :try_start_2
    const-string p1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 16
    :cond_3
    :try_start_3
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 p2, 0x1b

    const/16 v0, 0x14

    invoke-static {v0, v0, p2}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;

    const-string v1, ""

    invoke-direct {v0, p1, p2, v1}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, v0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᾨ:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->ㆃ:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ㆃ(Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;)I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;->ㆃ:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p1, Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters$ㆃ;->ᾨ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 12
    :cond_2
    :try_start_2
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const/16 p2, 0x14

    const/16 v0, 0x31

    const/16 v1, 0x28

    invoke-static {v1, p2, v0}, Lnts/ᾨ;->ㆃ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
