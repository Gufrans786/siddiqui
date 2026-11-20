.class public Lnts/ཅ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ౠ:Z

.field public ᇭ:I

.field public ዲ:Z

.field public ᎊ:C

.field public ᙕ:Z

.field public ᰛ:Ljava/lang/String;

.field public ᾨ:I

.field public て:Z

.field public ㆃ:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnts/ཅ;->ዲ:Z

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lnts/ཅ;->ᰛ:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lnts/ཅ;->ㆃ:I

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lnts/ཅ;->ᾨ:I

    .line 6
    iput-boolean v1, p0, Lnts/ཅ;->ᙕ:Z

    .line 7
    iput v1, p0, Lnts/ཅ;->ᇭ:I

    const/4 v2, 0x5

    const/16 v3, 0xe

    .line 8
    const-string v4, "+\u0003\u0003\u0005\u0003\t!!\'!"

    invoke-static {v4, v1, v2, v3}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    .line 9
    iput-object v2, p0, Lnts/ཅ;->Ͼ:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lnts/ཅ;->ౠ:Z

    .line 11
    iput-boolean v0, p0, Lnts/ཅ;->ዲ:Z

    .line 12
    iput-boolean v1, p0, Lnts/ཅ;->て:Z

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnts/ཅ;->ㆃ()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnts/ཅ;->ᾨ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᾨ()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lnts/ཅ;->ᾨ:I

    if-ltz v0, :cond_0

    iget-boolean v1, p0, Lnts/ཅ;->ᙕ:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnts/ཅ;->ㆃ:I

    .line 2
    invoke-virtual {p0, v0}, Lnts/ཅ;->ㆃ(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lnts/ཅ;->ㆃ:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lnts/ཅ;->ᙕ:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lnts/ཅ;->ᾨ:I

    .line 8
    iget v1, p0, Lnts/ཅ;->ᇭ:I

    if-lt v0, v1, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    move v1, v0

    .line 9
    :goto_1
    iget v2, p0, Lnts/ཅ;->ᇭ:I

    if-ge v1, v2, :cond_8

    .line 10
    iget-object v2, p0, Lnts/ཅ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 11
    iget-boolean v3, p0, Lnts/ཅ;->て:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_6

    .line 12
    :cond_2
    iget-object v3, p0, Lnts/ཅ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 14
    iget v4, p0, Lnts/ཅ;->ᇭ:I

    if-ge v1, v4, :cond_5

    .line 15
    iget-object v4, p0, Lnts/ཅ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-ne v4, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 16
    :cond_5
    iget v3, p0, Lnts/ཅ;->ᇭ:I

    if-lt v1, v3, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    iget-char v3, p0, Lnts/ཅ;->ᎊ:C

    if-gt v2, v3, :cond_7

    iget-object v3, p0, Lnts/ཅ;->Ͼ:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_8
    :goto_3
    iget-boolean v2, p0, Lnts/ཅ;->ౠ:Z

    if-eqz v2, :cond_9

    if-ne v0, v1, :cond_9

    .line 23
    iget-object v2, p0, Lnts/ཅ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 24
    iget-char v3, p0, Lnts/ཅ;->ᎊ:C

    if-gt v2, v3, :cond_9

    iget-object v3, p0, Lnts/ཅ;->Ͼ:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    .line 25
    :cond_9
    iput v1, p0, Lnts/ཅ;->ㆃ:I

    .line 26
    iget-boolean v2, p0, Lnts/ཅ;->ዲ:Z

    if-nez v2, :cond_a

    add-int/lit8 v2, v1, 0x1

    .line 27
    iput v2, p0, Lnts/ཅ;->ㆃ:I

    .line 28
    iget-object v2, p0, Lnts/ཅ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_a
    iget-object v2, p0, Lnts/ཅ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ㆃ(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ཅ;->Ͼ:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lnts/ཅ;->Ͼ:Ljava/lang/String;

    .line 4
    :cond_0
    iget-boolean v0, p0, Lnts/ཅ;->ዲ:Z

    if-nez v0, :cond_1

    return p1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lnts/ཅ;->ౠ:Z

    if-nez v0, :cond_3

    iget v0, p0, Lnts/ཅ;->ᇭ:I

    if-ge p1, v0, :cond_3

    .line 6
    iget-object v0, p0, Lnts/ཅ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 7
    iget-char v1, p0, Lnts/ཅ;->ᎊ:C

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lnts/ཅ;->Ͼ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method public ㆃ()Z
    .locals 2

    .line 8
    iget v0, p0, Lnts/ཅ;->ㆃ:I

    invoke-virtual {p0, v0}, Lnts/ཅ;->ㆃ(I)I

    move-result v0

    iput v0, p0, Lnts/ཅ;->ᾨ:I

    .line 9
    iget v1, p0, Lnts/ཅ;->ᇭ:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
