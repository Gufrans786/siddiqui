.class public Lnts/ᖛ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Z

.field public ᇭ:Lnts/ዌ;

.field public ᰛ:I

.field public ᾨ:I

.field public ㆃ:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lnts/ዧ;->ዲ:[B

    iput-object v0, p0, Lnts/ᖛ;->ㆃ:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnts/ᖛ;->ᾨ:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lnts/ᖛ;->ᇭ:Lnts/ዌ;

    .line 7
    iput v0, p0, Lnts/ᖛ;->ᰛ:I

    .line 8
    iput-boolean v0, p0, Lnts/ᖛ;->Ͼ:Z

    .line 11
    invoke-virtual {p0}, Lnts/ᖛ;->ㆃ()Lnts/ዌ;

    move-result-object v0

    iput-object v0, p0, Lnts/ᖛ;->ᇭ:Lnts/ዌ;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 17
    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lnts/ᖛ;-><init>([B)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lnts/ᖛ;->ᾨ:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 14
    array-length v0, p1

    .line 15
    invoke-direct {p0}, Lnts/ᖛ;-><init>()V

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, p1, v1, v0}, Lnts/ᖛ;->ㆃ([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lnts/ᖛ;-><init>()V

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lnts/ᖛ;->ㆃ([BII)V

    return-void
.end method


# virtual methods
.method public Ͼ(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ᖛ;->ᇭ:Lnts/ዌ;

    iget-object v1, p0, Lnts/ᖛ;->ㆃ:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lnts/ዌ;->ㆃ([BII)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public Ͼ()Ljava/lang/String;
    .locals 4

    .line 2
    iget v0, p0, Lnts/ᖛ;->ᰛ:I

    :goto_0
    iget v1, p0, Lnts/ᖛ;->ᾨ:I

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lnts/ᖛ;->ㆃ:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-gt v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lnts/ᖛ;->ㆃ:[B

    iget v2, p0, Lnts/ᖛ;->ᰛ:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lnts/ၽ;->Ͼ([BII)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lnts/ᖛ;->ᰛ:I

    return-object v1

    :cond_1
    const/16 v0, 0x26

    const-string v1, "^nofo\u007f(}ih$vjlru0^sjr}8uua4q\u007f\u007ft3|x`c.}mygljfrnr#dRN\u001fMMJRTR\u001a"

    const/16 v2, 0x11

    const/16 v3, 0x2a

    .line 9
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Lnts/ᛎ;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public ౠ()S
    .locals 2

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Lnts/ᖛ;->ᙕ(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public ౠ(I)[B
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lnts/ᖛ;->ㆃ(I)V

    .line 2
    new-array v0, p1, [B

    .line 3
    iget v1, p0, Lnts/ᖛ;->ᾨ:I

    iget v2, p0, Lnts/ᖛ;->ᰛ:I

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    iget-object v1, p0, Lnts/ᖛ;->ㆃ:[B

    iget v2, p0, Lnts/ᖛ;->ᰛ:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v1, p0, Lnts/ᖛ;->ᰛ:I

    add-int/2addr v1, p1

    iput v1, p0, Lnts/ᖛ;->ᰛ:I

    return-object v0
.end method

.method public ᇭ(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᖛ;->ㆃ:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public ᇭ()I
    .locals 2

    .line 2
    iget v0, p0, Lnts/ᖛ;->ᾨ:I

    .line 3
    iget v1, p0, Lnts/ᖛ;->ᰛ:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public ዲ(I)V
    .locals 0

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lnts/ᖛ;->ㆃ(B)V

    return-void
.end method

.method public ዲ()[B
    .locals 1

    .line 2
    invoke-virtual {p0}, Lnts/ᖛ;->て()I

    move-result v0

    invoke-virtual {p0, v0}, Lnts/ᖛ;->ౠ(I)[B

    move-result-object v0

    return-object v0
.end method

.method public ᎊ(I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lnts/ᖛ;->ㆃ(JI)V

    return-void
.end method

.method public ᎊ()[B
    .locals 1

    .line 2
    invoke-virtual {p0}, Lnts/ᖛ;->て()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lnts/ᖛ;->ౠ(I)[B

    move-result-object v0

    return-object v0
.end method

.method public ᙕ()I
    .locals 2

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Lnts/ᖛ;->ᙕ(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public ᙕ(I)J
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lnts/ᖛ;->ㆃ(I)V

    .line 2
    iget-object v0, p0, Lnts/ᖛ;->ᇭ:Lnts/ዌ;

    iget-object v1, p0, Lnts/ᖛ;->ㆃ:[B

    iget v2, p0, Lnts/ᖛ;->ᰛ:I

    invoke-virtual {v0, v1, v2, p1}, Lnts/ዌ;->ㆃ([BII)J

    move-result-wide v0

    .line 3
    iget v2, p0, Lnts/ᖛ;->ᰛ:I

    add-int/2addr v2, p1

    iput v2, p0, Lnts/ᖛ;->ᰛ:I

    return-wide v0
.end method

.method public ᛃ()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/ᖛ;->ᰛ:I

    return-void
.end method

.method public ᡲ()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lnts/ᖛ;->ዲ()[B

    move-result-object v0

    invoke-static {v0}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᡲ(I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x3

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lnts/ᖛ;->ㆃ(JI)V

    return-void
.end method

.method public ᰛ()B
    .locals 3

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lnts/ᖛ;->ㆃ(I)V

    .line 3
    iget-object v0, p0, Lnts/ᖛ;->ㆃ:[B

    iget v1, p0, Lnts/ᖛ;->ᰛ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnts/ᖛ;->ᰛ:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public ᰛ(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ᖛ;->ㆃ:[B

    iget v1, p0, Lnts/ᖛ;->ᾨ:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v1}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public ᾨ(I)V
    .locals 5

    .line 6
    iget v0, p0, Lnts/ᖛ;->ᰛ:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lnts/ᖛ;->ㆃ:[B

    array-length v2, v1

    sub-int/2addr p1, v2

    if-lez p1, :cond_1

    .line 8
    iget-boolean v2, p0, Lnts/ᖛ;->Ͼ:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 9
    array-length v2, v1

    add-int/2addr v2, p1

    array-length v4, v1

    add-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    new-array p1, v4, [B

    .line 10
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput-object p1, p0, Lnts/ᖛ;->ㆃ:[B

    return-void

    .line 13
    :cond_0
    array-length v2, v1

    add-int/2addr v2, p1

    new-array p1, v2, [B

    .line 14
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object p1, p0, Lnts/ᖛ;->ㆃ:[B

    :cond_1
    return-void
.end method

.method public ᾨ(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnts/ᖛ;->ᇭ:Lnts/ዌ;

    int-to-long v1, p2

    iget-object v3, p0, Lnts/ᖛ;->ㆃ:[B

    const/4 v5, 0x3

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lnts/ዌ;->ㆃ(J[BII)V

    return-void
.end method

.method public ᾨ([B)V
    .locals 2

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnts/ᖛ;->ᾨ([BII)V

    return-void
.end method

.method public ᾨ([BII)V
    .locals 2

    .line 17
    invoke-virtual {p0, p3}, Lnts/ᖛ;->ᾨ(I)V

    .line 18
    iget-object v0, p0, Lnts/ᖛ;->ㆃ:[B

    iget v1, p0, Lnts/ᖛ;->ᰛ:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget p1, p0, Lnts/ᖛ;->ᰛ:I

    add-int/2addr p1, p3

    iput p1, p0, Lnts/ᖛ;->ᰛ:I

    .line 20
    iget p1, p0, Lnts/ᖛ;->ᾨ:I

    add-int/2addr p1, p3

    iput p1, p0, Lnts/ᖛ;->ᾨ:I

    return-void
.end method

.method public ᾨ()[B
    .locals 3

    .line 2
    iget v0, p0, Lnts/ᖛ;->ᾨ:I

    iget-object v1, p0, Lnts/ᖛ;->ㆃ:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2, v0}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public Ὺ(I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lnts/ᖛ;->ㆃ(JI)V

    return-void
.end method

.method public Ὺ()[B
    .locals 2

    .line 2
    iget v0, p0, Lnts/ᖛ;->ᾨ:I

    iget v1, p0, Lnts/ᖛ;->ᰛ:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnts/ᖛ;->ౠ(I)[B

    move-result-object v0

    return-object v0
.end method

.method public Ⲳ()V
    .locals 1

    .line 1
    sget-object v0, Lnts/ዧ;->ዲ:[B

    iput-object v0, p0, Lnts/ᖛ;->ㆃ:[B

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ᖛ;->ᾨ:I

    iput v0, p0, Lnts/ᖛ;->ᰛ:I

    return-void
.end method

.method public て()I
    .locals 2

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lnts/ᖛ;->ᙕ(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public て(I)V
    .locals 1

    .line 1
    iget v0, p0, Lnts/ᖛ;->ᰛ:I

    add-int/2addr v0, p1

    iput v0, p0, Lnts/ᖛ;->ᰛ:I

    return-void
.end method

.method public ㆃ()Lnts/ዌ;
    .locals 1

    .line 1
    new-instance v0, Lnts/ၹ;

    invoke-direct {v0}, Lnts/ၹ;-><init>()V

    return-object v0
.end method

.method public ㆃ(B)V
    .locals 4

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lnts/ᖛ;->ᾨ(I)V

    .line 19
    iget-object v1, p0, Lnts/ᖛ;->ㆃ:[B

    iget v2, p0, Lnts/ᖛ;->ᰛ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnts/ᖛ;->ᰛ:I

    aput-byte p1, v1, v2

    .line 20
    iget p1, p0, Lnts/ᖛ;->ᾨ:I

    add-int/2addr p1, v0

    iput p1, p0, Lnts/ᖛ;->ᾨ:I

    return-void
.end method

.method public ㆃ(I)V
    .locals 4

    .line 27
    iget v0, p0, Lnts/ᖛ;->ᰛ:I

    add-int/2addr v0, p1

    iget p1, p0, Lnts/ᖛ;->ᾨ:I

    if-gt v0, p1, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x1f

    const-string v1, "^nofo\u007f(}ih$vjlru0^sjr}8uua4q\u007f\u007ft3|x`c.}mygljfrnr#dRN\u001fMMJRTR\u001a"

    const/4 v2, 0x0

    const/16 v3, 0x11

    .line 29
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-direct {p1, v2, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public ㆃ(IJ)V
    .locals 6

    .line 8
    iget-object v0, p0, Lnts/ᖛ;->ᇭ:Lnts/ዌ;

    iget-object v3, p0, Lnts/ᖛ;->ㆃ:[B

    const/4 v5, 0x2

    move v4, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lnts/ዌ;->ㆃ(J[BII)V

    return-void
.end method

.method public ㆃ(J)V
    .locals 1

    const/16 v0, 0x8

    .line 22
    invoke-virtual {p0, p1, p2, v0}, Lnts/ᖛ;->ㆃ(JI)V

    return-void
.end method

.method public final ㆃ(JI)V
    .locals 6

    .line 23
    invoke-virtual {p0, p3}, Lnts/ᖛ;->ᾨ(I)V

    .line 24
    iget-object v0, p0, Lnts/ᖛ;->ᇭ:Lnts/ዌ;

    iget-object v3, p0, Lnts/ᖛ;->ㆃ:[B

    iget v4, p0, Lnts/ᖛ;->ᰛ:I

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lnts/ዌ;->ㆃ(J[BII)V

    .line 25
    iget p1, p0, Lnts/ᖛ;->ᰛ:I

    add-int/2addr p1, v5

    iput p1, p0, Lnts/ᖛ;->ᰛ:I

    .line 26
    iget p1, p0, Lnts/ᖛ;->ᾨ:I

    add-int/2addr p1, v5

    iput p1, p0, Lnts/ᖛ;->ᾨ:I

    return-void
.end method

.method public ㆃ(Ljava/lang/String;)V
    .locals 3

    .line 10
    invoke-static {p1}, Lnts/ၽ;->ᙕ(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 12
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lnts/ᖛ;->ᾨ([BII)V

    .line 16
    array-length p1, p1

    if-ne v1, p1, :cond_1

    .line 17
    invoke-virtual {p0, v0}, Lnts/ᖛ;->ዲ(I)V

    :cond_1
    return-void
.end method

.method public ㆃ(S)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x2

    .line 21
    invoke-virtual {p0, v0, v1, p1}, Lnts/ᖛ;->ㆃ(JI)V

    return-void
.end method

.method public ㆃ([B)V
    .locals 0

    .line 2
    iput-object p1, p0, Lnts/ᖛ;->ㆃ:[B

    .line 3
    array-length p1, p1

    iput p1, p0, Lnts/ᖛ;->ᾨ:I

    return-void
.end method

.method public ㆃ([BII)V
    .locals 1

    if-nez p2, :cond_0

    .line 4
    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 5
    iput-object p1, p0, Lnts/ᖛ;->ㆃ:[B

    .line 6
    array-length p1, p1

    iput p1, p0, Lnts/ᖛ;->ᾨ:I

    return-void

    .line 7
    :cond_0
    invoke-static {p1, p2, p3}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnts/ᖛ;->ㆃ([B)V

    return-void
.end method

.method public ㆃ(II)[B
    .locals 1

    .line 9
    iget-object v0, p0, Lnts/ᖛ;->ㆃ:[B

    invoke-static {v0, p1, p2}, Lnts/ၽ;->ᰛ([BII)[B

    move-result-object p1

    return-object p1
.end method
