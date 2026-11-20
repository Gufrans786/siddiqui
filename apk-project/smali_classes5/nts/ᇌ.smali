.class public Lnts/ᇌ;
.super Lnts/ᛩ;
.source "SourceFile"


# instance fields
.field public ᡲ:Ljava/lang/String;

.field public Ὺ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ᛩ;-><init>()V

    const/16 v0, 0x30

    .line 2
    iput v0, p0, Lnts/ᛩ;->ㆃ:I

    return-void
.end method


# virtual methods
.method public ㆃ(Lnts/Ḭ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/Ḭ;

    invoke-direct {v0}, Lnts/Ḭ;-><init>()V

    .line 2
    invoke-virtual {v0}, Lnts/Ḭ;->ᎊ()V

    .line 3
    sget-object v1, Lnts/ᦥ;->ᵑ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lnts/ᇌ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Ljava/lang/String;)V

    .line 6
    new-instance v1, Lnts/Ḭ;

    invoke-direct {v1}, Lnts/Ḭ;-><init>()V

    .line 7
    invoke-virtual {v1}, Lnts/Ḭ;->ᎊ()V

    .line 8
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    .line 9
    iget-object v0, p0, Lnts/ᇌ;->Ὺ:[B

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lnts/Ḭ;->ᾨ([BI)V

    .line 11
    invoke-virtual {v1}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
