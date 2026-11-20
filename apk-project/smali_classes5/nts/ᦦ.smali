.class public Lnts/ᦦ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public Ὺ:Lnts/ひ;


# direct methods
.method public constructor <init>([B[BIIJII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v3, 0x40

    const/16 v6, 0x40

    const/16 v2, 0x40

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    move-object p2, p1

    move-object p3, v1

    .line 2
    new-instance p1, Lnts/ひ;

    invoke-direct {p1}, Lnts/ひ;-><init>()V

    iput-object p1, v0, Lnts/ᦦ;->Ὺ:Lnts/ひ;

    move-wide p4, p5

    move p6, p7

    move p7, p8

    .line 7
    invoke-virtual/range {p1 .. p7}, Lnts/ひ;->ㆃ([B[BJII)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v0, Lnts/ⵄ;->て:Z

    .line 10
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᦦ;->Ὺ:Lnts/ひ;

    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    .line 2
    invoke-virtual {v0, v1}, Lnts/ひ;->ㆃ([B)V

    return-void
.end method
