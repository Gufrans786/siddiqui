.class public Lnts/ᬌ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public Ὺ:[I

.field public Ⲳ:I


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 7

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    const/16 p2, 0x40

    .line 2
    new-array p3, p2, [I

    iput-object p3, v0, Lnts/ᬌ;->Ὺ:[I

    const/16 p3, 0xa

    .line 3
    iput p3, v0, Lnts/ᬌ;->Ⲳ:I

    .line 8
    iget p3, v0, Lnts/ⵄ;->ౠ:I

    const/4 p4, 0x4

    const/4 p5, 0x0

    if-eq p3, p4, :cond_1

    const/4 p4, 0x3

    if-eq p3, p4, :cond_1

    const/4 p4, 0x6

    if-ne p3, p4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    array-length p3, p1

    new-array p2, p2, [I

    iget-object p4, v0, Lnts/ᬌ;->Ὺ:[I

    invoke-static {p1, p5, p3, p2, p4}, Lnts/ᜧ;->ㆃ([BII[I[I)I

    move-result p1

    iput p1, v0, Lnts/ᬌ;->Ⲳ:I

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    array-length p3, p1

    iget-object p4, v0, Lnts/ᬌ;->Ὺ:[I

    new-array p2, p2, [I

    invoke-static {p1, p5, p3, p4, p2}, Lnts/ᜧ;->ㆃ([BII[I[I)I

    move-result p1

    iput p1, v0, Lnts/ᬌ;->Ⲳ:I

    :goto_1
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 3
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

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᬌ;->Ὺ:[I

    iget v2, p0, Lnts/ᬌ;->Ⲳ:I

    invoke-static {v0, v1, v2}, Lnts/ᜧ;->ㆃ([B[II)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᬌ;->Ὺ:[I

    iget v2, p0, Lnts/ᬌ;->Ⲳ:I

    invoke-static {v0, v1, v2}, Lnts/ᜧ;->ᾨ([B[II)V

    return-void
.end method
