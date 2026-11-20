.class public Lnts/ᢛ;
.super Lnts/ḗ;
.source "SourceFile"


# instance fields
.field public ᛃ:[I

.field public ᵑ:[I

.field public Ὺ:[I

.field public Ⲳ:[I

.field public ⴗ:[I


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 8

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ḗ;-><init>([BIIIII)V

    const/16 p2, 0x12

    .line 2
    new-array v3, p2, [I

    iput-object v3, v0, Lnts/ᢛ;->Ὺ:[I

    const/16 p2, 0x100

    .line 3
    new-array v4, p2, [I

    iput-object v4, v0, Lnts/ᢛ;->Ⲳ:[I

    .line 4
    new-array v5, p2, [I

    iput-object v5, v0, Lnts/ᢛ;->ᛃ:[I

    .line 5
    new-array v6, p2, [I

    iput-object v6, v0, Lnts/ᢛ;->ᵑ:[I

    .line 6
    new-array v7, p2, [I

    iput-object v7, v0, Lnts/ᢛ;->ⴗ:[I

    .line 12
    invoke-static {v3, v4, v5, v6, v7}, Lnts/ᯘ;->ㆃ([I[I[I[I[I)V

    const/4 v2, 0x0

    move-object v1, p1

    .line 13
    invoke-static/range {v1 .. v7}, Lnts/ᯘ;->ㆃ([B[B[I[I[I[I[I)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/ᢛ;->Ὺ:[I

    iget-object v2, p0, Lnts/ᢛ;->Ⲳ:[I

    iget-object v3, p0, Lnts/ᢛ;->ᛃ:[I

    iget-object v4, p0, Lnts/ᢛ;->ᵑ:[I

    iget-object v5, p0, Lnts/ᢛ;->ⴗ:[I

    invoke-static/range {v0 .. v5}, Lnts/ᯘ;->ㆃ([B[I[I[I[I[I)V

    return-void
.end method
