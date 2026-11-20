.class public Lnts/ᰛ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:[Ljava/lang/String;

.field public ㆃ:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnts/ആ;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/ᰛ;->ㆃ:[Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lnts/ᰛ;->ᾨ:[Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lnts/ആ;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lnts/ആ;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnts/ᰛ;->ㆃ:[Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lnts/ആ;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnts/ᰛ;->ᾨ:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lnts/ആ;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11
    iget-object v1, p0, Lnts/ᰛ;->ㆃ:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnts/ᙍ;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnts/ᐧ;

    .line 12
    iget-object v2, v2, Lnts/ᐧ;->ㆃ:Lnts/ㄅ;

    .line 13
    iget-object v2, v2, Lnts/ㄅ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v2}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v2

    .line 14
    aput-object v2, v1, v0

    .line 15
    iget-object v1, p0, Lnts/ᰛ;->ᾨ:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnts/ᙍ;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnts/ᐧ;

    .line 16
    iget-object v2, v2, Lnts/ᐧ;->ㆃ:Lnts/ㄅ;

    .line 17
    iget-object v2, v2, Lnts/ㄅ;->ᰛ:Lnts/ᗋ;

    invoke-virtual {v2}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v2

    .line 18
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
