.class public Lnts/ⱑ;
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

.method public constructor <init>([B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    .line 5
    iput-object p1, p0, Lnts/ᛩ;->ᾨ:[B

    return-void
.end method


# virtual methods
.method public ㆃ(Lnts/Ḭ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᛩ;->ᾨ:[B

    iget v1, p0, Lnts/ᛩ;->ㆃ:I

    invoke-virtual {p1, v0, v1}, Lnts/Ḭ;->ᰛ([BI)V

    return-void
.end method
