.class public Lnts/ᘖ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public Ὺ:Lnts/Д;


# direct methods
.method public constructor <init>([B[BII)V
    .locals 7

    const/16 v3, 0x8

    const/16 v6, 0x8

    const/16 v2, 0x8

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    .line 2
    new-instance p2, Lnts/Д;

    invoke-direct {p2}, Lnts/Д;-><init>()V

    iput-object p2, v0, Lnts/ᘖ;->Ὺ:Lnts/Д;

    .line 7
    invoke-virtual {p2, p1}, Lnts/Д;->ᾨ([B)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v0, Lnts/ⵄ;->て:Z

    .line 11
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
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᘖ;->Ὺ:Lnts/Д;

    .line 2
    invoke-static {v0, v1}, Lnts/ᱱ;->ㆃ([BLnts/Д;)V

    return-void
.end method
