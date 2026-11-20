.class public Lnts/ࢨ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ㆃ:Lnts/ᕄ;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnts/ᕄ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lnts/ᕄ;-><init>(Lnts/ᕄ;Lnts/ᕄ;Lnts/ᕄ;)V

    iput-object v0, p0, Lnts/ࢨ;->ㆃ:Lnts/ᕄ;

    const/4 v0, 0x0

    move v2, v0

    .line 3
    :goto_0
    sget-object v3, Lnts/ᰊ;->ᾨ:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4
    sget-object v3, Lnts/ᰊ;->ᾨ:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 5
    sget-object v4, Lnts/ᰊ;->ᇭ:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    .line 6
    iget-object v5, p0, Lnts/ࢨ;->ㆃ:Lnts/ᕄ;

    move v6, v0

    .line 8
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_3

    .line 9
    aget-byte v7, v3, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 10
    iget-object v7, v5, Lnts/ᕄ;->ㆃ:Lnts/ᕄ;

    if-nez v7, :cond_0

    .line 11
    new-instance v7, Lnts/ᕄ;

    invoke-direct {v7, v5, v1, v1}, Lnts/ᕄ;-><init>(Lnts/ᕄ;Lnts/ᕄ;Lnts/ᕄ;)V

    iput-object v7, v5, Lnts/ᕄ;->ㆃ:Lnts/ᕄ;

    .line 14
    :cond_0
    iget-object v5, v5, Lnts/ᕄ;->ㆃ:Lnts/ᕄ;

    goto :goto_2

    .line 16
    :cond_1
    iget-object v7, v5, Lnts/ᕄ;->ᾨ:Lnts/ᕄ;

    if-nez v7, :cond_2

    .line 17
    new-instance v7, Lnts/ᕄ;

    invoke-direct {v7, v5, v1, v1}, Lnts/ᕄ;-><init>(Lnts/ᕄ;Lnts/ᕄ;Lnts/ᕄ;)V

    iput-object v7, v5, Lnts/ᕄ;->ᾨ:Lnts/ᕄ;

    .line 20
    :cond_2
    iget-object v5, v5, Lnts/ᕄ;->ᾨ:Lnts/ᕄ;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 23
    :cond_3
    iput-char v4, v5, Lnts/ᕄ;->ᇭ:C

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
