.class public Lnts/ⲍ;
.super Lnts/ḗ;
.source "SourceFile"


# instance fields
.field public Ὺ:[S


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 7

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ḗ;-><init>([BIIIII)V

    const/16 p2, 0x34

    .line 2
    new-array p2, p2, [S

    iput-object p2, v0, Lnts/ⲍ;->Ὺ:[S

    .line 7
    invoke-static {p1, p2}, Lnts/ύ;->ᾨ([B[S)V

    const/4 p1, 0x1

    .line 9
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

    iget-object v1, p0, Lnts/ⲍ;->Ὺ:[S

    invoke-static {v0, v1}, Lnts/ύ;->ㆃ([B[S)V

    return-void
.end method
