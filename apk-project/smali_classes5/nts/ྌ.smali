.class public Lnts/ྌ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ᗋ;

.field public ౠ:Lnts/ᗋ;

.field public ᇭ:Lnts/ᗋ;

.field public ᰛ:Lnts/ᗋ;

.field public ᾨ:Ljava/util/Vector;

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ྌ;->ᾨ:Ljava/util/Vector;

    .line 6
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ྌ;->ᇭ:Lnts/ᗋ;

    .line 7
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ྌ;->ᰛ:Lnts/ᗋ;

    .line 8
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ྌ;->Ͼ:Lnts/ᗋ;

    .line 9
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ྌ;->ౠ:Lnts/ᗋ;

    return-void
.end method


# virtual methods
.method public ㆃ(ILjava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ྌ;->ᇭ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_7

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lnts/ྌ;->ᾨ:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lnts/ྌ;->ᾨ:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnts/ፘ;

    .line 5
    iget v3, v3, Lnts/ፘ;->ᇭ:I

    if-ne p1, v3, :cond_0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_4

    invoke-static {p2}, Lnts/ၽ;->ᎊ(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_1
    if-ltz p1, :cond_4

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 11
    iget-object v3, p0, Lnts/ྌ;->ᾨ:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnts/ፘ;

    .line 12
    iget-object v3, v3, Lnts/ፘ;->ᰛ:Lnts/ᗋ;

    if-nez p2, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    move-object v4, p2

    .line 13
    :goto_2
    invoke-virtual {v3}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lnts/ၽ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 19
    iget-object p1, p0, Lnts/ྌ;->ᾨ:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnts/ፘ;

    .line 20
    iget-object p2, p0, Lnts/ྌ;->ᰛ:Lnts/ᗋ;

    iget-object v0, p1, Lnts/ፘ;->ౠ:Lnts/〸;

    invoke-virtual {v0}, Lnts/〸;->ᾨ()[B

    move-result-object v0

    iget-object v3, p1, Lnts/ፘ;->ౠ:Lnts/〸;

    invoke-virtual {v3}, Lnts/〸;->ᇭ()I

    move-result v3

    invoke-virtual {p2, v0, v3}, Lnts/ᗋ;->ᇭ([BI)I

    .line 21
    iget-object p2, p0, Lnts/ྌ;->Ͼ:Lnts/ᗋ;

    iget-object v0, p1, Lnts/ፘ;->ᰛ:Lnts/ᗋ;

    invoke-virtual {p2, v0}, Lnts/ᗋ;->ㆃ(Lnts/ᗋ;)I

    .line 22
    iget-object p2, p0, Lnts/ྌ;->ౠ:Lnts/ᗋ;

    invoke-virtual {p2}, Lnts/ᗋ;->ᙕ()I

    .line 23
    :goto_3
    iget p2, p1, Lnts/ፘ;->ᾨ:I

    if-ge v1, p2, :cond_6

    if-eqz v1, :cond_5

    .line 25
    iget-object p2, p0, Lnts/ྌ;->ౠ:Lnts/ᗋ;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Lnts/ᗋ;->ㆃ(Ljava/lang/String;)I

    .line 27
    :cond_5
    iget-object p2, p0, Lnts/ྌ;->ౠ:Lnts/ᗋ;

    iget-object v0, p1, Lnts/ፘ;->Ͼ:Lnts/છ;

    invoke-virtual {v0, v1}, Lnts/છ;->ㆃ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnts/ᗋ;->ㆃ(Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return v2

    :cond_7
    return v1
.end method
