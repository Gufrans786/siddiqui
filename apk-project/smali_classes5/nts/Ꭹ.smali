.class public Lnts/Ꭹ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:I

.field public ౠ:I

.field public ᇭ:[I

.field public ᰛ:I

.field public ᾨ:[I

.field public ㆃ:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lnts/Ꭹ;->ㆃ:[Ljava/lang/String;

    .line 3
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/Ꭹ;->ᾨ:[I

    .line 4
    new-array v1, v0, [I

    iput-object v1, p0, Lnts/Ꭹ;->ᇭ:[I

    .line 5
    iput v0, p0, Lnts/Ꭹ;->ᰛ:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnts/Ꭹ;->Ͼ:I

    .line 7
    iput v0, p0, Lnts/Ꭹ;->ౠ:I

    return-void
.end method


# virtual methods
.method public ᇭ()V
    .locals 3

    .line 1
    iget v0, p0, Lnts/Ꭹ;->Ͼ:I

    iget v1, p0, Lnts/Ꭹ;->ᰛ:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnts/Ꭹ;->ᇭ:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lnts/Ꭹ;->Ͼ:I

    return-void
.end method

.method public ᾨ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/Ꭹ;->ᾨ:[I

    iget v1, p0, Lnts/Ꭹ;->Ͼ:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void
.end method

.method public ㆃ()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/Ꭹ;->ㆃ:[Ljava/lang/String;

    iget v1, p0, Lnts/Ꭹ;->Ͼ:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method
