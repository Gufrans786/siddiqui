.class public Lnts/ख;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Ͼ:Ljava/lang/String;

.field public static final ౠ:Lnts/ख;

.field public static final ᙕ:Lnts/ख;

.field public static final ᰛ:Ljava/lang/String;


# instance fields
.field public ᇭ:Z

.field public ᾨ:[I

.field public ㆃ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "+\u0011\n\u0004\u0004\u0012C\u0016\u0002\u0003O\u0002\u0008\u001a\u000c\u000f#\u000f\u0013\r\u0010\u000b\u000e\u000eO\u000c\u0014L\u0011\u000f\u001b\u0007ImirUoAkjEazlonx5}d6\u007f\u007fg2tqor|u~tQ\u0005W}p_\u007fdvuxnKqUQun%mt&oow\"da\u007fblendA\u0015"

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x75

    invoke-static {v0, v1, v2, v3}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    .line 2
    sput-object v3, Lnts/ख;->ᰛ:Ljava/lang/String;

    const/16 v3, 0x67

    .line 3
    invoke-static {v0, v2, v2, v3}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 4
    sput-object v0, Lnts/ख;->Ͼ:Ljava/lang/String;

    .line 6
    new-instance v0, Lnts/ख;

    invoke-direct {v0, v1}, Lnts/ख;-><init>(I)V

    sput-object v0, Lnts/ख;->ౠ:Lnts/ख;

    .line 7
    new-instance v0, Lnts/ख;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnts/ख;-><init>(I)V

    sput-object v0, Lnts/ख;->ᙕ:Lnts/ख;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lnts/ख;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x300

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ख;->ᾨ:[I

    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lnts/ख;->ㆃ:I

    .line 6
    iput-boolean p1, p0, Lnts/ख;->ᇭ:Z

    return-void
.end method

.method public static Ͼ(Lnts/ख;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 4
    :goto_0
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/4 v1, 0x1

    if-ge v2, v0, :cond_0

    .line 5
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    aget v3, v0, v2

    ushr-int/lit8 v1, v3, 0x1

    add-int/lit8 v3, v2, 0x1

    aget v4, v0, v3

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v1, v4

    aput v1, v0, v2

    move v2, v3

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lnts/ख;->ᾨ:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_1

    if-le v0, v1, :cond_1

    .line 7
    iput v3, p0, Lnts/ख;->ㆃ:I

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p0, Lnts/ẩ;

    sget-object v0, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 9
    iget-boolean v0, p0, Lnts/ख;->ᇭ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v3, p1, Lnts/ख;->ᇭ:Z

    if-eqz v3, :cond_0

    .line 10
    iput-boolean v2, p0, Lnts/ख;->ᇭ:Z

    .line 11
    invoke-static {p0, p1, p2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 12
    iput-boolean v1, p0, Lnts/ख;->ᇭ:Z

    .line 13
    iput-boolean v1, p2, Lnts/ख;->ᇭ:Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 16
    iget-boolean v3, p1, Lnts/ख;->ᇭ:Z

    if-nez v3, :cond_1

    .line 17
    iput-boolean v2, p1, Lnts/ख;->ᇭ:Z

    .line 18
    invoke-static {p0, p1, p2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 19
    iput-boolean v1, p1, Lnts/ख;->ᇭ:Z

    .line 20
    iput-boolean v2, p2, Lnts/ख;->ᇭ:Z

    return-void

    :cond_1
    if-nez v0, :cond_3

    .line 23
    iget-boolean v0, p1, Lnts/ख;->ᇭ:Z

    if-nez v0, :cond_3

    .line 24
    iput-boolean v2, p0, Lnts/ख;->ᇭ:Z

    .line 25
    iput-boolean v2, p1, Lnts/ख;->ᇭ:Z

    .line 26
    invoke-static {p1, p0, p2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    if-eq p1, p2, :cond_2

    .line 28
    iput-boolean v1, p1, Lnts/ख;->ᇭ:Z

    :cond_2
    if-eq p0, p2, :cond_5

    .line 30
    iput-boolean v1, p0, Lnts/ख;->ᇭ:Z

    return-void

    .line 34
    :cond_3
    invoke-static {p1, p0}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    invoke-static {p1, p0, p2}, Lnts/ख;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 36
    iput-boolean v1, p2, Lnts/ख;->ᇭ:Z

    goto :goto_0

    .line 38
    :cond_4
    invoke-static {p0, p1, p2}, Lnts/ख;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 41
    :goto_0
    iget-boolean p0, p0, Lnts/ख;->ᇭ:Z

    if-nez p0, :cond_5

    iget-boolean p0, p1, Lnts/ख;->ᇭ:Z

    if-nez p0, :cond_5

    .line 42
    iget-boolean p0, p2, Lnts/ख;->ᇭ:Z

    xor-int/2addr p0, v2

    iput-boolean p0, p2, Lnts/ख;->ᇭ:Z

    :cond_5
    return-void
.end method

.method public static ౠ(Lnts/ख;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 41
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 43
    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 44
    iput v0, p0, Lnts/ख;->ㆃ:I

    return-void

    .line 45
    :cond_1
    new-instance p0, Lnts/ẩ;

    sget-object v0, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ౠ(Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p0 .. p1}, Lnts/ख;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-static {v2}, Lnts/ख;->ᙕ(Lnts/ख;)V

    return-void

    .line 6
    :cond_0
    iget v3, v0, Lnts/ख;->ㆃ:I

    .line 7
    iget v4, v1, Lnts/ख;->ㆃ:I

    .line 8
    iget-object v5, v2, Lnts/ख;->ᾨ:[I

    .line 9
    iget-object v0, v0, Lnts/ख;->ᾨ:[I

    .line 10
    iget-object v1, v1, Lnts/ख;->ᾨ:[I

    const/4 v8, 0x0

    move v9, v8

    const-wide/16 v10, 0x0

    :goto_0
    const/16 v12, 0x20

    if-ge v9, v4, :cond_1

    .line 20
    aget v13, v0, v9

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    const-wide/16 p0, 0x0

    aget v6, v1, v9

    int-to-long v6, v6

    and-long/2addr v6, v15

    sub-long/2addr v13, v6

    shr-long v6, v10, v12

    add-long v10, v13, v6

    long-to-int v6, v10

    .line 21
    aput v6, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    shr-long v6, v10, v12

    cmp-long v1, v6, p0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    if-ge v9, v3, :cond_4

    if-eqz v1, :cond_4

    .line 27
    aget v1, v0, v9

    sub-int/2addr v1, v4

    aput v1, v5, v9

    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v8

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-ge v9, v3, :cond_5

    .line 33
    aget v1, v0, v9

    aput v1, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 37
    :cond_5
    iput v3, v2, Lnts/ख;->ㆃ:I

    .line 38
    :goto_4
    iget-object v0, v2, Lnts/ख;->ᾨ:[I

    iget v1, v2, Lnts/ख;->ㆃ:I

    add-int/lit8 v3, v1, -0x1

    aget v0, v0, v3

    if-nez v0, :cond_6

    if-le v1, v4, :cond_6

    .line 39
    iput v3, v2, Lnts/ख;->ㆃ:I

    goto :goto_4

    .line 40
    :cond_6
    iput-boolean v4, v2, Lnts/ख;->ᇭ:Z

    return-void
.end method

.method public static ᇭ(Lnts/ख;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 v0, p1, 0x5

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1f

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 13
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_4

    iget v0, p1, Lnts/ख;->ㆃ:I

    if-gt v0, v1, :cond_4

    if-gt v0, v1, :cond_4

    .line 14
    invoke-static {p1}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 17
    invoke-static {p2}, Lnts/ख;->ᙕ(Lnts/ख;)V

    .line 18
    invoke-static {p0}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 20
    invoke-static {p2}, Lnts/ख;->ᰛ(Lnts/ख;)V

    .line 21
    iget-object v2, p2, Lnts/ख;->ᾨ:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    invoke-static {p0, v1}, Lnts/ख;->ᇭ(Lnts/ख;I)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 22
    invoke-static {p2, p1}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {p2, p1, v0}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 24
    invoke-static {p2, v0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto :goto_1

    .line 25
    :cond_0
    invoke-static {p2, p1}, Lnts/ख;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    invoke-static {p2}, Lnts/ख;->ᙕ(Lnts/ख;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void

    .line 27
    :cond_3
    new-instance p0, Lnts/ẩ;

    sget-object p1, Lnts/ख;->Ͼ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_4
    new-instance p0, Lnts/ẩ;

    sget-object p1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᇭ(Lnts/ख;)Z
    .locals 4

    .line 2
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 4
    :goto_0
    iget v3, p0, Lnts/ख;->ㆃ:I

    if-ge v0, v3, :cond_2

    .line 5
    iget-object v3, p0, Lnts/ख;->ᾨ:[I

    aget v3, v3, v0

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static ᇭ(Lnts/ख;Lnts/ख;)Z
    .locals 3

    .line 6
    iget v0, p0, Lnts/ख;->ㆃ:I

    .line 7
    iget v1, p1, Lnts/ख;->ㆃ:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    sub-int/2addr v0, v2

    :goto_0
    if-lez v0, :cond_0

    .line 11
    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    aget v1, v1, v0

    iget-object v2, p1, Lnts/ख;->ᾨ:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    aget p0, p0, v0

    iget-object p1, p1, Lnts/ख;->ᾨ:[I

    aget p1, p1, v0

    invoke-static {p0, p1}, Lnts/ख;->ㆃ(II)Z

    move-result p0

    return p0

    :cond_1
    if-le v0, v1, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static ᙕ(Lnts/ख;)V
    .locals 4

    .line 1
    sget-object v0, Lnts/ख;->ౠ:Lnts/ख;

    iget-object v0, v0, Lnts/ख;->ᾨ:[I

    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    const/4 v2, 0x0

    const/16 v3, 0x300

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnts/ख;->ㆃ:I

    return-void
.end method

.method public static ᰛ(Lnts/ख;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/16 v1, 0x300

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 5
    iget-object v3, p0, Lnts/ख;->ᾨ:[I

    aget v4, v3, v0

    shl-int/lit8 v1, v4, 0x1

    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    ushr-int/lit8 v4, v4, 0x1f

    or-int/2addr v1, v4

    aput v1, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    aget v3, v0, v2

    shl-int/2addr v3, v1

    aput v3, v0, v2

    .line 8
    iget v2, p0, Lnts/ख;->ㆃ:I

    aget v0, v0, v2

    if-eqz v0, :cond_1

    add-int/2addr v2, v1

    .line 9
    iput v2, p0, Lnts/ख;->ㆃ:I

    :cond_1
    return-void

    .line 10
    :cond_2
    new-instance p0, Lnts/ẩ;

    sget-object v0, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᰛ(Lnts/ख;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_6

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v0, :cond_1

    .line 16
    iput v3, p0, Lnts/ख;->ㆃ:I

    .line 17
    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    aput v2, p0, v2

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 23
    :goto_0
    iget p1, p0, Lnts/ख;->ㆃ:I

    sub-int/2addr p1, v1

    if-ge v2, p1, :cond_2

    .line 24
    iget-object p1, p0, Lnts/ख;->ᾨ:[I

    add-int v0, v2, v1

    aget v0, p1, v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_2
    iput p1, p0, Lnts/ख;->ㆃ:I

    return-void

    .line 27
    :cond_3
    :goto_1
    iget v0, p0, Lnts/ख;->ㆃ:I

    sub-int v4, v0, v1

    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_4

    .line 28
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    add-int v4, v2, v1

    add-int/lit8 v5, v4, 0x1

    aget v5, v0, v5

    rsub-int/lit8 v6, p1, 0x20

    shl-int/2addr v5, v6

    aget v4, v0, v4

    ushr-int/2addr v4, p1

    or-int/2addr v4, v5

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_4
    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    sub-int/2addr v0, v3

    aget v0, v1, v0

    ushr-int p1, v0, p1

    aput p1, v1, v5

    if-nez p1, :cond_5

    .line 32
    iput v5, p0, Lnts/ख;->ㆃ:I

    return-void

    .line 34
    :cond_5
    iput v4, p0, Lnts/ख;->ㆃ:I

    return-void

    .line 35
    :cond_6
    new-instance p0, Lnts/ẩ;

    sget-object p1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 36
    iget v3, v0, Lnts/ख;->ㆃ:I

    const/16 v4, 0x300

    if-gt v3, v4, :cond_6

    iget v3, v1, Lnts/ख;->ㆃ:I

    if-gt v3, v4, :cond_6

    .line 37
    invoke-static {v0}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 50
    :cond_0
    iget v3, v0, Lnts/ख;->ㆃ:I

    .line 51
    iget v4, v1, Lnts/ख;->ㆃ:I

    .line 52
    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    .line 53
    iget-object v6, v1, Lnts/ख;->ᾨ:[I

    .line 54
    iget-object v7, v2, Lnts/ख;->ᾨ:[I

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    const-wide/16 v13, 0x0

    :goto_0
    const-wide v16, 0xffffffffL

    if-ge v11, v4, :cond_1

    .line 59
    aget v8, v6, v11

    int-to-long v8, v8

    and-long v8, v8, v16

    const/16 v18, 0x20

    aget v15, v5, v10

    move/from16 v19, v11

    int-to-long v10, v15

    and-long v10, v10, v16

    mul-long/2addr v8, v10

    add-long/2addr v8, v13

    add-int/lit8 v10, v12, 0x1

    long-to-int v11, v8

    .line 60
    aput v11, v7, v12

    ushr-long v13, v8, v18

    add-int/lit8 v11, v19, 0x1

    move v12, v10

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/16 v18, 0x20

    long-to-int v8, v13

    .line 63
    aput v8, v7, v12

    const/4 v9, 0x1

    :goto_1
    if-ge v9, v3, :cond_3

    move v13, v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :goto_2
    if-ge v10, v4, :cond_2

    .line 69
    aget v14, v6, v10

    int-to-long v14, v14

    and-long v14, v14, v16

    aget v8, v5, v9

    move/from16 v20, v3

    move/from16 v21, v4

    int-to-long v3, v8

    and-long v3, v3, v16

    mul-long/2addr v14, v3

    aget v3, v7, v13

    int-to-long v3, v3

    and-long v3, v3, v16

    add-long/2addr v14, v3

    add-long/2addr v14, v11

    add-int/lit8 v3, v13, 0x1

    long-to-int v4, v14

    .line 70
    aput v4, v7, v13

    ushr-long v11, v14, v18

    add-int/lit8 v10, v10, 0x1

    move v13, v3

    move/from16 v3, v20

    move/from16 v4, v21

    goto :goto_2

    :cond_2
    move/from16 v20, v3

    move/from16 v21, v4

    add-int v4, v21, v9

    long-to-int v3, v11

    .line 73
    aput v3, v7, v4

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v20

    move/from16 v4, v21

    goto :goto_1

    :cond_3
    move/from16 v20, v3

    move/from16 v21, v4

    add-int v3, v20, v21

    .line 76
    iput v3, v2, Lnts/ख;->ㆃ:I

    .line 77
    iget-boolean v0, v0, Lnts/ख;->ᇭ:Z

    iget-boolean v1, v1, Lnts/ख;->ᇭ:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, v2, Lnts/ख;->ᇭ:Z

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, v2, Lnts/ख;->ᇭ:Z

    .line 82
    :goto_3
    invoke-static {v2}, Lnts/ख;->ౠ(Lnts/ख;)V

    return-void

    .line 83
    :cond_5
    :goto_4
    invoke-static {v2}, Lnts/ख;->ᙕ(Lnts/ख;)V

    return-void

    .line 84
    :cond_6
    new-instance v0, Lnts/ẩ;

    sget-object v1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ᾨ(Lnts/ख;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0x300

    if-ge p1, v0, :cond_1

    .line 1
    invoke-static {}, Lnts/ቩ;->ㆃ()Lnts/Ⴧ;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_0

    .line 3
    invoke-static {v0, v2, v3, v1}, Lnts/ቩ;->ㆃ(Lnts/Ⴧ;[BII)V

    .line 4
    iget-object v5, p0, Lnts/ख;->ᾨ:[I

    .line 5
    invoke-static {v2, v3, v1}, Lnts/ၽ;->ㆃ([BII)J

    move-result-wide v6

    long-to-int v6, v6

    .line 6
    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput p1, p0, Lnts/ख;->ㆃ:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lnts/ख;->ᇭ:Z

    .line 11
    sget-object v0, Lnts/ख;->ౠ:Lnts/ख;

    iget-object v0, v0, Lnts/ख;->ᾨ:[I

    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    rsub-int v1, p1, 0x300

    invoke-static {v0, v3, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 12
    :cond_1
    new-instance p0, Lnts/ẩ;

    sget-object p1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᾨ(Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, v2, Lnts/ख;->ᇭ:Z

    .line 14
    iget-object v4, v0, Lnts/ख;->ᾨ:[I

    .line 15
    iget-object v5, v1, Lnts/ख;->ᾨ:[I

    .line 16
    iget-object v6, v2, Lnts/ख;->ᾨ:[I

    .line 17
    iget v7, v0, Lnts/ख;->ㆃ:I

    .line 18
    iget v8, v1, Lnts/ख;->ㆃ:I

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    const/16 v15, 0x20

    if-ge v12, v8, :cond_0

    move/from16 v16, v3

    .line 28
    aget v3, v4, v12

    const-wide/16 v17, 0x0

    int-to-long v9, v3

    const-wide v19, 0xffffffffL

    and-long v9, v9, v19

    aget v3, v5, v12

    move/from16 v21, v12

    int-to-long v11, v3

    and-long v11, v11, v19

    add-long/2addr v9, v11

    ushr-long v11, v13, v15

    add-long v13, v9, v11

    long-to-int v3, v13

    .line 29
    aput v3, v6, v21

    add-int/lit8 v12, v21, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_0
    move/from16 v16, v3

    move/from16 v21, v12

    const-wide/16 v17, 0x0

    ushr-long v8, v13, v15

    cmp-long v3, v8, v17

    if-eqz v3, :cond_1

    move/from16 v3, v16

    move/from16 v12, v21

    goto :goto_1

    :cond_1
    move/from16 v12, v21

    const/4 v3, 0x0

    :goto_1
    if-ge v12, v7, :cond_3

    if-eqz v3, :cond_3

    .line 35
    aget v3, v4, v12

    add-int/lit8 v3, v3, 0x1

    aput v3, v6, v12

    if-nez v3, :cond_2

    move/from16 v3, v16

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v12, v7, :cond_4

    .line 41
    aget v5, v4, v12

    aput v5, v6, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 46
    iget-object v3, v2, Lnts/ख;->ᾨ:[I

    aput v16, v3, v7

    add-int/lit8 v7, v7, 0x1

    .line 47
    iput v7, v2, Lnts/ख;->ㆃ:I

    goto :goto_4

    .line 49
    :cond_5
    iput v7, v2, Lnts/ख;->ㆃ:I

    .line 51
    :goto_4
    iget-boolean v0, v0, Lnts/ख;->ᇭ:Z

    if-nez v0, :cond_6

    iget-boolean v0, v1, Lnts/ख;->ᇭ:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, v2, Lnts/ख;->ᇭ:Z

    :cond_6
    return-void
.end method

.method public static ᾨ(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p0, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-gez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    xor-int/2addr p0, v2

    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    xor-int/2addr p0, v0

    return p0
.end method

.method public static ᾨ(Lnts/ख;)Z
    .locals 2

    .line 56
    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static ᾨ(Lnts/ख;Lnts/ख;)Z
    .locals 4

    .line 52
    iget v0, p0, Lnts/ख;->ㆃ:I

    iget v1, p1, Lnts/ख;->ㆃ:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 53
    :cond_0
    iget-boolean v0, p0, Lnts/ख;->ᇭ:Z

    iget-boolean v1, p1, Lnts/ख;->ᇭ:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-static {p0}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 54
    :goto_0
    iget v1, p0, Lnts/ख;->ㆃ:I

    if-ge v0, v1, :cond_4

    .line 55
    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    aget v1, v1, v0

    iget-object v3, p1, Lnts/ख;->ᾨ:[I

    aget v3, v3, v0

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static ㆃ(Lnts/ख;)I
    .locals 3

    .line 61
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-le v0, v1, :cond_0

    .line 63
    iget-object v2, p0, Lnts/ख;->ᾨ:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    aget p0, p0, v0

    shl-int/lit8 v0, v0, 0x5

    :goto_1
    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v1}, Lnts/ख;->ㆃ(II)Z

    move-result v1

    if-eqz v1, :cond_1

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static ㆃ(Lnts/ख;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 28
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_2

    ushr-int/lit8 v2, p1, 0x5

    if-ge v2, v1, :cond_2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 31
    iget-object p2, p0, Lnts/ख;->ᾨ:[I

    aget v3, p2, v2

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v1, p1

    or-int/2addr p1, v3

    aput p1, p2, v2

    goto :goto_0

    .line 33
    :cond_0
    iget-object p2, p0, Lnts/ख;->ᾨ:[I

    aget v3, p2, v2

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v3

    aput p1, p2, v2

    :goto_0
    if-lt v2, v0, :cond_1

    add-int/2addr v2, v1

    .line 35
    iput v2, p0, Lnts/ख;->ㆃ:I

    :cond_1
    return-void

    .line 36
    :cond_2
    new-instance p0, Lnts/ẩ;

    sget-object p1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;)V
    .locals 4

    .line 58
    iget-object v0, p1, Lnts/ख;->ᾨ:[I

    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    const/4 v2, 0x0

    const/16 v3, 0x300

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget v0, p1, Lnts/ख;->ㆃ:I

    iput v0, p0, Lnts/ख;->ㆃ:I

    .line 60
    iget-boolean p1, p1, Lnts/ख;->ᇭ:Z

    iput-boolean p1, p0, Lnts/ख;->ᇭ:Z

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 37
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_4

    iget v2, p1, Lnts/ख;->ㆃ:I

    if-gt v2, v1, :cond_4

    .line 39
    iget-boolean v1, p0, Lnts/ख;->ᇭ:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-boolean v5, p1, Lnts/ख;->ᇭ:Z

    if-nez v5, :cond_0

    .line 40
    iput-boolean v4, p1, Lnts/ख;->ᇭ:Z

    .line 41
    invoke-static {p0, p1, p2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    if-eq p1, p2, :cond_1

    .line 42
    iput-boolean v3, p1, Lnts/ख;->ᇭ:Z

    return-void

    :cond_0
    if-nez v1, :cond_2

    .line 43
    iget-boolean v1, p1, Lnts/ख;->ᇭ:Z

    if-eqz v1, :cond_2

    .line 44
    iput-boolean v4, p0, Lnts/ख;->ᇭ:Z

    .line 45
    invoke-static {p1, p0, p2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    if-eq p0, p2, :cond_1

    .line 46
    iput-boolean v3, p0, Lnts/ख;->ᇭ:Z

    :cond_1
    return-void

    :cond_2
    if-ge v0, v2, :cond_3

    .line 50
    invoke-static {p1, p0, p2}, Lnts/ख;->ᾨ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    return-void

    .line 52
    :cond_3
    invoke-static {p0, p1, p2}, Lnts/ख;->ᾨ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    return-void

    .line 53
    :cond_4
    new-instance p0, Lnts/ẩ;

    sget-object p1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;IILnts/ख;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 185
    iget v5, v0, Lnts/ख;->ㆃ:I

    const/16 v6, 0x300

    if-gt v5, v6, :cond_5

    iget v5, v1, Lnts/ख;->ㆃ:I

    if-gt v5, v6, :cond_5

    iget v5, v2, Lnts/ख;->ㆃ:I

    if-gt v5, v6, :cond_5

    if-ge v3, v6, :cond_5

    .line 186
    invoke-static {v2}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    add-int/lit8 v7, v3, 0x1

    if-ge v6, v7, :cond_0

    .line 196
    iget-object v7, v4, Lnts/ख;->ᾨ:[I

    aput v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v6, v1, Lnts/ख;->ᾨ:[I

    aget v6, v6, v5

    move v8, v5

    :goto_1
    if-ge v8, v3, :cond_2

    .line 200
    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    aget v9, v9, v8

    .line 201
    iget-object v10, v4, Lnts/ख;->ᾨ:[I

    aget v10, v10, v5

    mul-int v11, v9, v6

    add-int/2addr v11, v10

    mul-int v11, v11, p3

    int-to-long v12, v9

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    .line 205
    iget-object v9, v1, Lnts/ख;->ᾨ:[I

    aget v9, v9, v5

    move-wide/from16 v16, v14

    int-to-long v14, v9

    and-long v14, v14, v16

    mul-long/2addr v14, v12

    move v9, v5

    move/from16 v18, v6

    int-to-long v5, v11

    and-long v5, v5, v16

    .line 206
    iget-object v11, v2, Lnts/ख;->ᾨ:[I

    aget v11, v11, v9

    move/from16 v19, v10

    int-to-long v9, v11

    and-long v9, v9, v16

    mul-long/2addr v9, v5

    and-long v21, v14, v16

    and-long v23, v9, v16

    add-long v21, v21, v23

    move-wide/from16 v23, v5

    move/from16 v11, v19

    int-to-long v5, v11

    and-long v5, v5, v16

    add-long v21, v21, v5

    move v6, v8

    move-wide/from16 v19, v9

    const/4 v5, 0x0

    int-to-long v8, v5

    and-long v8, v8, v16

    add-long v21, v21, v8

    const/16 v10, 0x20

    ushr-long v21, v21, v10

    ushr-long/2addr v14, v10

    add-long v21, v21, v14

    ushr-long v14, v19, v10

    add-long v21, v21, v14

    add-long v8, v21, v8

    long-to-int v11, v8

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    const/4 v9, 0x1

    :goto_2
    if-ge v9, v3, :cond_1

    .line 214
    iget-object v14, v1, Lnts/ख;->ᾨ:[I

    aget v14, v14, v9

    int-to-long v14, v14

    and-long v14, v14, v16

    mul-long/2addr v14, v12

    .line 215
    iget-object v5, v2, Lnts/ख;->ᾨ:[I

    aget v5, v5, v9

    move/from16 v19, v10

    move/from16 v21, v11

    int-to-long v10, v5

    and-long v10, v10, v16

    mul-long v10, v10, v23

    and-long v25, v14, v16

    and-long v27, v10, v16

    add-long v25, v25, v27

    .line 217
    iget-object v5, v4, Lnts/ख;->ᾨ:[I

    aget v0, v5, v9

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long v25, v25, v0

    move/from16 v0, v21

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long v0, v25, v0

    add-int/lit8 v21, v9, -0x1

    move-object/from16 v22, v5

    long-to-int v5, v0

    .line 218
    aput v5, v22, v21

    ushr-long v0, v0, v19

    ushr-long v14, v14, v19

    add-long/2addr v0, v14

    ushr-long v10, v10, v19

    add-long/2addr v0, v10

    int-to-long v10, v8

    and-long v10, v10, v16

    add-long/2addr v0, v10

    long-to-int v11, v0

    ushr-long v0, v0, v19

    long-to-int v8, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, v19

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    move/from16 v19, v10

    move v0, v11

    .line 224
    iget-object v1, v4, Lnts/ख;->ᾨ:[I

    aget v5, v1, v3

    int-to-long v9, v5

    and-long v9, v9, v16

    int-to-long v11, v0

    and-long v11, v11, v16

    add-long/2addr v9, v11

    add-int/lit8 v0, v3, -0x1

    long-to-int v5, v9

    .line 225
    aput v5, v1, v0

    ushr-long v9, v9, v19

    int-to-long v11, v8

    and-long v11, v11, v16

    add-long/2addr v9, v11

    long-to-int v0, v9

    .line 227
    aput v0, v1, v3

    add-int/lit8 v8, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, v18

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 230
    :cond_2
    iput v7, v4, Lnts/ख;->ㆃ:I

    .line 231
    invoke-static {v4}, Lnts/ख;->ౠ(Lnts/ख;)V

    .line 233
    invoke-static {v4, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-static {v4, v2, v4}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 236
    :cond_3
    iput v3, v4, Lnts/ख;->ㆃ:I

    return-void

    .line 237
    :cond_4
    new-instance v0, Lnts/ẩ;

    sget-object v1, Lnts/ख;->Ͼ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_5
    new-instance v0, Lnts/ẩ;

    sget-object v1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 69
    iget v2, v1, Lnts/ख;->ㆃ:I

    const/16 v3, 0x300

    if-gt v2, v3, :cond_c

    iget v2, v0, Lnts/ख;->ㆃ:I

    if-gt v2, v3, :cond_c

    .line 70
    invoke-static {v1}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v0}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 72
    new-instance v2, Lnts/ख;

    invoke-direct {v2}, Lnts/ख;-><init>()V

    .line 73
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 74
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 75
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    .line 76
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 77
    new-instance v7, Lnts/ख;

    invoke-direct {v7}, Lnts/ख;-><init>()V

    .line 84
    new-instance v8, Lnts/ख;

    invoke-direct {v8}, Lnts/ख;-><init>()V

    filled-new-array {v8}, [Lnts/ख;

    move-result-object v8

    .line 85
    new-instance v9, Lnts/ख;

    invoke-direct {v9}, Lnts/ख;-><init>()V

    filled-new-array {v9}, [Lnts/ख;

    move-result-object v9

    .line 86
    new-instance v10, Lnts/ख;

    invoke-direct {v10}, Lnts/ख;-><init>()V

    filled-new-array {v10}, [Lnts/ख;

    move-result-object v10

    .line 87
    new-instance v11, Lnts/ख;

    invoke-direct {v11}, Lnts/ख;-><init>()V

    filled-new-array {v11}, [Lnts/ख;

    move-result-object v11

    .line 88
    filled-new-array {v7}, [Lnts/ख;

    move-result-object v12

    .line 90
    invoke-static {v2, v1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 91
    invoke-static {v3, v0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 93
    filled-new-array {v6}, [Lnts/ख;

    move-result-object v0

    const/4 v13, 0x0

    .line 94
    aget-object v14, v0, v13

    const/4 v15, 0x1

    iput v15, v14, Lnts/ख;->ㆃ:I

    .line 95
    iget-object v14, v14, Lnts/ख;->ᾨ:[I

    aput v15, v14, v13

    .line 97
    :goto_0
    invoke-static {v2}, Lnts/ख;->ᾨ(Lnts/ख;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {v3}, Lnts/ख;->ᾨ(Lnts/ख;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 98
    invoke-static {v2}, Lnts/ख;->Ͼ(Lnts/ख;)V

    .line 99
    invoke-static {v3}, Lnts/ख;->Ͼ(Lnts/ख;)V

    .line 100
    aget-object v14, v0, v13

    invoke-static {v14}, Lnts/ख;->ᰛ(Lnts/ख;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {v4, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 104
    invoke-static {v5, v3}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 105
    aget-object v14, v10, v13

    invoke-static {v14}, Lnts/ख;->ᙕ(Lnts/ख;)V

    .line 106
    aget-object v14, v11, v13

    invoke-static {v14}, Lnts/ख;->ᙕ(Lnts/ख;)V

    .line 107
    aget-object v14, v12, v13

    iput v15, v14, Lnts/ख;->ㆃ:I

    .line 108
    iget-object v14, v14, Lnts/ख;->ᾨ:[I

    aput v15, v14, v13

    .line 112
    :goto_1
    invoke-static {v4}, Lnts/ख;->ᾨ(Lnts/ख;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 113
    invoke-static {v4}, Lnts/ख;->Ͼ(Lnts/ख;)V

    .line 114
    aget-object v14, v9, v13

    invoke-static {v14}, Lnts/ख;->ᾨ(Lnts/ख;)Z

    move-result v14

    if-eqz v14, :cond_1

    aget-object v14, v10, v13

    invoke-static {v14}, Lnts/ख;->ᾨ(Lnts/ख;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 115
    aget-object v14, v9, v13

    invoke-static {v14}, Lnts/ख;->Ͼ(Lnts/ख;)V

    .line 116
    aget-object v14, v10, v13

    invoke-static {v14}, Lnts/ख;->Ͼ(Lnts/ख;)V

    goto :goto_1

    .line 118
    :cond_1
    aget-object v14, v9, v13

    aget-object v15, v8, v13

    invoke-static {v14, v3, v15}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 119
    invoke-static {v9, v8}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    .line 120
    aget-object v14, v9, v13

    invoke-static {v14}, Lnts/ख;->Ͼ(Lnts/ख;)V

    .line 121
    aget-object v14, v10, v13

    aget-object v15, v8, v13

    invoke-static {v14, v2, v15}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 122
    invoke-static {v10, v8}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    .line 123
    aget-object v14, v10, v13

    invoke-static {v14}, Lnts/ख;->Ͼ(Lnts/ख;)V

    goto :goto_1

    .line 127
    :cond_2
    :goto_2
    invoke-static {v5}, Lnts/ख;->ᾨ(Lnts/ख;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 128
    invoke-static {v5}, Lnts/ख;->Ͼ(Lnts/ख;)V

    .line 129
    aget-object v14, v11, v13

    invoke-static {v14}, Lnts/ख;->ᾨ(Lnts/ख;)Z

    move-result v14

    if-eqz v14, :cond_3

    aget-object v14, v12, v13

    invoke-static {v14}, Lnts/ख;->ᾨ(Lnts/ख;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 130
    aget-object v14, v11, v13

    invoke-static {v14}, Lnts/ख;->Ͼ(Lnts/ख;)V

    .line 131
    aget-object v14, v12, v13

    invoke-static {v14}, Lnts/ख;->Ͼ(Lnts/ख;)V

    goto :goto_2

    .line 133
    :cond_3
    aget-object v14, v11, v13

    aget-object v15, v8, v13

    invoke-static {v14, v3, v15}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 134
    invoke-static {v11, v8}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    .line 135
    aget-object v14, v11, v13

    invoke-static {v14}, Lnts/ख;->Ͼ(Lnts/ख;)V

    .line 136
    aget-object v14, v12, v13

    aget-object v15, v8, v13

    invoke-static {v14, v2, v15}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 137
    invoke-static {v12, v8}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    .line 138
    aget-object v14, v12, v13

    invoke-static {v14}, Lnts/ख;->Ͼ(Lnts/ख;)V

    goto :goto_2

    .line 142
    :cond_4
    invoke-static {v4, v5}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {v4, v5}, Lnts/ख;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_3

    .line 149
    :cond_5
    invoke-static {v5, v4, v5}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 150
    aget-object v14, v11, v13

    aget-object v15, v9, v13

    move/from16 p0, v13

    aget-object v13, v8, p0

    invoke-static {v14, v15, v13}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 151
    invoke-static {v11, v8}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    .line 152
    aget-object v13, v12, p0

    aget-object v14, v10, p0

    aget-object v15, v8, p0

    invoke-static {v13, v14, v15}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 153
    invoke-static {v12, v8}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    goto :goto_4

    :cond_6
    :goto_3
    move/from16 p0, v13

    .line 154
    invoke-static {v4, v5, v4}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 155
    aget-object v13, v9, p0

    aget-object v14, v11, p0

    aget-object v15, v8, p0

    invoke-static {v13, v14, v15}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 156
    invoke-static {v9, v8}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    .line 157
    aget-object v13, v10, p0

    aget-object v14, v12, p0

    aget-object v15, v8, p0

    invoke-static {v13, v14, v15}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 158
    invoke-static {v10, v8}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    .line 166
    :goto_4
    invoke-static {v4}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 168
    aget-object v2, v0, p0

    aget-object v3, v8, p0

    invoke-static {v2, v5, v3}, Lnts/ख;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 169
    invoke-static {v0, v8}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    .line 170
    aget-object v0, v0, p0

    if-eq v0, v6, :cond_7

    move-object v6, v0

    .line 173
    :cond_7
    :goto_5
    aget-object v0, v12, p0

    iget-boolean v2, v0, Lnts/ख;->ᇭ:Z

    if-nez v2, :cond_8

    .line 174
    aget-object v2, v8, p0

    invoke-static {v0, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 175
    invoke-static {v8, v12}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    goto :goto_5

    :cond_8
    if-eq v7, v0, :cond_9

    move-object v7, v0

    :cond_9
    move-object/from16 v13, p2

    .line 181
    invoke-static {v13, v6}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move-object/from16 v14, p3

    .line 182
    invoke-static {v14, v7}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    return-void

    :cond_a
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v13, p0

    goto/16 :goto_1

    .line 183
    :cond_b
    new-instance v0, Lnts/ẩ;

    sget-object v1, Lnts/ख;->Ͼ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_c
    new-instance v0, Lnts/ẩ;

    sget-object v1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ㆃ([BIILnts/ख;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    ushr-int/lit8 v0, p2, 0x2

    const/16 v1, 0x300

    if-gt v0, v1, :cond_3

    shr-int/lit8 v0, p2, 0x2

    .line 2
    iput v0, p3, Lnts/ख;->ㆃ:I

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget v2, p3, Lnts/ख;->ㆃ:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 7
    iget-object v2, p3, Lnts/ख;->ᾨ:[I

    add-int v4, p1, p2

    add-int/lit8 v5, v4, -0x4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v4, -0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, -0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    sub-int/2addr v4, v3

    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    aput v3, v2, v1

    add-int/lit8 p2, p2, -0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 15
    iput v1, p3, Lnts/ख;->ㆃ:I

    .line 16
    iget-object v1, p3, Lnts/ख;->ᾨ:[I

    aput v0, v1, v2

    :goto_1
    if-lez p2, :cond_1

    .line 19
    iget-object v1, p3, Lnts/ख;->ᾨ:[I

    iget v2, p3, Lnts/ख;->ㆃ:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int v5, p1, p2

    sub-int/2addr v5, v3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v0

    or-int/2addr v5, v4

    or-int/2addr v4, v5

    aput v4, v1, v2

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 25
    :cond_1
    :goto_2
    iget-object p0, p3, Lnts/ख;->ᾨ:[I

    iget p1, p3, Lnts/ख;->ㆃ:I

    add-int/lit8 p2, p1, -0x1

    aget p0, p0, p2

    if-nez p0, :cond_2

    if-le p1, v3, :cond_2

    .line 26
    iput p2, p3, Lnts/ख;->ㆃ:I

    goto :goto_2

    :cond_2
    return-void

    .line 27
    :cond_3
    new-instance p0, Lnts/ẩ;

    sget-object p1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ㆃ([BLnts/ख;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lnts/ख;->ㆃ([BIILnts/ख;)V

    return-void
.end method

.method public static ㆃ([Lnts/ख;[Lnts/ख;)V
    .locals 3

    const/4 v0, 0x0

    .line 54
    aget-object v1, p0, v0

    .line 55
    aget-object v2, p1, v0

    aput-object v2, p0, v0

    .line 56
    aput-object v1, p1, v0

    return-void
.end method

.method public static ㆃ(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p0, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-gez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    xor-int/2addr p0, v2

    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    xor-int/2addr p0, v0

    return p0
.end method

.method public static ㆃ(Lnts/ख;I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 57
    :cond_0
    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    ushr-int/lit8 v1, p1, 0x5

    aget p0, p0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method
