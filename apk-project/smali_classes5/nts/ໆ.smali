.class public Lnts/ໆ;
.super Lnts/ᢒ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x6

    const/16 v1, 0x48

    .line 1
    const-string v2, "\u001d\u0007\r\u007fx\u007f"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lnts/ᢒ;-><init>(Ljava/lang/String;[B)V

    return-void
.end method
