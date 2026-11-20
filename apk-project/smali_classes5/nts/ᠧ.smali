.class public Lnts/ᠧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ㆃ:Lnts/ᯑ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ᠧ;->ㆃ:Lnts/ᯑ;

    .line 7
    new-instance v0, Lnts/ᯑ;

    invoke-direct {v0}, Lnts/ᯑ;-><init>()V

    iput-object v0, p0, Lnts/ᠧ;->ㆃ:Lnts/ᯑ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lnts/ᠧ;->ㆃ:Lnts/ᯑ;

    .line 19
    new-instance v0, Lnts/ᯑ;

    invoke-direct {v0, p1, p2, p3, p4}, Lnts/ᯑ;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lnts/ᠧ;->ㆃ:Lnts/ᯑ;

    return-void
.end method

.method public constructor <init>(Lnts/ᯑ;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lnts/ᠧ;->ㆃ:Lnts/ᯑ;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᠧ;

    iget-object v1, p0, Lnts/ᠧ;->ㆃ:Lnts/ᯑ;

    invoke-virtual {v1}, Lnts/Ί;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnts/ᯑ;

    invoke-direct {v0, v1}, Lnts/ᠧ;-><init>(Lnts/ᯑ;)V

    return-object v0
.end method
