.class public Lnts/Ⴘ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ㆃ:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnts/Ⴘ;->ㆃ:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
        0x100
        0x101
        0x104
        0x105
        0x110
        0x111
        0x114
        0x115
        0x140
        0x141
        0x144
        0x145
        0x150
        0x151
        0x154
        0x155
        0x400
        0x401
        0x404
        0x405
        0x410
        0x411
        0x414
        0x415
        0x440
        0x441
        0x444
        0x445
        0x450
        0x451
        0x454
        0x455
        0x500
        0x501
        0x504
        0x505
        0x510
        0x511
        0x514
        0x515
        0x540
        0x541
        0x544
        0x545
        0x550
        0x551
        0x554
        0x555
        0x1000
        0x1001
        0x1004
        0x1005
        0x1010
        0x1011
        0x1014
        0x1015
        0x1040
        0x1041
        0x1044
        0x1045
        0x1050
        0x1051
        0x1054
        0x1055
        0x1100
        0x1101
        0x1104
        0x1105
        0x1110
        0x1111
        0x1114
        0x1115
        0x1140
        0x1141
        0x1144
        0x1145
        0x1150
        0x1151
        0x1154
        0x1155
        0x1400
        0x1401
        0x1404
        0x1405
        0x1410
        0x1411
        0x1414
        0x1415
        0x1440
        0x1441
        0x1444
        0x1445
        0x1450
        0x1451
        0x1454
        0x1455
        0x1500
        0x1501
        0x1504
        0x1505
        0x1510
        0x1511
        0x1514
        0x1515
        0x1540
        0x1541
        0x1544
        0x1545
        0x1550
        0x1551
        0x1554
        0x1555
        0x4000
        0x4001
        0x4004
        0x4005
        0x4010
        0x4011
        0x4014
        0x4015
        0x4040
        0x4041
        0x4044
        0x4045
        0x4050
        0x4051
        0x4054
        0x4055
        0x4100
        0x4101
        0x4104
        0x4105
        0x4110
        0x4111
        0x4114
        0x4115
        0x4140
        0x4141
        0x4144
        0x4145
        0x4150
        0x4151
        0x4154
        0x4155
        0x4400
        0x4401
        0x4404
        0x4405
        0x4410
        0x4411
        0x4414
        0x4415
        0x4440
        0x4441
        0x4444
        0x4445
        0x4450
        0x4451
        0x4454
        0x4455
        0x4500
        0x4501
        0x4504
        0x4505
        0x4510
        0x4511
        0x4514
        0x4515
        0x4540
        0x4541
        0x4544
        0x4545
        0x4550
        0x4551
        0x4554
        0x4555
        0x5000
        0x5001
        0x5004
        0x5005
        0x5010
        0x5011
        0x5014
        0x5015
        0x5040
        0x5041
        0x5044
        0x5045
        0x5050
        0x5051
        0x5054
        0x5055
        0x5100
        0x5101
        0x5104
        0x5105
        0x5110
        0x5111
        0x5114
        0x5115
        0x5140
        0x5141
        0x5144
        0x5145
        0x5150
        0x5151
        0x5154
        0x5155
        0x5400
        0x5401
        0x5404
        0x5405
        0x5410
        0x5411
        0x5414
        0x5415
        0x5440
        0x5441
        0x5444
        0x5445
        0x5450
        0x5451
        0x5454
        0x5455
        0x5500
        0x5501
        0x5504
        0x5505
        0x5510
        0x5511
        0x5514
        0x5515
        0x5540
        0x5541
        0x5544
        0x5545
        0x5550
        0x5551
        0x5554
        0x5555
    .end array-data
.end method

.method public static Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v2, p0, Lnts/ख;->ㆃ:I

    const/16 v3, 0x300

    if-gt v2, v3, :cond_9

    iget v2, p1, Lnts/ख;->ㆃ:I

    if-gt v2, v3, :cond_9

    iget v2, p2, Lnts/ख;->ㆃ:I

    if-gt v2, v3, :cond_9

    .line 3
    invoke-static {p2}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 4
    invoke-static {p2}, Lnts/ख;->ᾨ(Lnts/ख;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    move-object/from16 v5, p3

    goto/16 :goto_6

    :cond_0
    const/4 v9, 0x1

    .line 6
    new-array v10, v9, [Lnts/ख;

    .line 7
    new-array v11, v9, [Lnts/ख;

    .line 8
    new-instance v2, Lnts/ख;

    invoke-direct {v2}, Lnts/ख;-><init>()V

    .line 9
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    aput-object v3, v10, v8

    .line 10
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    aput-object v3, v11, v8

    .line 11
    new-instance v12, Lnts/ख;

    invoke-direct {v12}, Lnts/ख;-><init>()V

    const/4 v3, 0x2

    .line 16
    iput v3, v2, Lnts/ख;->ㆃ:I

    .line 17
    iget-object v3, v2, Lnts/ख;->ᾨ:[I

    aput v8, v3, v8

    .line 18
    aput v9, v3, v9

    .line 19
    aget-object v3, v10, v8

    iget-object v3, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, p2, Lnts/ख;->ᾨ:[I

    aget v5, v5, v8

    aput v5, v3, v8

    .line 20
    aget-object v3, v10, v8

    aget-object v5, v11, v8

    invoke-static {v3, v2, v12, v5}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 21
    aget-object v3, v11, v8

    iget-object v3, v3, Lnts/ख;->ᾨ:[I

    aget v3, v3, v8

    rsub-int/lit8 v5, v3, 0x0

    .line 25
    iget v6, p2, Lnts/ख;->ㆃ:I

    add-int/lit8 v3, v6, 0x1

    .line 26
    iput v3, v2, Lnts/ख;->ㆃ:I

    .line 27
    iget-object v3, v2, Lnts/ख;->ᾨ:[I

    iget v7, v2, Lnts/ख;->ㆃ:I

    sub-int/2addr v7, v9

    aput v9, v3, v7

    move v3, v8

    :goto_0
    if-ge v3, v6, :cond_1

    .line 29
    iget-object v7, v2, Lnts/ख;->ᾨ:[I

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_1
    iget v3, p0, Lnts/ख;->ㆃ:I

    :goto_1
    if-ge v3, v6, :cond_2

    .line 31
    iget-object v7, p0, Lnts/ख;->ᾨ:[I

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 34
    :cond_2
    aget-object v3, v10, v8

    invoke-static {v2, p2, v3}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 37
    aget-object v2, v10, v8

    aget-object v3, v11, v8

    invoke-static {v2, p0, v3}, Lnts/ख;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 38
    aget-object v0, v11, v8

    invoke-static {v0, p2, v12}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 40
    iget v0, v12, Lnts/ख;->ㆃ:I

    :goto_2
    if-ge v0, v6, :cond_3

    .line 41
    iget-object v2, v12, Lnts/ख;->ᾨ:[I

    aput v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 42
    :cond_3
    iput v6, v12, Lnts/ख;->ㆃ:I

    .line 44
    aget-object v0, v10, v8

    invoke-static {v0, v12}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 46
    invoke-static {p1}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v0

    sub-int/2addr v0, v9

    :goto_3
    if-lt v0, v9, :cond_5

    .line 48
    aget-object v2, v10, v8

    aget-object v7, v11, v8

    move-object v3, v2

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;IILnts/ख;)V

    .line 50
    invoke-static {p1, v0}, Lnts/ख;->ᇭ(Lnts/ख;I)I

    move-result v2

    if-ne v2, v9, :cond_4

    .line 51
    aget-object v2, v11, v8

    aget-object v7, v10, v8

    move-object v4, p2

    move-object v3, v12

    invoke-static/range {v2 .. v7}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;IILnts/ख;)V

    goto :goto_4

    :cond_4
    move-object v3, v12

    .line 53
    invoke-static {v10, v11}, Lnts/ख;->ㆃ([Lnts/ख;[Lnts/ख;)V

    :goto_4
    add-int/lit8 v0, v0, -0x1

    move-object v12, v3

    goto :goto_3

    .line 57
    :cond_5
    aget-object v0, v11, v8

    iput v9, v0, Lnts/ख;->ㆃ:I

    .line 58
    aget-object v0, v11, v8

    iget-object v0, v0, Lnts/ख;->ᾨ:[I

    aput v9, v0, v8

    :goto_5
    if-ge v9, v6, :cond_6

    .line 60
    aget-object v0, v11, v8

    iget-object v0, v0, Lnts/ख;->ᾨ:[I

    aput v8, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 61
    :cond_6
    aget-object v0, v10, v8

    aget-object v1, v11, v8

    move-object v2, p2

    move v3, v5

    move v4, v6

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;IILnts/ख;)V

    .line 63
    invoke-static {v5}, Lnts/ख;->ౠ(Lnts/ख;)V

    .line 64
    :goto_6
    iget v0, v5, Lnts/ख;->ㆃ:I

    :goto_7
    iget v1, p2, Lnts/ख;->ㆃ:I

    if-ge v0, v1, :cond_7

    .line 65
    iget-object v1, v5, Lnts/ख;->ᾨ:[I

    aput v8, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 67
    :cond_7
    iput v1, v5, Lnts/ख;->ㆃ:I

    return-void

    .line 68
    :cond_8
    new-instance v0, Lnts/ẩ;

    sget-object v1, Lnts/ख;->Ͼ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_9
    new-instance v0, Lnts/ẩ;

    sget-object v1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 9

    .line 1
    invoke-static {p0, p1, p2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_3

    move v0, v1

    move v2, v0

    move v3, v2

    .line 4
    :goto_0
    iget v4, p2, Lnts/ख;->ㆃ:I

    if-ge v0, v4, :cond_7

    .line 5
    iget-object v4, p0, Lnts/ख;->ᾨ:[I

    aget v5, v4, v0

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    iget-object v7, p2, Lnts/ख;->ᾨ:[I

    aget v7, v7, v0

    and-int v8, v7, v6

    add-int/2addr v5, v8

    add-int/2addr v5, v3

    .line 6
    aget v3, v4, v0

    ushr-int/lit8 v3, v3, 0x1f

    ushr-int/lit8 v4, v7, 0x1f

    add-int/2addr v3, v4

    ushr-int/lit8 v4, v5, 0x1f

    add-int/2addr v3, v4

    and-int v4, v5, v6

    shl-int/lit8 v5, v3, 0x1f

    or-int/2addr v4, v5

    ushr-int/lit8 v3, v3, 0x1

    .line 10
    iget-object v5, p1, Lnts/ख;->ᾨ:[I

    aget v5, v5, v0

    if-eqz v2, :cond_1

    .line 13
    invoke-static {v4, v5}, Lnts/ख;->ㆃ(II)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v1

    .line 14
    :cond_0
    iget-object v6, p3, Lnts/ख;->ᾨ:[I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aput v4, v6, v0

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v4, v5}, Lnts/ख;->ᾨ(II)Z

    move-result v6

    if-eqz v6, :cond_2

    not-int v2, v2

    .line 17
    :cond_2
    iget-object v6, p3, Lnts/ख;->ᾨ:[I

    sub-int/2addr v4, v5

    aput v4, v6, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v0

    .line 22
    :goto_2
    iget v3, p2, Lnts/ख;->ㆃ:I

    if-ge v0, v3, :cond_7

    .line 23
    iget-object v3, p1, Lnts/ख;->ᾨ:[I

    aget v3, v3, v0

    if-eqz v2, :cond_5

    .line 26
    iget-object v4, p0, Lnts/ख;->ᾨ:[I

    aget v4, v4, v0

    invoke-static {v4, v3}, Lnts/ख;->ㆃ(II)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v1

    .line 27
    :cond_4
    iget-object v4, p3, Lnts/ख;->ᾨ:[I

    iget-object v5, p0, Lnts/ख;->ᾨ:[I

    aget v5, v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v0

    goto :goto_3

    .line 29
    :cond_5
    iget-object v4, p0, Lnts/ख;->ᾨ:[I

    aget v4, v4, v0

    invoke-static {v4, v3}, Lnts/ख;->ᾨ(II)Z

    move-result v4

    if-eqz v4, :cond_6

    not-int v2, v2

    .line 30
    :cond_6
    iget-object v4, p3, Lnts/ख;->ᾨ:[I

    iget-object v5, p0, Lnts/ख;->ᾨ:[I

    aget v5, v5, v0

    sub-int/2addr v5, v3

    aput v5, v4, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 34
    :cond_7
    iget p0, p2, Lnts/ख;->ㆃ:I

    iput p0, p3, Lnts/ख;->ㆃ:I

    return-void
.end method

.method public static ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I
    .locals 4

    .line 5
    iget p2, p2, Lnts/ख;->ㆃ:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_2

    .line 6
    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    aget v2, v1, p2

    iget-object v3, p1, Lnts/ख;->ᾨ:[I

    aget v3, v3, p2

    if-ne v2, v3, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 8
    :cond_0
    aget p0, v1, p2

    invoke-static {p0, v3}, Lnts/ख;->ㆃ(II)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static ᇭ(Lnts/ख;Lnts/ख;)V
    .locals 2

    .line 1
    iget p1, p1, Lnts/ख;->ㆃ:I

    iput p1, p0, Lnts/ख;->ㆃ:I

    .line 2
    iget-object p1, p0, Lnts/ख;->ᾨ:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, p1, v0

    .line 3
    :goto_0
    iget p1, p0, Lnts/ख;->ㆃ:I

    if-ge v1, p1, :cond_0

    .line 4
    iget-object p1, p0, Lnts/ख;->ᾨ:[I

    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 9
    :goto_0
    iget v3, p2, Lnts/ख;->ㆃ:I

    if-ge v1, v3, :cond_0

    .line 11
    iget-object v3, p0, Lnts/ख;->ᾨ:[I

    aget v4, v3, v1

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iget-object v6, p1, Lnts/ख;->ᾨ:[I

    aget v6, v6, v1

    and-int v7, v6, v5

    add-int/2addr v4, v7

    add-int/2addr v4, v2

    .line 12
    aget v2, v3, v1

    ushr-int/lit8 v2, v2, 0x1f

    ushr-int/lit8 v3, v6, 0x1f

    add-int/2addr v2, v3

    ushr-int/lit8 v3, v4, 0x1f

    add-int/2addr v2, v3

    .line 13
    iget-object v3, p3, Lnts/ख;->ᾨ:[I

    and-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x1f

    or-int/2addr v4, v5

    aput v4, v3, v1

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 18
    invoke-static {p3, p2, p2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result p0

    if-ltz p0, :cond_5

    :cond_1
    move p0, v0

    move p1, p0

    .line 20
    :goto_1
    iget v1, p2, Lnts/ख;->ㆃ:I

    if-ge p0, v1, :cond_5

    .line 21
    iget-object v1, p2, Lnts/ख;->ᾨ:[I

    aget v1, v1, p0

    if-eqz p1, :cond_3

    .line 23
    iget-object v2, p3, Lnts/ख;->ᾨ:[I

    aget v2, v2, p0

    invoke-static {v2, v1}, Lnts/ख;->ㆃ(II)Z

    move-result v2

    if-eqz v2, :cond_2

    move p1, v0

    .line 25
    :cond_2
    iget-object v2, p3, Lnts/ख;->ᾨ:[I

    aget v3, v2, p0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, p0

    goto :goto_2

    .line 27
    :cond_3
    iget-object v2, p3, Lnts/ख;->ᾨ:[I

    aget v2, v2, p0

    invoke-static {v2, v1}, Lnts/ख;->ᾨ(II)Z

    move-result v2

    if-eqz v2, :cond_4

    not-int p1, p1

    .line 29
    :cond_4
    iget-object v2, p3, Lnts/ख;->ᾨ:[I

    aget v3, v2, p0

    sub-int/2addr v3, v1

    aput v3, v2, p0

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 33
    :cond_5
    iget p0, p2, Lnts/ख;->ㆃ:I

    iput p0, p3, Lnts/ख;->ㆃ:I

    return-void
.end method

.method public static ᰛ(Lnts/ख;Lnts/ख;)V
    .locals 2

    .line 1
    iget p1, p1, Lnts/ख;->ㆃ:I

    iput p1, p0, Lnts/ख;->ㆃ:I

    const/4 p1, 0x0

    move v0, p1

    .line 2
    :goto_0
    iget v1, p0, Lnts/ख;->ㆃ:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 8

    .line 4
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    move v2, v0

    .line 7
    :goto_0
    iget v3, p1, Lnts/ख;->ㆃ:I

    if-ge v0, v3, :cond_0

    .line 9
    iget-object v3, p0, Lnts/ख;->ᾨ:[I

    aget v4, v3, v0

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iget-object v6, p1, Lnts/ख;->ᾨ:[I

    aget v6, v6, v0

    and-int v7, v6, v5

    add-int/2addr v4, v7

    add-int/2addr v4, v2

    .line 10
    aget v2, v3, v0

    ushr-int/lit8 v2, v2, 0x1f

    ushr-int/lit8 v3, v6, 0x1f

    add-int/2addr v2, v3

    ushr-int/lit8 v3, v4, 0x1f

    add-int/2addr v2, v3

    .line 11
    iget-object v3, p2, Lnts/ख;->ᾨ:[I

    and-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x1f

    or-int/2addr v4, v5

    aput v4, v3, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p2, Lnts/ख;->ᾨ:[I

    aput v2, p0, v3

    .line 15
    :goto_1
    iget p0, p1, Lnts/ख;->ㆃ:I

    if-ge v1, p0, :cond_3

    .line 16
    iget-object p0, p2, Lnts/ख;->ᾨ:[I

    aget v0, p0, v1

    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v2

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v0, v3

    aput v0, p0, v1

    move v1, v2

    goto :goto_1

    .line 18
    :cond_1
    :goto_2
    iget v0, p1, Lnts/ख;->ㆃ:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    .line 19
    iget-object v0, p2, Lnts/ख;->ᾨ:[I

    iget-object v2, p0, Lnts/ख;->ᾨ:[I

    aget v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    shl-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    aput v2, v0, v1

    move v1, v4

    goto :goto_2

    .line 20
    :cond_2
    iget-object v1, p2, Lnts/ख;->ᾨ:[I

    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    aget p0, p0, v0

    ushr-int/lit8 p0, p0, 0x1

    aput p0, v1, v0

    .line 22
    :cond_3
    iget p0, p1, Lnts/ख;->ㆃ:I

    iput p0, p2, Lnts/ख;->ㆃ:I

    return-void
.end method

.method public static ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 4

    .line 23
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 24
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 25
    new-instance v2, Lnts/ख;

    invoke-direct {v2}, Lnts/ख;-><init>()V

    .line 26
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 28
    invoke-static {v0, p1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 29
    invoke-static {v1, p2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 31
    invoke-static {v2, p0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 32
    invoke-static {v3, p2}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;)V

    .line 34
    :goto_0
    invoke-static {v0, p2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v1, p2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 35
    :goto_1
    iget-object p0, v0, Lnts/ख;->ᾨ:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    .line 36
    invoke-static {v0, p2, v0}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 37
    invoke-static {v2, p2, v2}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_1

    .line 40
    :cond_0
    :goto_2
    iget-object p0, v1, Lnts/ख;->ᾨ:[I

    aget p0, p0, p1

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_1

    .line 41
    invoke-static {v1, p2, v1}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 42
    invoke-static {v3, p2, v3}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_2

    .line 45
    :cond_1
    invoke-static {v0, v1, p2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result p0

    if-ltz p0, :cond_2

    .line 46
    invoke-static {v0, v1, p2, v0}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 47
    invoke-static {v2, v3, p2, v2}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {v1, v0, p2, v1}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 50
    invoke-static {v3, v2, p2, v3}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-static {v0, p2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 55
    invoke-static {p3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto :goto_3

    .line 57
    :cond_4
    invoke-static {p3, v3}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 59
    :goto_3
    iget p0, p2, Lnts/ख;->ㆃ:I

    iput p0, p3, Lnts/ख;->ㆃ:I

    return-void
.end method

.method public static ᾨ(Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 173
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 174
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 175
    new-instance v2, Lnts/ख;

    invoke-direct {v2}, Lnts/ख;-><init>()V

    .line 176
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 178
    invoke-static {v0, p0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 179
    invoke-static {v1, p1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 180
    invoke-static {v2, p1}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    .line 181
    invoke-static {v3, p1}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;)V

    .line 182
    :goto_0
    invoke-static {v0, p1}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 183
    invoke-static {v1, p1}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 184
    :goto_1
    iget-object p0, v0, Lnts/ख;->ᾨ:[I

    const/4 v4, 0x0

    aget p0, p0, v4

    const/4 v5, 0x1

    and-int/2addr p0, v5

    if-nez p0, :cond_0

    .line 185
    invoke-static {v0, p1, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 186
    invoke-static {v2, p1, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_1

    .line 189
    :cond_0
    :goto_2
    iget-object p0, v1, Lnts/ख;->ᾨ:[I

    aget p0, p0, v4

    and-int/2addr p0, v5

    if-nez p0, :cond_1

    .line 190
    invoke-static {v1, p1, v1}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 191
    invoke-static {v3, p1, v3}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_2

    .line 192
    :cond_1
    invoke-static {v0, v1, p1}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result p0

    if-ne p0, v5, :cond_2

    .line 193
    invoke-static {v0, v1, p1, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 194
    invoke-static {v2, v3, p1, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {v1, v0, p1, v1}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 197
    invoke-static {v3, v2, p1, v3}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-static {v0, p1}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 199
    invoke-static {p2, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    return-void

    .line 201
    :cond_4
    invoke-static {p2, v3}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    return-void
.end method

.method public static ᾨ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 142
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 143
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 144
    new-instance v2, Lnts/ख;

    invoke-direct {v2}, Lnts/ख;-><init>()V

    .line 145
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 147
    invoke-static {v0, p1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 148
    invoke-static {v1, p2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 150
    invoke-static {v2, p0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 151
    iget p0, p2, Lnts/ख;->ㆃ:I

    iput p0, v2, Lnts/ख;->ㆃ:I

    .line 152
    invoke-static {v3, p2}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;)V

    .line 153
    :goto_0
    invoke-static {v0, p2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 154
    invoke-static {v1, p2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 155
    :goto_1
    iget-object p0, v0, Lnts/ख;->ᾨ:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    const/4 v4, 0x1

    and-int/2addr p0, v4

    if-nez p0, :cond_0

    .line 156
    invoke-static {v0, p2, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 157
    invoke-static {v2, p2, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_1

    .line 160
    :cond_0
    :goto_2
    iget-object p0, v1, Lnts/ख;->ᾨ:[I

    aget p0, p0, p1

    and-int/2addr p0, v4

    if-nez p0, :cond_1

    .line 161
    invoke-static {v1, p2, v1}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 162
    invoke-static {v3, p2, v3}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_2

    .line 163
    :cond_1
    invoke-static {v0, v1, p2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result p0

    if-ne p0, v4, :cond_2

    .line 164
    invoke-static {v0, v1, p2, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 165
    invoke-static {v2, v3, p2, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v1, v0, p2, v1}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 168
    invoke-static {v3, v2, p2, v3}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-static {v0, p2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 170
    invoke-static {p3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    return-void

    .line 172
    :cond_4
    invoke-static {p3, v3}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    return-void
.end method

.method public static ᾨ(ILnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 113
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 114
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 115
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 116
    new-instance v7, Lnts/ख;

    invoke-direct {v7}, Lnts/ख;-><init>()V

    move-object v1, p1

    move-object v0, p1

    move-object v2, p4

    move v5, p5

    .line 118
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v0

    move-object v0, v6

    move-object v6, v7

    .line 119
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object p1, v6

    move-object v6, v0

    move-object v0, p2

    .line 121
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 122
    invoke-static {p1, v6, v2, p1}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 123
    invoke-static {p1, p3, v2, p1}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 125
    invoke-static {p1, v2, v5, v6}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;ILnts/ख;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p2, v6, Lnts/ख;->ᾨ:[I

    const/4 p3, 0x0

    aget p2, p2, p3

    and-int/lit8 p2, p2, 0x1

    if-eq p2, p0, :cond_0

    .line 128
    invoke-static {v2, v6, v2, p6}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    return p1

    .line 130
    :cond_0
    invoke-static {p6, v6}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    :cond_1
    return p1
.end method

.method public static ᾨ(Lnts/ख;Lnts/ख;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p1, Lnts/ख;->ㆃ:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lnts/ख;->ᾨ:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static ᾨ(Lnts/ख;Lnts/ख;ILnts/ख;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p3

    .line 3
    iget-object v0, v2, Lnts/ख;->ᾨ:[I

    const/4 v10, 0x0

    aget v0, v0, v10

    and-int/lit8 v3, v0, 0x3

    const/4 v7, 0x2

    const/4 v11, 0x1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 4
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 5
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 6
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    .line 7
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 8
    new-instance v8, Lnts/ख;

    invoke-direct {v8}, Lnts/ख;-><init>()V

    .line 10
    invoke-static {v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 11
    invoke-static {v3, v7}, Lnts/ख;->ᰛ(Lnts/ख;I)V

    .line 12
    sget-object v4, Lnts/ख;->ᙕ:Lnts/ख;

    invoke-static {v3, v4, v3}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 13
    invoke-static {v1, v3, v2, v0}, Lnts/Ⴘ;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v3, v0

    move/from16 v7, p2

    move-object v4, v2

    move-object v2, v0

    .line 14
    invoke-static/range {v2 .. v8}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v2, v4

    .line 15
    invoke-static {v1, v8, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result v1

    if-nez v1, :cond_0

    move v10, v11

    :cond_0
    if-eqz v10, :cond_1

    .line 18
    invoke-static {v9, v0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    :cond_1
    return v10

    :cond_2
    and-int/lit8 v3, v0, 0x7

    const/4 v5, 0x5

    if-ne v3, v5, :cond_5

    .line 20
    new-instance v8, Lnts/ख;

    invoke-direct {v8}, Lnts/ख;-><init>()V

    .line 21
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    .line 22
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 23
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 24
    new-instance v12, Lnts/ख;

    invoke-direct {v12}, Lnts/ख;-><init>()V

    .line 25
    new-instance v13, Lnts/ख;

    invoke-direct {v13}, Lnts/ख;-><init>()V

    .line 27
    invoke-static {v8, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 28
    invoke-static {v8, v4}, Lnts/ख;->ᰛ(Lnts/ख;I)V

    .line 30
    invoke-static {v1, v1, v2, v12}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 31
    invoke-static {v12, v8, v2, v0}, Lnts/Ⴘ;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v3, v0

    move/from16 v7, p2

    move-object v4, v2

    move-object v2, v0

    .line 32
    invoke-static/range {v2 .. v8}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v3, v8

    move-object v2, v12

    move-object v8, v13

    .line 33
    invoke-static/range {v2 .. v8}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v2, v8

    move-object v8, v3

    move-object v3, v2

    move-object v2, v4

    .line 34
    invoke-static {v5, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    .line 35
    invoke-static {v3, v5, v2, v3}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v2, v3

    move-object v3, v0

    .line 36
    invoke-static/range {v2 .. v8}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v2, v4

    move-object v4, v6

    move-object v0, v8

    move-object v6, v3

    move-object v3, v5

    move v5, v7

    .line 37
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v8, v1

    move-object v5, v3

    move-object v2, v6

    move-object v6, v4

    move-object v1, v2

    move/from16 v5, p2

    move-object v6, v0

    move-object v0, v2

    move-object/from16 v2, p1

    .line 38
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v3, v0

    move-object v0, v6

    .line 39
    invoke-static {v0, v8, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result v0

    if-nez v0, :cond_3

    move v10, v11

    :cond_3
    if-eqz v10, :cond_4

    .line 41
    invoke-static {v9, v3}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    :cond_4
    return v10

    :cond_5
    move-object v8, v1

    and-int/2addr v0, v4

    if-ne v0, v11, :cond_c

    .line 43
    new-instance v12, Lnts/ख;

    invoke-direct {v12}, Lnts/ख;-><init>()V

    .line 44
    new-instance v13, Lnts/ख;

    invoke-direct {v13}, Lnts/ख;-><init>()V

    .line 45
    new-instance v14, Lnts/ख;

    invoke-direct {v14}, Lnts/ख;-><init>()V

    .line 46
    new-instance v15, Lnts/ख;

    invoke-direct {v15}, Lnts/ख;-><init>()V

    .line 47
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 48
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 49
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 50
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 51
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    .line 54
    :goto_0
    iget v6, v2, Lnts/ख;->ㆃ:I

    invoke-static {v1, v6}, Lnts/ख;->ᾨ(Lnts/ख;I)V

    move/from16 v6, p2

    .line 55
    invoke-static {v1, v2, v13, v14, v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I)V

    .line 56
    invoke-static {v3, v8}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 57
    invoke-static {v5, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 58
    invoke-static {v5}, Lnts/ख;->Ͼ(Lnts/ख;)V

    move/from16 v16, v7

    .line 59
    sget-object v7, Lnts/ख;->ᙕ:Lnts/ख;

    invoke-static {v5, v7, v5}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 60
    new-instance v7, Lnts/ख;

    invoke-direct {v7}, Lnts/ख;-><init>()V

    move-object/from16 v17, v3

    .line 61
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 62
    new-instance v18, Lnts/ख;

    invoke-direct/range {v18 .. v18}, Lnts/ख;-><init>()V

    .line 63
    new-instance v19, Lnts/ख;

    invoke-direct/range {v19 .. v19}, Lnts/ख;-><init>()V

    .line 64
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 66
    invoke-static {v0, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    .line 67
    invoke-static {v4, v1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move-object/from16 v20, v0

    move-object v0, v1

    move-object/from16 v21, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v17

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v5

    move/from16 v5, p2

    .line 68
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object/from16 v22, v0

    move-object v0, v6

    .line 69
    invoke-static {v10, v10, v2, v3}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 70
    invoke-static {v3, v3, v2, v3}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 71
    invoke-static {v0, v3, v2, v0}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 73
    invoke-static {v0, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v3, v10

    move/from16 v7, v16

    move/from16 v10, v17

    move-object/from16 v4, v18

    move-object/from16 v0, v20

    move-object/from16 v5, v21

    :goto_1
    move-object/from16 v1, v22

    goto :goto_0

    .line 75
    :cond_6
    invoke-static/range {v21 .. v21}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_2
    if-ltz v1, :cond_8

    move v5, v1

    move-object/from16 v1, v20

    move-object v6, v7

    move-object v7, v0

    move-object/from16 v0, v20

    move/from16 v20, v11

    move v11, v5

    move/from16 v5, p2

    .line 76
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v7

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v6, v19

    .line 77
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v6, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v23, v7

    move-object v7, v0

    move-object/from16 v0, v18

    .line 78
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v6

    .line 79
    invoke-static {v1, v7, v2, v3}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 80
    invoke-static {v3, v2, v1}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v6, v7

    move-object v7, v1

    move-object v1, v0

    move-object/from16 v0, v23

    .line 82
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v2, v6

    .line 83
    invoke-static {v0, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 84
    invoke-static {v1, v7}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move-object/from16 v5, v21

    .line 86
    invoke-static {v5, v11}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v18, v1

    move-object/from16 v21, v5

    move-object v6, v7

    move/from16 v5, p2

    move-object v1, v0

    move-object v7, v2

    move-object/from16 v0, v19

    move-object/from16 v2, p1

    .line 88
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object/from16 v19, v7

    move-object v7, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v0

    move-object/from16 v23, v1

    move-object/from16 v1, v18

    move-object/from16 v0, v22

    .line 89
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v5, v6

    .line 90
    invoke-static {v5, v7, v2, v3}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 91
    invoke-static {v3, v2, v5}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v8, v5

    move-object v6, v7

    move/from16 v5, p2

    move-object v7, v1

    move-object/from16 v1, v23

    .line 93
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v0, v1

    .line 94
    invoke-static {v6, v7, v2, v3}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 95
    invoke-static {v3, v2, v6}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 97
    invoke-static {v0, v6}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 98
    invoke-static {v7, v8}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto :goto_3

    :cond_7
    move-object v8, v2

    move-object/from16 v21, v5

    move-object v6, v7

    move-object/from16 v2, p1

    move-object v7, v1

    :goto_3
    add-int/lit8 v1, v11, -0x1

    move-object/from16 v18, v7

    move/from16 v11, v20

    move-object/from16 v20, v0

    move-object v7, v6

    move-object/from16 v0, v19

    move-object/from16 v19, v8

    move-object/from16 v8, p0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v7, v18

    move-object/from16 v0, v20

    move/from16 v20, v11

    move-object v1, v7

    move-object v3, v7

    move-object v7, v0

    move-object v0, v3

    move/from16 v5, p2

    move-object v6, v12

    move-object v3, v13

    move-object v4, v14

    .line 99
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v0

    .line 100
    invoke-static {v10, v10, v2, v15}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 101
    invoke-static {v15, v15, v2, v15}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 103
    invoke-static {v6, v15, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result v0

    if-nez v0, :cond_9

    .line 104
    invoke-static {v1, v2, v9}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    return v20

    .line 108
    :cond_9
    invoke-static {v7, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    .line 110
    :cond_a
    invoke-static {v3, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    .line 111
    invoke-static {v7, v3, v2, v15}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 112
    invoke-static {v15, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    if-nez v0, :cond_b

    return v17

    :cond_b
    :goto_4
    move-object/from16 v8, p0

    move-object v13, v3

    move-object v14, v4

    move-object v12, v6

    move-object v0, v7

    move-object v3, v10

    move/from16 v7, v16

    move/from16 v10, v17

    move/from16 v11, v20

    move-object/from16 v5, v21

    move-object v4, v1

    goto/16 :goto_1

    :cond_c
    move/from16 v17, v10

    return v17
.end method

.method public static ᾨ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 131
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 132
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 133
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 134
    new-instance v7, Lnts/ख;

    invoke-direct {v7}, Lnts/ख;-><init>()V

    move-object v1, p0

    move-object v0, p0

    move-object v2, p4

    move v5, p5

    .line 135
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v0

    move-object v0, v6

    move-object v6, v7

    .line 136
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v6, v0

    move-object v0, v1

    move-object v1, p2

    .line 137
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v8, v6

    .line 138
    invoke-static {v8, v7, p4, v8}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 139
    invoke-static {v8, p3, p4, v8}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v1, p1

    move-object v0, p1

    move-object v6, v7

    .line 140
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 141
    invoke-static {v8, v6, p4}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 883
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 884
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 885
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    .line 886
    invoke-static {p0, p2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    return v6

    .line 887
    :cond_0
    invoke-static {p0, p2, v1}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    .line 888
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    .line 889
    iget-object p0, v5, Lnts/ख;->ᾨ:[I

    aget p0, p0, v6

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static ㆃ(Lnts/ख;IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x20

    ushr-int/lit8 v0, v0, 0x5

    .line 1130
    iput v0, p0, Lnts/ख;->ㆃ:I

    const/4 v0, 0x0

    move v1, v0

    .line 1131
    :goto_0
    iget v2, p0, Lnts/ख;->ㆃ:I

    if-ge v1, v2, :cond_0

    .line 1132
    iget-object v2, p0, Lnts/ख;->ᾨ:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1134
    invoke-static {p0, p1, v1}, Lnts/ख;->ㆃ(Lnts/ख;IZ)V

    .line 1135
    invoke-static {p0, v0, v1}, Lnts/ख;->ㆃ(Lnts/ख;IZ)V

    if-lez p2, :cond_1

    .line 1138
    invoke-static {p0, p2, v1}, Lnts/ख;->ㆃ(Lnts/ख;IZ)V

    :cond_1
    if-lez p3, :cond_2

    .line 1140
    invoke-static {p0, p3, v1}, Lnts/ख;->ㆃ(Lnts/ख;IZ)V

    :cond_2
    if-lez p4, :cond_3

    .line 1142
    invoke-static {p0, p4, v1}, Lnts/ख;->ㆃ(Lnts/ख;IZ)V

    :cond_3
    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0xf

    const/16 v1, 0xc

    const/16 v2, 0x11

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch p2, :pswitch_data_0

    .line 74
    new-instance p2, Lnts/ख;

    invoke-direct {p2}, Lnts/ख;-><init>()V

    .line 77
    invoke-static {p1}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v0

    .line 78
    invoke-static {p0}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v1

    sub-int/2addr v1, v0

    if-gez v1, :cond_a

    .line 81
    iget p1, p1, Lnts/ख;->ㆃ:I

    iput p1, p0, Lnts/ख;->ㆃ:I

    return-void

    :pswitch_0
    const/16 p1, 0x23

    :goto_0
    const/16 p2, 0x12

    if-lt p1, p2, :cond_0

    .line 1
    iget-object p2, p0, Lnts/ख;->ᾨ:[I

    aget v0, p2, p1

    add-int/lit8 v1, p1, -0x12

    .line 2
    aget v4, p2, v1

    shl-int/lit8 v5, v0, 0x5

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0x7

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0xa

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0xf

    xor-int/2addr v4, v5

    aput v4, p2, v1

    add-int/lit8 v1, p1, -0x11

    .line 3
    aget v4, p2, v1

    ushr-int/lit8 v5, v0, 0x1b

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x19

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x16

    xor-int/2addr v4, v5

    ushr-int/2addr v0, v2

    xor-int/2addr v0, v4

    aput v0, p2, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lnts/ख;->ᾨ:[I

    aget v0, p1, v2

    ushr-int/lit8 v1, v0, 0x1b

    .line 7
    aget v4, p1, v7

    xor-int/2addr v4, v1

    shl-int/lit8 v5, v1, 0x2

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x5

    xor-int/2addr v4, v5

    shl-int/2addr v1, v3

    xor-int/2addr v1, v4

    aput v1, p1, v7

    const v1, 0x7ffffff

    and-int/2addr v0, v1

    .line 8
    aput v0, p1, v2

    move p1, p2

    .line 10
    :goto_1
    iget v0, p0, Lnts/ख;->ㆃ:I

    if-ge p1, v0, :cond_1

    .line 11
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    aput v7, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    iput p2, p0, Lnts/ख;->ㆃ:I

    return-void

    :pswitch_1
    const/16 p1, 0x19

    :goto_2
    const/16 p2, 0xd

    if-lt p1, p2, :cond_2

    .line 14
    iget-object p2, p0, Lnts/ख;->ᾨ:[I

    aget v0, p2, p1

    add-int/lit8 v2, p1, -0xd

    .line 15
    aget v3, p2, v2

    shl-int/lit8 v5, v0, 0x7

    xor-int/2addr v3, v5

    aput v3, p2, v2

    add-int/lit8 v2, p1, -0xc

    .line 16
    aget v3, p2, v2

    ushr-int/lit8 v5, v0, 0x19

    xor-int/2addr v3, v5

    aput v3, p2, v2

    add-int/lit8 v2, p1, -0xb

    .line 17
    aget v3, p2, v2

    shl-int/lit8 v5, v0, 0x1e

    xor-int/2addr v3, v5

    aput v3, p2, v2

    add-int/lit8 v2, p1, -0xa

    .line 18
    aget v3, p2, v2

    ushr-int/2addr v0, v4

    xor-int/2addr v0, v3

    aput v0, p2, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 21
    :cond_2
    iget-object p1, p0, Lnts/ख;->ᾨ:[I

    aget v0, p1, v1

    ushr-int/lit8 v2, v0, 0x19

    .line 22
    aget v3, p1, v7

    xor-int/2addr v3, v2

    aput v3, p1, v7

    .line 23
    aget v3, p1, v4

    shl-int/lit8 v2, v2, 0x17

    xor-int/2addr v2, v3

    aput v2, p1, v4

    const v2, 0x1ffffff

    and-int/2addr v0, v2

    .line 24
    aput v0, p1, v1

    move p1, p2

    .line 26
    :goto_3
    iget v0, p0, Lnts/ख;->ㆃ:I

    if-ge p1, v0, :cond_3

    .line 27
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    aput v7, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 29
    :cond_3
    iput p2, p0, Lnts/ख;->ㆃ:I

    return-void

    :goto_4
    :pswitch_2
    const/16 p1, 0x9

    if-lt v2, p1, :cond_4

    .line 30
    iget-object p1, p0, Lnts/ख;->ᾨ:[I

    aget p2, p1, v2

    add-int/lit8 v3, v2, -0x9

    .line 31
    aget v4, p1, v3

    shl-int/lit8 v6, p2, 0x5

    xor-int/2addr v4, v6

    shl-int/lit8 v6, p2, 0xa

    xor-int/2addr v4, v6

    shl-int/lit8 v6, p2, 0xc

    xor-int/2addr v4, v6

    shl-int/lit8 v6, p2, 0x11

    xor-int/2addr v4, v6

    aput v4, p1, v3

    add-int/lit8 v3, v2, -0x8

    .line 32
    aget v4, p1, v3

    ushr-int/lit8 v6, p2, 0x1b

    xor-int/2addr v4, v6

    ushr-int/lit8 v6, p2, 0x16

    xor-int/2addr v4, v6

    ushr-int/lit8 v6, p2, 0x14

    xor-int/2addr v4, v6

    ushr-int/2addr p2, v0

    xor-int/2addr p2, v4

    aput p2, p1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 35
    :cond_4
    iget-object p2, p0, Lnts/ख;->ᾨ:[I

    aget v0, p2, v5

    ushr-int/lit8 v2, v0, 0x1b

    .line 36
    aget v3, p2, v7

    xor-int/2addr v3, v2

    shl-int/lit8 v4, v2, 0x5

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x7

    xor-int/2addr v3, v4

    shl-int/lit8 v1, v2, 0xc

    xor-int/2addr v1, v3

    aput v1, p2, v7

    const v1, 0x7ffffff

    and-int/2addr v0, v1

    .line 37
    aput v0, p2, v5

    move p2, p1

    .line 39
    :goto_5
    iget v0, p0, Lnts/ख;->ㆃ:I

    if-ge p2, v0, :cond_5

    .line 40
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    aput v7, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 42
    :cond_5
    iput p1, p0, Lnts/ख;->ㆃ:I

    return-void

    :goto_6
    :pswitch_3
    if-lt v0, v5, :cond_6

    .line 43
    iget-object p1, p0, Lnts/ख;->ᾨ:[I

    aget p2, p1, v0

    add-int/lit8 v1, v0, -0x8

    .line 44
    aget v2, p1, v1

    shl-int/lit8 v8, p2, 0x17

    xor-int/2addr v2, v8

    aput v2, p1, v1

    add-int/lit8 v1, v0, -0x7

    .line 45
    aget v2, p1, v1

    ushr-int/lit8 v8, p2, 0x9

    xor-int/2addr v2, v8

    aput v2, p1, v1

    add-int/lit8 v1, v0, -0x5

    .line 46
    aget v2, p1, v1

    shl-int/lit8 v8, p2, 0x1

    xor-int/2addr v2, v8

    aput v2, p1, v1

    add-int/lit8 v1, v0, -0x4

    .line 47
    aget v2, p1, v1

    ushr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v2

    aput p2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 50
    :cond_6
    iget-object p1, p0, Lnts/ख;->ᾨ:[I

    aget p2, p1, v6

    ushr-int/lit8 v0, p2, 0x9

    .line 51
    aget v1, p1, v7

    xor-int/2addr v1, v0

    aput v1, p1, v7

    .line 52
    aget v1, p1, v4

    shl-int/2addr v0, v3

    xor-int/2addr v0, v1

    aput v0, p1, v4

    const/4 v0, 0x3

    .line 53
    aget v1, p1, v0

    ushr-int/lit8 v2, p2, 0x1f

    xor-int/2addr v1, v2

    aput v1, p1, v0

    and-int/lit16 p2, p2, 0x1ff

    .line 54
    aput p2, p1, v6

    move p1, v5

    .line 56
    :goto_7
    iget p2, p0, Lnts/ख;->ㆃ:I

    if-ge p1, p2, :cond_7

    .line 57
    iget-object p2, p0, Lnts/ख;->ᾨ:[I

    aput v7, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 59
    :cond_7
    iput v5, p0, Lnts/ख;->ㆃ:I

    return-void

    :goto_8
    :pswitch_4
    const/4 p1, 0x6

    if-lt v3, p1, :cond_8

    .line 60
    iget-object p1, p0, Lnts/ख;->ᾨ:[I

    aget p2, p1, v3

    add-int/lit8 v0, v3, -0x6

    .line 61
    aget v1, p1, v0

    shl-int/lit8 v2, p2, 0x1d

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v3, -0x5

    .line 62
    aget v1, p1, v0

    shl-int/lit8 v2, p2, 0x4

    xor-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x3

    xor-int/2addr v1, v2

    xor-int/2addr v1, p2

    ushr-int/lit8 v2, p2, 0x3

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v3, -0x4

    .line 63
    aget v1, p1, v0

    ushr-int/lit8 v2, p2, 0x1c

    xor-int/2addr v1, v2

    ushr-int/lit8 p2, p2, 0x1d

    xor-int/2addr p2, v1

    aput p2, p1, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 65
    :cond_8
    iget-object p2, p0, Lnts/ख;->ᾨ:[I

    const/4 v0, 0x5

    aget v1, p2, v0

    ushr-int/lit8 v2, v1, 0x3

    .line 66
    aget v3, p2, v7

    shl-int/lit8 v4, v2, 0x7

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x6

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x3

    xor-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, p2, v7

    .line 67
    aget v2, p2, v8

    ushr-int/lit8 v3, v1, 0x1c

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x1d

    xor-int/2addr v2, v3

    aput v2, p2, v8

    and-int/2addr v1, v6

    .line 68
    aput v1, p2, v0

    move p2, p1

    .line 70
    :goto_9
    iget v0, p0, Lnts/ख;->ㆃ:I

    if-ge p2, v0, :cond_9

    .line 71
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    aput v7, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 73
    :cond_9
    iput p1, p0, Lnts/ख;->ㆃ:I

    return-void

    :cond_a
    ushr-int/lit8 v2, v1, 0x5

    .line 82
    rem-int/lit8 v3, v1, 0x20

    .line 84
    iget v4, p1, Lnts/ख;->ㆃ:I

    add-int/2addr v4, v2

    add-int/2addr v4, v8

    const/16 v5, 0x300

    if-gt v4, v5, :cond_11

    .line 87
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 88
    invoke-static {v4, p1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move v5, v7

    .line 90
    :goto_a
    iget v6, p1, Lnts/ख;->ㆃ:I

    add-int/2addr v6, v2

    add-int/2addr v6, v8

    if-ge v5, v6, :cond_b

    .line 91
    iget-object v6, p2, Lnts/ख;->ᾨ:[I

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_b
    move v5, v7

    .line 95
    :goto_b
    invoke-static {v4}, Lnts/ख;->ᇭ(Lnts/ख;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 96
    iget-object v6, v4, Lnts/ख;->ᾨ:[I

    aget v6, v6, v7

    and-int/2addr v6, v8

    ushr-int/lit8 v9, v5, 0x5

    add-int/2addr v9, v2

    add-int/lit8 v10, v9, 0x1

    .line 99
    rem-int/lit8 v11, v5, 0x20

    add-int/2addr v11, v3

    const/16 v12, 0x20

    if-lt v11, v12, :cond_c

    add-int/lit8 v11, v11, -0x20

    add-int/lit8 v10, v9, 0x2

    .line 105
    :cond_c
    iget-object v9, p2, Lnts/ख;->ᾨ:[I

    sub-int/2addr v10, v8

    aget v12, v9, v10

    shl-int/2addr v6, v11

    or-int/2addr v6, v12

    aput v6, v9, v10

    .line 106
    invoke-static {v4}, Lnts/ख;->Ͼ(Lnts/ख;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 110
    :cond_d
    iget v3, p1, Lnts/ख;->ㆃ:I

    add-int/2addr v3, v2

    add-int/2addr v3, v8

    iput v3, p2, Lnts/ख;->ㆃ:I

    .line 111
    invoke-static {p2}, Lnts/ख;->ౠ(Lnts/ख;)V

    :goto_c
    if-lt v1, v8, :cond_f

    add-int v2, v1, v0

    sub-int/2addr v2, v8

    .line 112
    invoke-static {p0, v2}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v7

    .line 113
    :goto_d
    iget v3, p2, Lnts/ख;->ㆃ:I

    if-ge v2, v3, :cond_e

    .line 114
    iget-object v3, p0, Lnts/ख;->ᾨ:[I

    aget v4, v3, v2

    iget-object v5, p2, Lnts/ख;->ᾨ:[I

    aget v5, v5, v2

    xor-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 117
    :cond_e
    invoke-static {p2, v8}, Lnts/ख;->ᰛ(Lnts/ख;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_f
    sub-int/2addr v0, v8

    .line 120
    invoke-static {p0, v0}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 121
    :goto_e
    iget v0, p2, Lnts/ख;->ㆃ:I

    if-ge v7, v0, :cond_10

    .line 122
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    aget v1, v0, v7

    iget-object v2, p2, Lnts/ख;->ᾨ:[I

    aget v2, v2, v7

    xor-int/2addr v1, v2

    aput v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 125
    :cond_10
    iget p1, p1, Lnts/ख;->ㆃ:I

    iput p1, p0, Lnts/ख;->ㆃ:I

    return-void

    .line 126
    :cond_11
    new-instance p0, Lnts/ẩ;

    sget-object p1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x6106
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 849
    iget v0, p0, Lnts/ख;->ㆃ:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p3, Lnts/ख;->ㆃ:I

    const/4 v0, 0x0

    .line 851
    :goto_0
    iget v1, p0, Lnts/ख;->ㆃ:I

    if-ge v0, v1, :cond_0

    .line 852
    iget-object v1, p3, Lnts/ख;->ᾨ:[I

    shl-int/lit8 v2, v0, 0x1

    sget-object v3, Lnts/Ⴘ;->ㆃ:[I

    iget-object v4, p0, Lnts/ख;->ᾨ:[I

    aget v5, v4, v0

    and-int/lit16 v6, v5, 0xff

    aget v6, v3, v6

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v5, v3, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v6

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 854
    aget v4, v4, v0

    ushr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v5, v3, v5

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_0
    invoke-static {p3, p1, p2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;I)V

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 860
    :goto_0
    iget v0, p1, Lnts/ख;->ㆃ:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 861
    iget-object v0, p2, Lnts/ख;->ᾨ:[I

    iget-object v2, p0, Lnts/ख;->ᾨ:[I

    aget v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    shl-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    aput v2, v0, v1

    move v1, v4

    goto :goto_0

    .line 863
    :cond_0
    iget-object p1, p2, Lnts/ख;->ᾨ:[I

    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    aget p0, p0, v0

    ushr-int/lit8 p0, p0, 0x1

    aput p0, p1, v0

    return-void

    .line 865
    :cond_1
    :goto_1
    iget v0, p1, Lnts/ख;->ㆃ:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    .line 866
    iget-object v0, p2, Lnts/ख;->ᾨ:[I

    iget-object v2, p0, Lnts/ख;->ᾨ:[I

    aget v3, v2, v1

    iget-object v4, p1, Lnts/ख;->ᾨ:[I

    aget v5, v4, v1

    xor-int/2addr v3, v5

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v1, 0x1

    aget v2, v2, v5

    aget v4, v4, v5

    xor-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    aput v2, v0, v1

    move v1, v5

    goto :goto_1

    .line 867
    :cond_2
    iget-object p2, p2, Lnts/ख;->ᾨ:[I

    iget-object p0, p0, Lnts/ख;->ᾨ:[I

    aget p0, p0, v0

    iget-object p1, p1, Lnts/ख;->ᾨ:[I

    aget p1, p1, v0

    xor-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x1

    aput p0, p2, v0

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 821
    invoke-static {p5, p2}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;)V

    .line 822
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v0, v1

    iput v0, p5, Lnts/ख;->ㆃ:I

    const/4 v0, 0x0

    move v2, v0

    .line 824
    :goto_0
    iget v3, p5, Lnts/ख;->ㆃ:I

    if-ge v2, v3, :cond_0

    .line 825
    iget-object v3, p5, Lnts/ख;->ᾨ:[I

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    :cond_0
    invoke-static {p4, p0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move p0, v0

    :goto_1
    const/16 v2, 0x20

    if-ge p0, v2, :cond_3

    move v2, v0

    .line 833
    :goto_2
    iget v3, p1, Lnts/ख;->ㆃ:I

    if-ge v2, v3, :cond_2

    .line 834
    iget-object v3, p1, Lnts/ख;->ᾨ:[I

    aget v3, v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    move v3, v0

    .line 835
    :goto_3
    iget v4, p4, Lnts/ख;->ㆃ:I

    if-ge v3, v4, :cond_1

    .line 836
    iget-object v4, p5, Lnts/ख;->ᾨ:[I

    add-int v5, v3, v2

    aget v6, v4, v5

    iget-object v7, p4, Lnts/ख;->ᾨ:[I

    aget v7, v7, v3

    xor-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 839
    :cond_2
    invoke-static {p4}, Lnts/ख;->ᰛ(Lnts/ख;)V

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 844
    :cond_3
    invoke-static {p5, p2, p3}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;I)V

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 845
    iget p2, p2, Lnts/ख;->ㆃ:I

    iput p2, p3, Lnts/ख;->ㆃ:I

    const/4 p2, 0x0

    .line 847
    :goto_0
    iget v0, p3, Lnts/ख;->ㆃ:I

    if-ge p2, v0, :cond_0

    .line 848
    iget-object v0, p3, Lnts/ख;->ᾨ:[I

    iget-object v1, p0, Lnts/ख;->ᾨ:[I

    aget v1, v1, p2

    iget-object v2, p1, Lnts/ख;->ᾨ:[I

    aget v2, v2, p2

    xor-int/2addr v1, v2

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0x10

    const/16 v5, 0x11

    const/16 v8, 0xe

    const/16 v10, 0xc

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/16 v14, 0xb

    const/4 v15, 0x7

    const/16 v16, 0x2

    const/16 v17, 0x17

    const/4 v6, 0x6

    const/16 v18, 0x5

    const/16 v19, 0xf

    const/4 v7, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x1

    const/16 v22, 0x0

    packed-switch p4, :pswitch_data_0

    .line 132
    invoke-static/range {p0 .. p2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 133
    invoke-static {v0, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto/16 :goto_1a

    .line 134
    :pswitch_0
    iget v3, v0, Lnts/ख;->ㆃ:I

    :goto_0
    const/16 v6, 0x23

    if-ge v3, v6, :cond_0

    .line 135
    iget-object v6, v0, Lnts/ख;->ᾨ:[I

    aput v22, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iput v5, v2, Lnts/ख;->ㆃ:I

    move/from16 v3, v22

    :goto_1
    if-ge v3, v5, :cond_1

    .line 140
    iget-object v6, v2, Lnts/ख;->ᾨ:[I

    iget-object v7, v0, Lnts/ख;->ᾨ:[I

    add-int/lit8 v8, v3, 0x10

    aget v8, v7, v8

    ushr-int/2addr v8, v12

    add-int/lit8 v9, v3, 0x11

    aget v7, v7, v9

    shl-int/lit8 v7, v7, 0x17

    or-int/2addr v7, v8

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 142
    :cond_1
    iget-object v3, v0, Lnts/ख;->ᾨ:[I

    aget v6, v3, v4

    and-int/lit16 v6, v6, 0x1ff

    aput v6, v3, v4

    move v3, v5

    :goto_2
    const/16 v4, 0x22

    if-ge v3, v4, :cond_2

    .line 144
    iget-object v4, v0, Lnts/ख;->ᾨ:[I

    aput v22, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 145
    :cond_2
    iput v5, v0, Lnts/ख;->ㆃ:I

    .line 146
    invoke-static {v0, v2, v0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 148
    iget v2, v0, Lnts/ख;->ㆃ:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-lez v2, :cond_3

    .line 149
    iget-object v3, v0, Lnts/ख;->ᾨ:[I

    aget v3, v3, v2

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 150
    iput v2, v0, Lnts/ख;->ㆃ:I

    .line 152
    :goto_4
    invoke-static/range {p0 .. p1}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 153
    invoke-static {v0, v1, v0}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_4

    :pswitch_1
    move/from16 v23, v5

    .line 154
    iget v5, v0, Lnts/ख;->ㆃ:I

    const/16 v24, 0xd

    :goto_5
    const/16 v9, 0x18

    if-ge v5, v9, :cond_4

    .line 155
    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    aput v22, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 158
    :cond_4
    iput v10, v2, Lnts/ख;->ㆃ:I

    .line 159
    iput v10, v3, Lnts/ख;->ㆃ:I

    .line 162
    iget-object v5, v2, Lnts/ख;->ᾨ:[I

    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    aget v25, v9, v22

    aput v25, v5, v22

    .line 163
    aget v25, v9, v21

    aput v25, v5, v21

    .line 164
    aget v25, v9, v16

    aput v25, v5, v16

    .line 165
    aget v25, v9, v20

    aput v25, v5, v20

    .line 166
    aget v25, v9, v7

    aput v25, v5, v7

    .line 167
    aget v25, v9, v18

    aput v25, v5, v18

    .line 168
    aget v25, v9, v6

    aput v25, v5, v6

    .line 169
    aget v25, v9, v15

    aput v25, v5, v15

    .line 170
    aget v25, v9, v13

    aput v25, v5, v13

    .line 171
    aget v25, v9, v12

    aput v25, v5, v12

    .line 172
    aget v25, v9, v11

    aput v25, v5, v11

    .line 173
    aget v25, v9, v14

    aput v25, v5, v14

    .line 176
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    aput v22, v5, v22

    .line 177
    aput v22, v5, v21

    .line 178
    aput v22, v5, v16

    .line 179
    aput v22, v5, v20

    const/16 v25, 0x15

    .line 180
    aget v26, v9, v25

    aput v26, v5, v7

    const/16 v26, 0x16

    .line 181
    aget v27, v9, v26

    aput v27, v5, v18

    .line 182
    aget v9, v9, v17

    aput v9, v5, v6

    .line 183
    aput v22, v5, v15

    .line 184
    aput v22, v5, v13

    .line 185
    aput v22, v5, v12

    .line 186
    aput v22, v5, v11

    .line 187
    aput v22, v5, v14

    .line 188
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 189
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 192
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    aget v27, v9, v10

    aput v27, v5, v22

    .line 193
    aget v27, v9, v24

    aput v27, v5, v21

    .line 194
    aget v27, v9, v8

    aput v27, v5, v16

    .line 195
    aget v27, v9, v19

    aput v27, v5, v20

    .line 196
    aget v27, v9, v4

    aput v27, v5, v7

    .line 197
    aget v27, v9, v23

    aput v27, v5, v18

    const/16 v27, 0x12

    .line 198
    aget v27, v9, v27

    aput v27, v5, v6

    const/16 v27, 0x13

    .line 199
    aget v27, v9, v27

    aput v27, v5, v15

    const/16 v27, 0x14

    .line 200
    aget v27, v9, v27

    aput v27, v5, v13

    .line 201
    aget v27, v9, v25

    aput v27, v5, v12

    .line 202
    aget v27, v9, v26

    aput v27, v5, v11

    .line 203
    aget v9, v9, v17

    aput v9, v5, v14

    .line 204
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 207
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    aget v27, v9, v25

    aput v27, v5, v22

    .line 208
    aget v27, v9, v26

    aput v27, v5, v21

    .line 209
    aget v27, v9, v17

    aput v27, v5, v16

    .line 210
    aget v27, v9, v10

    aput v27, v5, v20

    .line 211
    aget v27, v9, v24

    aput v27, v5, v7

    .line 212
    aget v27, v9, v8

    aput v27, v5, v18

    .line 213
    aget v27, v9, v19

    aput v27, v5, v6

    .line 214
    aget v27, v9, v4

    aput v27, v5, v15

    .line 215
    aget v27, v9, v23

    aput v27, v5, v13

    const/16 v27, 0x12

    .line 216
    aget v27, v9, v27

    aput v27, v5, v12

    const/16 v27, 0x13

    .line 217
    aget v27, v9, v27

    aput v27, v5, v11

    const/16 v27, 0x14

    .line 218
    aget v9, v9, v27

    aput v9, v5, v14

    .line 219
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 222
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    aput v22, v5, v22

    .line 223
    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    aget v27, v9, v17

    aput v27, v5, v21

    .line 224
    aput v22, v5, v16

    const/16 v27, 0x14

    .line 225
    aget v27, v9, v27

    aput v27, v5, v20

    .line 226
    aget v27, v9, v10

    aput v27, v5, v7

    .line 227
    aget v27, v9, v24

    aput v27, v5, v18

    .line 228
    aget v27, v9, v8

    aput v27, v5, v6

    .line 229
    aget v27, v9, v19

    aput v27, v5, v15

    .line 230
    aget v27, v9, v4

    aput v27, v5, v13

    .line 231
    aget v27, v9, v23

    aput v27, v5, v12

    const/16 v27, 0x12

    .line 232
    aget v27, v9, v27

    aput v27, v5, v11

    const/16 v27, 0x13

    .line 233
    aget v9, v9, v27

    aput v9, v5, v14

    .line 234
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 239
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    aput v22, v5, v21

    .line 241
    aput v22, v5, v20

    .line 242
    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    const/16 v27, 0x14

    aget v27, v9, v27

    aput v27, v5, v7

    .line 243
    aget v27, v9, v25

    aput v27, v5, v18

    .line 244
    aget v27, v9, v26

    aput v27, v5, v6

    .line 245
    aget v9, v9, v17

    aput v9, v5, v15

    .line 246
    aput v22, v5, v13

    .line 247
    aput v22, v5, v12

    .line 248
    aput v22, v5, v11

    .line 249
    aput v22, v5, v14

    .line 250
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 254
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    const/16 v27, 0x14

    aget v27, v9, v27

    aput v27, v5, v22

    .line 257
    aget v27, v9, v25

    aput v27, v5, v20

    .line 258
    aget v27, v9, v26

    aput v27, v5, v7

    .line 259
    aget v9, v9, v17

    aput v9, v5, v18

    .line 260
    aput v22, v5, v6

    .line 261
    aput v22, v5, v15

    .line 262
    aput v22, v5, v13

    .line 263
    aput v22, v5, v12

    .line 264
    aput v22, v5, v11

    .line 265
    aput v22, v5, v14

    .line 266
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 270
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    aget v27, v9, v17

    aput v27, v5, v22

    .line 271
    aget v10, v9, v10

    aput v10, v5, v21

    .line 272
    aget v10, v9, v24

    aput v10, v5, v16

    .line 273
    aget v8, v9, v8

    aput v8, v5, v20

    .line 274
    aget v8, v9, v19

    aput v8, v5, v7

    .line 275
    aget v4, v9, v4

    aput v4, v5, v18

    .line 276
    aget v4, v9, v23

    aput v4, v5, v6

    const/16 v4, 0x12

    .line 277
    aget v4, v9, v4

    aput v4, v5, v15

    const/16 v4, 0x13

    .line 278
    aget v4, v9, v4

    aput v4, v5, v13

    const/16 v4, 0x14

    .line 279
    aget v4, v9, v4

    aput v4, v5, v12

    .line 280
    aget v4, v9, v25

    aput v4, v5, v11

    .line 281
    aget v4, v9, v26

    aput v4, v5, v14

    move v4, v14

    :goto_6
    if-lez v4, :cond_5

    .line 284
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    aget v5, v5, v4

    if-nez v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 285
    iput v4, v3, Lnts/ख;->ㆃ:I

    .line 287
    invoke-static {v3, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 288
    invoke-static {v2, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 289
    :cond_6
    invoke-static {v2, v3, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 293
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aput v22, v4, v22

    .line 294
    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    const/16 v8, 0x14

    aget v8, v5, v8

    aput v8, v4, v21

    .line 295
    aget v8, v5, v25

    aput v8, v4, v16

    .line 296
    aget v8, v5, v26

    aput v8, v4, v20

    .line 297
    aget v5, v5, v17

    aput v5, v4, v7

    .line 298
    aput v22, v4, v18

    .line 299
    aput v22, v4, v6

    .line 300
    aput v22, v4, v15

    .line 301
    aput v22, v4, v13

    .line 302
    aput v22, v4, v12

    .line 303
    aput v22, v4, v11

    .line 304
    aput v22, v4, v14

    move v4, v14

    :goto_7
    if-lez v4, :cond_7

    .line 307
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    aget v5, v5, v4

    if-nez v5, :cond_7

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 308
    iput v4, v3, Lnts/ख;->ㆃ:I

    .line 310
    invoke-static {v3, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 311
    invoke-static {v2, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 312
    :cond_8
    invoke-static {v2, v3, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 317
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aput v22, v4, v21

    .line 318
    aput v22, v4, v16

    .line 319
    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v5, v5, v17

    aput v5, v4, v20

    .line 320
    aput v5, v4, v7

    .line 321
    aput v22, v4, v18

    .line 322
    aput v22, v4, v6

    .line 323
    aput v22, v4, v15

    .line 324
    aput v22, v4, v13

    .line 325
    aput v22, v4, v12

    .line 326
    aput v22, v4, v11

    .line 327
    aput v22, v4, v14

    :goto_8
    if-lez v14, :cond_9

    .line 330
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aget v4, v4, v14

    if-nez v4, :cond_9

    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 331
    iput v14, v3, Lnts/ख;->ㆃ:I

    .line 333
    invoke-static {v3, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 334
    invoke-static {v2, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 335
    :cond_a
    invoke-static {v2, v3, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 337
    iget v3, v2, Lnts/ख;->ㆃ:I

    add-int/lit8 v3, v3, -0x1

    :goto_9
    if-lez v3, :cond_b

    .line 338
    iget-object v4, v2, Lnts/ख;->ᾨ:[I

    aget v4, v4, v3

    if-nez v4, :cond_b

    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 339
    iput v3, v2, Lnts/ख;->ㆃ:I

    .line 341
    :goto_a
    invoke-static {v2, v1}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 342
    invoke-static {v2, v1, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_a

    .line 344
    :cond_c
    invoke-static {v0, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto/16 :goto_1a

    :pswitch_2
    const/16 v24, 0xd

    .line 345
    iget v5, v0, Lnts/ख;->ㆃ:I

    :goto_b
    if-ge v5, v4, :cond_d

    .line 346
    iget-object v9, v0, Lnts/ख;->ᾨ:[I

    aput v22, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 349
    :cond_d
    iput v13, v2, Lnts/ख;->ㆃ:I

    .line 350
    iput v13, v3, Lnts/ख;->ㆃ:I

    .line 353
    iget-object v4, v2, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v9, v5, v22

    aput v9, v4, v22

    .line 354
    aget v9, v5, v21

    aput v9, v4, v21

    .line 355
    aget v9, v5, v16

    aput v9, v4, v16

    .line 356
    aget v9, v5, v20

    aput v9, v4, v20

    .line 357
    aget v9, v5, v7

    aput v9, v4, v7

    .line 358
    aget v9, v5, v18

    aput v9, v4, v18

    .line 359
    aget v9, v5, v6

    aput v9, v4, v6

    .line 360
    aget v9, v5, v15

    aput v9, v4, v15

    .line 363
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aput v22, v4, v22

    .line 364
    aput v22, v4, v21

    .line 365
    aput v22, v4, v16

    .line 366
    aget v9, v5, v14

    aput v9, v4, v20

    .line 367
    aget v9, v5, v10

    aput v9, v4, v7

    .line 368
    aget v9, v5, v24

    aput v9, v4, v18

    .line 369
    aget v9, v5, v8

    aput v9, v4, v6

    .line 370
    aget v5, v5, v19

    aput v5, v4, v15

    .line 371
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 372
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 375
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aput v22, v4, v22

    .line 376
    aput v22, v4, v21

    .line 377
    aput v22, v4, v16

    .line 378
    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v9, v5, v10

    aput v9, v4, v20

    .line 379
    aget v9, v5, v24

    aput v9, v4, v7

    .line 380
    aget v9, v5, v8

    aput v9, v4, v18

    .line 381
    aget v5, v5, v19

    aput v5, v4, v6

    .line 382
    aput v22, v4, v15

    .line 383
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 384
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 388
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v9, v5, v13

    aput v9, v4, v22

    .line 389
    aget v9, v5, v12

    aput v9, v4, v21

    .line 390
    aget v9, v5, v11

    aput v9, v4, v16

    .line 391
    aput v22, v4, v20

    .line 392
    aput v22, v4, v7

    .line 393
    aput v22, v4, v18

    .line 394
    aget v9, v5, v8

    aput v9, v4, v6

    .line 395
    aget v5, v5, v19

    aput v5, v4, v15

    .line 396
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 400
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v9, v5, v12

    aput v9, v4, v22

    .line 401
    aget v9, v5, v11

    aput v9, v4, v21

    .line 402
    aget v9, v5, v14

    aput v9, v4, v16

    .line 403
    aget v9, v5, v24

    aput v9, v4, v20

    .line 404
    aget v17, v5, v8

    aput v17, v4, v7

    .line 405
    aget v17, v5, v19

    aput v17, v4, v18

    .line 406
    aput v9, v4, v6

    .line 407
    aget v5, v5, v13

    aput v5, v4, v15

    .line 408
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 412
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v9, v5, v14

    aput v9, v4, v22

    .line 413
    aget v9, v5, v10

    aput v9, v4, v21

    .line 414
    aget v9, v5, v24

    aput v9, v4, v16

    .line 415
    aput v22, v4, v20

    .line 416
    aput v22, v4, v7

    .line 417
    aput v22, v4, v18

    .line 418
    aget v9, v5, v13

    aput v9, v4, v6

    .line 419
    aget v5, v5, v11

    aput v5, v4, v15

    move v4, v15

    :goto_c
    if-lez v4, :cond_e

    .line 422
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    aget v5, v5, v4

    if-nez v5, :cond_e

    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 423
    iput v4, v3, Lnts/ख;->ㆃ:I

    .line 425
    invoke-static {v3, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 426
    invoke-static {v2, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 427
    :cond_f
    invoke-static {v2, v3, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 431
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v9, v5, v10

    aput v9, v4, v22

    .line 432
    aget v9, v5, v24

    aput v9, v4, v21

    .line 433
    aget v9, v5, v8

    aput v9, v4, v16

    .line 434
    aget v9, v5, v19

    aput v9, v4, v20

    .line 435
    aput v22, v4, v7

    .line 436
    aput v22, v4, v18

    .line 437
    aget v9, v5, v12

    aput v9, v4, v6

    .line 438
    aget v5, v5, v14

    aput v5, v4, v15

    move v4, v15

    :goto_d
    if-lez v4, :cond_10

    .line 441
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    aget v5, v5, v4

    if-nez v5, :cond_10

    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 442
    iput v4, v3, Lnts/ख;->ㆃ:I

    .line 444
    invoke-static {v3, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 445
    invoke-static {v2, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 446
    :cond_11
    invoke-static {v2, v3, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 450
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v9, v5, v24

    aput v9, v4, v22

    .line 451
    aget v9, v5, v8

    aput v9, v4, v21

    .line 452
    aget v9, v5, v19

    aput v9, v4, v16

    .line 453
    aget v9, v5, v13

    aput v9, v4, v20

    .line 454
    aget v9, v5, v12

    aput v9, v4, v7

    .line 455
    aget v9, v5, v11

    aput v9, v4, v18

    .line 456
    aput v22, v4, v6

    .line 457
    aget v5, v5, v10

    aput v5, v4, v15

    move v4, v15

    :goto_e
    if-lez v4, :cond_12

    .line 460
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    aget v5, v5, v4

    if-nez v5, :cond_12

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 461
    iput v4, v3, Lnts/ख;->ㆃ:I

    .line 463
    invoke-static {v3, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 464
    invoke-static {v2, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 465
    :cond_13
    invoke-static {v2, v3, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 469
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v8, v5, v8

    aput v8, v4, v22

    .line 470
    aget v8, v5, v19

    aput v8, v4, v21

    .line 471
    aput v22, v4, v16

    .line 472
    aget v8, v5, v12

    aput v8, v4, v20

    .line 473
    aget v8, v5, v11

    aput v8, v4, v7

    .line 474
    aget v7, v5, v14

    aput v7, v4, v18

    .line 475
    aput v22, v4, v6

    .line 476
    aget v5, v5, v24

    aput v5, v4, v15

    :goto_f
    if-lez v15, :cond_14

    .line 479
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aget v4, v4, v15

    if-nez v4, :cond_14

    add-int/lit8 v15, v15, -0x1

    goto :goto_f

    :cond_14
    add-int/lit8 v15, v15, 0x1

    .line 480
    iput v15, v3, Lnts/ख;->ㆃ:I

    .line 482
    invoke-static {v3, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 483
    invoke-static {v2, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 484
    :cond_15
    invoke-static {v2, v3, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 486
    iget v3, v2, Lnts/ख;->ㆃ:I

    add-int/lit8 v3, v3, -0x1

    :goto_10
    if-lez v3, :cond_16

    .line 487
    iget-object v4, v2, Lnts/ख;->ᾨ:[I

    aget v4, v4, v3

    if-nez v4, :cond_16

    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_16
    add-int/lit8 v3, v3, 0x1

    .line 488
    iput v3, v2, Lnts/ख;->ㆃ:I

    .line 490
    :goto_11
    invoke-static {v2, v1}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 491
    invoke-static {v2, v1, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_11

    .line 493
    :cond_17
    invoke-static {v0, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto/16 :goto_1a

    :pswitch_3
    const/16 v24, 0xd

    .line 494
    iget v4, v0, Lnts/ख;->ㆃ:I

    :goto_12
    if-ge v4, v8, :cond_18

    .line 495
    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aput v22, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 498
    :cond_18
    iput v15, v2, Lnts/ख;->ㆃ:I

    .line 499
    iput v15, v3, Lnts/ख;->ㆃ:I

    .line 502
    iget-object v4, v2, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v8, v5, v22

    aput v8, v4, v22

    .line 503
    aget v8, v5, v21

    aput v8, v4, v21

    .line 504
    aget v8, v5, v16

    aput v8, v4, v16

    .line 505
    aget v8, v5, v20

    aput v8, v4, v20

    .line 506
    aget v8, v5, v7

    aput v8, v4, v7

    .line 507
    aget v8, v5, v18

    aput v8, v4, v18

    .line 508
    aget v8, v5, v6

    aput v8, v4, v6

    .line 511
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aput v22, v4, v22

    .line 512
    aput v22, v4, v21

    .line 513
    aput v22, v4, v16

    .line 514
    aget v8, v5, v15

    aput v8, v4, v20

    .line 515
    aget v8, v5, v13

    aput v8, v4, v7

    .line 516
    aget v8, v5, v12

    aput v8, v4, v18

    .line 517
    aget v5, v5, v11

    aput v5, v4, v6

    .line 518
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 526
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v8, v5, v14

    aput v8, v4, v20

    .line 527
    aget v8, v5, v10

    aput v8, v4, v7

    .line 528
    aget v5, v5, v24

    aput v5, v4, v18

    .line 529
    aput v22, v4, v6

    .line 530
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 534
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v8, v5, v15

    aput v8, v4, v22

    .line 535
    aget v8, v5, v13

    aput v8, v4, v21

    .line 536
    aget v8, v5, v12

    aput v8, v4, v16

    .line 537
    aget v8, v5, v11

    aput v8, v4, v20

    .line 538
    aget v8, v5, v14

    aput v8, v4, v7

    .line 539
    aget v8, v5, v10

    aput v8, v4, v18

    .line 540
    aget v5, v5, v24

    aput v5, v4, v6

    .line 541
    iget v4, v3, Lnts/ख;->ㆃ:I

    add-int/lit8 v4, v4, -0x1

    :goto_13
    if-lez v4, :cond_19

    .line 542
    iget-object v5, v3, Lnts/ख;->ᾨ:[I

    aget v5, v5, v4

    if-nez v5, :cond_19

    add-int/lit8 v4, v4, -0x1

    goto :goto_13

    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 543
    iput v4, v3, Lnts/ख;->ㆃ:I

    .line 545
    invoke-static {v3, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 546
    invoke-static {v2, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 547
    :cond_1a
    invoke-static {v2, v3, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 550
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v8, v5, v14

    aput v8, v4, v22

    .line 551
    aget v8, v5, v10

    aput v8, v4, v21

    .line 552
    aget v5, v5, v24

    aput v5, v4, v16

    .line 553
    aput v22, v4, v20

    .line 554
    aput v22, v4, v7

    .line 555
    aput v22, v4, v18

    .line 556
    aput v22, v4, v6

    :goto_14
    if-lez v16, :cond_1b

    .line 558
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aget v4, v4, v16

    if-nez v4, :cond_1b

    add-int/lit8 v16, v16, -0x1

    goto :goto_14

    :cond_1b
    add-int/lit8 v4, v16, 0x1

    .line 559
    iput v4, v3, Lnts/ख;->ㆃ:I

    .line 561
    invoke-static {v3, v2}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 562
    invoke-static {v2, v1, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 563
    :cond_1c
    invoke-static {v2, v3, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 565
    iget v3, v2, Lnts/ख;->ㆃ:I

    add-int/lit8 v3, v3, -0x1

    :goto_15
    if-lez v3, :cond_1d

    .line 566
    iget-object v4, v2, Lnts/ख;->ᾨ:[I

    aget v4, v4, v3

    if-nez v4, :cond_1d

    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    .line 567
    iput v3, v2, Lnts/ख;->ㆃ:I

    .line 569
    :goto_16
    invoke-static {v2, v1}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 570
    invoke-static {v2, v1, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_16

    .line 572
    :cond_1e
    invoke-static {v0, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto/16 :goto_1a

    .line 573
    :pswitch_4
    iget v4, v0, Lnts/ख;->ㆃ:I

    :goto_17
    if-ge v4, v10, :cond_1f

    .line 574
    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aput v22, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 576
    :cond_1f
    iget-object v4, v2, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v8, v5, v22

    aput v8, v4, v22

    .line 577
    aget v8, v5, v21

    aput v8, v4, v21

    .line 578
    aget v8, v5, v16

    aput v8, v4, v16

    .line 579
    aget v8, v5, v20

    aput v8, v4, v20

    .line 580
    aget v8, v5, v7

    aput v8, v4, v7

    .line 581
    aget v8, v5, v18

    aput v8, v4, v18

    .line 582
    iput v6, v2, Lnts/ख;->ㆃ:I

    .line 584
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aget v8, v5, v6

    aput v8, v4, v22

    .line 585
    aget v5, v5, v15

    aput v5, v4, v21

    .line 586
    aput v8, v4, v16

    .line 587
    aput v5, v4, v20

    .line 588
    iput v7, v3, Lnts/ख;->ㆃ:I

    .line 589
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 591
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    aput v22, v4, v22

    .line 592
    aput v22, v4, v21

    .line 593
    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v8, v5, v13

    aput v8, v4, v16

    .line 594
    aget v5, v5, v12

    aput v5, v4, v20

    .line 595
    aput v8, v4, v7

    .line 596
    aput v5, v4, v18

    .line 597
    iput v6, v3, Lnts/ख;->ㆃ:I

    .line 598
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 600
    iget-object v4, v3, Lnts/ख;->ᾨ:[I

    iget-object v5, v0, Lnts/ख;->ᾨ:[I

    aget v8, v5, v11

    aput v8, v4, v22

    .line 601
    aget v5, v5, v14

    aput v5, v4, v21

    .line 602
    aput v8, v4, v16

    .line 603
    aput v5, v4, v20

    .line 604
    aput v8, v4, v7

    .line 605
    aput v5, v4, v18

    .line 606
    iput v6, v3, Lnts/ख;->ㆃ:I

    .line 607
    invoke-static {v2, v3, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 609
    iget v3, v2, Lnts/ख;->ㆃ:I

    add-int/lit8 v3, v3, -0x1

    :goto_18
    if-lez v3, :cond_20

    .line 610
    iget-object v4, v2, Lnts/ख;->ᾨ:[I

    aget v4, v4, v3

    if-nez v4, :cond_20

    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    :cond_20
    add-int/lit8 v3, v3, 0x1

    .line 611
    iput v3, v2, Lnts/ख;->ㆃ:I

    .line 613
    :goto_19
    invoke-static {v2, v1}, Lnts/ख;->ᇭ(Lnts/ख;Lnts/ख;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 614
    invoke-static {v2, v1, v2}, Lnts/ख;->Ͼ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_19

    .line 617
    :cond_21
    invoke-static {v0, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 618
    :cond_22
    :goto_1a
    iget v2, v0, Lnts/ख;->ㆃ:I

    :goto_1b
    iget v3, v1, Lnts/ख;->ㆃ:I

    if-ge v2, v3, :cond_23

    .line 619
    iget-object v3, v0, Lnts/ख;->ᾨ:[I

    aput v22, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 621
    :cond_23
    iput v3, v0, Lnts/ख;->ㆃ:I

    return-void

    :pswitch_data_0
    .packed-switch 0x6101
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I[Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v7, p6

    .line 622
    iget v0, p0, Lnts/ख;->ㆃ:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 623
    iput v1, v7, Lnts/ख;->ㆃ:I

    return-void

    .line 627
    :cond_0
    aget-object v6, p5, v1

    const/4 v0, 0x1

    .line 628
    aget-object v8, p5, v0

    const/4 v0, 0x2

    .line 629
    aget-object v9, p5, v0

    const/4 v0, 0x3

    .line 630
    aget-object v10, p5, v0

    const/4 v0, 0x4

    .line 631
    aget-object v3, p5, v0

    const/4 v0, 0x5

    .line 632
    aget-object v4, p5, v0

    move-object v1, p2

    move-object v0, p2

    move-object v2, p3

    move v5, p4

    .line 633
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 634
    invoke-static {p0, v6, p3, v9}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 635
    invoke-static {p0, v6, p3, v8}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v0, v8

    move-object v1, v9

    .line 636
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 637
    invoke-static {v6, v6, p3, v3}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 638
    invoke-static {v3, v6, p3, v9}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 639
    invoke-static {p1, p1, p3, v6}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v1, p2

    move-object v0, v6

    move-object/from16 v6, p8

    .line 640
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v6, v0

    move-object v1, v6

    move-object/from16 v6, p7

    .line 641
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, p0

    move-object p1, v0

    move-object v0, v6

    move-object v6, v10

    .line 642
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object p0, v6

    move-object/from16 v1, p7

    move-object v6, p1

    move-object/from16 v0, p7

    .line 643
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object p1, v0

    .line 644
    invoke-static {v6, p3, p1}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v1, v9

    move-object v0, v9

    .line 645
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v0

    .line 646
    invoke-static {p0, p0, p3, v8}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 647
    invoke-static {v6, v8, p3, v7}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 648
    invoke-static {p0, v7, p3, v6}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v0, v6

    move-object v6, v8

    .line 649
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v6, v0

    .line 650
    invoke-static {v8, p1, p3, v6}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 651
    invoke-static {p1, v6}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 130
    invoke-static {p0, p1, p6}, Lnts/ख;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 131
    invoke-static {p6, p2, p3, p4, p5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I)V

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 701
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 702
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 703
    new-instance v8, Lnts/ख;

    invoke-direct {v8}, Lnts/ख;-><init>()V

    move-object v6, v8

    .line 704
    new-instance v8, Lnts/ख;

    invoke-direct {v8}, Lnts/ख;-><init>()V

    .line 705
    new-instance v9, Lnts/ख;

    invoke-direct {v9}, Lnts/ख;-><init>()V

    .line 706
    new-instance v10, Lnts/ख;

    invoke-direct {v10}, Lnts/ख;-><init>()V

    const/4 v3, 0x7

    .line 708
    new-array v7, v3, [Lnts/ख;

    const/4 v13, 0x0

    move v4, v13

    :goto_0
    if-ge v4, v3, :cond_0

    .line 710
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    aput-object v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 711
    :cond_0
    iget v3, v2, Lnts/ख;->ㆃ:I

    iput v3, v0, Lnts/ख;->ㆃ:I

    .line 712
    sget-object v3, Lnts/ख;->ౠ:Lnts/ख;

    iget-object v3, v3, Lnts/ख;->ᾨ:[I

    iget-object v4, v0, Lnts/ख;->ᾨ:[I

    iget v5, v0, Lnts/ख;->ㆃ:I

    const/4 v14, 0x1

    sub-int/2addr v5, v14

    invoke-static {v3, v13, v4, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    iget-object v3, v0, Lnts/ख;->ᾨ:[I

    const/4 v15, 0x3

    aput v15, v3, v13

    .line 714
    invoke-static {v11, v0, v2, v0}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 715
    invoke-static {v0, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v16

    .line 717
    iput v13, v0, Lnts/ख;->ㆃ:I

    .line 719
    invoke-static {v12}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v3

    sub-int/2addr v3, v14

    :goto_1
    if-lt v3, v14, :cond_5

    .line 720
    invoke-static {v12, v3}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v4, p1

    move-object v5, v2

    move/from16 v17, v3

    move-object v2, v6

    move-object/from16 v3, p0

    move/from16 v6, p5

    .line 721
    invoke-static/range {v0 .. v10}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I[Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_2

    :cond_1
    move/from16 v17, v3

    move-object v2, v6

    .line 723
    invoke-static {v8, v0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 724
    invoke-static {v9, v1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 725
    invoke-static {v10, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    :goto_2
    if-eqz v16, :cond_2

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object v6, v0

    move-object v5, v7

    move-object v0, v8

    move-object v7, v1

    move-object v8, v2

    move-object v1, v9

    move-object v2, v10

    .line 729
    invoke-static/range {v0 .. v8}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I[Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object/from16 v18, v5

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v19, v0

    move-object/from16 v23, v2

    move-object v2, v3

    move-object v10, v8

    move-object v11, v9

    move/from16 v22, v14

    move-object v14, v1

    goto/16 :goto_4

    :cond_2
    move-object/from16 v18, v7

    move-object v7, v0

    move-object v0, v10

    move-object v10, v8

    move-object v8, v1

    move-object v1, v9

    move-object v9, v2

    move-object/from16 v2, p2

    .line 730
    iget v3, v10, Lnts/ख;->ㆃ:I

    if-nez v3, :cond_3

    .line 731
    iput v13, v7, Lnts/ख;->ㆃ:I

    move-object/from16 v23, v0

    move-object v11, v9

    move-object/from16 v19, v10

    move/from16 v22, v14

    move-object v14, v1

    move-object v10, v8

    goto/16 :goto_4

    .line 735
    :cond_3
    aget-object v6, v18, v13

    .line 736
    aget-object v19, v18, v14

    const/4 v3, 0x2

    .line 737
    aget-object v20, v18, v3

    .line 738
    aget-object v21, v18, v15

    const/4 v3, 0x4

    .line 739
    aget-object v3, v18, v3

    const/4 v4, 0x5

    .line 740
    aget-object v4, v18, v4

    .line 742
    invoke-static {v11, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v1

    move-object v1, v0

    move/from16 v22, v14

    move-object v14, v5

    move/from16 v5, p5

    .line 743
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object/from16 v23, v0

    move-object v0, v6

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v6, v20

    .line 744
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v6

    move-object v6, v0

    move-object v0, v11

    .line 745
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v11, v6

    goto :goto_3

    :cond_4
    move-object/from16 v23, v0

    move-object v11, v6

    move/from16 v22, v14

    move-object v14, v1

    move-object/from16 v1, v20

    .line 747
    invoke-static {v11, v2}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;)V

    :goto_3
    move-object v0, v1

    move-object v1, v10

    move-object v5, v10

    move-object v10, v0

    move-object v0, v5

    move/from16 v5, p5

    move-object/from16 v6, v19

    .line 748
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object/from16 v19, v0

    move-object v0, v6

    .line 749
    invoke-static {v0, v0, v2, v10}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 750
    invoke-static {v10, v0, v2, v0}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 751
    invoke-static {v11, v0, v2, v10}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 752
    invoke-static {v14, v14, v2, v11}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v6, v9

    move-object/from16 v1, v23

    move-object v9, v0

    move-object v0, v11

    .line 753
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v11, v6

    move-object v1, v0

    move-object/from16 v2, p2

    move-object v6, v8

    .line 754
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v8, v0

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v6, v21

    .line 755
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v0

    move-object v2, v8

    move-object v8, v6

    move-object v6, v2

    move-object/from16 v2, p2

    .line 756
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 757
    invoke-static {v6, v2, v0}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v1, v10

    move-object v5, v10

    move-object v10, v0

    move-object v0, v5

    move/from16 v5, p5

    .line 758
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v0

    move-object v0, v6

    .line 759
    invoke-static {v8, v8, v2, v9}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 760
    invoke-static {v0, v9, v2, v7}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 761
    invoke-static {v8, v7, v2, v0}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v6, v9

    .line 762
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 763
    invoke-static {v6, v10, v2, v0}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 764
    invoke-static {v10, v0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    :goto_4
    add-int/lit8 v3, v17, -0x1

    move-object v0, v7

    move-object v1, v10

    move-object v6, v11

    move-object v9, v14

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move/from16 v14, v22

    move-object/from16 v10, v23

    move-object/from16 v11, p3

    goto/16 :goto_1

    :cond_5
    move-object v11, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v23, v10

    move/from16 v22, v14

    move-object v7, v0

    move-object v10, v1

    move-object v14, v9

    .line 765
    invoke-static {v12, v13}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p5

    move-object v5, v2

    move-object v0, v7

    move-object v1, v10

    move-object v2, v11

    move-object v9, v14

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v10, v23

    .line 766
    invoke-static/range {v0 .. v10}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I[Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v7, v0

    move-object v6, v2

    move-object v2, v5

    move-object v0, v8

    move-object v8, v1

    .line 768
    invoke-static {v7, v0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 769
    invoke-static {v8, v9}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 770
    invoke-static {v6, v10}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto :goto_5

    :cond_6
    move-object v8, v10

    move-object v6, v11

    .line 773
    :goto_5
    iget v0, v7, Lnts/ख;->ㆃ:I

    if-eqz v0, :cond_d

    invoke-static {v6, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_a

    .line 774
    :cond_7
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 775
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 776
    new-instance v3, Lnts/ख;

    invoke-direct {v3}, Lnts/ख;-><init>()V

    .line 777
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 778
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    .line 779
    new-instance v9, Lnts/ख;

    invoke-direct {v9}, Lnts/ख;-><init>()V

    .line 780
    new-instance v10, Lnts/ख;

    invoke-direct {v10}, Lnts/ख;-><init>()V

    .line 781
    new-instance v11, Lnts/ख;

    invoke-direct {v11}, Lnts/ख;-><init>()V

    .line 783
    invoke-static {v5, v6}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 784
    invoke-static {v9, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 786
    invoke-static {v10, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    .line 787
    invoke-static {v11, v2}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;)V

    .line 789
    :goto_6
    invoke-static {v5, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v9, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 790
    :goto_7
    iget-object v6, v5, Lnts/ख;->ᾨ:[I

    aget v6, v6, v13

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_8

    .line 791
    invoke-static {v5, v2, v5}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 792
    invoke-static {v10, v2, v10}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_7

    .line 795
    :cond_8
    :goto_8
    iget-object v6, v9, Lnts/ख;->ᾨ:[I

    aget v6, v6, v13

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_9

    .line 796
    invoke-static {v9, v2, v9}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 797
    invoke-static {v11, v2, v11}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_8

    .line 800
    :cond_9
    invoke-static {v5, v9, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result v6

    if-ltz v6, :cond_a

    .line 801
    invoke-static {v5, v9, v2, v5}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 802
    invoke-static {v10, v11, v2, v10}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_6

    .line 804
    :cond_a
    invoke-static {v9, v5, v2, v9}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 805
    invoke-static {v11, v10, v2, v11}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_6

    .line 809
    :cond_b
    invoke-static {v5, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 810
    invoke-static {v0, v10}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto :goto_9

    .line 812
    :cond_c
    invoke-static {v0, v11}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 814
    :goto_9
    iget v5, v2, Lnts/ख;->ㆃ:I

    iput v5, v0, Lnts/ख;->ㆃ:I

    move-object v6, v1

    move-object v1, v0

    move/from16 v5, p5

    .line 815
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v6

    move-object/from16 v6, p6

    .line 816
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v0, v8

    move-object v8, v1

    move-object v1, v6

    move-object/from16 v6, p7

    .line 817
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v6, v1

    move-object v0, v7

    move-object v1, v8

    .line 818
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    return-void

    :cond_d
    :goto_a
    move-object/from16 v6, p6

    .line 819
    iput v13, v6, Lnts/ख;->ㆃ:I

    move-object/from16 v6, p7

    .line 820
    invoke-static {v6, v2}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;)V

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v12, p5

    .line 1064
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 1065
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 1066
    new-instance v2, Lnts/ख;

    invoke-direct {v2}, Lnts/ख;-><init>()V

    .line 1067
    new-instance v9, Lnts/ख;

    invoke-direct {v9}, Lnts/ख;-><init>()V

    .line 1068
    new-instance v10, Lnts/ख;

    invoke-direct {v10}, Lnts/ख;-><init>()V

    .line 1069
    new-instance v11, Lnts/ख;

    invoke-direct {v11}, Lnts/ख;-><init>()V

    const/4 v13, 0x0

    .line 1071
    iput v13, v0, Lnts/ख;->ㆃ:I

    .line 1073
    invoke-static {v12}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v14, v3

    :goto_0
    if-lez v14, :cond_1

    .line 1074
    invoke-static {v12, v14}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    .line 1075
    invoke-static/range {v0 .. v11}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_1

    .line 1077
    :cond_0
    invoke-static {v9, v0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 1078
    invoke-static {v10, v1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 1079
    invoke-static {v11, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    :goto_1
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v0, v9

    move-object v1, v10

    move-object v9, v2

    move-object v2, v11

    .line 1082
    invoke-static/range {v0 .. v9}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v10, v1

    move-object v11, v2

    move-object v1, v8

    move-object v2, v9

    move-object v9, v0

    move-object v0, v7

    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 1085
    :cond_1
    invoke-static {v12, v13}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    .line 1086
    invoke-static/range {v0 .. v11}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v8, v1

    .line 1088
    invoke-static {v0, v9}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 1089
    invoke-static {v8, v10}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 1090
    invoke-static {v2, v11}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    move-object v8, v1

    .line 1093
    :goto_2
    iget p0, v0, Lnts/ख;->ㆃ:I

    if-eqz p0, :cond_4

    invoke-static {v2, v7}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    .line 1094
    :cond_3
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 1095
    new-instance p0, Lnts/ख;

    invoke-direct {p0}, Lnts/ख;-><init>()V

    .line 1096
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 1098
    invoke-static {v2, v7, v1}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    move/from16 v3, p6

    .line 1099
    invoke-static {v1, v7, v3, p0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object/from16 v5, p7

    move-object v2, v7

    .line 1100
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v1, p0

    move-object/from16 v5, p8

    move-object v0, v8

    .line 1101
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    return-void

    :cond_4
    :goto_3
    move-object/from16 v5, p7

    .line 1102
    iput v13, v5, Lnts/ख;->ㆃ:I

    move-object/from16 v5, p8

    .line 1103
    invoke-static {v5, v7}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;)V

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 983
    iget v0, p0, Lnts/ख;->ㆃ:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 984
    iput p0, p7, Lnts/ख;->ㆃ:I

    return-void

    .line 988
    :cond_0
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 989
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 990
    new-instance v1, Lnts/ख;

    invoke-direct {v1}, Lnts/ख;-><init>()V

    .line 991
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 993
    invoke-static {p2, p5, p6, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 994
    invoke-static {p0, p5, p6, v1}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v2, p5

    move v3, p6

    move-object/from16 v5, p9

    .line 995
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object p0, v0

    move-object v0, v1

    .line 996
    invoke-static {v0, p5, p6, p7}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 997
    invoke-static {p0, p5, p6, v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v5, v0

    move-object v1, v6

    move-object v0, p4

    .line 998
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object p2, v5

    .line 999
    invoke-static {p7, p2, p5, p7}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 1000
    invoke-static {p1, p5, p6, p0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 1001
    invoke-static {p3, p5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object/from16 v5, p9

    .line 1002
    invoke-static {p0, v5, p5, p0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_0

    :cond_1
    move-object/from16 v5, p9

    .line 1003
    invoke-static {p3, p5}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result p1

    if-nez p1, :cond_2

    move-object v0, v5

    move-object v5, v1

    move-object v1, v0

    move-object v0, p3

    move-object v2, p5

    move v3, p6

    .line 1004
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v1, v5

    .line 1005
    invoke-static {p0, v1, p5, p0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 1008
    :cond_2
    :goto_0
    invoke-static {p0, p2, p5, p0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v1, p0

    move-object v2, p5

    move v3, p6

    move-object v0, p7

    move-object v5, p8

    .line 1009
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v0, p2

    move-object v5, v1

    move-object/from16 v1, p9

    .line 1010
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object p0, v5

    move-object v5, p8

    .line 1011
    invoke-static {p8, p0, p5, p8}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I[Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v6, p8

    move-object/from16 v0, p9

    move-object/from16 v2, p10

    .line 652
    iget v3, v9, Lnts/ख;->ㆃ:I

    if-nez v3, :cond_0

    .line 653
    invoke-static {v6, v1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 654
    invoke-static {v0, v7}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move-object/from16 v8, p2

    .line 655
    invoke-static {v2, v8}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    return-void

    :cond_0
    move-object/from16 v8, p2

    .line 659
    iget v3, v1, Lnts/ख;->ㆃ:I

    if-nez v3, :cond_1

    .line 660
    invoke-static {v6, v9}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move-object/from16 v3, p4

    .line 661
    invoke-static {v0, v3}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 662
    invoke-static {v2, v10}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    return-void

    :cond_1
    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 666
    aget-object v5, p7, v4

    const/4 v11, 0x1

    .line 667
    aget-object v16, p7, v11

    const/4 v11, 0x2

    .line 668
    aget-object v17, p7, v11

    const/4 v11, 0x3

    .line 669
    aget-object v18, p7, v11

    const/4 v11, 0x4

    .line 670
    aget-object v19, p7, v11

    const/4 v11, 0x5

    .line 671
    aget-object v11, p7, v11

    const/4 v12, 0x6

    .line 672
    aget-object v12, p7, v12

    move-object v13, v11

    move-object/from16 v11, p2

    move/from16 v15, p6

    move-object v14, v12

    move-object v12, v10

    move-object v10, v8

    .line 673
    invoke-static/range {v10 .. v16}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v11, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v17

    .line 674
    invoke-static/range {v10 .. v16}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v8, v10

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move v13, v15

    move-object v14, v5

    .line 675
    invoke-static/range {v8 .. v14}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v5, v8

    .line 676
    invoke-static {v14, v1, v10, v5}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move/from16 v13, p6

    move-object v9, v3

    move-object/from16 v8, v16

    .line 677
    invoke-static/range {v8 .. v14}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v15, v8

    move-object v6, v14

    .line 678
    invoke-static {v6, v7, v10, v15}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 679
    invoke-static {v5, v10}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 680
    invoke-static {v15, v10}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 681
    new-instance v2, Lnts/ख;

    invoke-direct {v2}, Lnts/ख;-><init>()V

    .line 682
    invoke-static {v2, v10}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    move-object/from16 v1, p4

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v8, p10

    move-object v7, v0

    move-object v3, v10

    move-object/from16 v0, p3

    .line 683
    invoke-static/range {v0 .. v8}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I[Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    return-void

    :cond_2
    move-object/from16 v0, p8

    .line 685
    iput v4, v0, Lnts/ख;->ㆃ:I

    return-void

    :cond_3
    move-object/from16 v8, p2

    move/from16 v13, p6

    move-object/from16 v0, p8

    move-object v14, v2

    move-object v9, v5

    .line 688
    invoke-static/range {v8 .. v14}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v8, v9

    move-object/from16 v10, p5

    move-object/from16 v14, v18

    .line 689
    invoke-static/range {v8 .. v14}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v8, v14

    move-object/from16 v14, v19

    .line 690
    invoke-static/range {v8 .. v14}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v0, v8

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move v5, v13

    move-object/from16 v8, p9

    .line 691
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v12, v0

    move-object v11, v6

    .line 692
    invoke-static {v12, v11}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 693
    invoke-static {v12, v12, v10, v9}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v1, v15

    move/from16 v5, p6

    move-object/from16 v6, p8

    move-object v0, v15

    .line 694
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object/from16 v16, v0

    .line 695
    invoke-static {v6, v9, v10, v11}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 696
    invoke-static {v11, v14, v10, v6}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 697
    invoke-static {v12, v6, v10, v11}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v0, v11

    move-object v6, v12

    move-object/from16 v1, v16

    .line 698
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v7

    move-object v6, v0

    move-object v0, v14

    .line 699
    invoke-static/range {v0 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 700
    invoke-static {v12, v6, v10, v8}, Lnts/Ⴘ;->ౠ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    return-void
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;Lnts/ख;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    move-object/from16 v3, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 1012
    iget v4, v2, Lnts/ख;->ㆃ:I

    if-nez v4, :cond_0

    .line 1013
    invoke-static {v8, p0}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 1014
    invoke-static {v9, p1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 1015
    invoke-static {v10, v1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    return-void

    .line 1019
    :cond_0
    iget v4, p0, Lnts/ख;->ㆃ:I

    if-nez v4, :cond_1

    .line 1020
    invoke-static {v8, v2}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 1021
    invoke-static {v9, v7}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 1022
    invoke-static {v10, v3}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    return-void

    .line 1023
    :cond_1
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 1024
    new-instance v11, Lnts/ख;

    invoke-direct {v11}, Lnts/ख;-><init>()V

    .line 1025
    new-instance v12, Lnts/ख;

    invoke-direct {v12}, Lnts/ख;-><init>()V

    .line 1026
    new-instance v13, Lnts/ख;

    invoke-direct {v13}, Lnts/ख;-><init>()V

    .line 1027
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v4

    move/from16 v4, p8

    .line 1029
    invoke-static/range {v1 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    .line 1030
    invoke-static {v1, v2, v3, v11}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 1031
    invoke-static {v6, p0, v2, v8}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move v4, v3

    move-object v3, v2

    move-object v2, v8

    .line 1032
    invoke-static/range {v1 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object p0, v7

    move-object v7, v2

    move-object v2, p0

    move-object p0, v6

    move-object v1, v11

    move-object v6, v12

    .line 1033
    invoke-static/range {v1 .. v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    .line 1034
    invoke-static {p1, v5, v2, v9}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 1035
    invoke-static {v7, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    invoke-static {v9, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    invoke-static {p0, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v6, p8

    move-object v5, v2

    move-object v8, v9

    move-object v9, v10

    move-object v2, p0

    .line 1038
    invoke-static/range {v0 .. v9}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;Lnts/ख;)V

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 1040
    iput p0, v7, Lnts/ख;->ㆃ:I

    return-void

    :cond_3
    move-object v0, p0

    move-object/from16 p0, p4

    move-object/from16 v8, p5

    move/from16 v3, p8

    move-object v9, v10

    .line 1042
    invoke-static {v0, v2, v3, v9}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object/from16 v1, p10

    .line 1043
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v11, v0

    move-object v10, v1

    move-object v12, v5

    .line 1044
    invoke-static {v8, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1045
    invoke-static {v11, v6, v2, v11}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move/from16 v3, p8

    goto :goto_0

    .line 1046
    :cond_4
    invoke-static {v8, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    move/from16 v3, p8

    if-nez v0, :cond_5

    move-object v0, v6

    move-object v1, v8

    move-object v5, v13

    .line 1047
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    .line 1048
    invoke-static {v11, v5, v2, v11}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    goto :goto_1

    :cond_5
    :goto_0
    move-object v0, v6

    .line 1051
    :goto_1
    invoke-static {v7, v2, v3, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, v0

    move-object v5, v7

    move-object v0, v11

    .line 1052
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v6, v0

    move-object v0, v1

    .line 1053
    invoke-static {v10, v2, v3, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 1054
    invoke-static {v7, v0, v2, v7}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 1055
    invoke-static {v7, v12, v2, v7}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v5, v0

    move-object v1, v9

    move-object/from16 v0, p3

    .line 1056
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v8, v0

    move-object v0, v5

    .line 1057
    invoke-static {v0, v7, v2, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 1058
    invoke-static {v9, v2, v3, v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 1059
    invoke-static {v12, v9, v2, v12}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object v5, v10

    move-object v1, v12

    .line 1060
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    .line 1061
    invoke-static {v8, p0, v2, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move/from16 p3, p8

    move-object p1, v0

    move-object/from16 p2, v2

    move-object/from16 p4, v4

    move-object p0, v6

    move-object/from16 p5, v12

    .line 1062
    invoke-static/range {p0 .. p5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    .line 1063
    invoke-static {v5, v12, v2, v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    return-void
.end method

.method public static ㆃ(Lnts/ख;[I[I[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1143
    invoke-static {p0}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 1148
    invoke-static {p0, v1}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    move v3, v1

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_3

    .line 1156
    invoke-static {p0, v4}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_3
    if-ge v3, v0, :cond_5

    .line 1164
    invoke-static {p0, v3}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v2

    .line 1170
    :goto_4
    aput v0, p1, v2

    .line 1171
    aput v1, p2, v2

    .line 1172
    aput v4, p3, v2

    .line 1173
    aput v3, p4, v2

    return-void
.end method

.method public static ㆃ(ILnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v5, p6

    .line 890
    new-instance v7, Lnts/ख;

    invoke-direct {v7}, Lnts/ख;-><init>()V

    .line 891
    invoke-static {v1, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_a

    .line 892
    invoke-static {v2}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v0

    sub-int/2addr v0, v9

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    ushr-int/lit8 v1, v0, 0x5

    and-int/lit8 v0, v0, 0x1f

    .line 893
    iget v4, v7, Lnts/ख;->ㆃ:I

    add-int v6, v4, v1

    const/16 v10, 0x300

    if-ge v6, v10, :cond_9

    if-nez v0, :cond_3

    sub-int/2addr v4, v9

    :goto_0
    if-ltz v4, :cond_1

    .line 897
    iget-object v0, v7, Lnts/ख;->ᾨ:[I

    add-int v6, v4, v1

    aget v10, v0, v4

    aput v10, v0, v6

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 900
    iget-object v4, v7, Lnts/ख;->ᾨ:[I

    aput v8, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 902
    :cond_2
    iget v0, v7, Lnts/ख;->ㆃ:I

    add-int/2addr v0, v1

    iput v0, v7, Lnts/ख;->ㆃ:I

    goto :goto_4

    .line 904
    :cond_3
    iget-object v10, v7, Lnts/ख;->ᾨ:[I

    sub-int/2addr v4, v9

    aget v11, v10, v4

    rsub-int/lit8 v12, v0, 0x20

    ushr-int/2addr v11, v12

    aput v11, v10, v6

    :goto_2
    if-lt v4, v9, :cond_4

    .line 906
    iget-object v6, v7, Lnts/ख;->ᾨ:[I

    add-int v10, v4, v1

    aget v11, v6, v4

    shl-int/2addr v11, v0

    add-int/lit8 v13, v4, -0x1

    aget v13, v6, v13

    ushr-int/2addr v13, v12

    or-int/2addr v11, v13

    aput v11, v6, v10

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 908
    :cond_4
    iget-object v4, v7, Lnts/ख;->ᾨ:[I

    aget v6, v4, v9

    shl-int v0, v6, v0

    aput v0, v4, v1

    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_5

    .line 910
    iget-object v4, v7, Lnts/ख;->ᾨ:[I

    aput v8, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 913
    :cond_5
    iget-object v0, v7, Lnts/ख;->ᾨ:[I

    iget v4, v7, Lnts/ख;->ㆃ:I

    add-int/2addr v4, v1

    aget v0, v0, v4

    if-lez v0, :cond_6

    add-int/2addr v4, v9

    .line 914
    iput v4, v7, Lnts/ख;->ㆃ:I

    goto :goto_4

    .line 916
    :cond_6
    iput v4, v7, Lnts/ख;->ㆃ:I

    .line 917
    :goto_4
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 918
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    move-object/from16 v1, p3

    .line 919
    invoke-static {v5, v1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 921
    invoke-static {v7}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    :goto_5
    if-ltz v6, :cond_8

    .line 922
    invoke-static {v5, v2, v3, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 923
    invoke-static {v7, v6}, Lnts/ख;->ㆃ(Lnts/ख;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 924
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v1, v0

    move-object v0, v5

    goto :goto_6

    :cond_7
    move-object v1, v0

    move-object v0, v5

    .line 926
    invoke-static {v0, v1}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    :goto_6
    add-int/lit8 v6, v6, -0x1

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p3

    goto :goto_5

    :cond_8
    return v9

    .line 927
    :cond_9
    new-instance v0, Lnts/ẩ;

    sget-object v1, Lnts/ख;->ᰛ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v0, v5

    .line 928
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 929
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 931
    invoke-static {v1, v2, v7}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 932
    invoke-static {v7, v2, v3, v4}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    move v5, v3

    move-object/from16 v3, p3

    .line 933
    invoke-static/range {v2 .. v7}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v0, v2

    move v3, v5

    move-object v11, v6

    move-object v10, v7

    move-object/from16 v2, p2

    .line 934
    invoke-static {v10, v2, v4, v10}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 935
    invoke-static {v10, v1, v4, v10}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 936
    invoke-static {v4}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .line 937
    new-instance v13, Lnts/ख;

    invoke-direct {v13}, Lnts/ख;-><init>()V

    move v5, v2

    .line 938
    new-instance v2, Lnts/ख;

    invoke-direct {v2}, Lnts/ख;-><init>()V

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_d

    .line 939
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    .line 941
    invoke-static {v4}, Lnts/ख;->ㆃ(Lnts/ख;)I

    move-result v6

    sub-int/2addr v6, v9

    ushr-int/2addr v6, v9

    .line 943
    invoke-static {v13, v10}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move v7, v8

    :goto_7
    if-ge v7, v6, :cond_b

    .line 946
    invoke-static {v13, v4, v3, v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 947
    invoke-static {v5, v4, v3, v13}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 948
    invoke-static {v13, v10, v4, v13}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 949
    :cond_b
    invoke-static {v13, v4, v3, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 950
    invoke-static {v2, v13, v4, v2}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 951
    invoke-static {v10, v2, v4}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result v2

    if-nez v2, :cond_c

    .line 952
    invoke-static {v0, v13}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move-object v2, v4

    move/from16 v16, v8

    goto/16 :goto_b

    :cond_c
    move/from16 v16, v8

    goto :goto_a

    .line 957
    :cond_d
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 958
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    .line 959
    new-instance v7, Lnts/ख;

    invoke-direct {v7}, Lnts/ख;-><init>()V

    .line 960
    new-instance v14, Lnts/ख;

    invoke-direct {v14}, Lnts/ख;-><init>()V

    .line 962
    :goto_8
    iget v15, v4, Lnts/ख;->ㆃ:I

    invoke-static {v2, v15}, Lnts/ख;->ᾨ(Lnts/ख;I)V

    .line 963
    invoke-static {v2, v4, v3}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;I)V

    .line 964
    invoke-static {v13, v4}, Lnts/Ⴘ;->ᰛ(Lnts/ख;Lnts/ख;)V

    .line 965
    invoke-static {v14, v10}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    move/from16 v16, v8

    move v15, v9

    :goto_9
    add-int/lit8 v8, v12, -0x2

    if-gt v15, v8, :cond_e

    .line 968
    invoke-static {v14, v4, v3, v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object/from16 v17, v5

    move v5, v3

    move-object/from16 v3, v17

    .line 969
    invoke-static/range {v2 .. v7}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    move/from16 v17, v5

    move-object v5, v3

    move/from16 v3, v17

    .line 970
    invoke-static {v13, v2, v3, v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 971
    invoke-static {v7, v6, v2, v13}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 972
    invoke-static {v5, v10, v2, v14}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto :goto_9

    :cond_e
    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    .line 973
    invoke-static {v14, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v8

    if-nez v8, :cond_f

    :goto_a
    return v16

    .line 974
    :cond_f
    invoke-static {v13, v2, v3, v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    .line 975
    invoke-static {v6, v13, v2, v6}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 976
    invoke-static {v6, v2}, Lnts/Ⴘ;->ᾨ(Lnts/ख;Lnts/ख;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 977
    invoke-static {v0, v13}, Lnts/ख;->ㆃ(Lnts/ख;Lnts/ख;)V

    .line 978
    :goto_b
    iget-object v4, v0, Lnts/ख;->ᾨ:[I

    aget v4, v4, v16

    and-int/2addr v4, v9

    move/from16 v8, p0

    if-ne v4, v8, :cond_10

    move-object/from16 v5, p6

    move-object v4, v11

    .line 979
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    goto :goto_c

    :cond_10
    move-object v4, v11

    .line 980
    invoke-static {v10, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;)V

    .line 981
    invoke-static {v0, v10, v2, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    move-object/from16 v1, p1

    move/from16 v3, p5

    move-object/from16 v5, p6

    .line 982
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    :goto_c
    return v9

    :cond_11
    move/from16 v8, p0

    move-object/from16 v1, p1

    move/from16 v3, p5

    move-object v2, v4

    move/from16 v8, v16

    move-object/from16 v4, p4

    goto/16 :goto_8
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;)Z
    .locals 4

    .line 127
    iget-object v0, p0, Lnts/ख;->ᾨ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v2

    .line 128
    :goto_0
    iget v3, p1, Lnts/ख;->ㆃ:I

    if-ge v0, v3, :cond_2

    .line 129
    iget-object v3, p0, Lnts/ख;->ᾨ:[I

    aget v3, v3, v0

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 868
    new-instance v0, Lnts/ख;

    invoke-direct {v0}, Lnts/ख;-><init>()V

    .line 869
    new-instance v4, Lnts/ख;

    invoke-direct {v4}, Lnts/ख;-><init>()V

    .line 870
    new-instance v5, Lnts/ख;

    invoke-direct {v5}, Lnts/ख;-><init>()V

    .line 871
    new-instance v6, Lnts/ख;

    invoke-direct {v6}, Lnts/ख;-><init>()V

    .line 873
    invoke-static {p0, p4, p5, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    .line 874
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    move-object v1, p0

    move-object p5, v5

    move-object v5, v6

    .line 875
    invoke-static/range {v0 .. v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    .line 876
    invoke-static {p5, v5, v2, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 877
    invoke-static {v0, p3, v2, v0}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 879
    invoke-static {p1, v2, v3, v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;ILnts/ख;)V

    move-object p0, p1

    move-object p1, v1

    move-object p2, v2

    move p3, v3

    move-object p4, v4

    .line 880
    invoke-static/range {p0 .. p5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;ILnts/ख;Lnts/ख;)V

    .line 881
    invoke-static {p5, v5, v2, v5}, Lnts/Ⴘ;->ㆃ(Lnts/ख;Lnts/ख;Lnts/ख;Lnts/ख;)V

    .line 882
    invoke-static {v0, v5, v2}, Lnts/Ⴘ;->ᇭ(Lnts/ख;Lnts/ख;Lnts/ख;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ㆃ(Lnts/ख;I)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1104
    iget v0, p0, Lnts/ख;->ㆃ:I

    shl-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v0, :cond_0

    .line 1107
    iget-object v5, p0, Lnts/ख;->ᾨ:[I

    aget v5, v5, v0

    ushr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 1108
    aput-byte v7, v2, v6

    add-int/lit8 v6, v4, 0x2

    ushr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 1109
    aput-byte v7, v2, v6

    add-int/lit8 v6, v4, 0x3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1110
    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_1
    if-ge p0, v1, :cond_1

    .line 1114
    aget-byte v0, v2, p0

    if-nez v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    if-gt p0, v1, :cond_3

    sub-int/2addr v1, p0

    if-lt p1, v1, :cond_2

    .line 1120
    new-array v0, p1, [B

    sub-int/2addr p1, v1

    .line 1122
    invoke-static {v2, p0, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 1123
    :cond_2
    new-instance p0, Lnts/ẩ;

    const/16 p1, 0xe

    const/16 v0, 0x30

    const/16 v1, 0x4ab5

    invoke-static {v1, p1, v0}, Lnts/ッ;->て(III)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnts/ẩ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1129
    :cond_3
    new-array p0, v3, [B

    return-object p0
.end method
