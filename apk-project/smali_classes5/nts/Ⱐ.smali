.class public Lnts/Ⱐ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Ljava/lang/String;

.field public Ὺ:[B

.field public Ⲳ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/16 v0, 0x30

    .line 2
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ㆃ(Lnts/Ḭ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/Ⱐ;->Ⲳ:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 5
    invoke-virtual {v1}, Lnts/Ḭ;->ㆃ()V

    .line 6
    invoke-virtual {v1, v0}, Lnts/Ḭ;->ㆃ(I)V

    .line 9
    invoke-virtual {v1}, Lnts/Ḭ;->ㆃ()V

    .line 10
    iget-object v2, p0, Lnts/Ⱐ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnts/Ḭ;->ㆃ(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lnts/Ḭ;->ౠ()V

    const/4 v2, 0x4

    .line 14
    invoke-virtual {v1, v2}, Lnts/Ḭ;->ᾨ(I)V

    .line 15
    iget-object v3, p0, Lnts/Ⱐ;->Ὺ:[B

    .line 16
    invoke-virtual {v1, v3, v2}, Lnts/Ḭ;->ᰛ([BI)V

    .line 17
    invoke-virtual {v1}, Lnts/Ḭ;->Ͼ()V

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lnts/Ⱐ;->Ⲳ:[B

    const/16 v2, 0x81

    .line 24
    invoke-virtual {v1, v0, v2}, Lnts/Ḭ;->ᰛ([BI)V

    .line 25
    :cond_1
    invoke-virtual {v1}, Lnts/Ḭ;->ౠ()V

    .line 26
    invoke-virtual {v1}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
