.class public Lnts/ࠌ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ཞ:Z

.field public ᚹ:Lnts/ᵠ;

.field public ᛃ:Lnts/ઙ;

.field public ᡲ:Lnts/Ⴤ;

.field public ᯋ:Z

.field public ᯚ:Lnts/ϴ;

.field public ᵑ:Lnts/ⴑ;

.field public Ṳ:Z

.field public Ὺ:Lnts/ཡ;

.field public ⱪ:Lnts/ϴ;

.field public Ⲳ:Lnts/క;

.field public ⴗ:Lnts/ઙ;

.field public せ:Lnts/ϴ;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/Ⴤ;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Lnts/Ⴤ;-><init>(I)V

    iput-object v0, p0, Lnts/ࠌ;->ᡲ:Lnts/Ⴤ;

    .line 3
    new-instance v0, Lnts/ཡ;

    invoke-direct {v0}, Lnts/ཡ;-><init>()V

    iput-object v0, p0, Lnts/ࠌ;->Ὺ:Lnts/ཡ;

    .line 4
    new-instance v0, Lnts/క;

    invoke-direct {v0}, Lnts/క;-><init>()V

    iput-object v0, p0, Lnts/ࠌ;->Ⲳ:Lnts/క;

    .line 5
    new-instance v0, Lnts/ઙ;

    invoke-direct {v0}, Lnts/ઙ;-><init>()V

    iput-object v0, p0, Lnts/ࠌ;->ᛃ:Lnts/ઙ;

    .line 6
    new-instance v0, Lnts/ⴑ;

    invoke-direct {v0}, Lnts/ⴑ;-><init>()V

    iput-object v0, p0, Lnts/ࠌ;->ᵑ:Lnts/ⴑ;

    .line 7
    new-instance v0, Lnts/ઙ;

    invoke-direct {v0}, Lnts/ઙ;-><init>()V

    iput-object v0, p0, Lnts/ࠌ;->ⴗ:Lnts/ઙ;

    .line 8
    new-instance v0, Lnts/ᵠ;

    invoke-direct {v0}, Lnts/ᵠ;-><init>()V

    iput-object v0, p0, Lnts/ࠌ;->ᚹ:Lnts/ᵠ;

    .line 9
    new-instance v0, Lnts/ϴ;

    invoke-direct {v0}, Lnts/ϴ;-><init>()V

    iput-object v0, p0, Lnts/ࠌ;->せ:Lnts/ϴ;

    .line 10
    new-instance v0, Lnts/ϴ;

    invoke-direct {v0}, Lnts/ϴ;-><init>()V

    iput-object v0, p0, Lnts/ࠌ;->ⱪ:Lnts/ϴ;

    .line 11
    new-instance v0, Lnts/ϴ;

    invoke-direct {v0}, Lnts/ϴ;-><init>()V

    iput-object v0, p0, Lnts/ࠌ;->ᯚ:Lnts/ϴ;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lnts/ࠌ;->Ṳ:Z

    .line 131
    iput-boolean v0, p0, Lnts/ࠌ;->ཞ:Z

    .line 139
    iput-boolean v0, p0, Lnts/ࠌ;->ᯋ:Z

    const/16 v1, 0x30

    .line 140
    iput v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 141
    iget-object v1, p0, Lnts/ࠌ;->せ:Lnts/ϴ;

    const/16 v2, 0xa1

    .line 142
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 143
    iget-object v2, p0, Lnts/ࠌ;->ⱪ:Lnts/ϴ;

    const/16 v3, 0xa2

    .line 144
    iput v3, v2, Lnts/ᛩ;->ㆃ:I

    .line 145
    iget-object v3, p0, Lnts/ࠌ;->ᯚ:Lnts/ϴ;

    const/16 v4, 0xa3

    .line 146
    iput v4, v3, Lnts/ᛩ;->ㆃ:I

    .line 147
    iput-boolean v0, v1, Lnts/ᛩ;->ᰛ:Z

    .line 148
    iput-boolean v0, v2, Lnts/ᛩ;->ᰛ:Z

    .line 149
    iput-boolean v0, v3, Lnts/ᛩ;->ᰛ:Z

    .line 150
    iget-object v0, p0, Lnts/ࠌ;->ᡲ:Lnts/Ⴤ;

    new-instance v1, Lnts/ಠ;

    invoke-direct {v1}, Lnts/ಠ;-><init>()V

    iput-object v1, v0, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 3

    .line 1
    array-length v0, p1

    if-lt p2, v0, :cond_0

    return p2

    .line 2
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lnts/ࠌ;->ᡲ:Lnts/Ⴤ;

    invoke-virtual {v0, p1, p2}, Lnts/Ⴤ;->ᇭ([BI)I

    move-result p2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lnts/ࠌ;->ᡲ:Lnts/Ⴤ;

    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lnts/ࠌ;->Ὺ:Lnts/ཡ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 7
    iget-object v0, p0, Lnts/ࠌ;->Ὺ:Lnts/ཡ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_3

    return p2

    .line 10
    :cond_3
    iget-object v0, p0, Lnts/ࠌ;->Ⲳ:Lnts/క;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 11
    iget-object v0, p0, Lnts/ࠌ;->Ⲳ:Lnts/క;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_4

    return p2

    .line 14
    :cond_4
    iget-object v0, p0, Lnts/ࠌ;->ᛃ:Lnts/ઙ;

    invoke-virtual {v0, p1, p2}, Lnts/ઙ;->ᇭ([BI)I

    move-result p2

    .line 15
    iget-object v0, p0, Lnts/ࠌ;->ᛃ:Lnts/ઙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_5

    return p2

    .line 18
    :cond_5
    iget-object v0, p0, Lnts/ࠌ;->ᵑ:Lnts/ⴑ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 19
    iget-object v0, p0, Lnts/ࠌ;->ᵑ:Lnts/ⴑ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_6

    return p2

    .line 22
    :cond_6
    iget-object v0, p0, Lnts/ࠌ;->ⴗ:Lnts/ઙ;

    invoke-virtual {v0, p1, p2}, Lnts/ઙ;->ᇭ([BI)I

    move-result p2

    .line 23
    iget-object v0, p0, Lnts/ࠌ;->ⴗ:Lnts/ઙ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_7

    return p2

    .line 26
    :cond_7
    iget-object v0, p0, Lnts/ࠌ;->ᚹ:Lnts/ᵠ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 27
    iget-object v0, p0, Lnts/ࠌ;->ᚹ:Lnts/ᵠ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_8

    goto :goto_1

    .line 32
    :cond_8
    iget-boolean v0, p0, Lnts/ࠌ;->Ṳ:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 33
    array-length v0, p1

    if-lt p2, v0, :cond_9

    :goto_1
    return p2

    .line 34
    :cond_9
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xa1

    if-ne v0, v2, :cond_a

    .line 35
    iget-object v0, p0, Lnts/ࠌ;->せ:Lnts/ϴ;

    .line 36
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    .line 37
    :cond_a
    iput-boolean v1, p0, Lnts/ࠌ;->Ṳ:Z

    .line 38
    :cond_b
    iget-object v0, p0, Lnts/ࠌ;->せ:Lnts/ϴ;

    .line 39
    iget-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_c

    .line 40
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 43
    :cond_c
    iget-boolean v0, p0, Lnts/ࠌ;->ཞ:Z

    if-nez v0, :cond_f

    .line 44
    array-length v0, p1

    if-lt p2, v0, :cond_d

    return p2

    .line 45
    :cond_d
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xa2

    if-ne v0, v2, :cond_e

    .line 46
    iget-object v0, p0, Lnts/ࠌ;->ⱪ:Lnts/ϴ;

    .line 47
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    .line 48
    :cond_e
    iput-boolean v1, p0, Lnts/ࠌ;->ཞ:Z

    .line 49
    :cond_f
    iget-object v0, p0, Lnts/ࠌ;->ⱪ:Lnts/ϴ;

    .line 50
    iget-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_10

    .line 51
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 54
    :cond_10
    iget-boolean v0, p0, Lnts/ࠌ;->ᯋ:Z

    if-nez v0, :cond_13

    .line 55
    array-length v0, p1

    if-lt p2, v0, :cond_11

    return p2

    .line 56
    :cond_11
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_12

    .line 57
    iget-object v0, p0, Lnts/ࠌ;->ᯚ:Lnts/ϴ;

    .line 58
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    .line 59
    :cond_12
    iput-boolean v1, p0, Lnts/ࠌ;->ᯋ:Z

    .line 60
    :cond_13
    iget-object v0, p0, Lnts/ࠌ;->ᯚ:Lnts/ϴ;

    .line 61
    iget-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v1, :cond_14

    .line 62
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 65
    :cond_14
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1
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
    iget-object v1, p0, Lnts/ࠌ;->ᡲ:Lnts/Ⴤ;

    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lnts/Ⴤ;->ㆃ(Lnts/Ḭ;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lnts/ࠌ;->Ὺ:Lnts/ཡ;

    invoke-virtual {v1, v0}, Lnts/ཡ;->ㆃ(Lnts/Ḭ;)V

    .line 6
    iget-object v1, p0, Lnts/ࠌ;->Ⲳ:Lnts/క;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 7
    iget-object v1, p0, Lnts/ࠌ;->ᛃ:Lnts/ઙ;

    invoke-virtual {v1, v0}, Lnts/ઙ;->ㆃ(Lnts/Ḭ;)V

    .line 8
    iget-object v1, p0, Lnts/ࠌ;->ᵑ:Lnts/ⴑ;

    invoke-virtual {v1, v0}, Lnts/ⴑ;->ㆃ(Lnts/Ḭ;)V

    .line 9
    iget-object v1, p0, Lnts/ࠌ;->ⴗ:Lnts/ઙ;

    invoke-virtual {v1, v0}, Lnts/ઙ;->ㆃ(Lnts/Ḭ;)V

    .line 10
    iget-object v1, p0, Lnts/ࠌ;->ᚹ:Lnts/ᵠ;

    invoke-virtual {v1, v0}, Lnts/ᵠ;->ㆃ(Lnts/Ḭ;)V

    .line 11
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 12
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 13
    iget-object v1, p0, Lnts/ࠌ;->せ:Lnts/ϴ;

    .line 14
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xa1

    .line 15
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 16
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 17
    :cond_1
    iget-object v1, p0, Lnts/ࠌ;->ⱪ:Lnts/ϴ;

    .line 18
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xa2

    .line 19
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 20
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 21
    :cond_2
    iget-object v1, p0, Lnts/ࠌ;->ᯚ:Lnts/ϴ;

    .line 22
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xa3

    .line 23
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 24
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 25
    :cond_3
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
