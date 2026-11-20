.class public Lnts/ፘ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/છ;

.field public ౠ:Lnts/〸;

.field public ᇭ:I

.field public ᰛ:Lnts/ᗋ;

.field public ᾨ:I

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ፘ;->ᰛ:Lnts/ᗋ;

    .line 3
    new-instance v0, Lnts/છ;

    invoke-direct {v0}, Lnts/છ;-><init>()V

    iput-object v0, p0, Lnts/ፘ;->Ͼ:Lnts/છ;

    .line 4
    new-instance v0, Lnts/〸;

    invoke-direct {v0}, Lnts/〸;-><init>()V

    iput-object v0, p0, Lnts/ፘ;->ౠ:Lnts/〸;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnts/ፘ;->ㆃ:I

    .line 7
    iput v0, p0, Lnts/ፘ;->ᾨ:I

    .line 12
    iput v0, p0, Lnts/ፘ;->ᇭ:I

    return-void
.end method
