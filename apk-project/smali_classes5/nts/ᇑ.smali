.class public Lnts/ᇑ;
.super Lnts/Ί;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ౠ:I

.field public ዲ:J

.field public ᎊ:J

.field public ᙕ:[B

.field public ᚹ:[B

.field public ᛃ:Z

.field public ᡲ:J

.field public ᰛ:Ljava/lang/String;

.field public ᵑ:I

.field public Ὺ:Ljava/util/Vector;

.field public Ⲳ:Ljava/util/Vector;

.field public ⴗ:[B

.field public て:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/Ί;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lnts/ᇑ;->ᰛ:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lnts/ᇑ;->Ͼ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnts/ᇑ;->ౠ:I

    .line 5
    sget-object v0, Lnts/ଧ;->ㆃ:[B

    iput-object v0, p0, Lnts/ᇑ;->ᙕ:[B

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ᇑ;->Ὺ:Ljava/util/Vector;

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ᇑ;->Ⲳ:Ljava/util/Vector;

    .line 14
    sget-object v0, Lnts/ଧ;->ㆃ:[B

    iput-object v0, p0, Lnts/ᇑ;->ⴗ:[B

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
