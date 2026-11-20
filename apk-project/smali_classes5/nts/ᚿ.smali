.class public Lnts/ᚿ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᛃ:Z

.field public ᡲ:Lnts/ર;

.field public Ὺ:Lnts/Ⴤ;

.field public Ⲳ:Lnts/Ⲍ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ર;

    invoke-direct {v0}, Lnts/ર;-><init>()V

    iput-object v0, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    .line 3
    new-instance v0, Lnts/Ⴤ;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Lnts/Ⴤ;-><init>(I)V

    iput-object v0, p0, Lnts/ᚿ;->Ὺ:Lnts/Ⴤ;

    .line 4
    new-instance v0, Lnts/Ⲍ;

    invoke-direct {v0}, Lnts/Ⲍ;-><init>()V

    iput-object v0, p0, Lnts/ᚿ;->Ⲳ:Lnts/Ⲍ;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lnts/ᚿ;->ᛃ:Z

    const/16 v0, 0x30

    .line 60
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_0

    return p2

    .line 6
    :cond_0
    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ᡤ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lnts/ᚿ;->Ὺ:Lnts/Ⴤ;

    new-instance v1, Lnts/ឧ;

    invoke-direct {v1}, Lnts/ឧ;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    .line 8
    iget-object v0, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_4

    return p2

    .line 11
    :cond_1
    iget-object v0, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ㇸ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lnts/ᚿ;->Ὺ:Lnts/Ⴤ;

    new-instance v1, Lnts/ҁ;

    invoke-direct {v1}, Lnts/ҁ;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    .line 13
    iget-object v0, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_4

    return p2

    .line 16
    :cond_2
    iget-object v0, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->η:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lnts/ᚿ;->Ὺ:Lnts/Ⴤ;

    new-instance v1, Lnts/ệ;

    invoke-direct {v1}, Lnts/ệ;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    .line 18
    iget-object v0, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_4

    return p2

    .line 22
    :cond_3
    new-instance v0, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2c

    const/16 v3, 0x27

    const/16 v4, 0x4c

    invoke-static {v4, v2, v3}, Lnts/ࡁ;->ዲ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    iget-object v2, v2, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe0

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    .line 25
    :cond_4
    array-length v0, p1

    if-ge p2, v0, :cond_7

    .line 26
    iget-boolean v0, p0, Lnts/ᚿ;->ᛃ:Z

    if-nez v0, :cond_6

    .line 27
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x31

    const/4 v2, 0x1

    if-ne v0, v1, :cond_5

    .line 28
    iget-object v0, p0, Lnts/ᚿ;->Ⲳ:Lnts/Ⲍ;

    .line 29
    iput-boolean v2, v0, Lnts/ᛩ;->ᰛ:Z

    goto :goto_0

    .line 30
    :cond_5
    iget-object v0, p0, Lnts/ᚿ;->Ⲳ:Lnts/Ⲍ;

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    .line 32
    :goto_0
    iput-boolean v2, p0, Lnts/ᚿ;->ᛃ:Z

    .line 33
    :cond_6
    iget-object v0, p0, Lnts/ᚿ;->Ⲳ:Lnts/Ⲍ;

    .line 34
    iget-boolean v1, v0, Lnts/ᛩ;->ᰛ:Z

    if-eqz v1, :cond_7

    .line 35
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 38
    :cond_7
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
    iget-object v1, p0, Lnts/ᚿ;->ᡲ:Lnts/ર;

    .line 3
    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ᾨ(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lnts/ᚿ;->Ὺ:Lnts/Ⴤ;

    invoke-virtual {v1, v0}, Lnts/Ⴤ;->ㆃ(Lnts/Ḭ;)V

    .line 5
    iget-object v1, p0, Lnts/ᚿ;->Ⲳ:Lnts/Ⲍ;

    .line 6
    iget-boolean v2, v1, Lnts/ᛩ;->ᰛ:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    .line 7
    iput v2, v1, Lnts/ᛩ;->ㆃ:I

    .line 8
    invoke-virtual {v1, v0}, Lnts/Ⲍ;->ㆃ(Lnts/Ḭ;)V

    .line 10
    :cond_0
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 11
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 12
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
