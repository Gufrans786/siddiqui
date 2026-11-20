.class public abstract Lnts/ᯁ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT_T:",
        "Ljava/lang/Object;",
        "IN_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TOUT_T;>;"
    }
.end annotation


# instance fields
.field public ᾨ:Z

.field public ㆃ:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnts/ᯁ;->ㆃ:Ljava/util/Iterator;

    .line 6
    iput-boolean p2, p0, Lnts/ᯁ;->ᾨ:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᯁ;->ㆃ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT_T;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᯁ;->ㆃ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

.method public remove()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnts/ᯁ;->ᾨ:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnts/ᯁ;->ㆃ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2e

    const/16 v2, 0x5d

    const/16 v3, 0xc4

    invoke-static {v3, v1, v2}, Lnts/ᨾ;->ౠ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract ㆃ(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN_T;)TOUT_T;"
        }
    .end annotation
.end method
