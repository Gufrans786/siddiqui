.class public Lnts/ٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljava/io/Serializable;


# instance fields
.field public ㆃ:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x18

    const/16 v1, 0x53

    const/16 v2, 0x4d27

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x118

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iput p1, p0, Lnts/ٴ;->ㆃ:I

    return-void
.end method
