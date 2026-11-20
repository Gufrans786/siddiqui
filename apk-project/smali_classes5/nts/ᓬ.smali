.class public Lnts/ᓬ;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public ㆃ:I


# direct methods
.method public constructor <init>(Lnts/ᛎ;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_0

    .line 2
    instance-of v2, v1, Lnts/ᛎ;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget p1, p1, Lnts/ᛎ;->ㆃ:I

    .line 6
    iput p1, p0, Lnts/ᓬ;->ㆃ:I

    return-void
.end method
