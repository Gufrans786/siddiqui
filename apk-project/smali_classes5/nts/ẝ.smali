.class public Lnts/ẝ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:Lnts/ẝ;

.field public ᰛ:Lnts/ẝ;

.field public ᾨ:I

.field public ㆃ:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lnts/ẝ;->ㆃ:I

    .line 3
    iput p2, p0, Lnts/ẝ;->ᾨ:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lnts/ẝ;->ᇭ:Lnts/ẝ;

    .line 5
    iput-object p1, p0, Lnts/ẝ;->ᰛ:Lnts/ẝ;

    return-void
.end method

.method public constructor <init>(Lnts/ẝ;Lnts/ẝ;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lnts/ẝ;->ᇭ:Lnts/ẝ;

    .line 8
    iput-object p2, p0, Lnts/ẝ;->ᰛ:Lnts/ẝ;

    .line 9
    iget p1, p1, Lnts/ẝ;->ㆃ:I

    iget p2, p2, Lnts/ẝ;->ㆃ:I

    add-int/2addr p1, p2

    iput p1, p0, Lnts/ẝ;->ㆃ:I

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lnts/ẝ;->ᾨ:I

    return-void
.end method


# virtual methods
.method public ㆃ([BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ẝ;->ᇭ:Lnts/ẝ;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lnts/ẝ;->ᾨ:I

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-virtual {v0, p1, p2}, Lnts/ẝ;->ㆃ([BI)V

    .line 5
    iget-object v0, p0, Lnts/ẝ;->ᰛ:Lnts/ẝ;

    invoke-virtual {v0, p1, p2}, Lnts/ẝ;->ㆃ([BI)V

    return-void
.end method
