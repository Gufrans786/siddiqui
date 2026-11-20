.class public Lnts/ヒ;
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

    const/16 v0, 0x9

    const/16 v1, 0x47

    .line 1
    const-string v2, "\u001c\u0006\u001c\u0008\u0007\u000fy\u007fv"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lnts/ᢒ;-><init>(Ljava/lang/String;[B)V

    return-void
.end method
