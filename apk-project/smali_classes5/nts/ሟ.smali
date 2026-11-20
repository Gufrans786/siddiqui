.class public Lnts/ሟ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public Ὺ:[S


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 7

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/16 p2, 0x34

    .line 2
    new-array p3, p2, [S

    iput-object p3, v0, Lnts/ሟ;->Ὺ:[S

    .line 7
    iget p3, v0, Lnts/ⵄ;->ౠ:I

    const/4 p4, 0x1

    const/4 p5, 0x4

    if-eq p3, p5, :cond_2

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    goto/16 :goto_2

    .line 10
    :cond_0
    iget-object p3, v0, Lnts/ሟ;->Ὺ:[S

    .line 11
    new-array p2, p2, [S

    .line 12
    invoke-static {p1, p2}, Lnts/ύ;->ᾨ([B[S)V

    const/4 p1, 0x0

    .line 15
    aget-short p1, p2, p1

    invoke-static {p1}, Lnts/ύ;->ㆃ(S)S

    move-result p1

    const/16 v2, 0x30

    aput-short p1, p3, v2

    .line 16
    aget-short p1, p2, p4

    neg-int p1, p1

    const v2, 0xffff

    and-int/2addr p1, v2

    int-to-short p1, p1

    const/16 v3, 0x31

    aput-short p1, p3, v3

    const/4 p1, 0x2

    .line 17
    aget-short v3, p2, p1

    neg-int v3, v3

    and-int/2addr v3, v2

    int-to-short v3, v3

    const/16 v4, 0x32

    aput-short v3, p3, v4

    .line 18
    aget-short v1, p2, v1

    invoke-static {v1}, Lnts/ύ;->ㆃ(S)S

    move-result v1

    const/16 v3, 0x33

    aput-short v1, p3, v3

    const/16 v1, 0x2a

    :goto_0
    if-ltz v1, :cond_3

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, p5, 0x1

    .line 20
    aget-short v5, p2, p5

    aput-short v5, p3, v3

    add-int/lit8 v3, v1, 0x5

    add-int/lit8 v5, p5, 0x2

    .line 21
    aget-short v4, p2, v4

    aput-short v4, p3, v3

    add-int/lit8 v3, p5, 0x3

    .line 22
    aget-short v4, p2, v5

    invoke-static {v4}, Lnts/ύ;->ㆃ(S)S

    move-result v4

    aput-short v4, p3, v1

    if-lez v1, :cond_1

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, p5, 0x4

    .line 24
    aget-short v3, p2, v3

    neg-int v3, v3

    and-int/2addr v3, v2

    int-to-short v3, v3

    aput-short v3, p3, v4

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 p5, p5, 0x5

    .line 25
    aget-short v4, p2, v5

    neg-int v4, v4

    and-int/2addr v4, v2

    int-to-short v4, v4

    aput-short v4, p3, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, p5, 0x4

    .line 27
    aget-short v3, p2, v3

    neg-int v3, v3

    and-int/2addr v3, v2

    int-to-short v3, v3

    aput-short v3, p3, p4

    add-int/lit8 p5, p5, 0x5

    .line 28
    aget-short v3, p2, v4

    neg-int v3, v3

    and-int/2addr v3, v2

    int-to-short v3, v3

    aput-short v3, p3, p1

    :goto_1
    add-int/lit8 v3, v1, 0x3

    add-int/lit8 v4, p5, 0x1

    .line 30
    aget-short p5, p2, p5

    invoke-static {p5}, Lnts/ύ;->ㆃ(S)S

    move-result p5

    aput-short p5, p3, v3

    add-int/lit8 v1, v1, -0x6

    move p5, v4

    goto :goto_0

    .line 31
    :cond_2
    :goto_2
    iget-object p2, v0, Lnts/ሟ;->Ὺ:[S

    invoke-static {p1, p2}, Lnts/ύ;->ᾨ([B[S)V

    .line 36
    :cond_3
    iput-boolean p4, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ሟ;->Ὺ:[S

    invoke-static {v0, v1}, Lnts/ύ;->ㆃ([B[S)V

    return-void
.end method
