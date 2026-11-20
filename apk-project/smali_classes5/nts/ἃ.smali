.class public Lnts/ἃ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᚹ:Lnts/த;

.field public ᛃ:Lnts/ႎ;

.field public ᡲ:Lnts/ಠ;

.field public ᯚ:Z

.field public ᵑ:Lnts/ᒎ;

.field public Ὺ:Lnts/く;

.field public ⱪ:Z

.field public Ⲳ:Lnts/Ᏸ;

.field public ⴗ:Lnts/క;

.field public せ:Lnts/ϴ;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ಠ;

    invoke-direct {v0}, Lnts/ಠ;-><init>()V

    iput-object v0, p0, Lnts/ἃ;->ᡲ:Lnts/ಠ;

    .line 3
    new-instance v0, Lnts/く;

    invoke-direct {v0}, Lnts/く;-><init>()V

    iput-object v0, p0, Lnts/ἃ;->Ὺ:Lnts/く;

    .line 4
    new-instance v0, Lnts/Ᏸ;

    invoke-direct {v0}, Lnts/Ᏸ;-><init>()V

    iput-object v0, p0, Lnts/ἃ;->Ⲳ:Lnts/Ᏸ;

    .line 5
    new-instance v0, Lnts/ႎ;

    invoke-direct {v0}, Lnts/ႎ;-><init>()V

    iput-object v0, p0, Lnts/ἃ;->ᛃ:Lnts/ႎ;

    .line 6
    new-instance v0, Lnts/ᒎ;

    invoke-direct {v0}, Lnts/ᒎ;-><init>()V

    iput-object v0, p0, Lnts/ἃ;->ᵑ:Lnts/ᒎ;

    .line 8
    new-instance v0, Lnts/ႎ;

    invoke-direct {v0}, Lnts/ႎ;-><init>()V

    iput-object v0, p0, Lnts/ἃ;->ⴗ:Lnts/క;

    .line 9
    new-instance v0, Lnts/த;

    invoke-direct {v0}, Lnts/த;-><init>()V

    iput-object v0, p0, Lnts/ἃ;->ᚹ:Lnts/த;

    .line 10
    new-instance v0, Lnts/ϴ;

    invoke-direct {v0}, Lnts/ϴ;-><init>()V

    iput-object v0, p0, Lnts/ἃ;->せ:Lnts/ϴ;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lnts/ἃ;->ⱪ:Z

    .line 113
    iput-boolean v0, p0, Lnts/ἃ;->ᯚ:Z

    const/16 v1, 0x30

    .line 114
    iput v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 115
    iget-object v1, p0, Lnts/ἃ;->ᵑ:Lnts/ᒎ;

    .line 116
    iput-boolean v0, v1, Lnts/ᛩ;->ᰛ:Z

    .line 117
    iget-object v2, p0, Lnts/ἃ;->せ:Lnts/ϴ;

    .line 118
    iput-boolean v0, v2, Lnts/ᛩ;->ᰛ:Z

    const/16 v0, 0xa0

    .line 119
    iput v0, v1, Lnts/ᛩ;->ㆃ:I

    const/16 v0, 0xa1

    .line 120
    iput v0, v2, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ἃ;->ᡲ:Lnts/ಠ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ἃ;->ᡲ:Lnts/ಠ;

    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_0

    return p2

    .line 6
    :cond_0
    iget v0, v0, Lnts/ᐘ;->ᡲ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lnts/ἃ;->Ὺ:Lnts/く;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 9
    iget-object v0, p0, Lnts/ἃ;->Ὺ:Lnts/く;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 13
    iget-object v0, p0, Lnts/ἃ;->Ⲳ:Lnts/Ᏸ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 14
    iget-object v0, p0, Lnts/ἃ;->Ⲳ:Lnts/Ᏸ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    .line 21
    :cond_2
    iget-object v0, p0, Lnts/ἃ;->ᛃ:Lnts/ႎ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 22
    iget-object v0, p0, Lnts/ἃ;->ᛃ:Lnts/ႎ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 26
    :cond_3
    iget-boolean v0, p0, Lnts/ἃ;->ⱪ:Z

    const/4 v2, 0x0

    const/16 v3, 0xa0

    if-nez v0, :cond_6

    .line 27
    array-length v0, p1

    if-lt p2, v0, :cond_4

    :goto_0
    return p2

    .line 28
    :cond_4
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v3, :cond_5

    .line 29
    iget-object v0, p0, Lnts/ἃ;->ᵑ:Lnts/ᒎ;

    .line 30
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    goto :goto_1

    .line 31
    :cond_5
    iget-object v0, p0, Lnts/ἃ;->ᵑ:Lnts/ᒎ;

    .line 32
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    .line 33
    :goto_1
    iput-boolean v1, p0, Lnts/ἃ;->ⱪ:Z

    .line 34
    :cond_6
    iget-object v0, p0, Lnts/ἃ;->ᵑ:Lnts/ᒎ;

    .line 35
    iget-boolean v4, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v4, :cond_7

    .line 36
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 39
    :cond_7
    iget-object v0, p0, Lnts/ἃ;->ⴗ:Lnts/క;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 40
    iget-object v0, p0, Lnts/ἃ;->ⴗ:Lnts/క;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_8

    return p2

    .line 43
    :cond_8
    iget-object v0, p0, Lnts/ἃ;->ᚹ:Lnts/த;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 44
    iget-object v0, p0, Lnts/ἃ;->ᚹ:Lnts/த;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_9

    return p2

    .line 48
    :cond_9
    array-length v0, p1

    if-ge p2, v0, :cond_c

    .line 49
    iget-boolean v0, p0, Lnts/ἃ;->ᯚ:Z

    if-nez v0, :cond_b

    .line 50
    aget-byte v0, p1, p2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_a

    .line 51
    iget-object v0, p0, Lnts/ἃ;->せ:Lnts/ϴ;

    .line 52
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    goto :goto_2

    .line 53
    :cond_a
    iget-object v0, p0, Lnts/ἃ;->せ:Lnts/ϴ;

    .line 54
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    .line 55
    :goto_2
    iput-boolean v1, p0, Lnts/ἃ;->ᯚ:Z

    .line 56
    :cond_b
    iget-object v0, p0, Lnts/ἃ;->せ:Lnts/ϴ;

    .line 57
    iget-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v1, :cond_c

    .line 58
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 62
    :cond_c
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1

    .line 63
    :cond_d
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x1c

    const/16 v0, 0x5d

    const/16 v1, 0x298

    invoke-static {v1, p2, v0}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1be

    invoke-direct {p1, v0, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/ἃ;->ᡲ:Lnts/ಠ;

    .line 3
    iget v2, v1, Lnts/ᐘ;->ᡲ:I

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ㆃ(II)V

    .line 4
    iget-object v1, p0, Lnts/ἃ;->ᡲ:Lnts/ಠ;

    iget v1, v1, Lnts/ᐘ;->ᡲ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lnts/ἃ;->Ὺ:Lnts/く;

    invoke-virtual {v1, v0}, Lnts/く;->ㆃ(Lnts/Ḭ;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lnts/ἃ;->Ⲳ:Lnts/Ᏸ;

    const/16 v2, 0x80

    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 8
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lnts/ἃ;->ᛃ:Lnts/ႎ;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 10
    iget-object v1, p0, Lnts/ἃ;->ᵑ:Lnts/ᒎ;

    .line 11
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xa0

    .line 12
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 13
    invoke-virtual {v1, v0}, Lnts/ᒎ;->ㆃ(Lnts/Ḭ;)V

    .line 15
    :cond_2
    iget-object v1, p0, Lnts/ἃ;->ⴗ:Lnts/క;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 16
    iget-object v1, p0, Lnts/ἃ;->ᚹ:Lnts/த;

    .line 17
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 18
    iget-object v1, p0, Lnts/ἃ;->せ:Lnts/ϴ;

    .line 19
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xa1

    .line 20
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 21
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 22
    :cond_3
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 23
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 24
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
