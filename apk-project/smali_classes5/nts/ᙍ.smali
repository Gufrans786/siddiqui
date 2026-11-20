.class public abstract Lnts/ᙍ;
.super Lnts/ⅿ;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT_T:",
        "Ljava/lang/Object;",
        "IN_T:",
        "Ljava/lang/Object;",
        ">",
        "Lnts/\u217f<",
        "TOUT_T;TIN_T;>;",
        "Ljava/util/List<",
        "TOUT_T;>;"
    }
.end annotation


# instance fields
.field public ᇭ:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnts/ⅿ;-><init>(Ljava/util/Collection;Z)V

    .line 5
    iput-object p1, p0, Lnts/ᙍ;->ᇭ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITOUT_T;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ⅿ;->ᾨ:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ᙍ;->ᇭ:Ljava/util/List;

    invoke-virtual {p0, p2}, Lnts/ⅿ;->ᾨ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 p2, 0x28

    const/16 v0, 0x75

    const/4 v1, 0x0

    invoke-static {v1, p2, v0}, Lnts/ᨾ;->ౠ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TOUT_T;>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const/16 p2, 0x1e

    const/16 v0, 0x67

    const/16 v1, 0x28

    invoke-static {v1, p2, v0}, Lnts/ᨾ;->ౠ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TOUT_T;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᙍ;->ᇭ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⅿ;->ᰛ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᙍ;->ᇭ:Ljava/util/List;

    invoke-virtual {p0, p1}, Lnts/ⅿ;->ᾨ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᙍ;->ᇭ:Ljava/util/List;

    invoke-virtual {p0, p1}, Lnts/ⅿ;->ᾨ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TOUT_T;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lnts/ᙍ;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TOUT_T;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᙍ$ㆃ;

    iget-object v1, p0, Lnts/ᙍ;->ᇭ:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iget-boolean v1, p0, Lnts/ⅿ;->ᾨ:Z

    invoke-direct {v0, p0, p1, v1}, Lnts/ᙍ$ㆃ;-><init>(Lnts/ᙍ;Ljava/util/ListIterator;Z)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TOUT_T;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ⅿ;->ᾨ:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ᙍ;->ᇭ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⅿ;->ᰛ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 v0, 0x28

    const/16 v1, 0x76

    const/16 v2, 0x46

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->ౠ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITOUT_T;)TOUT_T;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ⅿ;->ᾨ:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ᙍ;->ᇭ:Ljava/util/List;

    invoke-virtual {p0, p2}, Lnts/ⅿ;->ᾨ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ⅿ;->ᰛ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 p2, 0x28

    const/16 v0, 0x18

    const/16 v1, 0x6e

    invoke-static {v1, p2, v0}, Lnts/ᨾ;->ౠ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TOUT_T;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᙍ$ᾨ;

    iget-object v1, p0, Lnts/ᙍ;->ᇭ:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-boolean p2, p0, Lnts/ⅿ;->ᾨ:Z

    invoke-direct {v0, p0, p1, p2}, Lnts/ᙍ$ᾨ;-><init>(Lnts/ᙍ;Ljava/util/List;Z)V

    return-object v0
.end method
