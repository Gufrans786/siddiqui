.class public Lnts/ᒁ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:[B

.field public ᇭ:I

.field public ᰛ:I

.field public ᾨ:I

.field public ㆃ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    const/16 v1, 0x79

    const/4 v2, 0x0

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ݶ;->ⴗ(III)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lnts/ᒁ;->ㆃ:I

    .line 36
    iput v0, p0, Lnts/ᒁ;->ᾨ:I

    .line 37
    iput v0, p0, Lnts/ᒁ;->ᇭ:I

    .line 38
    iput v0, p0, Lnts/ᒁ;->ᰛ:I

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lnts/ᒁ;->Ͼ:[B

    return-void
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 1

    .line 10
    new-instance v0, Lnts/ᖛ;

    invoke-direct {v0, p1}, Lnts/ᖛ;-><init>([B)V

    .line 11
    invoke-virtual {v0}, Lnts/ᖛ;->ᙕ()I

    move-result p1

    iput p1, p0, Lnts/ᒁ;->ㆃ:I

    .line 12
    invoke-virtual {v0}, Lnts/ᖛ;->ᰛ()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lnts/ᒁ;->ᾨ:I

    .line 13
    invoke-virtual {v0}, Lnts/ᖛ;->ᰛ()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lnts/ᒁ;->ᇭ:I

    .line 14
    invoke-virtual {v0}, Lnts/ᖛ;->て()I

    move-result p1

    iput p1, p0, Lnts/ᒁ;->ᰛ:I

    .line 15
    iget p1, p0, Lnts/ᒁ;->ㆃ:I

    invoke-virtual {v0, p1}, Lnts/ᖛ;->ౠ(I)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ᒁ;->Ͼ:[B

    return-void
.end method

.method public ㆃ()[B
    .locals 8

    .line 1
    new-instance v0, Lnts/ᖛ;

    invoke-direct {v0}, Lnts/ᖛ;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᡲ(I)V

    .line 3
    iget v2, p0, Lnts/ᒁ;->ᾨ:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lnts/ᖛ;->ㆃ(B)V

    .line 4
    iget v2, p0, Lnts/ᒁ;->ᇭ:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lnts/ᖛ;->ㆃ(B)V

    .line 5
    iget v2, p0, Lnts/ᒁ;->ᰛ:I

    invoke-virtual {v0, v2}, Lnts/ᖛ;->Ὺ(I)V

    .line 6
    iget-object v2, p0, Lnts/ᒁ;->Ͼ:[B

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lnts/ᖛ;->ᾨ([B)V

    .line 7
    :cond_0
    iget-object v2, p0, Lnts/ᒁ;->Ͼ:[B

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, v2

    .line 8
    :goto_0
    iget-object v2, v0, Lnts/ᖛ;->ᇭ:Lnts/ዌ;

    int-to-long v3, v1

    iget-object v5, v0, Lnts/ᖛ;->ㆃ:[B

    const/4 v7, 0x3

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lnts/ዌ;->ㆃ(J[BII)V

    .line 9
    invoke-virtual {v0}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v0

    return-object v0
.end method
