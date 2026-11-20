.class public Lnts/ᕏ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:Lnts/ᡫ;

.field public ㆃ:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ᕏ;->ㆃ:Ljava/util/Vector;

    .line 3
    sget-object v0, Lnts/ዧ;->ዲ:[B

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnts/ᕏ;->ᾨ:Lnts/ᡫ;

    return-void
.end method


# virtual methods
.method public ㆃ([B)V
    .locals 4

    .line 1
    new-instance v0, Lnts/ሮ;

    invoke-direct {v0}, Lnts/ሮ;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lnts/ᛩ;->ㆃ([B)V

    .line 4
    iget-object p1, v0, Lnts/ሮ;->Ὺ:Lnts/Ⴤ;

    iget-object p1, p1, Lnts/Ⴤ;->ᡲ:Lnts/ᛩ;

    instance-of v0, p1, Lnts/Ꮂ;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lnts/Ꮂ;

    const/4 v0, 0x0

    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p1, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    invoke-virtual {v2}, Lnts/ₑ;->ౠ()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p0, Lnts/ᕏ;->ㆃ:Ljava/util/Vector;

    iget-object v3, p1, Lnts/Ꮂ;->ᛃ:Lnts/ᔾ;

    invoke-virtual {v3, v1}, Lnts/ₑ;->ㆃ(I)Lnts/ᛩ;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lnts/ᕏ;->ㆃ:Ljava/util/Vector;

    invoke-static {p1}, Lnts/ㇾ;->ㆃ(Ljava/util/Vector;)V

    .line 15
    iget-object p1, p0, Lnts/ᕏ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lnts/ᡫ;

    iget-object v1, p0, Lnts/ᕏ;->ㆃ:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnts/ଭ;

    invoke-direct {p1, v0}, Lnts/ᡫ;-><init>(Lnts/ଭ;)V

    :goto_1
    iput-object p1, p0, Lnts/ᕏ;->ᾨ:Lnts/ᡫ;

    return-void

    .line 16
    :cond_2
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x26

    const/16 v1, 0x75

    const/16 v2, 0x49e9

    invoke-static {v2, v0, v1}, Lnts/ݶ;->ᙕ(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10f

    invoke-direct {p1, v1, v0}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method
