.class public Lnts/Ꮆ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ܔ;


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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 2
    invoke-virtual {v0}, Lnts/Ḭ;->ᎊ()V

    .line 3
    sget-object v1, Lnts/ᦥ;->ᵑ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    invoke-virtual {v1}, Lnts/ܔ;->ᾨ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Ljava/lang/String;)V

    .line 14
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 15
    invoke-virtual {v1}, Lnts/Ḭ;->ᎊ()V

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Lnts/Ḭ;->ㆃ(I)V

    .line 17
    iget-object v2, p0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    iget-object v2, v2, Lnts/ܔ;->ㆃ:[B

    const/4 v3, 0x4

    .line 18
    invoke-virtual {v1, v2, v3}, Lnts/Ḭ;->ᰛ([BI)V

    .line 19
    iget-object v2, p0, Lnts/Ꮆ;->ᡲ:Lnts/ܔ;

    iget-object v4, v2, Lnts/ܔ;->ᾨ:[B

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v6, v2, Lnts/ܔ;->ᇭ:[B

    if-eqz v6, :cond_0

    array-length v4, v4

    if-lez v4, :cond_0

    array-length v4, v6

    if-lez v4, :cond_0

    .line 20
    invoke-virtual {v2, v5}, Lnts/ܔ;->ㆃ(Z)[B

    move-result-object v2

    .line 21
    new-instance v4, Lnts/Ḭ;

    invoke-direct {v4}, Lnts/Ḭ;-><init>()V

    const/16 v6, 0xa1

    .line 22
    invoke-virtual {v4, v6}, Lnts/Ḭ;->ᾨ(I)V

    const/4 v6, 0x3

    .line 23
    invoke-virtual {v4, v2, v6}, Lnts/Ḭ;->ᾨ([BI)V

    .line 24
    invoke-virtual {v4}, Lnts/Ḭ;->Ͼ()V

    .line 25
    invoke-virtual {v1, v4}, Lnts/Ḭ;->ㆃ(Lnts/Ḭ;)V

    .line 28
    :cond_0
    new-instance v2, Lnts/Ḭ;

    invoke-direct {v2}, Lnts/Ḭ;-><init>()V

    .line 29
    invoke-virtual {v2}, Lnts/Ḭ;->ᎊ()V

    .line 30
    invoke-virtual {v2, v5}, Lnts/Ḭ;->ㆃ(I)V

    .line 31
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    .line 32
    invoke-virtual {v1}, Lnts/Ḭ;->ᯚ()[B

    move-result-object v0

    .line 33
    invoke-virtual {v2, v0, v3}, Lnts/Ḭ;->ᰛ([BI)V

    .line 34
    invoke-virtual {v2}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
