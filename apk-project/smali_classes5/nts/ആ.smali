.class public final Lnts/ആ;
.super Lnts/ᙍ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnts/\u164d<",
        "Lnts/\u1427;",
        "Lnts/\u3105;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnts/ᙍ;-><init>(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lnts/\u1427;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ⅿ;->ᾨ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 9
    :try_start_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnts/ᐧ;

    invoke-virtual {v2}, Lnts/ᐧ;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnts/ᐧ;

    invoke-virtual {p0, p1, v2}, Lnts/ᙍ;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    add-int/lit8 p1, p1, 0x2

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lnts/ᙍ;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return v1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 p2, 0x71

    const-string v0, "\u0016(>(<(61?p# :<>4 <..wl#\'24c+6d5#\u0018\u001cV\u0015\u0013\u0010\u0006P"

    const/16 v2, 0x28

    .line 13
    invoke-static {v0, v1, v2, p2}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnts/\u1427;",
            ">;)Z"
        }
    .end annotation

    .line 15
    invoke-super {p0}, Lnts/ⅿ;->size()I

    move-result v0

    .line 16
    invoke-virtual {p0, v0, p1}, Lnts/ആ;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-super {p0}, Lnts/ⅿ;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lnts/ᙍ;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnts/ᐧ;

    .line 4
    iget-object v2, v2, Lnts/ᐧ;->ㆃ:Lnts/ㄅ;

    .line 5
    invoke-virtual {v2}, Lnts/Ί;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lnts/ആ;

    iget-boolean v2, p0, Lnts/ⅿ;->ᾨ:Z

    invoke-direct {v1, v0, v2}, Lnts/ആ;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-super {p0}, Lnts/ⅿ;->size()I

    move-result v0

    return v0
.end method

.method public ᇭ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lnts/ㄅ;

    .line 2
    new-instance v0, Lnts/ᐧ;

    invoke-direct {v0, p1}, Lnts/ᐧ;-><init>(Lnts/ㄅ;)V

    return-object v0
.end method

.method public ㆃ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnts/ᐧ;

    .line 2
    iget-object p1, p1, Lnts/ᐧ;->ㆃ:Lnts/ㄅ;

    return-object p1
.end method
