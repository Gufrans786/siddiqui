.class public Lnts/ᣞ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public ᛃ:[I

.field public Ὺ:[I

.field public Ⲳ:[I


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

    const/16 p2, 0x20

    .line 2
    new-array p3, p2, [I

    iput-object p3, v0, Lnts/ᣞ;->Ὺ:[I

    .line 3
    new-array p4, p2, [I

    iput-object p4, v0, Lnts/ᣞ;->Ⲳ:[I

    .line 4
    new-array p4, p2, [I

    iput-object p4, v0, Lnts/ᣞ;->ᛃ:[I

    const/4 p4, 0x0

    .line 9
    invoke-static {p1, p4, p3}, Lnts/ᨿ;->ㆃ([BI[I)V

    .line 10
    iget-object p3, v0, Lnts/ᣞ;->Ⲳ:[I

    const/16 p4, 0x8

    invoke-static {p1, p4, p3}, Lnts/ᨿ;->ㆃ([BI[I)V

    .line 11
    array-length p3, p1

    const/16 p4, 0x18

    if-ne p3, p4, :cond_0

    .line 12
    new-array p2, p2, [I

    iput-object p2, v0, Lnts/ᣞ;->ᛃ:[I

    const/16 p3, 0x10

    .line 13
    invoke-static {p1, p3, p2}, Lnts/ᨿ;->ㆃ([BI[I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, v0, Lnts/ᣞ;->Ὺ:[I

    iput-object p1, v0, Lnts/ᣞ;->ᛃ:[I

    :goto_0
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

    iget-object v1, p0, Lnts/ᣞ;->Ὺ:[I

    iget-object v2, p0, Lnts/ᣞ;->Ⲳ:[I

    iget-object v3, p0, Lnts/ᣞ;->ᛃ:[I

    invoke-static {v0, v1, v2, v3}, Lnts/າ;->ㆃ([B[I[I[I)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᣞ;->Ὺ:[I

    iget-object v2, p0, Lnts/ᣞ;->Ⲳ:[I

    iget-object v3, p0, Lnts/ᣞ;->ᛃ:[I

    invoke-static {v0, v1, v2, v3}, Lnts/າ;->ᾨ([B[I[I[I)V

    return-void
.end method
