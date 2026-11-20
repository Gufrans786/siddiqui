.class public Lnts/ᘱ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᛃ:Lnts/ᐘ;

.field public ᡲ:Lnts/ႎ;

.field public Ὺ:Lnts/Ἲ;

.field public Ⲳ:Lnts/ᐘ;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ႎ;

    invoke-direct {v0}, Lnts/ႎ;-><init>()V

    iput-object v0, p0, Lnts/ᘱ;->ᡲ:Lnts/ႎ;

    .line 3
    new-instance v0, Lnts/Ἲ;

    invoke-direct {v0}, Lnts/Ἲ;-><init>()V

    iput-object v0, p0, Lnts/ᘱ;->Ὺ:Lnts/Ἲ;

    .line 4
    new-instance v0, Lnts/ᐘ;

    invoke-direct {v0}, Lnts/ᐘ;-><init>()V

    iput-object v0, p0, Lnts/ᘱ;->Ⲳ:Lnts/ᐘ;

    .line 5
    new-instance v0, Lnts/ᐘ;

    invoke-direct {v0}, Lnts/ᐘ;-><init>()V

    iput-object v0, p0, Lnts/ᘱ;->ᛃ:Lnts/ᐘ;

    .line 8
    iget-object v0, p0, Lnts/ᘱ;->ᡲ:Lnts/ႎ;

    iget-object v1, v0, Lnts/క;->ᡲ:Lnts/ᬓ;

    sget-object v2, Lnts/ᦥ;->ᐘ:Ljava/lang/String;

    iput-object v2, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    .line 9
    iget-object v0, v0, Lnts/క;->Ὺ:Lnts/ᛩ;

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    .line 11
    iget-object v0, p0, Lnts/ᘱ;->Ⲳ:Lnts/ᐘ;

    const/16 v1, 0x14

    iput v1, v0, Lnts/ᐘ;->ᡲ:I

    .line 12
    iget-object v0, p0, Lnts/ᘱ;->ᛃ:Lnts/ᐘ;

    const/4 v1, 0x1

    iput v1, v0, Lnts/ᐘ;->ᡲ:I

    const/16 v0, 0x30

    .line 13
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 2

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lnts/ᛩ;

    invoke-direct {v0}, Lnts/ᛩ;-><init>()V

    .line 3
    iput v1, v0, Lnts/ᛩ;->ㆃ:I

    .line 4
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 5
    iget-object v1, p0, Lnts/ᘱ;->ᡲ:Lnts/ႎ;

    iget-object v0, v0, Lnts/ᛩ;->ᾨ:[B

    invoke-virtual {v1, v0}, Lnts/ᛩ;->ㆃ([B)V

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ᾨ([BI)I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_1

    .line 10
    new-instance v0, Lnts/ᛩ;

    invoke-direct {v0}, Lnts/ᛩ;-><init>()V

    .line 11
    iput v1, v0, Lnts/ᛩ;->ㆃ:I

    .line 12
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 13
    iget-object v1, p0, Lnts/ᘱ;->Ὺ:Lnts/Ἲ;

    iget-object v0, v0, Lnts/ᛩ;->ᾨ:[B

    invoke-virtual {v1, v0}, Lnts/ᛩ;->ㆃ([B)V

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ᾨ([BI)I

    move-result v0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_2

    .line 18
    new-instance v0, Lnts/ᛩ;

    invoke-direct {v0}, Lnts/ᛩ;-><init>()V

    .line 19
    iput v1, v0, Lnts/ᛩ;->ㆃ:I

    .line 20
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 21
    iget-object v1, p0, Lnts/ᘱ;->Ⲳ:Lnts/ᐘ;

    iget-object v0, v0, Lnts/ᛩ;->ᾨ:[B

    invoke-virtual {v1, v0}, Lnts/ᛩ;->ㆃ([B)V

    .line 24
    :cond_2
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ᾨ([BI)I

    move-result v0

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_3

    .line 26
    new-instance v0, Lnts/ᛩ;

    invoke-direct {v0}, Lnts/ᛩ;-><init>()V

    .line 27
    iput v1, v0, Lnts/ᛩ;->ㆃ:I

    .line 28
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 29
    iget-object p1, p0, Lnts/ᘱ;->ᛃ:Lnts/ᐘ;

    iget-object v0, v0, Lnts/ᛩ;->ᾨ:[B

    invoke-virtual {p1, v0}, Lnts/ᛩ;->ㆃ([B)V

    :cond_3
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lnts/ᛩ;->ᎊ:Z

    return p2
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 3
    iget-object v1, p0, Lnts/ᘱ;->ᡲ:Lnts/ႎ;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v2, Lnts/ᦥ;->ᐘ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 5
    iget-object v2, p0, Lnts/ᘱ;->ᡲ:Lnts/ႎ;

    invoke-virtual {v2, v1}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    const/16 v2, 0xa0

    .line 6
    iput v2, v1, Lnts/Ḭ;->ᡲ:I

    .line 7
    invoke-virtual {v1}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lnts/ᘱ;->Ὺ:Lnts/Ἲ;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lnts/Ἲ;->ᛃ:Lnts/ႎ;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v2, Lnts/ᦥ;->ᐘ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 12
    iget-object v2, p0, Lnts/ᘱ;->Ὺ:Lnts/Ἲ;

    invoke-virtual {v2, v1}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    const/16 v2, 0xa1

    .line 13
    iput v2, v1, Lnts/Ḭ;->ᡲ:I

    .line 14
    invoke-virtual {v1}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    .line 18
    :cond_1
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 19
    iget-object v2, p0, Lnts/ᘱ;->Ⲳ:Lnts/ᐘ;

    .line 20
    iget v3, v2, Lnts/ᐘ;->ᡲ:I

    iget v2, v2, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v1, v3, v2}, Lnts/Ḭ;->ㆃ(II)V

    const/16 v2, 0xa2

    .line 21
    iput v2, v1, Lnts/Ḭ;->ᡲ:I

    .line 22
    invoke-virtual {v1}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    .line 26
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 27
    iget-object v2, p0, Lnts/ᘱ;->ᛃ:Lnts/ᐘ;

    .line 28
    iget v3, v2, Lnts/ᐘ;->ᡲ:I

    iget v2, v2, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {v1, v3, v2}, Lnts/Ḭ;->ㆃ(II)V

    const/16 v2, 0xa3

    .line 29
    iput v2, v1, Lnts/Ḭ;->ᡲ:I

    .line 30
    invoke-virtual {v1}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    .line 33
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 34
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 35
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
