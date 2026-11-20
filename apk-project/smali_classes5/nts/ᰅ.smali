.class public Lnts/ᰅ;
.super Lnts/ᖛ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnts/ᖛ;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 2
    array-length v0, p1

    .line 3
    invoke-direct {p0}, Lnts/ᖛ;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v1, v0}, Lnts/ᖛ;->ㆃ([BII)V

    return-void
.end method


# virtual methods
.method public ㆃ()Lnts/ዌ;
    .locals 1

    .line 1
    new-instance v0, Lnts/ᑎ;

    invoke-direct {v0}, Lnts/ᑎ;-><init>()V

    return-object v0
.end method
