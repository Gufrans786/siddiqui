.class public Lnts/લ$ᾨ;
.super Lnts/ḗ;
.source "SourceFile"

# interfaces
.implements Lnts/ⵋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/લ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u1fa8"
.end annotation


# instance fields
.field public ᛃ:[B

.field public ᵑ:I

.field public Ὺ:Lnts/Ф;

.field public Ⲳ:[B


# direct methods
.method public constructor <init>(Lnts/લ;[B[B[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p3

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ḗ;-><init>([BIIIII)V

    .line 2
    new-instance p1, Lnts/Ф;

    invoke-direct {p1}, Lnts/Ф;-><init>()V

    iput-object p1, v0, Lnts/લ$ᾨ;->Ὺ:Lnts/Ф;

    const/4 p1, 0x0

    .line 3
    iput-object p1, v0, Lnts/લ$ᾨ;->Ⲳ:[B

    .line 4
    iput-object p1, v0, Lnts/લ$ᾨ;->ᛃ:[B

    const/16 p1, 0x60

    .line 5
    iput p1, v0, Lnts/લ$ᾨ;->ᵑ:I

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    .line 14
    iput-boolean p1, v0, Lnts/ⵄ;->て:Z

    .line 15
    iget-object p1, v0, Lnts/લ$ᾨ;->Ὺ:Lnts/Ф;

    const/16 p3, 0x40

    new-array p6, p3, [I

    iput-object p6, p1, Lnts/Ф;->Ⲳ:[I

    .line 17
    iput-object v1, v0, Lnts/લ$ᾨ;->Ⲳ:[B

    .line 18
    iput-object p4, v0, Lnts/લ$ᾨ;->ᛃ:[B

    .line 19
    iput p5, v0, Lnts/લ$ᾨ;->ᵑ:I

    .line 21
    array-length p4, p2

    iget-object p5, p1, Lnts/Ф;->Ⲳ:[I

    new-array p3, p3, [I

    const/4 p6, 0x0

    invoke-static {p2, p6, p4, p5, p3}, Lnts/ᜧ;->ㆃ([BII[I[I)I

    move-result p2

    iput p2, p1, Lnts/Ф;->ᛃ:I

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    invoke-virtual {p0, v0}, Lnts/લ$ᾨ;->ᇭ([B)[B

    move-result-object v0

    iput-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    return-void
.end method

.method public ᇭ([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnts/લ$ᾨ;->Ὺ:Lnts/Ф;

    iget v1, v0, Lnts/Ф;->ౠ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3
    invoke-static {v0}, Lnts/ᡤ;->ᾨ(Lnts/Ф;)V

    .line 4
    iget-object v0, p0, Lnts/લ$ᾨ;->Ὺ:Lnts/Ф;

    iget-object v1, p0, Lnts/લ$ᾨ;->Ⲳ:[B

    invoke-static {v0, v1}, Lnts/ᡤ;->ᾨ(Lnts/Ф;[B)V

    .line 5
    iget-object v0, p0, Lnts/લ$ᾨ;->Ὺ:Lnts/Ф;

    iget-object v1, p0, Lnts/લ$ᾨ;->ᛃ:[B

    invoke-static {v0, v1}, Lnts/ᡤ;->ㆃ(Lnts/Ф;[B)V

    .line 7
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 8
    iget-object v1, p0, Lnts/લ$ᾨ;->Ὺ:Lnts/Ф;

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lnts/ᡤ;->ㆃ(Lnts/Ф;[B[BZ)V

    return-object v0
.end method

.method public ㆃ([B)V
    .locals 0

    return-void
.end method

.method public ㆃ([B[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnts/લ$ᾨ;->Ⲳ:[B

    .line 2
    iput-object p2, p0, Lnts/લ$ᾨ;->ᛃ:[B

    .line 3
    iput p3, p0, Lnts/લ$ᾨ;->ᵑ:I

    return-void
.end method

.method public ㆃ()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lnts/લ$ᾨ;->Ὺ:Lnts/Ф;

    iget-object v0, v0, Lnts/Ф;->Ὺ:[B

    return-object v0
.end method

.method public ㆃ([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int v0, p2, p3

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 8
    new-array v0, p3, [B

    .line 9
    new-array v0, p3, [B

    .line 10
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-virtual {p0, v0}, Lnts/લ$ᾨ;->ᇭ([B)[B

    move-result-object p1

    .line 14
    iget p2, p0, Lnts/લ$ᾨ;->ᵑ:I

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    .line 15
    iget-object p3, p0, Lnts/લ$ᾨ;->Ὺ:Lnts/Ф;

    invoke-static {p3, p2}, Lnts/ᡤ;->ᇭ(Lnts/Ф;[B)V

    .line 16
    iget-object p3, p0, Lnts/લ$ᾨ;->Ὺ:Lnts/Ф;

    iput-object p2, p3, Lnts/Ф;->Ὺ:[B

    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const/16 p2, 0x3a

    const/16 p3, 0x6a

    invoke-static {v2, p2, p3}, Lnts/ݶ;->ᯋ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
