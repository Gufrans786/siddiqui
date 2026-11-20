.class public Lnts/ℐ;
.super Lnts/ᢒ;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0xb

    const-string v1, "EM?"

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 1
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1}, Lnts/ᢒ;-><init>(Ljava/lang/String;[B)V

    return-void
.end method
