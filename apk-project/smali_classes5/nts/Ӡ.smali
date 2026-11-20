.class public Lnts/Ӡ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field public ᇭ:Lnts/ٴ;

.field public ᾨ:[B

.field public ㆃ:[B


# direct methods
.method public constructor <init>([B[BLjava/lang/String;Lnts/ٴ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lnts/Ӡ;->ᇭ:Lnts/ٴ;

    .line 3
    iput-object p1, p0, Lnts/Ӡ;->ㆃ:[B

    .line 4
    iput-object p2, p0, Lnts/Ӡ;->ᾨ:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnts/Ꭲ;->ⱋ:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 1
    new-instance v0, Lnts/Ⱐ;

    invoke-direct {v0}, Lnts/Ⱐ;-><init>()V

    .line 2
    iget-object v1, p0, Lnts/Ӡ;->ᇭ:Lnts/ٴ;

    .line 3
    iget v1, v1, Lnts/ٴ;->ㆃ:I

    .line 4
    invoke-static {v1}, Lnts/ڇ;->ㆃ(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnts/Ⱐ;->ᡲ:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lnts/Ӡ;->ㆃ:[B

    iput-object v1, v0, Lnts/Ⱐ;->Ὺ:[B

    .line 6
    iget-object v1, p0, Lnts/Ӡ;->ᾨ:[B

    iput-object v1, v0, Lnts/Ⱐ;->Ⲳ:[B

    .line 7
    invoke-virtual {v0}, Lnts/ᛩ;->ᰛ()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
