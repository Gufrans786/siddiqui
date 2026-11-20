.class public Lnts/ҁ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/Ⲱ;

.field public Ὺ:Lnts/Ⴤ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/Ⲱ;

    invoke-direct {v0}, Lnts/Ⲱ;-><init>()V

    iput-object v0, p0, Lnts/ҁ;->ᡲ:Lnts/Ⲱ;

    .line 3
    new-instance v0, Lnts/Ⴤ;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Lnts/Ⴤ;-><init>(I)V

    iput-object v0, p0, Lnts/ҁ;->Ὺ:Lnts/Ⴤ;

    const/16 v0, 0x30

    .line 6
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ҁ;->ᡲ:Lnts/Ⲱ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/ҁ;->ᡲ:Lnts/Ⲱ;

    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_0

    return p2

    .line 6
    :cond_0
    iget-object v0, v0, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    sget-object v1, Lnts/ᦥ;->ᴨ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lnts/ҁ;->Ὺ:Lnts/Ⴤ;

    new-instance v1, Lnts/ζ;

    invoke-direct {v1}, Lnts/ζ;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lnts/Ⴤ;->ㆃ([BILnts/ᛩ;)I

    move-result p2

    .line 8
    iget-object v0, p0, Lnts/ҁ;->Ὺ:Lnts/Ⴤ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    .line 12
    :cond_1
    new-instance v0, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2c

    const/16 v3, 0x54

    const/16 v4, 0x9f

    invoke-static {v4, v2, v3}, Lnts/ࡁ;->ዲ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ҁ;->ᡲ:Lnts/Ⲱ;

    iget-object v2, v2, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe0

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p0, p1, p2}, Lnts/ᛩ;->ㆃ([BI)I

    move-result p1

    return p1
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/ҁ;->ᡲ:Lnts/Ⲱ;

    .line 3
    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ᾨ(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lnts/ҁ;->Ὺ:Lnts/Ⴤ;

    invoke-virtual {v1, v0}, Lnts/Ⴤ;->ㆃ(Lnts/Ḭ;)V

    .line 5
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 6
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 7
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
