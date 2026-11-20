.class public Lnts/ᡉ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public Ὺ:[I


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

    .line 3
    invoke-static {p1}, Lnts/ⶂ;->ᇭ([B)[I

    move-result-object p1

    iput-object p1, v0, Lnts/ᡉ;->Ὺ:[I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ⵄ;->ౠ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_5

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v2, p0, Lnts/ᡉ;->Ὺ:[I

    .line 5
    new-array v3, v1, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    mul-int/lit8 v6, v5, 0x2

    .line 7
    invoke-static {v0, v6}, Lnts/ⶂ;->ㆃ([BI)I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x3f

    move v6, v4

    :goto_1
    const/4 v7, 0x5

    if-ge v6, v7, :cond_2

    .line 10
    invoke-static {v3, v2, v5}, Lnts/ⶂ;->ᾨ([I[II)I

    move-result v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v3, v2}, Lnts/ⶂ;->ᾨ([I[I)V

    move v6, v4

    :goto_2
    const/4 v8, 0x6

    if-ge v6, v8, :cond_3

    .line 16
    invoke-static {v3, v2, v5}, Lnts/ⶂ;->ᾨ([I[II)I

    move-result v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {v3, v2}, Lnts/ⶂ;->ᾨ([I[I)V

    move v6, v4

    :goto_3
    if-ge v6, v7, :cond_4

    .line 22
    invoke-static {v3, v2, v5}, Lnts/ⶂ;->ᾨ([I[II)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v4, v1, :cond_5

    .line 26
    aget v2, v3, v4

    mul-int/lit8 v5, v4, 0x2

    invoke-static {v2, v0, v5}, Lnts/ⶂ;->ㆃ(I[BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-void

    .line 27
    :cond_6
    :goto_5
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᡉ;->Ὺ:[I

    invoke-static {v0, v1}, Lnts/ⶂ;->ㆃ([B[I)V

    return-void
.end method
