.class public final Lnts/ᵑ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ᇭ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ᰛ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final ᾨ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ㆃ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v1, Lnts/Ⲳ;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/Ⲳ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lnts/ᡲ;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/ᡲ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lnts/て;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/て;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lnts/ᎊ;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/ᎊ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lnts/ዲ;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/ዲ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lnts/Ὺ;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/Ὺ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnts/ᵑ;->ᇭ:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    sget-object v1, Lnts/Ⲳ;->ㆃ:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lnts/Ⲳ;->ᇭ:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lnts/Ⲳ;->ᰛ:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lnts/Ⲳ;->Ͼ:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lnts/ᡲ;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/ᡲ;->ᇭ:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lnts/て;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/て;->ᇭ:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lnts/ᎊ;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/ᎊ;->ᇭ:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lnts/ዲ;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/ዲ;->ᇭ:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lnts/Ὺ;->ㆃ:Ljava/lang/String;

    sget-object v2, Lnts/Ὺ;->ᇭ:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnts/ᵑ;->ᰛ:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lnts/ᙕ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lnts/ᙕ;->て:Ljava/util/Map;

    .line 3
    iput-object v0, p0, Lnts/ᵑ;->ㆃ:Ljava/util/Map;

    .line 4
    iget-object p1, p1, Lnts/ᙕ;->ዲ:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lnts/ᵑ;->ᾨ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ᾨ(Ljava/lang/String;)Lnts/ᅙ;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᵑ;->ㆃ:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    sget-object v0, Lnts/ᵑ;->ᇭ:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    new-instance p1, Lnts/ᅙ;

    const-string v0, ""

    const-string v2, "*"

    const/16 v3, 0x63

    invoke-direct {p1, v3, v1, v0, v2}, Lnts/ᅙ;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 12
    :cond_5
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;

    const/16 v0, 0x1a

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnts/\u1159;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᵑ;->ᾨ:Ljava/util/Map;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/16 v3, 0x5e

    .line 4
    invoke-static {v1, v1, v3}, Lnts/ᾨ;->ᵑ(III)Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    aget-object v6, v5, v7

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;

    const/16 v0, 0xe

    const/16 v1, 0xd

    const/16 v2, 0x34

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    array-length v0, v5

    :goto_1
    if-ge v7, v0, :cond_4

    aget-object v6, v5, v7

    .line 12
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v2

    :cond_4
    if-eqz v4, :cond_6

    .line 19
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v4

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz p1, :cond_8

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 21
    :cond_7
    sget-object v0, Lnts/ᵑ;->ᰛ:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_8
    :goto_3
    if-eqz v2, :cond_a

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_a

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    new-instance v2, Lnts/ᅙ;

    const-string v3, ""

    const-string v4, "*"

    const/16 v5, 0x63

    invoke-direct {v2, v5, v1, v3, v4}, Lnts/ᅙ;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    return-object p1

    .line 29
    :cond_a
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;

    const/16 v0, 0x42

    invoke-static {v0, v1, v1}, Lnts/ᾨ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
