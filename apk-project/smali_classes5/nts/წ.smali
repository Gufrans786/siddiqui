.class public Lnts/წ;
.super Lnts/ḗ;
.source "SourceFile"


# instance fields
.field public Ὺ:[I


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 7

    .line 1
    array-length v2, p2

    array-length v3, p2

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lnts/ḗ;-><init>([BIIIII)V

    const/4 p2, 0x4

    .line 2
    new-array p2, p2, [I

    iput-object p2, v0, Lnts/წ;->Ὺ:[I

    .line 7
    invoke-static {p1, p2}, Lnts/ᶏ;->ᾨ([B[I)V

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

    iget-object v1, p0, Lnts/წ;->Ὺ:[I

    invoke-static {v0, v1}, Lnts/ᶏ;->ㆃ([B[I)V

    return-void
.end method
