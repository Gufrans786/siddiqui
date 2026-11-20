.class public Lnts/ㇹ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:Lnts/ᗋ;

.field public ᾨ:Lnts/ᗋ;

.field public ㆃ:Lnts/ᇄ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lnts/ᇄ;

    invoke-direct {v0}, Lnts/ᇄ;-><init>()V

    iput-object v0, p0, Lnts/ㇹ;->ㆃ:Lnts/ᇄ;

    .line 4
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ㇹ;->ᾨ:Lnts/ᗋ;

    .line 5
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ㇹ;->ᇭ:Lnts/ᗋ;

    return-void
.end method
