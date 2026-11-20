.class public Lnts/ϑ;
.super Lnts/ዧ;
.source "SourceFile"


# instance fields
.field public Ϯ:Lnts/〸;

.field public Ё:Z

.field public И:Ljava/io/InputStream;

.field public ཊ:Lnts/ദ;

.field public ཞ:I

.field public ᄎ:J

.field public ᚇ:I

.field public ᜧ:I

.field public យ:Lnts/ᗋ;

.field public ᦝ:Z

.field public ᨍ:Z

.field public ᯋ:Lnts/ዃ;

.field public ᴨ:J

.field public Ἂ:Lnts/ᗋ;

.field public ᾤ:Z

.field public ⱋ:Lnts/ᙱ;

.field public ⶦ:Lnts/ᗋ;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lnts/ዧ;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lnts/ϑ;->ཊ:Lnts/ദ;

    .line 3
    iput-object p2, p0, Lnts/ϑ;->И:Ljava/io/InputStream;

    .line 9
    new-instance p2, Lnts/ᗋ;

    invoke-direct {p2}, Lnts/ᗋ;-><init>()V

    iput-object p2, p0, Lnts/ϑ;->យ:Lnts/ᗋ;

    .line 10
    new-instance p2, Lnts/〸;

    invoke-direct {p2}, Lnts/〸;-><init>()V

    iput-object p2, p0, Lnts/ϑ;->Ϯ:Lnts/〸;

    .line 11
    new-instance p2, Lnts/ᗋ;

    invoke-direct {p2}, Lnts/ᗋ;-><init>()V

    iput-object p2, p0, Lnts/ϑ;->Ἂ:Lnts/ᗋ;

    .line 12
    new-instance p2, Lnts/ᗋ;

    invoke-direct {p2}, Lnts/ᗋ;-><init>()V

    iput-object p2, p0, Lnts/ϑ;->ⶦ:Lnts/ᗋ;

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lnts/ϑ;->ᦝ:Z

    .line 25
    iput-boolean p2, p0, Lnts/ϑ;->Ё:Z

    .line 37
    instance-of v0, p1, Lnts/ദ;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lnts/ദ;

    iput-object p1, p0, Lnts/ϑ;->ཊ:Lnts/ദ;

    :cond_0
    const/4 p1, 0x2

    .line 39
    iput p1, p0, Lnts/ϑ;->ཞ:I

    .line 41
    invoke-virtual {p0}, Lnts/ϑ;->ዲ()V

    .line 42
    iget-object p1, p0, Lnts/ϑ;->ⶦ:Lnts/ᗋ;

    invoke-virtual {p1}, Lnts/ᗋ;->ᙕ()I

    .line 43
    iget-object p1, p0, Lnts/ϑ;->Ϯ:Lnts/〸;

    invoke-virtual {p1}, Lnts/〸;->ᰛ()I

    .line 44
    iget-object p1, p0, Lnts/ϑ;->យ:Lnts/ᗋ;

    invoke-virtual {p1}, Lnts/ᗋ;->ᙕ()I

    .line 45
    iget-object p1, p0, Lnts/ϑ;->Ἂ:Lnts/ᗋ;

    invoke-virtual {p1}, Lnts/ᗋ;->ᙕ()I

    .line 46
    invoke-virtual {p0}, Lnts/ϑ;->ᙕ()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lnts/ϑ;->ᄎ:J

    .line 49
    iput-wide v0, p0, Lnts/ϑ;->ᴨ:J

    .line 50
    iput p2, p0, Lnts/ϑ;->ᚇ:I

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lnts/ϑ;->ᾤ:Z

    .line 52
    iput-boolean p1, p0, Lnts/ϑ;->ᨍ:Z

    .line 53
    iput p1, p0, Lnts/ϑ;->ᜧ:I

    return-void
.end method


# virtual methods
.method public ᇭ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnts/ϑ;->ཞ:I

    .line 2
    invoke-virtual {p0}, Lnts/ϑ;->ዲ()V

    return-void
.end method

.method public ዲ()V
    .locals 14

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    .line 2
    iput-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    .line 4
    sget-boolean v0, Lnts/ዧ;->せ:Z

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lnts/ϑ;->ᦝ:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/16 v4, 0x15

    const/16 v5, 0x43

    const/16 v6, 0x65

    const/16 v7, 0xa

    .line 8
    :try_start_0
    iget v8, p0, Lnts/ϑ;->ཞ:I

    const/4 v9, 0x7

    const/16 v10, 0x7c

    const/16 v11, 0x8

    const/4 v12, 0x6

    const/4 v13, 0x0

    packed-switch v8, :pswitch_data_0

    .line 125
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    goto/16 :goto_1

    :pswitch_0
    const/16 v1, 0xa2

    const/16 v2, 0x62

    .line 126
    invoke-static {v1, v7, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 128
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_1
    const/16 v1, 0x98

    .line 129
    invoke-static {v1, v7, v12}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 131
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_2
    const/16 v1, 0x121

    const/16 v2, 0x25

    .line 214
    invoke-static {v1, v11, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 216
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_3
    const/16 v1, 0x119

    const/16 v2, 0x29

    .line 217
    invoke-static {v1, v11, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 219
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_4
    const/16 v1, 0x111

    const/16 v2, 0x3a

    .line 220
    invoke-static {v1, v11, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 222
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_5
    const/16 v2, 0x109

    .line 223
    invoke-static {v2, v11, v1}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 225
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_6
    const/16 v0, 0xcc

    const/16 v1, 0xd

    .line 226
    invoke-static {v0, v1, v10}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 228
    iput v3, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_7
    const/16 v0, 0xf5

    const/16 v1, 0x34

    .line 246
    invoke-static {v0, v7, v1}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 248
    iput v3, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_8
    const/16 v0, 0xeb

    const/16 v1, 0x7e

    .line 249
    invoke-static {v0, v7, v1}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 251
    iput v3, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_9
    const/16 v0, 0xe1

    const/16 v1, 0x38

    .line 252
    invoke-static {v0, v7, v1}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 254
    iput v3, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_a
    const/16 v0, 0xff

    .line 267
    invoke-static {v0, v7, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 269
    iput v3, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_b
    const/16 v0, 0xd9

    const/16 v1, 0xb

    .line 270
    invoke-static {v0, v11, v1}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 272
    iput v3, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_c
    const/16 v0, 0xc5

    const/16 v1, 0x30

    .line 273
    invoke-static {v0, v9, v1}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Ljava/lang/String;)Lnts/ᙱ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 275
    iput v3, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_d
    const/16 v1, 0xbe

    const/16 v2, 0x73

    .line 276
    invoke-static {v1, v9, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 278
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_e
    const/16 v1, 0x9

    const/16 v2, 0x6d

    const/16 v3, 0xb5

    .line 279
    invoke-static {v3, v1, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 281
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_f
    const/16 v1, 0xb2

    .line 282
    invoke-static {v1, v2, v7}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 284
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_10
    const/16 v1, 0xaf

    const/16 v3, 0x7a

    .line 285
    invoke-static {v1, v2, v3}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 287
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_11
    const/16 v1, 0xac

    const/16 v3, 0x67

    .line 288
    invoke-static {v1, v2, v3}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 290
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_12
    const/16 v1, 0x92

    const/16 v2, 0x70

    .line 291
    invoke-static {v1, v12, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 293
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_13
    const/16 v1, 0x8c

    const/16 v2, 0x2b

    .line 294
    invoke-static {v1, v12, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 296
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_14
    const/16 v1, 0x86

    const/16 v2, 0x5f

    .line 297
    invoke-static {v1, v12, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 299
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_15
    const/16 v1, 0x80

    .line 300
    invoke-static {v1, v12, v5}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 302
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    :pswitch_16
    const/4 v1, 0x4

    const/16 v2, 0x2c

    .line 303
    invoke-static {v10, v1, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnts/ቩ;->ㆃ(Ljava/lang/String;I)Lnts/ዃ;

    move-result-object v0

    iput-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v0}, Lnts/ዃ;->ᰛ()V

    .line 305
    iput v13, p0, Lnts/ϑ;->ᚇ:I

    return-void

    .line 419
    :goto_1
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x129

    const/16 v2, 0x52

    invoke-static {v1, v4, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnts/ẩ; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :catch_0
    iget-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    if-nez v0, :cond_3

    iget-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 428
    :cond_2
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x152

    invoke-static {v1, v4, v7}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 429
    :cond_3
    :goto_2
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x13e

    const/16 v2, 0x14

    invoke-static {v1, v2, v5}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᙕ()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lnts/ϑ;->Ё:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnts/ϑ;->И:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iput-object v0, p0, Lnts/ϑ;->И:Ljava/io/InputStream;

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 6
    :catch_0
    :try_start_1
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x13

    const/16 v3, 0x77

    const/16 v4, 0x186

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x130

    invoke-direct {v1, v3, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    iput-object v0, p0, Lnts/ϑ;->И:Ljava/io/InputStream;

    .line 9
    throw v1
.end method

.method public て()I
    .locals 2

    .line 1
    iget v0, p0, Lnts/ϑ;->ᚇ:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Lnts/ዃ;)I

    move-result v0

    return v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-static {v0}, Lnts/ቩ;->ᾨ(Lnts/ዃ;)I

    move-result v0

    return v0
.end method

.method public ㆃ(Lnts/ᢞ;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/16 v0, 0x8

    const/16 v1, 0x62

    const/16 v2, 0x1f

    .line 84
    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 85
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lnts/ϑ;->て()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0xb

    const/16 v3, 0x4c

    const/16 v4, 0x27

    .line 87
    invoke-static {v4, v0, v3}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lnts/ϑ;->ᜧ:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :cond_1
    invoke-virtual {p1}, Lnts/ᢞ;->Ͼ()I

    move-result p1

    iput p1, p0, Lnts/ϑ;->ᜧ:I

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x32

    const/16 v3, 0x10

    .line 92
    invoke-static {v0, v2, v3}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_3

    .line 94
    invoke-static {v1}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lnts/ϑ;->ᨍ:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_3
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    iput-boolean p1, p0, Lnts/ϑ;->ᨍ:Z

    goto :goto_0

    :cond_4
    const/16 v0, 0x13

    const/16 v2, 0x4d

    const/16 v3, 0x51

    .line 97
    invoke-static {v3, v0, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_5

    .line 99
    invoke-super {p0, p1}, Lnts/ዧ;->ㆃ(Lnts/ᢞ;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 100
    :cond_5
    sget-boolean v0, Lnts/ዧ;->せ:Z

    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result v2

    if-eq v0, v2, :cond_9

    .line 101
    invoke-super {p0, p1}, Lnts/ዧ;->ㆃ(Lnts/ᢞ;)Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lnts/ϑ;->ዲ()V

    goto :goto_0

    :cond_6
    const/16 v0, 0xf

    const/16 v2, 0x17

    const/16 v3, 0x64

    .line 104
    invoke-static {v3, v0, v2}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/ᢞ;->ㆃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 105
    iget-boolean v0, p1, Lnts/ᢞ;->ᇭ:Z

    if-eqz v0, :cond_8

    .line 106
    iget-boolean p1, p0, Lnts/ϑ;->ᦝ:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    const/16 v0, 0x21

    const/16 v1, 0x73

    invoke-static {v1, p1, v0}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x5

    const/16 v0, 0x39

    const/16 v1, 0x77

    invoke-static {v1, p1, v0}, Lnts/ݶ;->ᵑ(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_8
    invoke-virtual {p1}, Lnts/ᢞ;->ᰛ()Z

    move-result p1

    .line 108
    iget-boolean v0, p0, Lnts/ϑ;->ᦝ:Z

    if-eq p1, v0, :cond_9

    .line 109
    iput-boolean p1, p0, Lnts/ϑ;->ᦝ:Z

    .line 110
    invoke-virtual {p0}, Lnts/ϑ;->ዲ()V

    :cond_9
    :goto_0
    return-object v1

    .line 111
    :cond_a
    invoke-super {p0, p1}, Lnts/ዧ;->ㆃ(Lnts/ᢞ;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ㆃ(ILjava/lang/String;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lnts/ϑ;->ཊ:Lnts/ദ;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p1, p2}, Lnts/ദ;->ㆃ(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ㆃ(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    iget-wide v2, p0, Lnts/ϑ;->ᴨ:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lnts/ϑ;->ᴨ:J

    .line 114
    iget-wide p1, p0, Lnts/ϑ;->ᄎ:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const-wide/16 v0, 0x64

    mul-long/2addr v0, v2

    .line 115
    div-long/2addr v0, p1

    long-to-int p1, v0

    const/16 p2, 0x64

    if-le p1, p2, :cond_2

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 119
    :cond_2
    :goto_0
    iget-object p2, p0, Lnts/ϑ;->ཊ:Lnts/ദ;

    if-eqz p2, :cond_3

    .line 120
    invoke-interface {p2, v2, v3, p1}, Lnts/ദ;->ㆃ(JI)V

    :cond_3
    :goto_1
    return-void
.end method

.method public ㆃ([BZ)[B
    .locals 7

    .line 1
    array-length v0, p1

    .line 3
    iget-object v1, p0, Lnts/ϑ;->Ἂ:Lnts/ᗋ;

    invoke-virtual {v1}, Lnts/ᗋ;->ᙕ()I

    .line 8
    :try_start_0
    iget v1, p0, Lnts/ϑ;->ᚇ:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    .line 9
    iget-object v1, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {v1}, Lnts/ዃ;->ᰛ()V

    .line 11
    iput v5, p0, Lnts/ϑ;->ᚇ:I

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 13
    iget-object v1, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-virtual {v1}, Lnts/ዃ;->ᰛ()V

    .line 15
    iput v2, p0, Lnts/ϑ;->ᚇ:I
    :try_end_0
    .catch Lnts/ẩ; {:try_start_0 .. :try_end_0} :catch_3

    .line 19
    :cond_1
    :goto_0
    iget v1, p0, Lnts/ϑ;->ᚇ:I

    const/4 v6, 0x2

    if-ne v1, v2, :cond_2

    .line 23
    :try_start_1
    iget-object v1, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    iget-object v2, p0, Lnts/ϑ;->ⶦ:Lnts/ᗋ;

    invoke-virtual {v2}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v2

    invoke-static {v1, v2}, Lnts/ቩ;->ㆃ(Lnts/ᙱ;[B)V
    :try_end_1
    .catch Lnts/ẩ; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    iput v6, p0, Lnts/ϑ;->ᚇ:I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    if-nez v1, :cond_3

    .line 37
    iget v1, p0, Lnts/ϑ;->ཞ:I

    const/16 v2, 0x14

    if-gt v1, v2, :cond_3

    const/16 v2, 0x11

    if-lt v1, v2, :cond_3

    .line 38
    iget-object v1, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    check-cast v1, Lnts/ࠆ;

    iget v2, p0, Lnts/ϑ;->ᜧ:I

    invoke-virtual {v1, v2}, Lnts/ࠆ;->ㆃ(I)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    .line 45
    :try_start_2
    iget p2, p0, Lnts/ϑ;->ᚇ:I

    if-ne p2, v6, :cond_4

    .line 47
    iget-object p2, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-virtual {p2, p1, v5, v0}, Lnts/ዃ;->ㆃ([BII)[B

    .line 48
    iget-object p1, p0, Lnts/ϑ;->Ἂ:Lnts/ᗋ;

    iget-object p2, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    invoke-static {p2}, Lnts/ቩ;->ㆃ(Lnts/ዃ;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lnts/ᗋ;->ᰛ([B)I

    .line 55
    iput v3, p0, Lnts/ϑ;->ᚇ:I

    goto :goto_2

    .line 58
    :cond_4
    iget-object p2, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-virtual {p2, p1, v5, v0}, Lnts/ዃ;->ㆃ([BII)[B

    .line 59
    iget-object p1, p0, Lnts/ϑ;->Ἂ:Lnts/ᗋ;

    iget-object p2, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    invoke-static {p2}, Lnts/ቩ;->ㆃ(Lnts/ዃ;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lnts/ᗋ;->ᰛ([B)I

    .line 66
    iput v4, p0, Lnts/ϑ;->ᚇ:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 71
    new-instance p2, Lnts/ᛎ;

    invoke-static {p1}, Lnts/ᛎ;->ᾨ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p2

    .line 76
    :cond_5
    :try_start_3
    iget p2, p0, Lnts/ϑ;->ᚇ:I

    if-ne p2, v6, :cond_6

    .line 77
    iget-object p2, p0, Lnts/ϑ;->ⱋ:Lnts/ᙱ;

    .line 78
    invoke-virtual {p2, p1, v5, v0}, Lnts/ዃ;->ᇭ([BII)V

    goto :goto_2

    .line 79
    :cond_6
    iget-object p2, p0, Lnts/ϑ;->ᯋ:Lnts/ዃ;

    .line 80
    invoke-virtual {p2, p1, v5, v0}, Lnts/ዃ;->ᇭ([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    :goto_2
    iget-object p1, p0, Lnts/ϑ;->Ἂ:Lnts/ᗋ;

    invoke-virtual {p1}, Lnts/ᗋ;->ᾨ()[B

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 82
    new-instance p2, Lnts/ᛎ;

    invoke-static {p1}, Lnts/ᛎ;->ᾨ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v5, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_3
    move-exception p1

    .line 83
    new-instance p2, Lnts/ᛎ;

    invoke-direct {p2, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
