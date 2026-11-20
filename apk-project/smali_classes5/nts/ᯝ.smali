.class public Lnts/ᯝ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnts/ᯝ$ㆃ;
    }
.end annotation


# instance fields
.field public ᇭ:I

.field public ᰛ:I

.field public ᾨ:I

.field public ㆃ:[Lnts/ᯝ$ㆃ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 2
    iput v0, p0, Lnts/ᯝ;->ᇭ:I

    add-int/lit8 v0, v0, 0x1

    .line 3
    new-array v0, v0, [Lnts/ᯝ$ㆃ;

    iput-object v0, p0, Lnts/ᯝ;->ㆃ:[Lnts/ᯝ$ㆃ;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 5
    iput v0, p0, Lnts/ᯝ;->ᰛ:I

    return-void
.end method


# virtual methods
.method public ㆃ(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 7

    sub-int v0, p3, p2

    if-gtz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iget v1, p0, Lnts/ᯝ;->ᰛ:I

    add-int/2addr v1, v0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    shl-int/lit8 v3, v1, 0x7

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    :goto_0
    if-ge v2, p3, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    shl-int/lit8 v4, v1, 0x7

    xor-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    shr-int/lit8 v2, v1, 0x11

    sub-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0xb

    sub-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x5

    sub-int/2addr v1, v2

    .line 10
    iget-object v2, p0, Lnts/ᯝ;->ㆃ:[Lnts/ᯝ$ㆃ;

    iget v3, p0, Lnts/ᯝ;->ᇭ:I

    and-int/2addr v3, v1

    aget-object v2, v2, v3

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 11
    iget v4, v2, Lnts/ᯝ$ㆃ;->ᾨ:I

    if-ne v4, v1, :cond_5

    iget-object v4, v2, Lnts/ᯝ$ㆃ;->ㆃ:Ljava/lang/String;

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_4

    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v6, p2, v3

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, v2, Lnts/ᯝ$ㆃ;->ㆃ:Ljava/lang/String;

    return-object p1

    .line 16
    :cond_5
    :goto_3
    iget-object v2, v2, Lnts/ᯝ$ㆃ;->ᇭ:Lnts/ᯝ$ㆃ;

    goto :goto_1

    .line 21
    :cond_6
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 22
    iget p2, p0, Lnts/ᯝ;->ᇭ:I

    and-int/2addr p2, v1

    .line 23
    new-instance p3, Lnts/ᯝ$ㆃ;

    iget-object v0, p0, Lnts/ᯝ;->ㆃ:[Lnts/ᯝ$ㆃ;

    aget-object v0, v0, p2

    invoke-direct {p3, p0, p1, v1, v0}, Lnts/ᯝ$ㆃ;-><init>(Lnts/ᯝ;Ljava/lang/String;ILnts/ᯝ$ㆃ;)V

    .line 24
    iget-object v0, p0, Lnts/ᯝ;->ㆃ:[Lnts/ᯝ$ㆃ;

    aput-object p3, v0, p2

    .line 25
    iget p2, p0, Lnts/ᯝ;->ᾨ:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lnts/ᯝ;->ᾨ:I

    iget p3, p0, Lnts/ᯝ;->ᇭ:I

    if-ne p2, p3, :cond_9

    shl-int/lit8 p2, p3, 0x1

    add-int/lit8 p3, p2, 0x1

    add-int/lit8 p2, p2, 0x2

    .line 26
    new-array p2, p2, [Lnts/ᯝ$ㆃ;

    .line 30
    :goto_4
    array-length v1, v0

    if-ge v3, v1, :cond_8

    .line 31
    aget-object v1, v0, v3

    :goto_5
    if-eqz v1, :cond_7

    .line 33
    iget v2, v1, Lnts/ᯝ$ㆃ;->ᾨ:I

    and-int/2addr v2, p3

    .line 34
    iget-object v4, v1, Lnts/ᯝ$ㆃ;->ᇭ:Lnts/ᯝ$ㆃ;

    .line 35
    aget-object v5, p2, v2

    iput-object v5, v1, Lnts/ᯝ$ㆃ;->ᇭ:Lnts/ᯝ$ㆃ;

    .line 36
    aput-object v1, p2, v2

    move-object v1, v4

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 41
    :cond_8
    iput-object p2, p0, Lnts/ᯝ;->ㆃ:[Lnts/ᯝ$ㆃ;

    .line 42
    iput p3, p0, Lnts/ᯝ;->ᇭ:I

    :cond_9
    return-object p1
.end method
