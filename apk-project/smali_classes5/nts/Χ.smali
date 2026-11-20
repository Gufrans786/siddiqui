.class public Lnts/Χ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ᗋ;

.field public ౠ:Lnts/ᗋ;

.field public ዲ:Lnts/ᗋ;

.field public ᎊ:Lnts/ᗋ;

.field public ᙕ:Lnts/ᗋ;

.field public ᰛ:Lnts/ᗋ;

.field public て:Lnts/ᗋ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 2
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/Χ;->ᰛ:Lnts/ᗋ;

    .line 3
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/Χ;->Ͼ:Lnts/ᗋ;

    .line 4
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/Χ;->ౠ:Lnts/ᗋ;

    .line 5
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/Χ;->ᙕ:Lnts/ᗋ;

    .line 6
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/Χ;->て:Lnts/ᗋ;

    .line 7
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/Χ;->ዲ:Lnts/ᗋ;

    .line 8
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/Χ;->ᎊ:Lnts/ᗋ;

    return-void
.end method


# virtual methods
.method public ᾨ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/Χ;->ᰛ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 2
    iget-object v0, p0, Lnts/Χ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 3
    iget-object v0, p0, Lnts/Χ;->ౠ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 4
    iget-object v0, p0, Lnts/Χ;->ᙕ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 5
    iget-object v0, p0, Lnts/Χ;->て:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 6
    iget-object v0, p0, Lnts/Χ;->ዲ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 7
    iget-object v0, p0, Lnts/Χ;->ᎊ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    return-void
.end method
