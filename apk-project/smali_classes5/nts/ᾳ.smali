.class public Lnts/ᾳ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public ᛃ:I

.field public Ὺ:[I

.field public Ⲳ:[B


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

    const/16 p2, 0x10

    .line 2
    new-array p3, p2, [I

    iput-object p3, v0, Lnts/ᾳ;->Ὺ:[I

    .line 3
    new-array p4, p2, [B

    iput-object p4, v0, Lnts/ᾳ;->Ⲳ:[B

    .line 4
    iput p2, v0, Lnts/ᾳ;->ᛃ:I

    .line 9
    invoke-static {p1, p3, p4}, Lnts/Ԓ;->ㆃ([B[I[B)I

    move-result p1

    iput p1, v0, Lnts/ᾳ;->ᛃ:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ⵄ;->ౠ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v2, p0, Lnts/ᾳ;->Ὺ:[I

    iget-object v3, p0, Lnts/ᾳ;->Ⲳ:[B

    iget v4, p0, Lnts/ᾳ;->ᛃ:I

    const/4 v5, 0x0

    .line 5
    invoke-static {v0, v5}, Lnts/Ԓ;->ㆃ([BI)I

    move-result v6

    .line 6
    invoke-static {v0, v1}, Lnts/Ԓ;->ㆃ([BI)I

    move-result v7

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_1

    .line 9
    rem-int/lit8 v8, v4, 0x3

    aget v9, v2, v4

    aget-byte v10, v3, v4

    invoke-static {v8, v7, v9, v10}, Lnts/Ԓ;->ㆃ(IIIB)I

    move-result v8

    xor-int/2addr v6, v8

    add-int/lit8 v4, v4, -0x1

    move v11, v7

    move v7, v6

    move v6, v11

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v7, v0, v5}, Lnts/Ԓ;->ㆃ(I[BI)V

    .line 13
    invoke-static {v6, v0, v1}, Lnts/Ԓ;->ㆃ(I[BI)V

    return-void

    .line 14
    :cond_2
    :goto_1
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᾳ;->Ὺ:[I

    iget-object v2, p0, Lnts/ᾳ;->Ⲳ:[B

    iget v3, p0, Lnts/ᾳ;->ᛃ:I

    invoke-static {v0, v1, v2, v3}, Lnts/Ԓ;->ㆃ([B[I[BI)V

    return-void
.end method
