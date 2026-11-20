.class public Lnts/ㇽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:J

.field public ᰛ:Ljava/lang/String;

.field public ᾨ:[B

.field public ㆃ:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/ㇽ;->ㆃ:[B

    .line 3
    iput-object p2, p0, Lnts/ㇽ;->ᾨ:[B

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnts/ㇽ;->ᇭ:J

    return-void
.end method


# virtual methods
.method public ㆃ(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lnts/ㇽ;->ᰛ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ㆃ([B)Z
    .locals 4

    .line 2
    array-length v0, p1

    iget-object v1, p0, Lnts/ㇽ;->ㆃ:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 5
    aget-byte v1, p1, v0

    iget-object v3, p0, Lnts/ㇽ;->ㆃ:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
