.class public Lnts/ᰄ$ᾨ;
.super Lnts/ḗ;
.source "SourceFile"

# interfaces
.implements Lnts/ⵋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᰄ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u1fa8"
.end annotation


# instance fields
.field public Ὺ:Lnts/আ;


# direct methods
.method public constructor <init>(Lnts/ᰄ;[B[B[BIJZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ḗ;-><init>([BIIIII)V

    .line 2
    new-instance p1, Lnts/আ;

    invoke-direct {p1}, Lnts/আ;-><init>()V

    iput-object p1, p0, Lnts/ᰄ$ᾨ;->Ὺ:Lnts/আ;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lnts/ⵄ;->ㆃ:Z

    .line 10
    iput-boolean p1, p0, Lnts/ⵄ;->て:Z

    .line 12
    iget-object v1, p0, Lnts/ᰄ$ᾨ;->Ὺ:Lnts/আ;

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-wide/from16 v7, p6

    invoke-virtual/range {v1 .. v9}, Lnts/আ;->ㆃ([B[B[B[BIJZ)V

    .line 13
    iget-object p1, p0, Lnts/ᰄ$ᾨ;->Ὺ:Lnts/আ;

    move/from16 p2, p8

    .line 14
    iput-boolean p2, p1, Lnts/আ;->Ὺ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᰄ$ᾨ;->Ὺ:Lnts/আ;

    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lnts/আ;->ㆃ([BZ)[B

    move-result-object v1

    .line 3
    iput-boolean v2, v0, Lnts/আ;->Ͼ:Z

    .line 4
    iput-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    return-void
.end method

.method public ㆃ([B)V
    .locals 4

    .line 5
    new-instance p1, Lnts/ᛎ;

    const/16 v0, 0x50

    const-string v1, "\u0002(&6:25`,/#\"$>i;2\"u 25\u007f"

    const/4 v2, 0x0

    const/16 v3, 0x17

    .line 6
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ([B[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᰄ$ᾨ;->Ὺ:Lnts/আ;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lnts/আ;->ㆃ([B[B[BI)V

    return-void
.end method

.method public ㆃ()[B
    .locals 1

    .line 3
    iget-object v0, p0, Lnts/ᰄ$ᾨ;->Ὺ:Lnts/আ;

    .line 4
    iget-object v0, v0, Lnts/আ;->ౠ:[B

    return-object v0
.end method

.method public ㆃ([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnts/ᰄ$ᾨ;->Ὺ:Lnts/আ;

    invoke-virtual {v0, p1, p2, p3}, Lnts/আ;->ㆃ([BII)[B

    move-result-object p1

    return-object p1
.end method
