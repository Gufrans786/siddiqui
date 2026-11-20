.class public Lnts/つ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public ᾨ:Lnts/ٴ;

.field public ㆃ:[B


# direct methods
.method public constructor <init>([BLnts/ٴ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lnts/つ;->ᾨ:Lnts/ٴ;

    .line 3
    iput-object p1, p0, Lnts/つ;->ㆃ:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lnts/つ;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lnts/つ;

    .line 3
    iget-object v0, p0, Lnts/つ;->ㆃ:[B

    .line 4
    iget-object p1, p1, Lnts/つ;->ㆃ:[B

    .line 5
    invoke-static {v0, p1}, Lnts/ሠ;->ㆃ([B[B)Z

    move-result p1

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnts/Ꭲ;->ⱋ:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 1
    new-instance v0, Lnts/ᒃ;

    invoke-direct {v0}, Lnts/ᒃ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/つ;->ᾨ:Lnts/ٴ;

    .line 3
    iget v1, v1, Lnts/ٴ;->ㆃ:I

    .line 4
    invoke-static {v1}, Lnts/ڇ;->ㆃ(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnts/ᒃ;->ᡲ:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lnts/つ;->ㆃ:[B

    iput-object v1, v0, Lnts/ᒃ;->Ὺ:[B

    .line 6
    invoke-virtual {v0}, Lnts/ᛩ;->ᰛ()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
