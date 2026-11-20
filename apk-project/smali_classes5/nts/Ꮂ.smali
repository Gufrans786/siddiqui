.class public Lnts/Ꮂ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᚹ:Z

.field public ᛃ:Lnts/ᔾ;

.field public ᡲ:Lnts/ಠ;

.field public ᵑ:Lnts/ϴ;

.field public Ὺ:Lnts/ᧁ;

.field public Ⲳ:Lnts/ሮ;

.field public ⴗ:Lnts/ㅁ;

.field public せ:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ಠ;

    invoke-direct {v0}, Lnts/ಠ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->ᡲ:Lnts/ಠ;

    .line 3
    new-instance v0, Lnts/ᧁ;

    invoke-direct {v0}, Lnts/ᧁ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->Ὺ:Lnts/ᧁ;

    .line 4
    new-instance v0, Lnts/ሮ;

    invoke-direct {v0}, Lnts/ሮ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->Ⲳ:Lnts/ሮ;

    .line 5
    new-instance v0, Lnts/ᔾ;

    invoke-direct {v0}, Lnts/ᔾ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    .line 6
    new-instance v0, Lnts/ϴ;

    invoke-direct {v0}, Lnts/ϴ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->ᵑ:Lnts/ϴ;

    .line 7
    new-instance v0, Lnts/ㅁ;

    invoke-direct {v0}, Lnts/ㅁ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->ⴗ:Lnts/ㅁ;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lnts/Ꮂ;->ᚹ:Z

    .line 104
    iput-boolean v0, p0, Lnts/Ꮂ;->せ:Z

    const/16 v1, 0x30

    .line 105
    iput v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 106
    iget-object v1, p0, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    const/16 v2, 0xa0

    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 107
    iget-object v1, p0, Lnts/Ꮂ;->ᵑ:Lnts/ϴ;

    .line 108
    iput-boolean v0, v1, Lnts/ᛩ;->ᰛ:Z

    return-void
.end method

.method public constructor <init>(Lnts/ᾭ;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 110
    new-instance v0, Lnts/ಠ;

    invoke-direct {v0}, Lnts/ಠ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->ᡲ:Lnts/ಠ;

    .line 111
    new-instance v0, Lnts/ᧁ;

    invoke-direct {v0}, Lnts/ᧁ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->Ὺ:Lnts/ᧁ;

    .line 112
    new-instance v0, Lnts/ሮ;

    invoke-direct {v0}, Lnts/ሮ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->Ⲳ:Lnts/ሮ;

    .line 113
    new-instance v0, Lnts/ᔾ;

    invoke-direct {v0}, Lnts/ᔾ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    .line 114
    new-instance v0, Lnts/ϴ;

    invoke-direct {v0}, Lnts/ϴ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->ᵑ:Lnts/ϴ;

    .line 115
    new-instance v0, Lnts/ㅁ;

    invoke-direct {v0}, Lnts/ㅁ;-><init>()V

    iput-object v0, p0, Lnts/Ꮂ;->ⴗ:Lnts/ㅁ;

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lnts/Ꮂ;->ᚹ:Z

    .line 212
    iput-boolean v0, p0, Lnts/Ꮂ;->せ:Z

    .line 213
    new-instance v1, Lnts/ሮ;

    invoke-direct {v1, p1}, Lnts/ሮ;-><init>(Lnts/ᾭ;)V

    iput-object v1, p0, Lnts/Ꮂ;->Ⲳ:Lnts/ሮ;

    const/16 p1, 0x30

    .line 214
    iput p1, p0, Lnts/ᛩ;->ㆃ:I

    .line 215
    iget-object p1, p0, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    const/16 v1, 0xa0

    iput v1, p1, Lnts/ᛩ;->ㆃ:I

    .line 216
    iget-object p1, p0, Lnts/Ꮂ;->ᵑ:Lnts/ϴ;

    .line 217
    iput-boolean v0, p1, Lnts/ᛩ;->ᰛ:Z

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/Ꮂ;->ᡲ:Lnts/ಠ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/Ꮂ;->ᡲ:Lnts/ಠ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/Ꮂ;->Ὺ:Lnts/ᧁ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 6
    iget-object v0, p0, Lnts/Ꮂ;->Ὺ:Lnts/ᧁ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_1

    return p2

    .line 9
    :cond_1
    iget-object v0, p0, Lnts/Ꮂ;->Ⲳ:Lnts/ሮ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 10
    iget-object v0, p0, Lnts/Ꮂ;->Ⲳ:Lnts/ሮ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-boolean v0, p0, Lnts/Ꮂ;->ᚹ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 15
    array-length v0, p1

    if-lt p2, v0, :cond_3

    :goto_0
    return p2

    .line 16
    :cond_3
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_4

    .line 17
    iget-object v0, p0, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    .line 18
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    goto :goto_1

    .line 19
    :cond_4
    iget-object v0, p0, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    .line 20
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    .line 21
    :goto_1
    iput-boolean v2, p0, Lnts/Ꮂ;->ᚹ:Z

    .line 22
    :cond_5
    iget-object v0, p0, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    .line 23
    iget-boolean v3, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v3, :cond_6

    .line 24
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 25
    iget-object v0, p0, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_6

    return p2

    .line 30
    :cond_6
    iget-boolean v0, p0, Lnts/Ꮂ;->せ:Z

    if-nez v0, :cond_9

    .line 31
    array-length v0, p1

    if-lt p2, v0, :cond_7

    return p2

    .line 32
    :cond_7
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xa1

    if-ne v0, v3, :cond_8

    .line 33
    iget-object v0, p0, Lnts/Ꮂ;->ᵑ:Lnts/ϴ;

    .line 34
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    goto :goto_2

    .line 35
    :cond_8
    iget-object v0, p0, Lnts/Ꮂ;->ᵑ:Lnts/ϴ;

    .line 36
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    .line 37
    :goto_2
    iput-boolean v2, p0, Lnts/Ꮂ;->せ:Z

    .line 38
    :cond_9
    iget-object v0, p0, Lnts/Ꮂ;->ᵑ:Lnts/ϴ;

    .line 39
    iget-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v1, :cond_a

    .line 40
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 41
    iget-object v0, p0, Lnts/Ꮂ;->ᵑ:Lnts/ϴ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_a

    return p2

    .line 46
    :cond_a
    iget-object v0, p0, Lnts/Ꮂ;->ⴗ:Lnts/ㅁ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 47
    iget-object v0, p0, Lnts/Ꮂ;->ⴗ:Lnts/ㅁ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_b

    return p2

    .line 51
    :cond_b
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

    .line 5
    iget-object v1, p0, Lnts/Ꮂ;->ᡲ:Lnts/ಠ;

    const/4 v2, 0x1

    iput v2, v1, Lnts/ᐘ;->ᡲ:I

    .line 6
    iget v2, v1, Lnts/ᐘ;->ᡲ:I

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ㆃ(II)V

    .line 7
    iget-object v1, p0, Lnts/Ꮂ;->Ὺ:Lnts/ᧁ;

    invoke-virtual {v1, v0}, Lnts/ᧁ;->ㆃ(Lnts/Ḭ;)V

    .line 8
    iget-object v1, p0, Lnts/Ꮂ;->Ⲳ:Lnts/ሮ;

    invoke-virtual {v1, v0}, Lnts/ሮ;->ㆃ(Lnts/Ḭ;)V

    .line 9
    iget-object v1, p0, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    .line 10
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xa0

    .line 11
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 12
    invoke-virtual {v1, v0}, Lnts/ᔾ;->ㆃ(Lnts/Ḭ;)V

    .line 15
    :cond_0
    iget-object v1, p0, Lnts/Ꮂ;->ᵑ:Lnts/ϴ;

    .line 16
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xa1

    .line 17
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 18
    iget-object v2, v1, Lnts/ᛩ;->ᾨ:[B

    iget v1, v1, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v0, v2, v1}, Lnts/Ḭ;->ᰛ([BI)V

    .line 19
    :cond_1
    iget-object v1, p0, Lnts/Ꮂ;->ⴗ:Lnts/ㅁ;

    invoke-virtual {v1, v0}, Lnts/ㅁ;->ㆃ(Lnts/Ḭ;)V

    .line 20
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 21
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 22
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
