.class public abstract Lnts/ₑ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:I

.field public Ὺ:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ₑ;->ᡲ:I

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ₑ;->Ὺ:Ljava/util/Vector;

    const/16 v0, 0x31

    .line 6
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public abstract Ͼ()Lnts/ᛩ;
.end method

.method public ౠ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ₑ;->Ὺ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public ᰛ([BI)I
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnts/ᛩ;->ᎊ:Z

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lnts/ₑ;->Ὺ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Lnts/ₑ;->ㆃ(I)Lnts/ᛩ;

    move-result-object v1

    iget-boolean v1, v1, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lnts/ₑ;->ㆃ(I)Lnts/ᛩ;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lnts/ₑ;->Ͼ()Lnts/ᛩ;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lnts/ₑ;->Ὺ:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lnts/ᛩ;->ᇭ:Z

    .line 10
    invoke-virtual {v0, p1, p2}, Lnts/ᛩ;->ᇭ([BI)I

    move-result p2

    .line 11
    iget-boolean v1, v0, Lnts/ᛩ;->ᎊ:Z

    if-nez v1, :cond_2

    return p2

    .line 14
    :cond_2
    invoke-virtual {v0}, Lnts/ᛩ;->ㆃ()V

    .line 15
    iget v1, v0, Lnts/ᛩ;->Ͼ:I

    iget v0, v0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr v1, v0

    .line 16
    iget v0, p0, Lnts/ₑ;->ᡲ:I

    add-int/2addr v0, v1

    iput v0, p0, Lnts/ₑ;->ᡲ:I

    .line 17
    iget-boolean v0, p0, Lnts/ᛩ;->て:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 18
    array-length v0, p1

    add-int/lit8 v2, p2, 0x1

    if-le v0, v2, :cond_0

    .line 19
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0, p1, v2}, Lnts/ᛩ;->ᾨ([BI)I

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iput-boolean v1, p0, Lnts/ᛩ;->ᎊ:Z

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 24
    :cond_3
    iget v0, p0, Lnts/ₑ;->ᡲ:I

    iget v2, p0, Lnts/ᛩ;->ᙕ:I

    if-lt v0, v2, :cond_0

    .line 25
    iput-boolean v1, p0, Lnts/ᛩ;->ᎊ:Z

    goto :goto_0

    :cond_4
    return p2
.end method

.method public ㆃ(I)Lnts/ᛩ;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ₑ;->Ὺ:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnts/ᛩ;

    return-object p1
.end method
