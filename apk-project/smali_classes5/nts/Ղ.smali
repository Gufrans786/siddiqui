.class public Lnts/Ղ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:I

.field public ㆃ:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/Ղ;->ㆃ:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnts/Ղ;->ᾨ:I

    return-void
.end method


# virtual methods
.method public ㆃ()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/Ղ;->ㆃ:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget v1, p0, Lnts/Ղ;->ᾨ:I

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
