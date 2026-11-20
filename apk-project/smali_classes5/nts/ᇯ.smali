.class public Lnts/ᇯ;
.super Lnts/ᢒ;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/4 v0, 0x3

    const/16 v1, 0x24

    const/16 v2, 0x1d3

    .line 1
    invoke-static {v2, v0, v1}, Lnts/ᨾ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnts/ᢒ;-><init>(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public ㆃ(Ljava/lang/String;)Lnts/ዃ;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnts/ቩ;->Ͼ(Ljava/lang/String;)Lnts/ዃ;

    move-result-object p1

    return-object p1
.end method
