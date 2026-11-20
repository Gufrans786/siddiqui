.class public Lnts/ᙍ$ᾨ;
.super Lnts/ᙍ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ᙍ;->subList(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnts/\u164d<",
        "TOUT_T;TIN_T;>;"
    }
.end annotation


# instance fields
.field public final synthetic ᰛ:Lnts/ᙍ;


# direct methods
.method public constructor <init>(Lnts/ᙍ;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᙍ$ᾨ;->ᰛ:Lnts/ᙍ;

    invoke-direct {p0, p2, p3}, Lnts/ᙍ;-><init>(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public ᇭ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN_T;)TOUT_T;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᙍ$ᾨ;->ᰛ:Lnts/ᙍ;

    invoke-virtual {v0, p1}, Lnts/ⅿ;->ᇭ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ㆃ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT_T;)TIN_T;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᙍ$ᾨ;->ᰛ:Lnts/ᙍ;

    invoke-virtual {v0, p1}, Lnts/ⅿ;->ㆃ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
