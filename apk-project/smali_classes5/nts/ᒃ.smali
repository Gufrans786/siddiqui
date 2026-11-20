.class public Lnts/ᒃ;
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
    invoke-virtual {v0}, Lnts/Ḭ;->ㆃ()V

    .line 4
    invoke-virtual {v0}, Lnts/Ḭ;->ㆃ()V

    .line 5
    iget-object v1, p0, Lnts/ᒃ;->ᡲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnts/Ḭ;->ㆃ(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lnts/Ḭ;->ౠ()V

    .line 8
    iget-object v1, p0, Lnts/ᒃ;->Ὺ:[B

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lnts/Ḭ;->ᾨ([BI)V

    .line 9
    invoke-virtual {v0}, Lnts/Ḭ;->ౠ()V

    .line 11
    invoke-virtual {v0}, Lnts/Ḭ;->ⱪ()Lnts/ᖝ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnts/Ḭ;->ㆃ(Lnts/ᖝ;)V

    return-void
.end method
