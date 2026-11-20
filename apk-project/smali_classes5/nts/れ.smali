.class public Lnts/れ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final せ:Ljava/lang/String;


# instance fields
.field public Ͼ:Z

.field public ౠ:I

.field public ᇭ:Lnts/ḱ;

.field public ዲ:I

.field public ᎊ:I

.field public ᙕ:I

.field public ᚹ:J

.field public ᛃ:I

.field public ᡲ:I

.field public ᰛ:Lnts/ᶛ;

.field public ᵑ:Ljava/lang/String;

.field public ᾨ:Lnts/ḱ;

.field public Ὺ:I

.field public Ⲳ:I

.field public ⴗ:I

.field public て:I

.field public ㆃ:Lnts/ィ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    const/16 v1, 0x31

    const/16 v2, 0x288e

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/れ;->せ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnts/ィ;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/れ;->ㆃ:Lnts/ィ;

    .line 3
    new-instance v1, Lnts/ḱ;

    invoke-direct {v1}, Lnts/ḱ;-><init>()V

    iput-object v1, p0, Lnts/れ;->ᾨ:Lnts/ḱ;

    .line 4
    new-instance v1, Lnts/ḱ;

    invoke-direct {v1}, Lnts/ḱ;-><init>()V

    iput-object v1, p0, Lnts/れ;->ᇭ:Lnts/ḱ;

    .line 5
    iput-object v0, p0, Lnts/れ;->ᰛ:Lnts/ᶛ;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lnts/れ;->Ͼ:Z

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lnts/れ;->ౠ:I

    const/16 v1, 0x1000

    .line 8
    iput v1, p0, Lnts/れ;->ᙕ:I

    .line 9
    iput v0, p0, Lnts/れ;->て:I

    const/16 v1, 0x64

    .line 10
    iput v1, p0, Lnts/れ;->ዲ:I

    const/high16 v1, 0x200000

    .line 11
    iput v1, p0, Lnts/れ;->ᎊ:I

    const v1, 0xffff

    .line 12
    iput v1, p0, Lnts/れ;->ᡲ:I

    const/16 v2, 0x4000

    .line 13
    iput v2, p0, Lnts/れ;->Ὺ:I

    .line 15
    iput v1, p0, Lnts/れ;->Ⲳ:I

    .line 16
    iput v1, p0, Lnts/れ;->ᛃ:I

    const-string v1, ""

    .line 17
    iput-object v1, p0, Lnts/れ;->ᵑ:Ljava/lang/String;

    .line 18
    iput v0, p0, Lnts/れ;->ⴗ:I

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lnts/れ;->ᚹ:J

    .line 48
    iput-object p1, p0, Lnts/れ;->ㆃ:Lnts/ィ;

    .line 49
    invoke-virtual {p0}, Lnts/れ;->て()V

    return-void
.end method


# virtual methods
.method public Ͼ()I
    .locals 1

    .line 1
    iget v0, p0, Lnts/れ;->ᎊ:I

    return v0
.end method

.method public ౠ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnts/れ;->Ͼ:Z

    return v0
.end method

.method public ᇭ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/れ;->ᵑ:Ljava/lang/String;

    return-object v0
.end method

.method public ᇭ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lnts/れ;->Ὺ:I

    return-void
.end method

.method public ᙕ()V
    .locals 6

    .line 1
    iget-object v0, p0, Lnts/れ;->ㆃ:Lnts/ィ;

    sget-object v1, Lnts/れ;->せ:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Lnts/ዧ;->ᾨ:Lnts/ⷜ;

    invoke-virtual {v2, v1}, Lnts/ⷜ;->Ⲳ(Ljava/lang/String;)[B

    move-result-object v1

    .line 3
    array-length v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lnts/Ꮗ;->ㆃ([BIIILjava/io/OutputStream;)V

    .line 4
    new-instance v0, Lnts/ಝ;

    invoke-direct {v0}, Lnts/ಝ;-><init>()V

    .line 5
    iget v1, p0, Lnts/れ;->ዲ:I

    .line 6
    iput v1, v0, Lnts/ಝ;->て:I

    .line 7
    iget v1, p0, Lnts/れ;->ᎊ:I

    .line 8
    iput v1, v0, Lnts/ಝ;->ዲ:I

    .line 9
    invoke-virtual {v0}, Lnts/ಝ;->ㆃ()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/れ;->ㆃ([B)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    const/16 v3, 0x78

    const/16 v4, 0x28a6

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget v0, v0, Lnts/ᒁ;->ᾨ:I

    .line 12
    const-string v2, ")."

    invoke-static {v1, v0, v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnts/ᶛ;->ᎊ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lnts/れ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lnts/ⶏ;

    invoke-direct {v0}, Lnts/ⶏ;-><init>()V

    .line 16
    iget v1, p0, Lnts/れ;->ᎊ:I

    .line 17
    iput v1, v0, Lnts/ⶏ;->ౠ:I

    .line 18
    invoke-virtual {v0}, Lnts/ⶏ;->ㆃ()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lnts/れ;->ㆃ([B)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2c

    const/16 v4, 0x22

    const/16 v5, 0x28ce

    invoke-static {v5, v3, v4}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    iget v0, v0, Lnts/ᒁ;->ᾨ:I

    .line 21
    invoke-static {v1, v0, v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnts/ᶛ;->ᎊ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lnts/れ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget v0, p0, Lnts/れ;->Ⲳ:I

    iget v1, p0, Lnts/れ;->ᎊ:I

    add-int/2addr v0, v1

    iput v0, p0, Lnts/れ;->Ⲳ:I

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lnts/れ;->Ͼ:Z

    return-void
.end method

.method public ᰛ()I
    .locals 1

    .line 1
    iget v0, p0, Lnts/れ;->ⴗ:I

    return v0
.end method

.method public ᰛ(I)V
    .locals 0

    return-void
.end method

.method public ᾨ()V
    .locals 7

    .line 2
    iget-object v0, p0, Lnts/れ;->ᰛ:Lnts/ᶛ;

    .line 3
    iget-object v1, v0, Lnts/ᶛ;->ㆃ:Lnts/れ;

    if-eqz v1, :cond_4

    .line 4
    iget v1, v0, Lnts/ᶛ;->ᇭ:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 7
    new-instance v1, Lnts/ᒁ;

    invoke-direct {v1}, Lnts/ᒁ;-><init>()V

    .line 8
    iget v1, v0, Lnts/ᶛ;->ᇭ:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 14
    :cond_0
    iput v2, v0, Lnts/ᶛ;->ᇭ:I

    .line 17
    :cond_1
    new-instance v1, Lnts/ጞ;

    invoke-direct {v1}, Lnts/ጞ;-><init>()V

    .line 18
    iget v2, v0, Lnts/ᶛ;->ᰛ:I

    .line 19
    iput v2, v1, Lnts/ᒁ;->ᰛ:I

    const/16 v2, 0x8

    .line 20
    iput v2, v1, Lnts/ጞ;->ౠ:I

    .line 21
    invoke-virtual {v0, v1}, Lnts/ᶛ;->ㆃ(Lnts/ᒁ;)V

    goto :goto_0

    .line 22
    :cond_2
    new-instance v1, Lnts/ᛎ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x36

    const/16 v5, 0x6c

    const/16 v6, 0xafd

    invoke-static {v6, v4, v5}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lnts/ᶛ;->ᇭ:I

    const-string v5, " ."

    invoke-static {v0, v4, v2, v5}, Lnts/ㆃ;->ㆃ(Lnts/ᶛ;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lnts/ᶛ;->ᇭ:I

    .line 25
    iget-object v1, v0, Lnts/ᶛ;->ዲ:Lnts/ሠ;

    invoke-virtual {v1}, Lnts/ሠ;->ᇭ()V

    .line 26
    iget-object v0, v0, Lnts/ᶛ;->て:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_4
    return-void
.end method

.method public ᾨ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnts/れ;->ᎊ:I

    return-void
.end method

.method public ᾨ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lnts/れ;->ㆃ:Lnts/ィ;

    invoke-virtual {v0, p1, p2}, Lnts/ィ;->て(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public て()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lnts/れ;->ᰛ:Lnts/ᶛ;

    .line 2
    iget-object v0, p0, Lnts/れ;->ᾨ:Lnts/ḱ;

    invoke-virtual {v0}, Lnts/ḱ;->ㆃ()V

    .line 3
    iget-object v0, p0, Lnts/れ;->ᇭ:Lnts/ḱ;

    invoke-virtual {v0}, Lnts/ḱ;->ㆃ()V

    const/16 v0, 0x1000

    .line 4
    iput v0, p0, Lnts/れ;->ᙕ:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnts/れ;->て:I

    const/16 v1, 0x64

    .line 6
    iput v1, p0, Lnts/れ;->ዲ:I

    const v1, 0xffff

    .line 7
    iput v1, p0, Lnts/れ;->ᡲ:I

    .line 9
    iput-boolean v0, p0, Lnts/れ;->Ͼ:Z

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lnts/れ;->ౠ:I

    .line 11
    iput v1, p0, Lnts/れ;->Ⲳ:I

    return-void
.end method

.method public ㆃ()V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lnts/れ;->て()V

    return-void
.end method

.method public ㆃ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lnts/れ;->ⴗ:I

    return-void
.end method

.method public ㆃ(ILjava/lang/Object;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lnts/れ;->ㆃ:Lnts/ィ;

    invoke-virtual {v0, p1, p2}, Lnts/ィ;->ㆃ(ILjava/lang/Object;)V

    return-void
.end method

.method public ㆃ(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/れ;->ᵑ:Ljava/lang/String;

    return-void
.end method

.method public ㆃ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lnts/れ;->ㆃ:Lnts/ィ;

    invoke-virtual {v0, p1, p2}, Lnts/ィ;->ᙕ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ㆃ(Ljava/util/Vector;Z)V
    .locals 2

    .line 3
    new-instance v0, Lnts/ᶛ;

    invoke-direct {v0, p0}, Lnts/ᶛ;-><init>(Lnts/れ;)V

    iput-object v0, p0, Lnts/れ;->ᰛ:Lnts/ᶛ;

    .line 4
    iget v1, p0, Lnts/れ;->ౠ:I

    .line 5
    iput v1, v0, Lnts/ᶛ;->ᰛ:I

    .line 6
    invoke-virtual {v0, p1, p2}, Lnts/ᶛ;->ㆃ(Ljava/util/Vector;Z)V

    .line 7
    iget p1, p0, Lnts/れ;->ౠ:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lnts/れ;->ౠ:I

    return-void
.end method

.method public ㆃ([B)V
    .locals 4

    .line 53
    iget v0, p0, Lnts/れ;->ⴗ:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lnts/れ;->ⴗ:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnts/れ;->ᚹ:J

    .line 54
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lnts/れ;->ㆃ([BIII)V

    return-void
.end method

.method public ㆃ([BIII)V
    .locals 8

    .line 55
    iget v0, p0, Lnts/れ;->ⴗ:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lnts/れ;->ⴗ:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnts/れ;->ᚹ:J

    .line 56
    :cond_0
    iget-object v2, p0, Lnts/れ;->ㆃ:Lnts/ィ;

    const/high16 v7, 0x10000

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 57
    invoke-virtual/range {v2 .. v7}, Lnts/ڊ;->ㆃ([BIIII)V

    return-void
.end method

.method public ㆃ([BIIZ)V
    .locals 9

    .line 8
    iget-object p2, p0, Lnts/れ;->ᰛ:Lnts/ᶛ;

    .line 9
    iget-object v0, p2, Lnts/ᶛ;->ㆃ:Lnts/れ;

    if-eqz v0, :cond_6

    .line 10
    iget v0, p2, Lnts/ᶛ;->ᇭ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v4, 0x6

    if-eq v0, v4, :cond_5

    .line 16
    new-instance v0, Lnts/ๅ;

    invoke-direct {v0}, Lnts/ๅ;-><init>()V

    if-eqz p4, :cond_0

    .line 17
    iget p4, v0, Lnts/ᒁ;->ᇭ:I

    or-int/2addr p4, v2

    .line 18
    iput p4, v0, Lnts/ᒁ;->ᇭ:I

    :cond_0
    const/4 p4, 0x0

    .line 19
    iput p4, v0, Lnts/ᒁ;->ᾨ:I

    .line 20
    iget v5, p2, Lnts/ᶛ;->ᰛ:I

    .line 21
    iput v5, v0, Lnts/ᒁ;->ᰛ:I

    .line 22
    new-array v5, p3, [B

    iput-object v5, v0, Lnts/ๅ;->ᙕ:[B

    if-lez p3, :cond_1

    .line 24
    iget-object v5, v0, Lnts/ๅ;->ᙕ:[B

    invoke-static {p1, p4, v5, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    :cond_1
    invoke-virtual {v0}, Lnts/ๅ;->ㆃ()[B

    move-result-object p1

    .line 26
    iget-object p3, p2, Lnts/ᶛ;->ㆃ:Lnts/れ;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x1a

    const/16 v7, 0x7e

    const/16 v8, 0xa1f

    invoke-static {v8, v6, v7}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 27
    iget v6, v0, Lnts/ᒁ;->ᾨ:I

    .line 28
    invoke-virtual {p2, v6}, Lnts/ᶛ;->ᇭ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 29
    iget v6, v0, Lnts/ᒁ;->ᾨ:I

    const-string v7, ")."

    .line 30
    invoke-static {v5, v6, v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lnts/ᶛ;->ᎊ:Ljava/lang/String;

    invoke-virtual {p3, v5, v6}, Lnts/れ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_0
    iget p3, p2, Lnts/ᶛ;->Ͼ:I

    .line 34
    iget v5, v0, Lnts/ᒁ;->ㆃ:I

    if-ge p3, v5, :cond_2

    .line 35
    iget-object p3, p2, Lnts/ᶛ;->ㆃ:Lnts/れ;

    .line 36
    iget-object p3, p3, Lnts/れ;->ㆃ:Lnts/ィ;

    invoke-virtual {p3}, Lnts/ィ;->ᙕ()V

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0}, Lnts/ๅ;->ᾨ()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 38
    iget-object v1, p2, Lnts/ᶛ;->ㆃ:Lnts/れ;

    array-length v5, p1

    invoke-virtual {v1, p1, p4, v5, v2}, Lnts/れ;->ㆃ([BIII)V

    goto :goto_1

    .line 39
    :cond_3
    iget-object v5, p2, Lnts/ᶛ;->ㆃ:Lnts/れ;

    array-length v6, p1

    invoke-virtual {v5, p1, p4, v6, v1}, Lnts/れ;->ㆃ([BIII)V

    .line 40
    :goto_1
    iget p1, p2, Lnts/ᶛ;->Ͼ:I

    .line 41
    iget p4, v0, Lnts/ᒁ;->ㆃ:I

    sub-int/2addr p1, p4

    .line 42
    iput p1, p2, Lnts/ᶛ;->Ͼ:I

    .line 43
    iget-object p1, p2, Lnts/ᶛ;->ㆃ:Lnts/れ;

    iget v0, p1, Lnts/れ;->ᛃ:I

    sub-int/2addr v0, p4

    iput v0, p1, Lnts/れ;->ᛃ:I

    if-eqz p3, :cond_6

    .line 47
    iget p1, p2, Lnts/ᶛ;->ᇭ:I

    if-ne p1, v2, :cond_4

    .line 48
    iput v3, p2, Lnts/ᶛ;->ᇭ:I

    return-void

    :cond_4
    const/4 p3, 0x4

    if-ne p1, p3, :cond_6

    .line 50
    iput v4, p2, Lnts/ᶛ;->ᇭ:I

    return-void

    .line 51
    :cond_5
    new-instance p1, Lnts/ᛎ;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x31

    const/16 v0, 0x54

    const/16 v1, 0x9ee

    invoke-static {v1, p4, v0}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p2, Lnts/ᶛ;->ᇭ:I

    const-string v0, "."

    invoke-static {p2, p4, p3, v0}, Lnts/ㆃ;->ㆃ(Lnts/ᶛ;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method
