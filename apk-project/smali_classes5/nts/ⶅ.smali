.class public abstract Lnts/ⶅ;
.super Lnts/ᯁ;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT_T:",
        "Ljava/lang/Object;",
        "IN_T:",
        "Ljava/lang/Object;",
        ">",
        "Lnts/\u1bc1<",
        "TOUT_T;TIN_T;>;",
        "Ljava/util/ListIterator<",
        "TOUT_T;>;"
    }
.end annotation


# instance fields
.field public ᇭ:Ljava/util/ListIterator;


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnts/ᯁ;-><init>(Ljava/util/Iterator;Z)V

    .line 5
    iput-object p1, p0, Lnts/ⶅ;->ᇭ:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT_T;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⶅ;->ᇭ:Ljava/util/ListIterator;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    move-object v1, p0

    check-cast v1, Lnts/ᙍ$ㆃ;

    .line 3
    iget-object v1, v1, Lnts/ᙍ$ㆃ;->ᰛ:Lnts/ᙍ;

    invoke-virtual {v1, p1}, Lnts/ⅿ;->ㆃ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⶅ;->ᇭ:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⶅ;->ᇭ:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT_T;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⶅ;->ᇭ:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lnts/ᯁ;->ㆃ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⶅ;->ᇭ:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT_T;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ᯁ;->ᾨ:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lnts/ⶅ;->ᇭ:Ljava/util/ListIterator;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    move-object v1, p0

    check-cast v1, Lnts/ᙍ$ㆃ;

    .line 5
    iget-object v1, v1, Lnts/ᙍ$ㆃ;->ᰛ:Lnts/ᙍ;

    invoke-virtual {v1, p1}, Lnts/ⅿ;->ㆃ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 v0, 0x2e

    const/16 v1, 0x11

    const/16 v2, 0x96

    invoke-static {v2, v0, v1}, Lnts/ᨾ;->ౠ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
