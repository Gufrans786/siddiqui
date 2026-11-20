.class public Lnts/ฦ;
.super Lnts/ḗ;
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
    invoke-direct/range {v0 .. v6}, Lnts/ḗ;-><init>([BIIIII)V

    const/16 p2, 0x10

    .line 2
    new-array p3, p2, [I

    iput-object p3, v0, Lnts/ฦ;->Ὺ:[I

    .line 3
    new-array p4, p2, [B

    iput-object p4, v0, Lnts/ฦ;->Ⲳ:[B

    .line 4
    iput p2, v0, Lnts/ฦ;->ᛃ:I

    .line 9
    invoke-static {p1, p3, p4}, Lnts/Ԓ;->ㆃ([B[I[B)I

    move-result p1

    iput p1, v0, Lnts/ฦ;->ᛃ:I

    const/4 p1, 0x1

    .line 11
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
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ฦ;->Ὺ:[I

    iget-object v2, p0, Lnts/ฦ;->Ⲳ:[B

    iget v3, p0, Lnts/ฦ;->ᛃ:I

    invoke-static {v0, v1, v2, v3}, Lnts/Ԓ;->ㆃ([B[I[BI)V

    return-void
.end method
