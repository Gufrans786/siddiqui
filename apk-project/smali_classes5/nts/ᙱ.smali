.class public abstract Lnts/ᙱ;
.super Lnts/ዃ;
.source "SourceFile"


# instance fields
.field public Ͼ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ዃ;-><init>()V

    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [B

    iput-object v0, p0, Lnts/ᙱ;->Ͼ:[B

    return-void
.end method


# virtual methods
.method public ᇭ([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnts/ᙱ;->Ͼ:[B

    return-void
.end method
