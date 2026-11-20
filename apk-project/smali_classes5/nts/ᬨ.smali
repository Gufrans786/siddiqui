.class public Lnts/ᬨ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Lnts/ᗋ;

.field public ౠ:Lnts/ᗋ;

.field public ዲ:Lnts/ᗋ;

.field public ᎊ:Lnts/ᗋ;

.field public ᙕ:Lnts/ᗋ;

.field public ᛃ:I

.field public ᡲ:Lnts/ᗋ;

.field public ᰛ:Lnts/ᗋ;

.field public Ὺ:Lnts/ᗋ;

.field public Ⲳ:Lnts/ᗋ;

.field public て:Lnts/ᗋ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 2
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->ᰛ:Lnts/ᗋ;

    .line 3
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->Ͼ:Lnts/ᗋ;

    .line 4
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->ౠ:Lnts/ᗋ;

    .line 5
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->ᙕ:Lnts/ᗋ;

    .line 6
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->て:Lnts/ᗋ;

    .line 7
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->ዲ:Lnts/ᗋ;

    .line 8
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->ᎊ:Lnts/ᗋ;

    .line 9
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->ᡲ:Lnts/ᗋ;

    .line 10
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->Ὺ:Lnts/ᗋ;

    .line 11
    new-instance v0, Lnts/ᗋ;

    invoke-direct {v0}, Lnts/ᗋ;-><init>()V

    iput-object v0, p0, Lnts/ᬨ;->Ⲳ:Lnts/ᗋ;

    .line 20
    invoke-virtual {p0}, Lnts/ᬨ;->ᇭ()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lnts/ᬨ;->ᛃ:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnts/Ί;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ᇭ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᬨ;->ᰛ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 2
    iget-object v0, p0, Lnts/ᬨ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 3
    iget-object v0, p0, Lnts/ᬨ;->ౠ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 4
    iget-object v0, p0, Lnts/ᬨ;->ᙕ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 5
    iget-object v0, p0, Lnts/ᬨ;->て:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 6
    iget-object v0, p0, Lnts/ᬨ;->ዲ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 7
    iget-object v0, p0, Lnts/ᬨ;->ᎊ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 8
    iget-object v0, p0, Lnts/ᬨ;->ᡲ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 9
    iget-object v0, p0, Lnts/ᬨ;->Ὺ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    .line 10
    iget-object v0, p0, Lnts/ᬨ;->Ⲳ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ᙕ()I

    return-void
.end method

.method public ᾨ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᬨ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnts/ᬨ;->ᰛ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnts/ᬨ;->ౠ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnts/ᬨ;->ᙕ:Lnts/ᗋ;

    .line 2
    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnts/ᬨ;->て:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnts/ᬨ;->ዲ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnts/ᬨ;->ᎊ:Lnts/ᗋ;

    .line 3
    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnts/ᬨ;->ᡲ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ㆃ(Lnts/څ;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᬨ;->ᰛ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lnts/ᬨ;->ᰛ:Lnts/ᗋ;

    .line 3
    invoke-virtual {v0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    .line 4
    iput-object v0, p1, Lnts/څ;->ㆃ:[B

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ᬨ;->Ͼ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lnts/ᬨ;->Ͼ:Lnts/ᗋ;

    .line 7
    invoke-virtual {v0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    .line 8
    iput-object v0, p1, Lnts/څ;->ᾨ:[B

    .line 10
    :cond_1
    iget-object v0, p0, Lnts/ᬨ;->ᡲ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    iget-object v0, p0, Lnts/ᬨ;->ᡲ:Lnts/ᗋ;

    .line 12
    invoke-virtual {v0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    .line 13
    iput-object v0, p1, Lnts/څ;->て:[B

    .line 14
    :cond_2
    iget-object v0, p0, Lnts/ᬨ;->ౠ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lez v0, :cond_3

    .line 15
    iget-object v0, p0, Lnts/ᬨ;->ౠ:Lnts/ᗋ;

    .line 16
    invoke-virtual {v0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    .line 17
    iput-object v0, p1, Lnts/څ;->ᇭ:[B

    .line 18
    :cond_3
    iget-object v0, p0, Lnts/ᬨ;->ᙕ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lez v0, :cond_4

    .line 19
    iget-object v0, p0, Lnts/ᬨ;->ᙕ:Lnts/ᗋ;

    .line 20
    invoke-virtual {v0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    .line 21
    iput-object v0, p1, Lnts/څ;->ᰛ:[B

    .line 22
    :cond_4
    iget-object v0, p0, Lnts/ᬨ;->て:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lez v0, :cond_5

    .line 23
    iget-object v0, p0, Lnts/ᬨ;->て:Lnts/ᗋ;

    .line 24
    invoke-virtual {v0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    .line 25
    iput-object v0, p1, Lnts/څ;->Ͼ:[B

    .line 26
    :cond_5
    iget-object v0, p0, Lnts/ᬨ;->ዲ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lez v0, :cond_6

    .line 27
    iget-object v0, p0, Lnts/ᬨ;->ዲ:Lnts/ᗋ;

    .line 28
    invoke-virtual {v0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    .line 29
    iput-object v0, p1, Lnts/څ;->ౠ:[B

    .line 30
    :cond_6
    iget-object v0, p0, Lnts/ᬨ;->ᎊ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ౠ()I

    move-result v0

    if-lez v0, :cond_7

    .line 31
    iget-object v0, p0, Lnts/ᬨ;->ᎊ:Lnts/ᗋ;

    .line 32
    invoke-virtual {v0}, Lnts/ᗋ;->ᾨ()[B

    move-result-object v0

    .line 33
    iput-object v0, p1, Lnts/څ;->ᙕ:[B

    .line 49
    :cond_7
    invoke-static {p1}, Lnts/ቩ;->ㆃ(Lnts/څ;)V

    return-void
.end method
