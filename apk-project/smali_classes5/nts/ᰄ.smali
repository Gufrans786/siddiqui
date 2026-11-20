.class public Lnts/ᰄ;
.super Lnts/ᔟ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnts/ᰄ$ㆃ;,
        Lnts/ᰄ$ᾨ;
    }
.end annotation


# instance fields
.field public ᛃ:J

.field public ᵑ:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnts/ᔟ;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnts/ᰄ;->ᛃ:J

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lnts/ᰄ;->ᵑ:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [Lnts/ᵕ;

    new-instance v4, Lnts/ᵕ;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v5, v0}, Lnts/ᵕ;-><init>(III)V

    aput-object v4, v3, v0

    iput-object v3, p0, Lnts/ኝ;->ౠ:[Lnts/ᵕ;

    .line 6
    new-array v3, v2, [Lnts/ᵕ;

    new-instance v4, Lnts/ᵕ;

    const/16 v6, 0x100

    invoke-direct {v4, v6, v6, v0}, Lnts/ᵕ;-><init>(III)V

    aput-object v4, v3, v0

    iput-object v3, p0, Lnts/ኝ;->ᙕ:[Lnts/ᵕ;

    .line 7
    new-array v2, v2, [Lnts/ᵕ;

    new-instance v3, Lnts/ᵕ;

    const/16 v4, 0x40

    invoke-direct {v3, v5, v5, v4}, Lnts/ᵕ;-><init>(III)V

    aput-object v3, v2, v0

    iput-object v2, p0, Lnts/ᔟ;->Ⲳ:[Lnts/ᵕ;

    .line 8
    iput v6, p0, Lnts/ኝ;->ㆃ:I

    .line 9
    iput v5, p0, Lnts/ኝ;->ᾨ:I

    .line 10
    iput v5, p0, Lnts/ኝ;->ᇭ:I

    .line 11
    iput-object v1, p0, Lnts/ᰄ;->ᵑ:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p0, v5}, Lnts/ᔟ;->ᰛ(I)V

    return-void
.end method


# virtual methods
.method public Ͼ(I)Z
    .locals 1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x60

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public ᇭ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ᔟ;->ㆃ([B)V

    return-void
.end method

.method public ᰛ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnts/ኝ;->ㆃ:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lnts/ቩ;->ᾨ(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnts/ኝ;->ᾨ([B)V

    return-void
.end method

.method public ㆃ([B[B[B)Lnts/ⵋ;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 1
    new-instance v0, Lnts/ᰄ$ᾨ;

    .line 2
    iget v5, p0, Lnts/ᔟ;->Ὺ:I

    .line 3
    iget-wide v6, p0, Lnts/ᰄ;->ᛃ:J

    iget-object v1, p0, Lnts/ᰄ;->ᵑ:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lnts/ᰄ$ᾨ;-><init>(Lnts/ᰄ;[B[B[BIJZ)V

    return-object v0
.end method

.method public ㆃ([B[B[B[B)Lnts/ⵋ;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation

    .line 4
    new-instance v0, Lnts/ᰄ$ㆃ;

    iget-wide v6, p0, Lnts/ᰄ;->ᛃ:J

    iget-object v1, p0, Lnts/ᰄ;->ᵑ:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lnts/ᰄ$ㆃ;-><init>(Lnts/ᰄ;[B[B[B[BJZ)V

    return-object v0
.end method
