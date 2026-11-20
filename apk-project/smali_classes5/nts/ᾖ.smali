.class public Lnts/ᾖ;
.super Lnts/ₑ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ₑ;-><init>()V

    const/16 v0, 0x31

    .line 2
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public Ͼ()Lnts/ᛩ;
    .locals 1

    .line 1
    new-instance v0, Lnts/ᛩ;

    invoke-direct {v0}, Lnts/ᛩ;-><init>()V

    return-object v0
.end method

.method public ㆃ(Lnts/Ḭ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lnts/ₑ;->Ὺ:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lnts/ₑ;->Ὺ:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnts/ᛩ;

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lnts/ₑ;->Ὺ:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnts/ᛩ;

    invoke-virtual {v3, v0}, Lnts/ᛩ;->ㆃ(Lnts/Ḭ;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x2e

    const/16 v2, 0x5c

    invoke-static {v1, v0, v2}, Lnts/ࡁ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xde

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    .line 10
    iput v1, v0, Lnts/Ḭ;->ᡲ:I

    .line 11
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
