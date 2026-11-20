.class public Lnts/ಝ;
.super Lnts/ᒁ;
.source "SourceFile"


# instance fields
.field public ౠ:I

.field public ዲ:I

.field public ᎊ:I

.field public ᙕ:I

.field public ᡲ:I

.field public て:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᒁ;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lnts/ಝ;->ౠ:I

    .line 12
    iput v0, p0, Lnts/ಝ;->ᙕ:I

    .line 13
    iput v0, p0, Lnts/ಝ;->て:I

    .line 14
    iput v0, p0, Lnts/ಝ;->ዲ:I

    .line 15
    iput v0, p0, Lnts/ಝ;->ᎊ:I

    .line 16
    iput v0, p0, Lnts/ಝ;->ᡲ:I

    return-void
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lnts/ᒁ;->ㆃ([B)V

    .line 30
    new-instance p1, Lnts/ᖛ;

    .line 31
    iget-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 32
    invoke-direct {p1, v0}, Lnts/ᖛ;-><init>([B)V

    .line 34
    :goto_0
    invoke-virtual {p1}, Lnts/ᖛ;->ᇭ()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lnts/ᖛ;->ౠ()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    goto :goto_0

    .line 58
    :pswitch_0
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ಝ;->ᡲ:I

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ಝ;->ᎊ:I

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ಝ;->ዲ:I

    goto :goto_0

    .line 61
    :pswitch_3
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ಝ;->て:I

    goto :goto_0

    .line 62
    :pswitch_4
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ಝ;->ᙕ:I

    goto :goto_0

    .line 63
    :pswitch_5
    invoke-virtual {p1}, Lnts/ᖛ;->て()I

    move-result v0

    iput v0, p0, Lnts/ಝ;->ౠ:I

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ㆃ()[B
    .locals 4

    .line 1
    new-instance v0, Lnts/ᖛ;

    invoke-direct {v0}, Lnts/ᖛ;-><init>()V

    .line 2
    iget v1, p0, Lnts/ಝ;->ౠ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᎊ(I)V

    .line 4
    iget v1, p0, Lnts/ಝ;->ౠ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 6
    :cond_0
    iget v1, p0, Lnts/ಝ;->ᙕ:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᎊ(I)V

    .line 8
    iget v1, p0, Lnts/ಝ;->ᙕ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 10
    :cond_1
    iget v1, p0, Lnts/ಝ;->て:I

    if-eq v1, v2, :cond_2

    const/4 v1, 0x3

    .line 11
    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᎊ(I)V

    .line 12
    iget v1, p0, Lnts/ಝ;->て:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 14
    :cond_2
    iget v1, p0, Lnts/ಝ;->ዲ:I

    const/4 v3, 0x4

    if-eq v1, v2, :cond_3

    .line 15
    invoke-virtual {v0, v3}, Lnts/ᖛ;->ᎊ(I)V

    .line 16
    iget v1, p0, Lnts/ಝ;->ዲ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 18
    :cond_3
    iget v1, p0, Lnts/ಝ;->ᎊ:I

    if-eq v1, v2, :cond_4

    const/4 v1, 0x5

    .line 19
    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᎊ(I)V

    .line 20
    iget v1, p0, Lnts/ಝ;->ᎊ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 22
    :cond_4
    iget v1, p0, Lnts/ಝ;->ᡲ:I

    if-eq v1, v2, :cond_5

    const/4 v1, 0x6

    .line 23
    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᎊ(I)V

    .line 24
    iget v1, p0, Lnts/ಝ;->ᡲ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->Ὺ(I)V

    .line 25
    :cond_5
    iput v3, p0, Lnts/ᒁ;->ᾨ:I

    .line 26
    invoke-virtual {v0}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v0

    .line 27
    iput-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    .line 28
    invoke-super {p0}, Lnts/ᒁ;->ㆃ()[B

    move-result-object v0

    return-object v0
.end method
