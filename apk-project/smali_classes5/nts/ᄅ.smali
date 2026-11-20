.class public Lnts/ᄅ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ᙕ:[B


# instance fields
.field public Ͼ:I

.field public ౠ:[B

.field public ᇭ:[B

.field public ᰛ:I

.field public ᾨ:[B

.field public ㆃ:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    sput-object v0, Lnts/ᄅ;->ᙕ:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5f

    const-string v1, "\u001f\u001b\u0014\u0017\u0000\u001a\u0010appd~ftv3wxg?lvu;hjh`"

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 2
    invoke-static {v1, v2, v3, v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lnts/ᄅ;->ㆃ:Ljava/lang/String;

    .line 4
    new-array v0, v2, [B

    iput-object v0, p0, Lnts/ᄅ;->ᾨ:[B

    .line 5
    new-array v0, v2, [B

    iput-object v0, p0, Lnts/ᄅ;->ᇭ:[B

    return-void
.end method
