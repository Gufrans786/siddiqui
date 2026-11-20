.class public Lnts/ࡊ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public ᾨ:I

.field public ㆃ:Lnts/ሠ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    new-instance v0, Lnts/ሠ;

    invoke-direct {v0}, Lnts/ሠ;-><init>()V

    iput-object v0, p0, Lnts/ࡊ;->ㆃ:Lnts/ሠ;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lnts/ࡊ;->ᾨ:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ࡊ;->ᾨ:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lnts/ࡊ;->ㆃ:Lnts/ሠ;

    .line 2
    iget v0, v0, Lnts/ሠ;->ᾨ:I

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lnts/ࡊ;->ㆃ:Lnts/ሠ;

    .line 4
    iget v1, v1, Lnts/ሠ;->ᾨ:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ࡊ;->ㆃ:Lnts/ሠ;

    invoke-virtual {v0}, Lnts/ሠ;->ᇭ()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnts/ࡊ;->ᾨ:I

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ࡊ;->ᾨ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnts/ࡊ;->ᾨ:I

    if-ltz v0, :cond_0

    .line 3
    iget-object v1, p0, Lnts/ࡊ;->ㆃ:Lnts/ሠ;

    .line 4
    iget v2, v1, Lnts/ሠ;->ᾨ:I

    if-ge v0, v2, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lnts/ሠ;->ᇭ(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lnts/ࡊ;->ᾨ:I

    .line 9
    iget-object v1, p0, Lnts/ࡊ;->ㆃ:Lnts/ሠ;

    invoke-virtual {v1}, Lnts/ሠ;->ᇭ()V

    return v0
.end method
