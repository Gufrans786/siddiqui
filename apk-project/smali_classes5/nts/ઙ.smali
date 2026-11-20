.class public Lnts/ઙ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:[B

.field public Ὺ:Lnts/ᦩ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ઙ;->ᡲ:[B

    .line 3
    new-instance v0, Lnts/ᦩ;

    invoke-direct {v0}, Lnts/ᦩ;-><init>()V

    iput-object v0, p0, Lnts/ઙ;->Ὺ:Lnts/ᦩ;

    return-void
.end method


# virtual methods
.method public ᇭ([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    if-eqz v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ઙ;->Ὺ:Lnts/ᦩ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result v0

    .line 6
    iget-object v1, p0, Lnts/ઙ;->ᡲ:[B

    if-nez v1, :cond_1

    sub-int v1, v0, p2

    .line 7
    invoke-static {p1, p2, v1}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ઙ;->ᡲ:[B

    goto :goto_0

    .line 9
    :cond_1
    array-length v2, v1

    sub-int v3, v0, p2

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 10
    array-length v4, v1

    const/4 v5, 0x0

    .line 11
    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v1, p0, Lnts/ઙ;->ᡲ:[B

    array-length v1, v1

    .line 13
    invoke-static {p1, p2, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iput-object v2, p0, Lnts/ઙ;->ᡲ:[B

    .line 16
    :goto_0
    iget-object p1, p0, Lnts/ઙ;->Ὺ:Lnts/ᦩ;

    iget-boolean p1, p1, Lnts/ᛩ;->ᎊ:Z

    iput-boolean p1, p0, Lnts/ᛩ;->ᎊ:Z

    return v0
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ઙ;->ᡲ:[B

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ([B)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lnts/ઙ;->Ὺ:Lnts/ᦩ;

    invoke-virtual {v0, p1}, Lnts/ᦩ;->ㆃ(Lnts/Ḭ;)V

    return-void
.end method
