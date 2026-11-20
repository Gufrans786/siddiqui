.class public Lnts/Ϋ;
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

    iput-object v0, p0, Lnts/Ϋ;->ㆃ:Lnts/ጽ;

    .line 3
    new-instance v0, Lnts/ጽ;

    invoke-direct {v0}, Lnts/ጽ;-><init>()V

    iput-object v0, p0, Lnts/Ϋ;->ᾨ:Lnts/ጽ;

    .line 4
    new-instance v0, Lnts/ጽ;

    invoke-direct {v0}, Lnts/ጽ;-><init>()V

    iput-object v0, p0, Lnts/Ϋ;->ᇭ:Lnts/ጽ;

    return-void
.end method

.method public constructor <init>(Lnts/ጽ;Lnts/ጽ;Lnts/ጽ;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lnts/Ϋ;->ㆃ:Lnts/ጽ;

    .line 7
    iput-object p2, p0, Lnts/Ϋ;->ᾨ:Lnts/ጽ;

    .line 8
    iput-object p3, p0, Lnts/Ϋ;->ᇭ:Lnts/ጽ;

    return-void
.end method
