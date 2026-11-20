.class public Lnts/ન;
.super Lnts/ḗ;
.source "SourceFile"


# instance fields
.field public ᛃ:I

.field public Ὺ:[I

.field public Ⲳ:I


# direct methods
.method public constructor <init>([B[BIIIII)V
    .locals 7

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ḗ;-><init>([BIIIII)V

    const/4 p2, 0x4

    .line 2
    new-array p2, p2, [I

    iput-object p2, v0, Lnts/ન;->Ὺ:[I

    const/16 p3, 0x20

    .line 3
    iput p3, v0, Lnts/ન;->Ⲳ:I

    const/4 p3, 0x0

    .line 4
    iput p3, v0, Lnts/ન;->ᛃ:I

    .line 9
    invoke-static {p1, p2}, Lnts/ᓩ;->ㆃ([B[I)V

    .line 11
    iput p5, v0, Lnts/ન;->Ⲳ:I

    .line 12
    iput p6, v0, Lnts/ન;->ᛃ:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ન;->Ὺ:[I

    iget v2, p0, Lnts/ન;->Ⲳ:I

    iget v3, p0, Lnts/ન;->ᛃ:I

    invoke-static {v0, v1, v2, v3}, Lnts/ᓩ;->ㆃ([B[III)V

    return-void
.end method
