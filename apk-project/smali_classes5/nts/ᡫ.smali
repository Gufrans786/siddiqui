.class public Lnts/ᡫ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:Lnts/Ế;

.field public ㆃ:Lnts/ଭ;


# direct methods
.method public constructor <init>(Lnts/ଭ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnts/ᡫ;->ᾨ:Lnts/Ế;

    .line 6
    iput-object p1, p0, Lnts/ᡫ;->ㆃ:Lnts/ଭ;

    .line 7
    new-instance p1, Lnts/Ế;

    invoke-direct {p1}, Lnts/Ế;-><init>()V

    iput-object p1, p0, Lnts/ᡫ;->ᾨ:Lnts/Ế;

    .line 8
    iget-object v0, p0, Lnts/ᡫ;->ㆃ:Lnts/ଭ;

    iget-object v0, v0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    iget-object v0, v0, Lnts/ጊ;->ᡲ:Lnts/ࠌ;

    iget-object v0, v0, Lnts/ࠌ;->ᚹ:Lnts/ᵠ;

    invoke-static {p1, v0}, Lnts/ㇾ;->ㆃ(Lnts/Ế;Lnts/ᵠ;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lnts/ᡫ;->ㆃ:Lnts/ଭ;

    .line 11
    iput-object v0, p0, Lnts/ᡫ;->ᾨ:Lnts/Ế;

    .line 19
    new-instance v0, Lnts/ଭ;

    invoke-direct {v0}, Lnts/ଭ;-><init>()V

    iput-object v0, p0, Lnts/ᡫ;->ㆃ:Lnts/ଭ;

    .line 20
    new-instance v0, Lnts/Ế;

    invoke-direct {v0}, Lnts/Ế;-><init>()V

    iput-object v0, p0, Lnts/ᡫ;->ᾨ:Lnts/Ế;

    .line 21
    iget-object v0, p0, Lnts/ᡫ;->ㆃ:Lnts/ଭ;

    invoke-virtual {v0, p1}, Lnts/ᛩ;->ㆃ([B)V

    .line 22
    iget-object p1, p0, Lnts/ᡫ;->ᾨ:Lnts/Ế;

    iget-object v0, p0, Lnts/ᡫ;->ㆃ:Lnts/ଭ;

    iget-object v0, v0, Lnts/ଭ;->ᡲ:Lnts/ጊ;

    iget-object v0, v0, Lnts/ጊ;->ᡲ:Lnts/ࠌ;

    iget-object v0, v0, Lnts/ࠌ;->ᚹ:Lnts/ᵠ;

    invoke-static {p1, v0}, Lnts/ㇾ;->ㆃ(Lnts/Ế;Lnts/ᵠ;)V

    return-void
.end method
