.class public Lnts/ݎ;
.super Lnts/ᥠ;
.source "SourceFile"


# instance fields
.field public И:Lnts/ܔ;

.field public យ:Lnts/ܔ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᥠ;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ݎ;->И:Lnts/ܔ;

    .line 3
    iput-object v0, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    return-void
.end method

.method public static ᾨ(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Lnts/ᛎ;

    const/16 v0, 0x1c

    const/16 v1, 0x58

    const/16 v2, 0x3100

    invoke-static {v2, v0, v1}, Lnts/ӗ;->ౠ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    :pswitch_1
    const/16 p0, 0x1d

    return p0

    :pswitch_2
    const/16 p0, 0x19

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_4
    const/16 p0, 0x17

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Ͼ()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ݎ;->И:Lnts/ܔ;

    invoke-virtual {v0}, Lnts/ܔ;->Ⲳ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnts/ݎ;->И:Lnts/ܔ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnts/ܔ;->ㆃ(Z)[B

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ݎ;->И:Lnts/ܔ;

    iget-object v0, v0, Lnts/ܔ;->Ͼ:[B

    return-object v0
.end method

.method public ౠ()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnts/ݎ;->Ͼ()[B

    move-result-object v0

    return-object v0
.end method

.method public ᇭ()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ݎ;->И:Lnts/ܔ;

    iget-object v1, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    invoke-static {v0, v1}, Lnts/ቩ;->ㆃ(Lnts/ܔ;Lnts/ܔ;)[B

    move-result-object v0

    return-object v0
.end method

.method public ᡲ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    iget v0, v0, Lnts/ܔ;->ᙕ:I

    invoke-static {v0}, Lnts/ቩ;->ㆃ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnts/ܔ;

    iput-object v0, p0, Lnts/ݎ;->И:Lnts/ܔ;

    return-void
.end method

.method public ᰛ()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/ݎ;->ᇭ()[B

    move-result-object v0

    return-object v0
.end method

.method public ᾨ(Ljava/math/BigInteger;)V
    .locals 0

    return-void
.end method

.method public ㆃ()V
    .locals 0

    return-void
.end method

.method public ㆃ(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnts/ݎ;->ᡲ()V

    return-void
.end method

.method public ㆃ(IZ)V
    .locals 2

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 8
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x19

    const/16 v0, 0x3e

    const/16 v1, 0x311c

    invoke-static {v1, p2, v0}, Lnts/ӗ;->ౠ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 9
    :goto_0
    iget-object v1, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Lnts/ܔ;

    invoke-direct {v1}, Lnts/ܔ;-><init>()V

    iput-object v1, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    .line 12
    :cond_2
    iget-object v1, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    iput v0, v1, Lnts/ܔ;->ᙕ:I

    if-eqz p2, :cond_3

    .line 13
    iput p1, p0, Lnts/ᥠ;->て:I

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ㆃ(Ljava/math/BigInteger;)V
    .locals 0

    return-void
.end method

.method public ㆃ([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    invoke-virtual {v0}, Lnts/ܔ;->Ⲳ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    invoke-virtual {v0, p1}, Lnts/ܔ;->ㆃ([B)V

    .line 4
    iget-object p1, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    iget-object p1, p1, Lnts/ܔ;->ᾨ:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    :goto_0
    iput p1, p0, Lnts/ᥠ;->ᙕ:I

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lnts/ݎ;->យ:Lnts/ܔ;

    iput-object p1, v0, Lnts/ܔ;->Ͼ:[B

    .line 7
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lnts/ᥠ;->ᙕ:I

    return-void
.end method
