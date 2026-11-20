.class public Lnts/ⵠ;
.super Lnts/ฝ;
.source "SourceFile"


# instance fields
.field public ც:Lnts/ィ;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lnts/ィ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnts/ฝ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object p3, p0, Lnts/ⵠ;->ც:Lnts/ィ;

    return-void
.end method


# virtual methods
.method public ᰛ(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ⵠ;->ც:Lnts/ィ;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    const/16 v3, 0x19

    const/16 v4, 0x13

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0xf

    const/16 v2, 0x6e

    const/16 v3, 0x29

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    const/16 v1, 0x3a

    const/16 v2, 0x38

    invoke-static {v2, p2, v1}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lnts/ィ;->ᾨ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ㆃ(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p3, p0, Lnts/ⵠ;->ც:Lnts/ィ;

    if-eqz p3, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x45

    const/16 v3, 0xb

    invoke-static {v1, v3, v2}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x8

    const/16 v1, 0x52

    invoke-static {v3, v0, v1}, Lnts/ݶ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lnts/ィ;->ᾨ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
