.class public Lnts/ڇ;
.super Lnts/ᚲ;
.source "SourceFile"


# instance fields
.field public Ͼ:[B

.field public ౠ:[B

.field public ᙕ:Ljava/lang/String;

.field public ᰛ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/ᚲ;-><init>()V

    return-void
.end method

.method public constructor <init>(I[B[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnts/ᚲ;-><init>()V

    .line 3
    iput p1, p0, Lnts/ڇ;->ᰛ:I

    .line 4
    iput-object p2, p0, Lnts/ڇ;->Ͼ:[B

    .line 5
    iput-object p3, p0, Lnts/ڇ;->ౠ:[B

    .line 6
    iput-object p4, p0, Lnts/ڇ;->ᙕ:Ljava/lang/String;

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x35

    const/16 p3, 0x3d

    const/16 p4, 0x4d3f

    invoke-static {p4, p2, p3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 9
    iput p1, p0, Lnts/ᚲ;->ᇭ:I

    .line 10
    new-instance p1, Lnts/ٴ;

    iget p2, p0, Lnts/ڇ;->ᰛ:I

    invoke-direct {p1, p2}, Lnts/ٴ;-><init>(I)V

    .line 14
    :try_start_0
    invoke-static {p5}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x5

    const/16 p3, 0x54

    const/16 p4, 0x4d74

    .line 15
    invoke-static {p4, p2, p3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p5}, Lnts/ᚲ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    .line 16
    iget-object p3, p0, Lnts/ڇ;->Ͼ:[B

    if-eqz p3, :cond_2

    .line 17
    new-instance p3, Lnts/ཫ;

    iget-object p4, p0, Lnts/ڇ;->Ͼ:[B

    invoke-direct {p3, p4, p1}, Lnts/ཫ;-><init>([BLnts/ٴ;)V

    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p3

    iput-object p3, p0, Lnts/ᚲ;->ᾨ:Ljava/security/PublicKey;

    .line 19
    :cond_2
    iget-object p3, p0, Lnts/ڇ;->ౠ:[B

    if-eqz p3, :cond_5

    .line 20
    new-instance p3, Lnts/ఊ;

    iget-object p4, p0, Lnts/ڇ;->ౠ:[B

    invoke-direct {p3, p4, p1}, Lnts/ఊ;-><init>([BLnts/ٴ;)V

    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lnts/ᚲ;->ㆃ:Ljava/security/PrivateKey;

    return-void

    .line 26
    :cond_3
    iget-object p2, p0, Lnts/ڇ;->Ͼ:[B

    if-eqz p2, :cond_4

    .line 27
    new-instance p2, Lnts/つ;

    iget-object p3, p0, Lnts/ڇ;->Ͼ:[B

    invoke-direct {p2, p3, p1}, Lnts/つ;-><init>([BLnts/ٴ;)V

    iput-object p2, p0, Lnts/ᚲ;->ᾨ:Ljava/security/PublicKey;

    .line 28
    :cond_4
    iget-object p2, p0, Lnts/ڇ;->ౠ:[B

    if-eqz p2, :cond_5

    .line 29
    new-instance p2, Lnts/Ӡ;

    iget-object p3, p0, Lnts/ڇ;->ౠ:[B

    iget-object p4, p0, Lnts/ڇ;->Ͼ:[B

    iget-object p5, p0, Lnts/ڇ;->ᙕ:Ljava/lang/String;

    invoke-direct {p2, p3, p4, p5, p1}, Lnts/Ӡ;-><init>([B[BLjava/lang/String;Lnts/ٴ;)V

    iput-object p2, p0, Lnts/ᚲ;->ㆃ:Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    .line 31
    :catch_0
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x22

    const/16 p3, 0x5c

    const/16 p4, 0x4d79

    invoke-static {p4, p2, p3}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x118

    invoke-direct {p1, p3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static ㆃ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 5
    sget-object p0, Lnts/ᦥ;->ᯋ:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 6
    sget-object p0, Lnts/ᦥ;->ⱋ:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public ㆃ()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ᚲ;->ᾨ:Ljava/security/PublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lnts/つ;

    .line 2
    iget-object v0, v0, Lnts/つ;->ㆃ:[B

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lnts/ᚲ;->ㆃ:Ljava/security/PrivateKey;

    if-eqz v0, :cond_3

    check-cast v0, Lnts/Ӡ;

    .line 4
    iget-object v0, v0, Lnts/Ӡ;->ㆃ:[B

    if-nez v0, :cond_2

    return v1

    :cond_2
    array-length v0, v0

    return v0

    :cond_3
    return v1
.end method
