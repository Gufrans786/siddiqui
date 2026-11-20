.class public Lnts/ฯ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:I

.field public ᾨ:I

.field public ㆃ:Lnts/ᗋ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ฯ;->ㆃ:Lnts/ᗋ;

    .line 3
    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnts/ฯ;->ᾨ:I

    .line 5
    iput v0, p0, Lnts/ฯ;->ᇭ:I

    return-void
.end method


# virtual methods
.method public ᾨ([BII)V
    .locals 0

    return-void
.end method

.method public ㆃ([BII)I
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ฯ;->ㆃ:Lnts/ᗋ;

    invoke-virtual {v0, p1, p3}, Lnts/ᗋ;->ㆃ([BI)I

    move p1, p2

    .line 2
    :goto_0
    iget v0, p0, Lnts/ฯ;->ᾨ:I

    if-lez v0, :cond_1

    if-lez p3, :cond_1

    .line 3
    iget-object v0, p0, Lnts/ฯ;->ㆃ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    iget v1, p0, Lnts/ฯ;->ᇭ:I

    sub-int/2addr v0, v1

    .line 5
    iget v2, p0, Lnts/ฯ;->ᾨ:I

    if-gt v2, v0, :cond_0

    add-int/2addr v2, p3

    add-int/2addr v2, v1

    .line 6
    iget-object v0, p0, Lnts/ฯ;->ㆃ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    sub-int/2addr v2, v0

    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    .line 9
    iget v0, p0, Lnts/ฯ;->ᾨ:I

    .line 10
    iget-object v1, p0, Lnts/ฯ;->ㆃ:Lnts/ᗋ;

    invoke-virtual {v1}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v1

    iget v2, p0, Lnts/ฯ;->ᇭ:I

    invoke-virtual {p0, v1, v2, v0}, Lnts/ฯ;->ᾨ([BII)V

    .line 11
    iget v1, p0, Lnts/ฯ;->ᇭ:I

    add-int/2addr v1, v0

    iput v1, p0, Lnts/ฯ;->ᇭ:I

    goto :goto_0

    :cond_0
    add-int/2addr p1, p3

    :cond_1
    sub-int/2addr p1, p2

    return p1
.end method
