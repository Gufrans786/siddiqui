.class public Lnts/ㄠ;
.super Lnts/ⴉ;
.source "SourceFile"


# instance fields
.field public Ὺ:Lnts/Ꮿ;


# direct methods
.method public constructor <init>([B[BIIJ)V
    .locals 7

    const/16 v3, 0x40

    const/16 v6, 0x40

    const/16 v2, 0x40

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lnts/ⴉ;-><init>([BIIIII)V

    .line 2
    new-instance p2, Lnts/Ꮿ;

    invoke-direct {p2}, Lnts/Ꮿ;-><init>()V

    iput-object p2, v0, Lnts/ㄠ;->Ὺ:Lnts/Ꮿ;

    .line 7
    invoke-virtual {p2, p1, v1, p5, p6}, Lnts/Ꮿ;->ㆃ([B[BJ)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v0, Lnts/ⵄ;->て:Z

    .line 11
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
    iget-object v0, p0, Lnts/ㄠ;->Ὺ:Lnts/Ꮿ;

    iget-object v1, p0, Lnts/ⵄ;->ᰛ:[B

    .line 2
    iget-object v2, v0, Lnts/Ꮿ;->ㆃ:[I

    iget-object v3, v0, Lnts/Ꮿ;->ᾨ:[I

    iget-object v4, v0, Lnts/Ꮿ;->ᇭ:[B

    iget v5, v0, Lnts/Ꮿ;->ᰛ:I

    invoke-static {v1, v2, v3, v4, v5}, Lnts/Ꮿ;->ㆃ([B[I[I[BI)V

    .line 3
    iget v2, v0, Lnts/Ꮿ;->ᰛ:I

    array-length v1, v1

    add-int/2addr v2, v1

    iput v2, v0, Lnts/Ꮿ;->ᰛ:I

    .line 4
    iget v1, v0, Lnts/Ꮿ;->ᰛ:I

    rem-int/lit8 v1, v1, 0x40

    iput v1, v0, Lnts/Ꮿ;->ᰛ:I

    return-void
.end method
