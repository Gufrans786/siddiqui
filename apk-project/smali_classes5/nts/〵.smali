.class public Lnts/〵;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ᰛ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0, v0}, Lnts/〵;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 10
    iput-object p1, p0, Lnts/〵;->ᰛ:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lnts/〵;->Ͼ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ㆃ(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/〵;->Ͼ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnts/〵;->Ͼ:Ljava/lang/String;

    const-string v2, " "

    invoke-static {v0, v1, v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnts/〵;->Ͼ:Ljava/lang/String;

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnts/〵;->Ͼ:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/〵;->Ͼ:Ljava/lang/String;

    return-void
.end method
