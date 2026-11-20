.class public Lnts/ۀ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:Lnts/ጽ;

.field public ᾨ:Lnts/ጽ;

.field public ㆃ:Lnts/ጽ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnts/ጽ;

    invoke-direct {v0}, Lnts/ጽ;-><init>()V

    iput-object v0, p0, Lnts/ۀ;->ㆃ:Lnts/ጽ;

    .line 3
    new-instance v0, Lnts/ጽ;

    invoke-direct {v0}, Lnts/ጽ;-><init>()V

    iput-object v0, p0, Lnts/ۀ;->ᾨ:Lnts/ጽ;

    .line 4
    new-instance v0, Lnts/ጽ;

    invoke-direct {v0}, Lnts/ጽ;-><init>()V

    iput-object v0, p0, Lnts/ۀ;->ᇭ:Lnts/ጽ;

    return-void
.end method
