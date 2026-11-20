.class public Lnts/ڼ;
.super Lnts/ᛩ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ᰛ([BI)I
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lnts/ᛩ;->ᎊ:Z

    .line 2
    iget p1, p0, Lnts/ᛩ;->ᙕ:I

    add-int/2addr p2, p1

    return p2
.end method
