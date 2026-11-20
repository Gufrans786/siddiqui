.class public Lnts/લ$ㆃ;
.super Lnts/ⴉ;
.source "SourceFile"

# interfaces
.implements Lnts/ⵋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/લ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3183"
.end annotation


# instance fields
.field public ᛃ:[B

.field public ᵑ:[B

.field public Ὺ:Lnts/Ф;

.field public Ⲳ:[B

.field public ⴗ:I


# direct methods
.method public constructor <init>(Lnts/લ;[B[B[B[BII)V
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

    move v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    .line 2
    new-instance p1, Lnts/Ф;

    invoke-direct {p1}, Lnts/Ф;-><init>()V

    iput-object p1, v0, Lnts/લ$ㆃ;->Ὺ:Lnts/Ф;

    const/4 p1, 0x0

    .line 3
    iput-object p1, v0, Lnts/લ$ㆃ;->Ⲳ:[B

    .line 4
    iput-object p1, v0, Lnts/લ$ㆃ;->ᛃ:[B

    .line 5
    iput-object p1, v0, Lnts/લ$ㆃ;->ᵑ:[B

    const/16 p1, 0x60

    .line 6
    iput p1, v0, Lnts/લ$ㆃ;->ⴗ:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    .line 15
    iput-boolean p1, v0, Lnts/ⵄ;->て:Z

    .line 16
    iget-object p1, v0, Lnts/લ$ㆃ;->Ὺ:Lnts/Ф;

    const/16 p3, 0x40

    new-array p7, p3, [I

    iput-object p7, p1, Lnts/Ф;->Ⲳ:[I

    .line 18
    iput-object v1, v0, Lnts/લ$ㆃ;->Ⲳ:[B

    .line 19
    iput-object p4, v0, Lnts/લ$ㆃ;->ᛃ:[B

    .line 20
    iput-object p5, v0, Lnts/લ$ㆃ;->ᵑ:[B

    .line 21
    iput p6, v0, Lnts/લ$ㆃ;->ⴗ:I

    .line 23
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

    invoke-virtual {p0, v0}, Lnts/લ$ㆃ;->ᇭ([B)[B

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
    iget-object v0, p0, Lnts/લ$ㆃ;->Ὺ:Lnts/Ф;

    iget v1, v0, Lnts/Ф;->ౠ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3
    invoke-static {v0}, Lnts/ᡤ;->ᾨ(Lnts/Ф;)V

    .line 4
    iget-object v0, p0, Lnts/લ$ㆃ;->Ὺ:Lnts/Ф;

    iget-object v1, p0, Lnts/લ$ㆃ;->Ⲳ:[B

    invoke-static {v0, v1}, Lnts/ᡤ;->ᾨ(Lnts/Ф;[B)V

    .line 5
    iget-object v0, p0, Lnts/લ$ㆃ;->Ὺ:Lnts/Ф;

    iget-object v1, p0, Lnts/લ$ㆃ;->ᛃ:[B

    invoke-static {v0, v1}, Lnts/ᡤ;->ㆃ(Lnts/Ф;[B)V

    .line 7
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 8
    iget-object v1, p0, Lnts/લ$ㆃ;->Ὺ:Lnts/Ф;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lnts/ᡤ;->ㆃ(Lnts/Ф;[B[BZ)V

    return-object v0
.end method

.method public ㆃ([B)V
    .locals 0

    .line 32
    iput-object p1, p0, Lnts/લ$ㆃ;->ᵑ:[B

    return-void
.end method

.method public ㆃ([B[B[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnts/લ$ㆃ;->Ⲳ:[B

    .line 2
    iput-object p2, p0, Lnts/લ$ㆃ;->ᛃ:[B

    .line 3
    iput-object p3, p0, Lnts/લ$ㆃ;->ᵑ:[B

    .line 4
    iput p4, p0, Lnts/લ$ㆃ;->ⴗ:I

    return-void
.end method

.method public ㆃ()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lnts/લ$ㆃ;->ᵑ:[B

    return-object v0
.end method

.method public ㆃ([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_5

    .line 8
    iget-object v0, p0, Lnts/લ$ㆃ;->ᵑ:[B

    array-length v0, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lnts/લ$ㆃ;->ⴗ:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x16

    const/16 p3, 0x33

    const/16 v0, 0x74

    invoke-static {v0, p2, p3}, Lnts/ݶ;->ᯋ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x26

    const/16 v1, 0x69

    const/16 v2, 0x8a

    .line 11
    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᯋ(III)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget v1, p0, Lnts/લ$ㆃ;->ⴗ:I

    div-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lnts/લ$ㆃ;->ᵑ:[B

    array-length v2, v2

    const/16 v3, 0x7d1

    if-ne v1, v2, :cond_4

    .line 17
    new-array v1, p3, [B

    const/4 v2, 0x0

    .line 18
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-virtual {p0, v1}, Lnts/લ$ㆃ;->ᇭ([B)[B

    move-result-object p1

    .line 22
    iget-object p2, p0, Lnts/લ$ㆃ;->ᵑ:[B

    array-length p2, p2

    new-array p2, p2, [B

    .line 23
    iget-object p3, p0, Lnts/લ$ㆃ;->Ὺ:Lnts/Ф;

    invoke-static {p3, p2}, Lnts/ᡤ;->ᇭ(Lnts/Ф;[B)V

    .line 26
    :goto_1
    iget-object p3, p0, Lnts/લ$ㆃ;->ᵑ:[B

    array-length v1, p3

    if-ge v2, v1, :cond_3

    .line 27
    aget-byte v1, p2, v2

    aget-byte p3, p3, v2

    if-ne v1, p3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28
    :cond_2
    new-instance p1, Lnts/ᛎ;

    invoke-direct {p1, v3, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    return-object p1

    .line 29
    :cond_4
    new-instance p1, Lnts/ᛎ;

    invoke-direct {p1, v3, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const/16 p2, 0x41

    const/16 p3, 0x3a

    invoke-static {p3, p3, p2}, Lnts/ݶ;->ᯋ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
