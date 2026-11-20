.class public Lnts/ቍ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:[I

.field public ㆃ:Lnts/Ⅻ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnts/Ⅻ;

    invoke-direct {v0}, Lnts/Ⅻ;-><init>()V

    iput-object v0, p0, Lnts/ቍ;->ㆃ:Lnts/Ⅻ;

    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lnts/ቍ;->ᾨ:[I

    return-void
.end method
