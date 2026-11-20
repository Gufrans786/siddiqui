.class public Lnts/η;
.super Lnts/ḗ;
.source "SourceFile"


# instance fields
.field public Ὺ:[I

.field public Ⲳ:I


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 7

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ḗ;-><init>([BIIIII)V

    const/16 p2, 0x40

    .line 2
    new-array p3, p2, [I

    iput-object p3, v0, Lnts/η;->Ὺ:[I

    const/16 p4, 0xa

    .line 3
    iput p4, v0, Lnts/η;->Ⲳ:I

    .line 8
    array-length p4, p1

    new-array p2, p2, [I

    const/4 p5, 0x0

    invoke-static {p1, p5, p4, p3, p2}, Lnts/ᜧ;->ㆃ([BII[I[I)I

    move-result p1

    iput p1, v0, Lnts/η;->Ⲳ:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v0, Lnts/ⵄ;->ㆃ:Z

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
    iget-object v0, p0, Lnts/ⵄ;->ᰛ:[B

    iget-object v1, p0, Lnts/η;->Ὺ:[I

    iget v2, p0, Lnts/η;->Ⲳ:I

    invoke-static {v0, v1, v2}, Lnts/ᜧ;->ᾨ([B[II)V

    return-void
.end method
