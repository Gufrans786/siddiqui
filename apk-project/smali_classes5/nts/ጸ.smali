.class public Lnts/ጸ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:Ljava/lang/Object;

.field public ㆃ:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnts/ጸ;->ᾨ:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lnts/ጸ;->ㆃ:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public ㆃ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ጸ;->ㆃ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ጸ;->ㆃ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnts/ጸ;->ᾨ:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
