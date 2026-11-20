.class public Lnts/ⱁ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:I

.field public ᾨ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnts/\u1ff2;",
            ">;"
        }
    .end annotation
.end field

.field public ㆃ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lnts/\u1ff2;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnts/ⱁ;->ㆃ:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnts/ⱁ;->ᇭ:I

    return-void
.end method


# virtual methods
.method public ㆃ(Ljava/lang/String;)Lnts/ῲ;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    .line 12
    :cond_0
    iget-object v0, p0, Lnts/ⱁ;->ㆃ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 13
    iget-object v1, p0, Lnts/ⱁ;->ㆃ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 15
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnts/ῲ;

    .line 17
    iget-object v4, v3, Lnts/ῲ;->Ͼ:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public ㆃ(Lnts/ῲ;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ⱁ;->ᾨ:Ljava/util/List;

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lnts/ⱁ;->ᇭ:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lnts/ⱁ;->ᇭ:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lnts/ⱁ;->ㆃ:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Lnts/ⱁ;->ᇭ:I

    .line 8
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnts/ⱁ;->ᾨ:Ljava/util/List;

    .line 9
    iget-object v1, p0, Lnts/ⱁ;->ㆃ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object v0, p0, Lnts/ⱁ;->ᾨ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
