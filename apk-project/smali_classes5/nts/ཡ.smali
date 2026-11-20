.class public Lnts/ཡ;
.super Lnts/ଙ;
.source "SourceFile"


# instance fields
.field public ᡲ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ଙ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ཡ;->ᡲ:[B

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 1

    .line 1
    iget v0, p0, Lnts/ᛩ;->ᙕ:I

    if-lez v0, :cond_0

    invoke-static {p1, p2, v0}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object v0

    iput-object v0, p0, Lnts/ཡ;->ᡲ:[B

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lnts/ᛩ;->ᰛ([BI)I

    move-result p1

    return p1
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ཡ;->ᡲ:[B

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {p1, v0, v1}, Lnts/Ḭ;->ᰛ([BI)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lnts/ᛩ;->ᾨ:[B

    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {p1, v0, v1}, Lnts/Ḭ;->ㆃ([BI)V

    return-void
.end method
