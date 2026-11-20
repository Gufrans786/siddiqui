.class public abstract Lnts/ⅿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT_T:",
        "Ljava/lang/Object;",
        "IN_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TOUT_T;>;"
    }
.end annotation


# instance fields
.field public ᾨ:Z

.field public ㆃ:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnts/ⅿ;->ㆃ:Ljava/util/Collection;

    .line 6
    iput-boolean p2, p0, Lnts/ⅿ;->ᾨ:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT_T;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ⅿ;->ᾨ:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ⅿ;->ㆃ:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lnts/ⅿ;->ᾨ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lnts/ᨾ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TOUT_T;>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const/16 v0, 0x1e

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnts/ⅿ;->ᾨ:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ⅿ;->ㆃ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x28

    const/16 v2, 0x3b

    const/16 v3, 0x46

    invoke-static {v3, v1, v2}, Lnts/ᨾ;->Ͼ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⅿ;->ㆃ:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lnts/ⅿ;->ᾨ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ⅿ;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⅿ;->ㆃ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TOUT_T;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ⅿ$ㆃ;

    iget-object v1, p0, Lnts/ⅿ;->ㆃ:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-boolean v2, p0, Lnts/ⅿ;->ᾨ:Z

    invoke-direct {v0, p0, v1, v2}, Lnts/ⅿ$ㆃ;-><init>(Lnts/ⅿ;Ljava/util/Iterator;Z)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnts/ⅿ;->ᾨ:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ⅿ;->ㆃ:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lnts/ⅿ;->ᾨ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 v0, 0x28

    const/16 v1, 0x9

    const/16 v2, 0x6e

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnts/ⅿ;->ᾨ:Z

    if-nez v0, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/ⅿ;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 v0, 0x28

    const/16 v1, 0xc

    const/16 v2, 0x96

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnts/ⅿ;->ᾨ:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lnts/ⅿ;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lnts/ⅿ;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 v0, 0x28

    const/16 v1, 0x1c

    const/16 v2, 0xbe

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->Ͼ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⅿ;->ㆃ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnts/ⅿ;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lnts/ⅿ;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    array-length v0, p1

    invoke-virtual {p0}, Lnts/ⅿ;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lnts/ⅿ;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnts/ⅿ;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_0

    .line 7
    :cond_1
    array-length v0, p1

    invoke-virtual {p0}, Lnts/ⅿ;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lnts/ⅿ;->size()I

    move-result v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_2
    return-object p1
.end method

.method public abstract ᇭ(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN_T;)TOUT_T;"
        }
    .end annotation
.end method

.method public final ᰛ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN_T;)TOUT_T;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lnts/ⅿ;->ᇭ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ᾨ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT_T;)TIN_T;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lnts/ⅿ;->ㆃ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract ㆃ(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT_T;)TIN_T;"
        }
    .end annotation
.end method
