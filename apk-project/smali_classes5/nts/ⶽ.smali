.class public Lnts/ⶽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:I

.field public ㆃ:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ⶽ;->ㆃ:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lnts/ⶽ;->ᾨ:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 8
    iput p1, p0, Lnts/ⶽ;->ᾨ:I

    :cond_0
    return-void
.end method
