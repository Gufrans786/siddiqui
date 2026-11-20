.class public Lnts/ᯑ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ᗋ;

.field public ౠ:Lnts/ᗋ;

.field public ᙕ:I

.field public ᰛ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 2
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᯑ;->Ͼ:Lnts/ᗋ;

    .line 3
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᯑ;->ౠ:Lnts/ᗋ;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lnts/ᯑ;->ᰛ:I

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lnts/ᯑ;->ᙕ:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 10
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᯑ;->Ͼ:Lnts/ᗋ;

    .line 11
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᯑ;->ౠ:Lnts/ᗋ;

    .line 20
    iget-object v0, p0, Lnts/ᯑ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lnts/ᯑ;->ౠ:Lnts/ᗋ;

    invoke-virtual {p1, p2}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    .line 22
    iput p4, p0, Lnts/ᯑ;->ᰛ:I

    .line 23
    iput p3, p0, Lnts/ᯑ;->ᙕ:I

    return-void
.end method


# virtual methods
.method public ᇭ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᯑ;->ౠ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᾨ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᯑ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
