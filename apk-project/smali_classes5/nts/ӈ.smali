.class public Lnts/ӈ;
.super Lnts/ᬓ;
.source "SourceFile"


# instance fields
.field public ᛃ:Lnts/క;

.field public Ὺ:Lnts/క;

.field public Ⲳ:Lnts/Ἲ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᬓ;-><init>()V

    .line 2
    new-instance v0, Lnts/క;

    invoke-direct {v0}, Lnts/క;-><init>()V

    iput-object v0, p0, Lnts/ӈ;->Ὺ:Lnts/క;

    .line 3
    new-instance v0, Lnts/Ἲ;

    invoke-direct {v0}, Lnts/Ἲ;-><init>()V

    iput-object v0, p0, Lnts/ӈ;->Ⲳ:Lnts/Ἲ;

    .line 4
    new-instance v0, Lnts/క;

    invoke-direct {v0}, Lnts/క;-><init>()V

    iput-object v0, p0, Lnts/ӈ;->ᛃ:Lnts/క;

    const/16 v0, 0x30

    .line 7
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    .line 8
    iget-object v0, p0, Lnts/ӈ;->Ὺ:Lnts/క;

    iget-object v0, v0, Lnts/క;->ᡲ:Lnts/ᬓ;

    sget-object v1, Lnts/ᦥ;->ᐘ:Ljava/lang/String;

    iput-object v1, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

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
    new-instance v1, Lnts/క;

    invoke-direct {v1}, Lnts/క;-><init>()V

    iput-object v1, p0, Lnts/ӈ;->Ὺ:Lnts/క;

    .line 6
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
    new-instance v1, Lnts/Ἲ;

    invoke-direct {v1}, Lnts/Ἲ;-><init>()V

    iput-object v1, p0, Lnts/ӈ;->Ⲳ:Lnts/Ἲ;

    .line 14
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
    new-instance p1, Lnts/క;

    invoke-direct {p1}, Lnts/క;-><init>()V

    iput-object p1, p0, Lnts/ӈ;->ᛃ:Lnts/క;

    .line 22
    iget-object v0, v0, Lnts/ᛩ;->ᾨ:[B

    invoke-virtual {p1, v0}, Lnts/ᛩ;->ㆃ([B)V

    :cond_2
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lnts/ᛩ;->ᎊ:Z

    return p2
.end method

.method public ᾨ()V
    .locals 0

    return-void
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
    iget-object v1, p0, Lnts/ӈ;->Ὺ:Lnts/క;

    iget-object v1, v1, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v2, Lnts/ᦥ;->ᐘ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 4
    iget-object v2, p0, Lnts/ӈ;->Ὺ:Lnts/క;

    invoke-virtual {v2, v1}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    const/16 v2, 0xa0

    .line 5
    iput v2, v1, Lnts/Ḭ;->ᡲ:I

    .line 6
    invoke-virtual {v1}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lnts/ӈ;->Ⲳ:Lnts/Ἲ;

    iget-object v1, v1, Lnts/Ἲ;->ᛃ:Lnts/ႎ;

    iget-object v1, v1, Lnts/క;->ᡲ:Lnts/ᬓ;

    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v2, Lnts/ᦥ;->ᐘ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 10
    iget-object v2, p0, Lnts/ӈ;->Ⲳ:Lnts/Ἲ;

    invoke-virtual {v2, v1}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    const/16 v2, 0xa1

    .line 11
    iput v2, v1, Lnts/Ḭ;->ᡲ:I

    .line 12
    invoke-virtual {v1}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    .line 15
    :cond_1
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 16
    iget-object v2, p0, Lnts/ӈ;->ᛃ:Lnts/క;

    invoke-virtual {v2, v1}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    const/16 v2, 0xa2

    .line 17
    iput v2, v1, Lnts/Ḭ;->ᡲ:I

    .line 18
    invoke-virtual {v1}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

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
