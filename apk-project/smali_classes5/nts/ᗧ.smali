.class public Lnts/ᗧ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public ᛃ:I

.field public Ὺ:[I

.field public Ⲳ:I


# direct methods
.method public constructor <init>([B[BIIII)V
    .locals 7

    move v3, p5

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v2, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/16 p2, 0x78

    .line 2
    new-array p3, p2, [I

    iput-object p3, v0, Lnts/ᗧ;->Ὺ:[I

    const/16 p3, 0xa

    .line 4
    iput p3, v0, Lnts/ᗧ;->ᛃ:I

    .line 8
    iput v2, v0, Lnts/ᗧ;->Ⲳ:I

    .line 10
    iget p3, v0, Lnts/ⵄ;->ౠ:I

    const/4 p4, 0x4

    if-eq p3, p4, :cond_1

    const/4 p4, 0x3

    if-ne p3, p4, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-array p2, p2, [I

    iget-object p3, v0, Lnts/ᗧ;->Ὺ:[I

    invoke-static {p1, v2, p2, p3}, Lnts/ᣧ;->ㆃ([BI[I[I)I

    move-result p1

    iput p1, v0, Lnts/ᗧ;->ᛃ:I

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    iget-object p3, v0, Lnts/ᗧ;->Ὺ:[I

    new-array p2, p2, [I

    invoke-static {p1, v2, p3, p2}, Lnts/ᣧ;->ㆃ([BI[I[I)I

    move-result p1

    iput p1, v0, Lnts/ᗧ;->ᛃ:I

    :goto_1
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ⵄ;->ౠ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᗧ;->Ὺ:[I

    iget v2, p0, Lnts/ᗧ;->ᛃ:I

    iget v3, p0, Lnts/ᗧ;->Ⲳ:I

    invoke-static {v0, v1, v2, v3}, Lnts/ᣧ;->ㆃ([B[III)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᗧ;->Ὺ:[I

    iget v2, p0, Lnts/ᗧ;->ᛃ:I

    iget v3, p0, Lnts/ᗧ;->Ⲳ:I

    invoke-static {v0, v1, v2, v3}, Lnts/ᣧ;->ᾨ([B[III)V

    return-void
.end method
