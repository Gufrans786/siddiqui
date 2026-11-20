.class public Lnts/ۿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:[B

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lnts/ۿ;->ㆃ:I

    .line 11
    sget-object v1, Lnts/ଧ;->ㆃ:[B

    iput-object v1, p0, Lnts/ۿ;->ᾨ:[B

    .line 20
    iput v0, p0, Lnts/ۿ;->ㆃ:I

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lnts/ۿ;->ㆃ:I

    .line 23
    sget-object v0, Lnts/ଧ;->ㆃ:[B

    .line 36
    iput p1, p0, Lnts/ۿ;->ㆃ:I

    .line 37
    iput-object p2, p0, Lnts/ۿ;->ᾨ:[B

    return-void
.end method

.method public constructor <init>(Lnts/ᖛ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnts/ۿ;->ㆃ:I

    .line 3
    sget-object v0, Lnts/ଧ;->ㆃ:[B

    iput-object v0, p0, Lnts/ۿ;->ᾨ:[B

    .line 6
    invoke-virtual {p1}, Lnts/ᖛ;->ౠ()S

    move-result v0

    iput v0, p0, Lnts/ۿ;->ㆃ:I

    .line 7
    invoke-virtual {p1}, Lnts/ᖛ;->ౠ()S

    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Lnts/ᖛ;->ౠ(I)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ۿ;->ᾨ:[B

    return-void
.end method


# virtual methods
.method public ㆃ()[B
    .locals 2

    .line 1
    new-instance v0, Lnts/ᰅ;

    invoke-direct {v0}, Lnts/ᰅ;-><init>()V

    .line 2
    iget v1, p0, Lnts/ۿ;->ㆃ:I

    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᎊ(I)V

    .line 3
    iget-object v1, p0, Lnts/ۿ;->ᾨ:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᎊ(I)V

    if-lez v1, :cond_1

    .line 6
    iget-object v1, p0, Lnts/ۿ;->ᾨ:[B

    invoke-virtual {v0, v1}, Lnts/ᖛ;->ᾨ([B)V

    .line 8
    :cond_1
    invoke-virtual {v0}, Lnts/ᖛ;->ᾨ()[B

    move-result-object v0

    return-object v0
.end method
