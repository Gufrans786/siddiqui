.class public Lnts/ᔗ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Ͼ:[Lnts/ኒ;

.field public static ౠ:[I

.field public static ᇭ:I

.field public static ዲ:Lnts/ኒ;

.field public static ᎊ:Lnts/ԣ;

.field public static ᙕ:Lnts/ช;

.field public static ᛃ:Ljava/lang/Object;

.field public static final ᡲ:[I

.field public static ᰛ:[Lnts/Ⅻ;

.field public static ᵑ:Ljava/lang/Object;

.field public static ᾨ:I

.field public static Ὺ:Ljava/lang/Boolean;

.field public static Ⲳ:Ljava/lang/Object;

.field public static て:Lnts/ᇩ;

.field public static ㆃ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnts/ᇩ;

    invoke-direct {v0}, Lnts/ᇩ;-><init>()V

    sput-object v0, Lnts/ᔗ;->て:Lnts/ᇩ;

    .line 2
    new-instance v0, Lnts/ኒ;

    invoke-direct {v0}, Lnts/ኒ;-><init>()V

    sput-object v0, Lnts/ᔗ;->ዲ:Lnts/ኒ;

    .line 3
    new-instance v0, Lnts/ԣ;

    invoke-direct {v0}, Lnts/ԣ;-><init>()V

    sput-object v0, Lnts/ᔗ;->ᎊ:Lnts/ԣ;

    const/4 v0, 0x7

    .line 5
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnts/ᔗ;->ᡲ:[I

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lnts/ᔗ;->Ὺ:Ljava/lang/Boolean;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnts/ᔗ;->Ⲳ:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnts/ᔗ;->ᛃ:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnts/ᔗ;->ᵑ:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x54a7bb0d
        -0x2378c293
        0x723a70aa
        -0x216cc273
        0x5129c96f
        0x3bb124b6
        -0x7cca23ea
    .end array-data
.end method

.method public static Ͼ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-object v0, Lnts/ᔗ;->ᰛ:[Lnts/Ⅻ;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lnts/ᔗ;->ᛃ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lnts/ᔗ;->ᰛ:[Lnts/Ⅻ;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v1, 0x8

    .line 4
    sput v1, Lnts/ᔗ;->ㆃ:I

    const/4 v2, 0x4

    .line 5
    sput v2, Lnts/ᔗ;->ᾨ:I

    const/16 v3, 0xe

    .line 6
    sput v3, Lnts/ᔗ;->ᇭ:I

    .line 7
    invoke-static {v1, v2, v3}, Lnts/ᔗ;->ㆃ(III)[Lnts/Ⅻ;

    move-result-object v1

    sput-object v1, Lnts/ᔗ;->ᰛ:[Lnts/Ⅻ;

    .line 9
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ᇭ()[Lnts/ኒ;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-object v0, Lnts/ᔗ;->Ͼ:[Lnts/ኒ;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lnts/ኒ;

    invoke-direct {v0}, Lnts/ኒ;-><init>()V

    .line 6
    sget-object v1, Lnts/ᔗ;->ዲ:Lnts/ኒ;

    invoke-static {v0, v1}, Lnts/ᠼ;->ㆃ(Lnts/ኒ;Lnts/ኒ;)V

    const/16 v1, 0x1c0

    .line 7
    new-array v2, v1, [Lnts/ኒ;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 9
    new-instance v5, Lnts/ኒ;

    invoke-direct {v5}, Lnts/ኒ;-><init>()V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    aget-object v1, v2, v3

    invoke-static {v1, v0}, Lnts/ᠼ;->ㆃ(Lnts/ኒ;Lnts/ኒ;)V

    const/4 v1, 0x1

    :goto_1
    const/16 v3, 0x1bf

    if-gt v1, v3, :cond_2

    const/16 v3, 0x10

    .line 13
    new-array v4, v3, [I

    .line 14
    new-array v5, v3, [I

    .line 15
    new-array v3, v3, [I

    .line 22
    iget-object v6, v0, Lnts/ኒ;->ㆃ:[I

    .line 23
    invoke-static {v3, v6, v6}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 24
    iget-object v6, v0, Lnts/ኒ;->ᾨ:[I

    .line 25
    invoke-static {v4, v6, v6}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 26
    invoke-static {v5, v3, v4}, Lnts/ᠼ;->ㆃ([I[I[I)V

    .line 27
    iget-object v6, v0, Lnts/ኒ;->ᰛ:[I

    iget-object v7, v0, Lnts/ኒ;->ᾨ:[I

    iget-object v8, v0, Lnts/ኒ;->ㆃ:[I

    invoke-static {v6, v7, v8}, Lnts/ᠼ;->ㆃ([I[I[I)V

    .line 28
    iget-object v6, v0, Lnts/ኒ;->Ͼ:[I

    iget-object v7, v0, Lnts/ኒ;->ᰛ:[I

    .line 29
    invoke-static {v6, v7, v7}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 30
    iget-object v6, v0, Lnts/ኒ;->ᰛ:[I

    iget-object v7, v0, Lnts/ኒ;->Ͼ:[I

    invoke-static {v6, v7, v5}, Lnts/ᠼ;->ᇭ([I[I[I)V

    .line 33
    iget-object v6, v0, Lnts/ኒ;->Ͼ:[I

    invoke-static {v6, v4, v3}, Lnts/ᠼ;->ᇭ([I[I[I)V

    .line 36
    iget-object v3, v0, Lnts/ኒ;->ㆃ:[I

    iget-object v6, v0, Lnts/ኒ;->ᇭ:[I

    .line 37
    invoke-static {v3, v6, v6}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 38
    iget-object v3, v0, Lnts/ኒ;->ᇭ:[I

    iget-object v6, v0, Lnts/ኒ;->ㆃ:[I

    invoke-static {v3, v6, v6}, Lnts/ᠼ;->ㆃ([I[I[I)V

    .line 39
    iget-object v3, v0, Lnts/ኒ;->ᇭ:[I

    invoke-static {v4, v3, v5}, Lnts/ᠼ;->ᇭ([I[I[I)V

    .line 41
    iget-object v3, v0, Lnts/ኒ;->ᇭ:[I

    invoke-static {v3, v5, v4}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 42
    iget-object v3, v0, Lnts/ኒ;->ㆃ:[I

    iget-object v6, v0, Lnts/ኒ;->ᰛ:[I

    invoke-static {v3, v4, v6}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 43
    iget-object v3, v0, Lnts/ኒ;->ᾨ:[I

    iget-object v4, v0, Lnts/ኒ;->Ͼ:[I

    invoke-static {v3, v5, v4}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 44
    aget-object v3, v2, v1

    invoke-static {v3, v0}, Lnts/ᠼ;->ㆃ(Lnts/ኒ;Lnts/ኒ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public static ᰛ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-object v0, Lnts/ᔗ;->Ͼ:[Lnts/ኒ;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lnts/ᔗ;->ᵑ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lnts/ᔗ;->Ͼ:[Lnts/ኒ;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-nez v1, :cond_3

    .line 4
    :cond_2
    invoke-static {}, Lnts/ᔗ;->ᇭ()[Lnts/ኒ;

    move-result-object v1

    sput-object v1, Lnts/ᔗ;->Ͼ:[Lnts/ኒ;

    .line 6
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ᾨ()V
    .locals 5

    .line 1
    sget-object v0, Lnts/ᔗ;->ᙕ:Lnts/ช;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lnts/ᔗ;->ᡲ:[I

    array-length v1, v0

    .line 5
    new-instance v2, Lnts/ช;

    const/16 v3, 0xe

    const/16 v4, 0x1e

    invoke-direct {v2, v3, v4, v1, v0}, Lnts/ช;-><init>(III[I)V

    sput-object v2, Lnts/ᔗ;->ᙕ:Lnts/ช;

    :cond_0
    return-void
.end method

.method public static ㆃ()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    sget-object v0, Lnts/ᔗ;->Ὺ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lnts/ᔗ;->Ⲳ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lnts/ᔗ;->Ὺ:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lnts/ᔗ;->て:Lnts/ᇩ;

    invoke-static {v1}, Lnts/ᠼ;->ㆃ(Lnts/ᇩ;)V

    .line 5
    sget-object v1, Lnts/ᔗ;->ዲ:Lnts/ኒ;

    sget-object v2, Lnts/ᔗ;->て:Lnts/ᇩ;

    .line 6
    iget-object v3, v1, Lnts/ኒ;->ㆃ:[I

    iget-object v4, v2, Lnts/ᇩ;->ㆃ:[I

    invoke-static {v3, v4}, Lnts/ᠼ;->ㆃ([I[I)V

    .line 7
    iget-object v3, v1, Lnts/ኒ;->ᾨ:[I

    iget-object v4, v2, Lnts/ᇩ;->ᾨ:[I

    invoke-static {v3, v4}, Lnts/ᠼ;->ㆃ([I[I)V

    .line 8
    iget-object v3, v1, Lnts/ኒ;->ᇭ:[I

    invoke-static {v3}, Lnts/ᠼ;->ᇭ([I)V

    .line 9
    iget-object v3, v1, Lnts/ኒ;->ᰛ:[I

    iget-object v4, v2, Lnts/ᇩ;->ㆃ:[I

    invoke-static {v3, v4}, Lnts/ᠼ;->ㆃ([I[I)V

    .line 10
    iget-object v1, v1, Lnts/ኒ;->Ͼ:[I

    iget-object v2, v2, Lnts/ᇩ;->ᾨ:[I

    invoke-static {v1, v2}, Lnts/ᠼ;->ㆃ([I[I)V

    .line 11
    sget-object v1, Lnts/ᔗ;->ᎊ:Lnts/ԣ;

    sget-object v2, Lnts/ᔗ;->ዲ:Lnts/ኒ;

    invoke-static {v1, v2}, Lnts/ᠼ;->ㆃ(Lnts/ԣ;Lnts/ኒ;)V

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lnts/ᔗ;->Ὺ:Ljava/lang/Boolean;

    .line 14
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method public static ㆃ(III)[Lnts/Ⅻ;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    if-lt v0, v3, :cond_18

    if-lt v1, v3, :cond_18

    if-lt v2, v3, :cond_18

    mul-int v4, v0, v1

    mul-int/2addr v4, v2

    const/16 v5, 0x1be

    if-ge v4, v5, :cond_0

    goto/16 :goto_11

    .line 15
    :cond_0
    new-instance v5, Lnts/ԣ;

    invoke-direct {v5}, Lnts/ԣ;-><init>()V

    .line 16
    new-instance v6, Lnts/ԣ;

    invoke-direct {v6}, Lnts/ԣ;-><init>()V

    .line 17
    new-instance v7, Lnts/ቍ;

    invoke-direct {v7}, Lnts/ቍ;-><init>()V

    const/16 v8, 0x10

    .line 19
    new-array v9, v8, [I

    .line 21
    sget-object v10, Lnts/ᔗ;->ᙕ:Lnts/ช;

    if-nez v10, :cond_1

    .line 22
    invoke-static {}, Lnts/ᔗ;->ᾨ()V

    .line 24
    :cond_1
    sget-object v10, Lnts/ᔗ;->ᎊ:Lnts/ԣ;

    invoke-static {v5, v10}, Lnts/ᠼ;->ᾨ(Lnts/ԣ;Lnts/ԣ;)V

    sub-int/2addr v1, v3

    .line 25
    new-array v10, v1, [Lnts/ቍ;

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v1, :cond_2

    .line 27
    new-instance v13, Lnts/ቍ;

    invoke-direct {v13}, Lnts/ቍ;-><init>()V

    aput-object v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    shl-int v12, v0, v1

    .line 29
    new-array v13, v12, [[I

    .line 30
    new-array v14, v12, [[I

    .line 31
    new-array v15, v12, [Lnts/Ⅻ;

    move/from16 v16, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v12, :cond_3

    .line 33
    new-instance v17, Lnts/Ⅻ;

    invoke-direct/range {v17 .. v17}, Lnts/Ⅻ;-><init>()V

    aput-object v17, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_4

    .line 36
    new-array v11, v8, [I

    aput-object v11, v13, v3

    .line 37
    new-array v11, v8, [I

    aput-object v11, v14, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/16 v3, 0x1c

    .line 40
    new-array v3, v3, [I

    .line 43
    div-int/lit8 v11, v4, 0x20

    add-int/lit8 v8, v11, 0x1

    const/16 v0, 0xe

    if-lt v8, v0, :cond_17

    move/from16 v17, v0

    .line 45
    new-array v0, v8, [I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_5

    const/16 v18, -0x1

    .line 48
    aput v18, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 50
    :cond_5
    aget v2, v0, v11

    move-object/from16 v18, v3

    int-to-long v2, v2

    const-wide v24, 0xffffffffL

    and-long v2, v2, v24

    rem-int/lit8 v4, v4, 0x20

    shl-int v4, v16, v4

    move-wide/from16 v19, v2

    int-to-long v2, v4

    and-long v2, v2, v24

    add-long v2, v19, v2

    long-to-int v2, v2

    aput v2, v0, v11

    .line 53
    sget-object v2, Lnts/ᔗ;->ᙕ:Lnts/ช;

    const/4 v3, 0x0

    invoke-static {v0, v8, v3, v2}, Lnts/ᠼ;->ㆃ([IIILnts/ช;)V

    .line 54
    aget v2, v0, v3

    and-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0xe

    not-int v2, v2

    and-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0xe

    const/4 v4, 0x0

    :goto_4
    const/16 v8, 0xd

    if-gt v4, v8, :cond_6

    add-int v8, v3, v4

    .line 57
    aget v11, v0, v4

    aput v11, v18, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 60
    :cond_6
    sget-object v3, Lnts/ᔗ;->ᙕ:Lnts/ช;

    iget-object v4, v3, Lnts/ช;->ᰛ:[I

    iget v3, v3, Lnts/ช;->ᇭ:I

    const/16 v20, 0xe

    const/16 v23, -0x1

    move-object/from16 v19, v0

    move/from16 v22, v3

    move-object/from16 v21, v4

    move-object/from16 v17, v18

    move/from16 v18, v2

    invoke-static/range {v17 .. v23}, Lnts/ᠼ;->ᾨ([II[II[III)I

    .line 64
    sget-object v0, Lnts/ᔗ;->ᙕ:Lnts/ช;

    iget v2, v0, Lnts/ช;->ᾨ:I

    if-lez v2, :cond_7

    .line 65
    iget v0, v0, Lnts/ช;->ㆃ:I

    add-int v0, v18, v0

    add-int/lit8 v0, v0, -0x1

    .line 66
    aget v3, v17, v0

    int-to-long v3, v3

    and-long v3, v3, v24

    shl-int v2, v16, v2

    move-wide/from16 v18, v3

    int-to-long v2, v2

    and-long v2, v2, v24

    add-long v3, v18, v2

    long-to-int v2, v3

    aput v2, v17, v0

    .line 69
    :cond_7
    sput-object v17, Lnts/ᔗ;->ౠ:[I

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v2, p0, -0x1

    if-gt v0, v2, :cond_10

    const/4 v3, 0x0

    :goto_6
    if-gt v3, v1, :cond_c

    if-lez v3, :cond_8

    .line 76
    invoke-static {v7, v5}, Lnts/ᠼ;->ㆃ(Lnts/ቍ;Lnts/ԣ;)V

    .line 77
    invoke-static {v6, v7}, Lnts/ᠼ;->ㆃ(Lnts/ԣ;Lnts/ቍ;)V

    goto :goto_7

    .line 79
    :cond_8
    invoke-static {v6, v5}, Lnts/ᠼ;->ᾨ(Lnts/ԣ;Lnts/ԣ;)V

    :goto_7
    if-ne v3, v1, :cond_9

    if-ne v0, v2, :cond_9

    goto :goto_9

    .line 84
    :cond_9
    invoke-static {v5}, Lnts/ᠼ;->ㆃ(Lnts/ԣ;)V

    if-ge v3, v1, :cond_a

    .line 86
    aget-object v4, v10, v3

    invoke-static {v4, v5}, Lnts/ᠼ;->ㆃ(Lnts/ቍ;Lnts/ԣ;)V

    :cond_a
    const/4 v4, 0x0

    :goto_8
    add-int/lit8 v8, p2, -0x2

    if-gt v4, v8, :cond_b

    .line 89
    invoke-static {v5}, Lnts/ᠼ;->ㆃ(Lnts/ԣ;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    :goto_9
    const/4 v2, 0x0

    :goto_a
    ushr-int/lit8 v3, v2, 0x1

    xor-int/2addr v3, v2

    add-int/lit8 v4, v0, 0x1

    shl-int v8, v4, v1

    add-int/lit8 v8, v8, -0x1

    xor-int/2addr v8, v3

    .line 98
    invoke-static {v7, v6}, Lnts/ᠼ;->ㆃ(Lnts/ቍ;Lnts/ԣ;)V

    .line 99
    aget-object v11, v15, v8

    move/from16 v17, v0

    iget-object v0, v7, Lnts/ቍ;->ㆃ:Lnts/Ⅻ;

    invoke-static {v11, v0}, Lnts/ᠼ;->ㆃ(Lnts/Ⅻ;Lnts/Ⅻ;)V

    .line 100
    aget-object v0, v13, v8

    iget-object v8, v7, Lnts/ቍ;->ᾨ:[I

    invoke-static {v0, v8}, Lnts/ᠼ;->ㆃ([I[I)V

    shl-int v0, v16, v1

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_d

    move v0, v4

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v0, v2, 0x1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v3

    move v4, v0

    move/from16 v8, v16

    const/4 v0, 0x0

    :goto_b
    if-le v4, v8, :cond_e

    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_e
    shl-int v4, v8, v0

    and-int/2addr v3, v4

    if-lez v3, :cond_f

    .line 114
    aget-object v0, v10, v0

    invoke-static {v6, v0}, Lnts/ᠼ;->ㆃ(Lnts/ԣ;Lnts/ቍ;)V

    goto :goto_c

    .line 117
    :cond_f
    aget-object v0, v10, v0

    const/16 v3, 0x10

    .line 118
    new-array v4, v3, [I

    .line 119
    iget-object v8, v6, Lnts/ԣ;->ᇭ:[I

    iget-object v11, v0, Lnts/ቍ;->ᾨ:[I

    invoke-static {v4, v8, v11}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 120
    iget-object v8, v6, Lnts/ԣ;->ᇭ:[I

    const/4 v11, 0x0

    .line 121
    invoke-static {v4, v11, v8, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v0, v0, Lnts/ቍ;->ㆃ:Lnts/Ⅻ;

    .line 123
    new-array v4, v3, [I

    .line 124
    new-array v8, v3, [I

    .line 130
    iget-object v3, v6, Lnts/ԣ;->ᾨ:[I

    iget-object v11, v6, Lnts/ԣ;->ㆃ:[I

    invoke-static {v8, v3, v11}, Lnts/ᠼ;->ᇭ([I[I[I)V

    .line 133
    iget-object v3, v0, Lnts/Ⅻ;->ᾨ:[I

    invoke-static {v4, v3, v8}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 134
    iget-object v3, v6, Lnts/ԣ;->ㆃ:[I

    iget-object v11, v6, Lnts/ԣ;->ᾨ:[I

    invoke-static {v8, v3, v11}, Lnts/ᠼ;->ㆃ([I[I[I)V

    .line 135
    iget-object v3, v6, Lnts/ԣ;->ᾨ:[I

    iget-object v11, v0, Lnts/Ⅻ;->ㆃ:[I

    invoke-static {v3, v11, v8}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 136
    iget-object v3, v6, Lnts/ԣ;->Ͼ:[I

    iget-object v11, v6, Lnts/ԣ;->ᰛ:[I

    invoke-static {v8, v3, v11}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 137
    iget-object v3, v6, Lnts/ԣ;->ㆃ:[I

    iget-object v0, v0, Lnts/Ⅻ;->ᇭ:[I

    invoke-static {v3, v0, v8}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 138
    iget-object v0, v6, Lnts/ԣ;->Ͼ:[I

    iget-object v3, v6, Lnts/ԣ;->ᾨ:[I

    invoke-static {v0, v4, v3}, Lnts/ᠼ;->ㆃ([I[I[I)V

    .line 139
    iget-object v0, v6, Lnts/ԣ;->ᰛ:[I

    iget-object v3, v6, Lnts/ԣ;->ᾨ:[I

    invoke-static {v0, v3, v4}, Lnts/ᠼ;->ᇭ([I[I[I)V

    .line 142
    iget-object v0, v6, Lnts/ԣ;->ᾨ:[I

    iget-object v3, v6, Lnts/ԣ;->ㆃ:[I

    iget-object v8, v6, Lnts/ԣ;->ᇭ:[I

    invoke-static {v0, v3, v8}, Lnts/ᠼ;->ㆃ([I[I[I)V

    .line 143
    iget-object v0, v6, Lnts/ԣ;->ᇭ:[I

    iget-object v3, v6, Lnts/ԣ;->ㆃ:[I

    invoke-static {v4, v0, v3}, Lnts/ᠼ;->ᇭ([I[I[I)V

    .line 146
    iget-object v0, v6, Lnts/ԣ;->ᇭ:[I

    iget-object v3, v6, Lnts/ԣ;->ᾨ:[I

    invoke-static {v0, v4, v3}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 147
    iget-object v0, v6, Lnts/ԣ;->ㆃ:[I

    iget-object v3, v6, Lnts/ԣ;->ᾨ:[I

    iget-object v8, v6, Lnts/ԣ;->ᰛ:[I

    invoke-static {v0, v3, v8}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 148
    iget-object v0, v6, Lnts/ԣ;->ᾨ:[I

    iget-object v3, v6, Lnts/ԣ;->Ͼ:[I

    invoke-static {v0, v4, v3}, Lnts/ᠼ;->ᾨ([I[I[I)V

    :goto_c
    move/from16 v0, v17

    const/16 v16, 0x1

    goto/16 :goto_a

    :cond_10
    const/16 v3, 0x10

    .line 149
    new-array v0, v3, [I

    if-nez v12, :cond_11

    goto :goto_f

    :cond_11
    const/4 v8, 0x1

    if-ne v12, v8, :cond_12

    const/4 v3, 0x0

    .line 154
    aget-object v0, v14, v3

    aget-object v1, v13, v3

    invoke-static {v0, v1}, Lnts/ᠼ;->ᾨ([I[I)V

    goto :goto_f

    :cond_12
    const/4 v3, 0x0

    .line 158
    aget-object v1, v14, v8

    aget-object v2, v13, v3

    invoke-static {v1, v2}, Lnts/ᠼ;->ㆃ([I[I)V

    const/4 v1, 0x1

    :goto_d
    add-int/lit8 v2, v12, -0x2

    if-gt v1, v2, :cond_13

    add-int/lit8 v2, v1, 0x1

    .line 160
    aget-object v3, v14, v2

    aget-object v4, v14, v1

    aget-object v1, v13, v1

    invoke-static {v3, v4, v1}, Lnts/ᠼ;->ᾨ([I[I[I)V

    move v1, v2

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    .line 162
    aget-object v1, v14, v3

    add-int/lit8 v2, v12, -0x1

    aget-object v4, v14, v2

    aget-object v5, v13, v2

    invoke-static {v1, v4, v5}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 163
    aget-object v1, v14, v3

    invoke-static {v0, v1}, Lnts/ᠼ;->ᾨ([I[I)V

    .line 164
    aget-object v1, v14, v3

    const/16 v4, 0x10

    .line 165
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e
    const/4 v8, 0x1

    if-lt v2, v8, :cond_14

    .line 166
    aget-object v1, v14, v2

    aget-object v5, v14, v3

    invoke-static {v0, v1, v5}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 167
    aget-object v1, v14, v2

    .line 168
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    aget-object v1, v14, v3

    aget-object v5, v13, v2

    invoke-static {v0, v1, v5}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 170
    aget-object v1, v14, v3

    .line 171
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    goto :goto_e

    :cond_14
    :goto_f
    const/4 v3, 0x0

    const/16 v16, 0x1

    :goto_10
    add-int/lit8 v0, v12, -0x1

    if-gt v3, v0, :cond_15

    .line 172
    aget-object v0, v15, v3

    iget-object v0, v0, Lnts/Ⅻ;->ㆃ:[I

    aget-object v1, v14, v3

    invoke-static {v9, v0, v1}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 173
    invoke-static {v9}, Lnts/ᠼ;->Ͼ([I)V

    .line 174
    aget-object v0, v15, v3

    iget-object v0, v0, Lnts/Ⅻ;->ㆃ:[I

    const/16 v4, 0x10

    const/4 v11, 0x0

    .line 175
    invoke-static {v9, v11, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    aget-object v0, v15, v3

    iget-object v0, v0, Lnts/Ⅻ;->ᾨ:[I

    aget-object v1, v14, v3

    invoke-static {v9, v0, v1}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 177
    invoke-static {v9}, Lnts/ᠼ;->Ͼ([I)V

    .line 178
    aget-object v0, v15, v3

    iget-object v0, v0, Lnts/Ⅻ;->ᾨ:[I

    .line 179
    invoke-static {v9, v11, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    aget-object v0, v15, v3

    iget-object v0, v0, Lnts/Ⅻ;->ᇭ:[I

    aget-object v1, v14, v3

    invoke-static {v9, v0, v1}, Lnts/ᠼ;->ᾨ([I[I[I)V

    .line 181
    invoke-static {v9}, Lnts/ᠼ;->Ͼ([I)V

    .line 182
    aget-object v0, v15, v3

    iget-object v0, v0, Lnts/Ⅻ;->ᇭ:[I

    .line 183
    invoke-static {v9, v11, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_15
    const/4 v11, 0x0

    .line 184
    aget-object v0, v14, v11

    invoke-static {v0}, Lnts/ᠼ;->ᾨ([I)I

    move-result v0

    if-nez v0, :cond_16

    return-object v15

    :cond_16
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x4c

    const/16 v2, 0x12

    invoke-static {v2, v2, v1}, Lnts/ッ;->て(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/16 v2, 0x12

    const/4 v11, 0x0

    .line 185
    new-instance v0, Lnts/ẩ;

    const/16 v1, 0x35

    invoke-static {v11, v2, v1}, Lnts/ッ;->て(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method
