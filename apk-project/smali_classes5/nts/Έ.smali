.class public Lnts/Έ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Lnts/ᒕ;

.field public Ὺ:Lnts/ᆍ;

.field public Ⲳ:Lnts/ఽ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 2
    new-instance v0, Lnts/ᒕ;

    invoke-direct {v0}, Lnts/ᒕ;-><init>()V

    iput-object v0, p0, Lnts/Έ;->ᡲ:Lnts/ᒕ;

    .line 3
    new-instance v0, Lnts/ᆍ;

    invoke-direct {v0}, Lnts/ᆍ;-><init>()V

    iput-object v0, p0, Lnts/Έ;->Ὺ:Lnts/ᆍ;

    const/16 v0, 0x30

    .line 7
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    .line 8
    new-instance v0, Lnts/ఽ;

    invoke-direct {v0}, Lnts/ఽ;-><init>()V

    iput-object v0, p0, Lnts/Έ;->Ⲳ:Lnts/ఽ;

    const/16 v1, 0x80

    .line 10
    iput v1, v0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method

.method public constructor <init>(Lnts/ᾭ;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    .line 12
    new-instance v0, Lnts/ᒕ;

    invoke-direct {v0}, Lnts/ᒕ;-><init>()V

    iput-object v0, p0, Lnts/Έ;->ᡲ:Lnts/ᒕ;

    .line 13
    new-instance v0, Lnts/ᆍ;

    invoke-direct {v0}, Lnts/ᆍ;-><init>()V

    iput-object v0, p0, Lnts/Έ;->Ὺ:Lnts/ᆍ;

    const/16 v0, 0x30

    .line 22
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    .line 23
    new-instance v0, Lnts/ఽ;

    invoke-direct {v0, p1}, Lnts/ఽ;-><init>(Lnts/ᾭ;)V

    iput-object v0, p0, Lnts/Έ;->Ⲳ:Lnts/ఽ;

    const/16 p1, 0xa0

    .line 25
    iput p1, v0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/Έ;->ᡲ:Lnts/ᒕ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lnts/Έ;->ᡲ:Lnts/ᒕ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_0

    return p2

    .line 6
    :cond_0
    iget-object v0, p0, Lnts/Έ;->Ὺ:Lnts/ᆍ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 7
    iget-object v0, p0, Lnts/Έ;->Ὺ:Lnts/ᆍ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_1

    return p2

    .line 11
    :cond_1
    iget-object v0, p0, Lnts/Έ;->Ⲳ:Lnts/ఽ;

    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 12
    iget-object v0, p0, Lnts/Έ;->Ⲳ:Lnts/ఽ;

    iget-boolean v0, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_2

    return p2

    .line 16
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
    iget-object v1, p0, Lnts/Έ;->ᡲ:Lnts/ᒕ;

    .line 3
    iget-object v1, v1, Lnts/ᬓ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ᾨ(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lnts/Έ;->Ὺ:Lnts/ᆍ;

    invoke-virtual {v1, v0}, Lnts/క;->ㆃ(Lnts/Ḭ;)V

    .line 5
    iget-object v1, p0, Lnts/Έ;->Ⲳ:Lnts/ఽ;

    invoke-virtual {v1, v0}, Lnts/ఽ;->ㆃ(Lnts/Ḭ;)V

    .line 6
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 7
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 8
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
