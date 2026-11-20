.class public Lnts/Ế;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ܔ;

.field public ౠ:Ljava/util/Hashtable;

.field public ᇭ:Lnts/Ӥ;

.field public ᰛ:Lnts/ܔ;

.field public ᾨ:Lnts/څ;

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnts/څ;

    invoke-direct {v0}, Lnts/څ;-><init>()V

    iput-object v0, p0, Lnts/Ế;->ᾨ:Lnts/څ;

    .line 3
    new-instance v0, Lnts/Ӥ;

    invoke-direct {v0}, Lnts/Ӥ;-><init>()V

    iput-object v0, p0, Lnts/Ế;->ᇭ:Lnts/Ӥ;

    .line 4
    new-instance v0, Lnts/ܔ;

    invoke-direct {v0}, Lnts/ܔ;-><init>()V

    iput-object v0, p0, Lnts/Ế;->ᰛ:Lnts/ܔ;

    .line 5
    new-instance v0, Lnts/ܔ;

    invoke-direct {v0}, Lnts/ܔ;-><init>()V

    iput-object v0, p0, Lnts/Ế;->Ͼ:Lnts/ܔ;

    .line 6
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnts/Ế;->ౠ:Ljava/util/Hashtable;

    .line 8
    invoke-virtual {p0}, Lnts/Ế;->ᡲ()V

    return-void
.end method


# virtual methods
.method public Ͼ()Lnts/څ;
    .locals 7

    .line 1
    iget v0, p0, Lnts/Ế;->ㆃ:I

    const/16 v1, 0x120

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 2
    invoke-virtual {p0}, Lnts/Ế;->ౠ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    new-instance v0, Lnts/څ;

    invoke-direct {v0}, Lnts/څ;-><init>()V

    .line 4
    iget-object v1, p0, Lnts/Ế;->ᾨ:Lnts/څ;

    iget-object v3, v1, Lnts/څ;->ㆃ:[B

    iput-object v3, v0, Lnts/څ;->ㆃ:[B

    .line 5
    iget-object v3, v1, Lnts/څ;->ᾨ:[B

    iput-object v3, v0, Lnts/څ;->ᾨ:[B

    .line 6
    iget-object v3, v1, Lnts/څ;->ᇭ:[B

    iput-object v3, v0, Lnts/څ;->ᇭ:[B

    .line 7
    iget-object v3, v1, Lnts/څ;->ᰛ:[B

    iput-object v3, v0, Lnts/څ;->ᰛ:[B

    .line 8
    iget-object v3, v1, Lnts/څ;->Ͼ:[B

    iput-object v3, v0, Lnts/څ;->Ͼ:[B

    .line 9
    iget-object v3, v1, Lnts/څ;->ౠ:[B

    iput-object v3, v0, Lnts/څ;->ౠ:[B

    .line 10
    iget-object v3, v1, Lnts/څ;->ᙕ:[B

    iput-object v3, v0, Lnts/څ;->ᙕ:[B

    .line 11
    iget-object v1, v1, Lnts/څ;->て:[B

    iput-object v1, v0, Lnts/څ;->て:[B

    .line 12
    iget-object v1, v0, Lnts/څ;->ᾨ:[B

    const/16 v3, 0x118

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, v0, Lnts/څ;->ㆃ:[B

    if-nez v1, :cond_1

    iget-object v1, v0, Lnts/څ;->て:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    const/4 v1, 0x4

    const/16 v2, 0x5162

    .line 18
    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, v3, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    .line 23
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, Lnts/څ;->て:[B

    if-eqz v1, :cond_4

    .line 24
    iget-object v4, v0, Lnts/څ;->ㆃ:[B

    if-eqz v4, :cond_4

    iget-object v4, v0, Lnts/څ;->ᇭ:[B

    if-eqz v4, :cond_4

    iget-object v4, v0, Lnts/څ;->ᰛ:[B

    if-eqz v4, :cond_4

    .line 25
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 26
    new-instance v1, Ljava/math/BigInteger;

    iget-object v5, v0, Lnts/څ;->ᇭ:[B

    invoke-direct {v1, v2, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 27
    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, v0, Lnts/څ;->ᰛ:[B

    invoke-direct {v5, v2, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 29
    iget-object v2, v0, Lnts/څ;->Ͼ:[B

    if-nez v2, :cond_2

    .line 30
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lnts/څ;->Ͼ:[B

    .line 32
    :cond_2
    iget-object v2, v0, Lnts/څ;->ౠ:[B

    if-nez v2, :cond_3

    .line 33
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lnts/څ;->ౠ:[B

    .line 35
    :cond_3
    iget-object v2, v0, Lnts/څ;->ᙕ:[B

    if-nez v2, :cond_4

    .line 36
    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lnts/څ;->ᙕ:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    const/16 v0, 0x20

    const/16 v1, 0x5d

    const/16 v2, 0x5195

    .line 41
    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, v3, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5
    const/16 v0, 0x22

    const/16 v1, 0x1d

    const/16 v2, 0x5140

    .line 43
    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, v3, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    .line 45
    :cond_6
    new-instance v0, Lnts/ᛎ;

    const/16 v2, 0x25

    const/4 v3, 0x7

    const/16 v4, 0x4ec5

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 47
    :cond_7
    new-instance v0, Lnts/ᛎ;

    const/16 v2, 0x36

    const/16 v3, 0x6c

    const/16 v4, 0x4eea

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ౠ()Z
    .locals 4

    .line 1
    iget v0, p0, Lnts/Ế;->ㆃ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lnts/Ế;->Ͼ:Lnts/ܔ;

    iget-object v0, v0, Lnts/ܔ;->ౠ:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    return v1

    .line 10
    :cond_2
    iget-object v0, p0, Lnts/Ế;->ᰛ:Lnts/ܔ;

    iget-object v0, v0, Lnts/ܔ;->ㆃ:[B

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    return v2

    :cond_3
    return v1

    .line 11
    :cond_4
    iget-object v0, p0, Lnts/Ế;->ᇭ:Lnts/Ӥ;

    iget-object v3, v0, Lnts/Ӥ;->ㆃ:[B

    if-eqz v3, :cond_5

    array-length v3, v3

    if-lez v3, :cond_5

    iget-object v3, v0, Lnts/Ӥ;->ᾨ:[B

    if-eqz v3, :cond_5

    array-length v3, v3

    if-lez v3, :cond_5

    iget-object v3, v0, Lnts/Ӥ;->ᇭ:[B

    if-eqz v3, :cond_5

    array-length v3, v3

    if-lez v3, :cond_5

    iget-object v0, v0, Lnts/Ӥ;->Ͼ:[B

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    return v2

    :cond_5
    return v1

    .line 12
    :cond_6
    iget-object v0, p0, Lnts/Ế;->ᾨ:Lnts/څ;

    iget-object v3, v0, Lnts/څ;->ᾨ:[B

    if-eqz v3, :cond_9

    array-length v3, v3

    if-lez v3, :cond_9

    iget-object v0, v0, Lnts/څ;->て:[B

    if-eqz v0, :cond_7

    array-length v0, v0

    if-gtz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lnts/Ế;->ᾨ:Lnts/څ;

    iget-object v3, v0, Lnts/څ;->ᇭ:[B

    if-eqz v3, :cond_9

    array-length v3, v3

    if-lez v3, :cond_9

    iget-object v3, v0, Lnts/څ;->ᰛ:[B

    if-eqz v3, :cond_9

    array-length v3, v3

    if-lez v3, :cond_9

    iget-object v3, v0, Lnts/څ;->Ͼ:[B

    if-eqz v3, :cond_9

    array-length v3, v3

    if-lez v3, :cond_9

    iget-object v0, v0, Lnts/څ;->ౠ:[B

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    :cond_8
    return v2

    :cond_9
    return v1
.end method

.method public ᇭ()Lnts/ܔ;
    .locals 5

    .line 1
    iget v0, p0, Lnts/Ế;->ㆃ:I

    const/4 v1, 0x4

    const/16 v2, 0x120

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lnts/Ế;->Ͼ:Lnts/ܔ;

    invoke-virtual {v0}, Lnts/ܔ;->ౠ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lnts/ܔ;

    invoke-direct {v0}, Lnts/ܔ;-><init>()V

    .line 4
    iget-object v1, p0, Lnts/Ế;->Ͼ:Lnts/ܔ;

    iget v2, v1, Lnts/ܔ;->ᙕ:I

    iput v2, v0, Lnts/ܔ;->ᙕ:I

    .line 5
    iget-object v2, v1, Lnts/ܔ;->ᰛ:Lnts/ྈ;

    iput-object v2, v0, Lnts/ܔ;->ᰛ:Lnts/ྈ;

    .line 6
    iget-object v2, v1, Lnts/ܔ;->Ͼ:[B

    iput-object v2, v0, Lnts/ܔ;->Ͼ:[B

    .line 7
    iget-object v1, v1, Lnts/ܔ;->ౠ:[B

    iput-object v1, v0, Lnts/ܔ;->ౠ:[B

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x27

    const/16 v3, 0x5c

    const/16 v4, 0x50df

    invoke-static {v4, v1, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x3a

    const/16 v3, 0x75

    const/16 v4, 0x5106

    invoke-static {v4, v1, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public ዲ()Z
    .locals 2

    .line 1
    iget v0, p0, Lnts/Ế;->ㆃ:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᎊ()Z
    .locals 2

    .line 1
    iget v0, p0, Lnts/Ế;->ㆃ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᙕ()Z
    .locals 2

    .line 1
    iget v0, p0, Lnts/Ế;->ㆃ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᡲ()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnts/Ế;->ㆃ:I

    .line 2
    new-instance v0, Lnts/څ;

    invoke-direct {v0}, Lnts/څ;-><init>()V

    iput-object v0, p0, Lnts/Ế;->ᾨ:Lnts/څ;

    .line 3
    new-instance v0, Lnts/Ӥ;

    invoke-direct {v0}, Lnts/Ӥ;-><init>()V

    iput-object v0, p0, Lnts/Ế;->ᇭ:Lnts/Ӥ;

    .line 4
    new-instance v0, Lnts/ܔ;

    invoke-direct {v0}, Lnts/ܔ;-><init>()V

    iput-object v0, p0, Lnts/Ế;->ᰛ:Lnts/ܔ;

    .line 5
    new-instance v0, Lnts/ܔ;

    invoke-direct {v0}, Lnts/ܔ;-><init>()V

    iput-object v0, p0, Lnts/Ế;->Ͼ:Lnts/ܔ;

    .line 6
    iget-object v0, p0, Lnts/Ế;->ౠ:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public ᰛ()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/Ế;->ౠ:Ljava/util/Hashtable;

    const/16 v1, 0x29

    const/16 v2, 0x5217

    const/16 v3, 0xc

    invoke-static {v2, v3, v1}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lnts/Ế;->ౠ:Ljava/util/Hashtable;

    const/16 v1, 0x5223

    const/16 v2, 0x42

    invoke-static {v1, v3, v2}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ᾨ()Lnts/ܔ;
    .locals 5

    .line 1
    iget v0, p0, Lnts/Ế;->ㆃ:I

    const/4 v1, 0x3

    const/16 v2, 0x120

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lnts/Ế;->ౠ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lnts/ܔ;

    invoke-direct {v0}, Lnts/ܔ;-><init>()V

    .line 4
    iget-object v1, p0, Lnts/Ế;->ᰛ:Lnts/ܔ;

    iget v2, v1, Lnts/ܔ;->ᙕ:I

    iput v2, v0, Lnts/ܔ;->ᙕ:I

    .line 5
    iget-object v2, v1, Lnts/ܔ;->ᰛ:Lnts/ྈ;

    iput-object v2, v0, Lnts/ܔ;->ᰛ:Lnts/ྈ;

    .line 6
    iget-object v2, v1, Lnts/ܔ;->ᾨ:[B

    iput-object v2, v0, Lnts/ܔ;->ᾨ:[B

    .line 7
    iget-object v2, v1, Lnts/ܔ;->ᇭ:[B

    iput-object v2, v0, Lnts/ܔ;->ᇭ:[B

    .line 8
    iget-object v1, v1, Lnts/ܔ;->ㆃ:[B

    iput-object v1, v0, Lnts/ܔ;->ㆃ:[B

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x27

    const/16 v3, 0x42

    const/16 v4, 0x501e

    invoke-static {v4, v1, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 13
    :cond_1
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x3a

    const/16 v3, 0x38

    const/16 v4, 0x5045

    invoke-static {v4, v1, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public て()Z
    .locals 2

    .line 1
    iget v0, p0, Lnts/Ế;->ㆃ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ㆃ()Lnts/Ӥ;
    .locals 5

    .line 1
    iget v0, p0, Lnts/Ế;->ㆃ:I

    const/4 v1, 0x2

    const/16 v2, 0x120

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lnts/Ế;->ౠ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lnts/Ӥ;

    invoke-direct {v0}, Lnts/Ӥ;-><init>()V

    .line 4
    iget-object v1, p0, Lnts/Ế;->ᇭ:Lnts/Ӥ;

    invoke-virtual {p0, v1}, Lnts/Ế;->ㆃ(Lnts/Ӥ;)Lnts/Ӥ;

    move-result-object v1

    iput-object v1, p0, Lnts/Ế;->ᇭ:Lnts/Ӥ;

    .line 5
    iget-object v2, v1, Lnts/Ӥ;->ㆃ:[B

    iput-object v2, v0, Lnts/Ӥ;->ㆃ:[B

    .line 6
    iget-object v2, v1, Lnts/Ӥ;->ᾨ:[B

    iput-object v2, v0, Lnts/Ӥ;->ᾨ:[B

    .line 7
    iget-object v2, v1, Lnts/Ӥ;->ᇭ:[B

    iput-object v2, v0, Lnts/Ӥ;->ᇭ:[B

    .line 8
    iget-object v2, v1, Lnts/Ӥ;->ᰛ:[B

    iput-object v2, v0, Lnts/Ӥ;->ᰛ:[B

    .line 9
    iget-object v1, v1, Lnts/Ӥ;->Ͼ:[B

    iput-object v1, v0, Lnts/Ӥ;->Ͼ:[B

    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x25

    const/16 v3, 0x2c

    const/16 v4, 0x4f89

    invoke-static {v4, v1, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    new-instance v0, Lnts/ᛎ;

    const/16 v1, 0x36

    const/16 v3, 0x16

    const/16 v4, 0x4fae

    invoke-static {v4, v1, v3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final ㆃ(Lnts/Ӥ;)Lnts/Ӥ;
    .locals 5

    .line 15
    iget-object v0, p0, Lnts/Ế;->ᇭ:Lnts/Ӥ;

    iget-object v1, v0, Lnts/Ӥ;->ㆃ:[B

    const/16 v2, 0x118

    if-eqz v1, :cond_3

    iget-object v0, v0, Lnts/Ӥ;->ᾨ:[B

    if-eqz v0, :cond_3

    iget-object v0, p1, Lnts/Ӥ;->ᇭ:[B

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p1, Lnts/Ӥ;->ᰛ:[B

    if-nez v0, :cond_1

    iget-object v0, p1, Lnts/Ӥ;->Ͼ:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x33

    const/16 v0, 0x29

    const/16 v1, 0x51e4

    .line 20
    invoke-static {v1, p1, v0}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, v2, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p1, Lnts/Ӥ;->ᰛ:[B

    if-nez v0, :cond_2

    .line 25
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p1, Lnts/Ӥ;->ᇭ:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 26
    new-instance v1, Ljava/math/BigInteger;

    iget-object v3, p1, Lnts/Ӥ;->ㆃ:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 27
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p1, Lnts/Ӥ;->Ͼ:[B

    invoke-direct {v3, v2, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 28
    invoke-virtual {v0, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p1, Lnts/Ӥ;->ᰛ:[B

    :cond_2
    return-object p1

    :cond_3
    const/16 p1, 0x2f

    const/16 v0, 0x67

    const/16 v1, 0x51b5

    .line 29
    invoke-static {v1, p1, v0}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object p1

    .line 30
    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, v2, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v0
.end method
