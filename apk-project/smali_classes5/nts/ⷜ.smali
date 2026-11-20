.class public Lnts/ⷜ;
.super Lnts/ၽ;
.source "SourceFile"


# static fields
.field public static Ⲳ:Ljava/util/Vector;


# instance fields
.field public ዲ:Ljava/util/Vector;

.field public ᎊ:I

.field public ᡲ:Ljava/lang/String;

.field public Ὺ:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lnts/ⷜ;->Ⲳ:Ljava/util/Vector;

    .line 2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lnts/ⷜ;->Ⲳ:Ljava/util/Vector;

    sget-object v1, Lnts/ၽ;->Ͼ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnts/ၽ;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnts/ⷜ;->ዲ:Ljava/util/Vector;

    if-eqz p1, :cond_2

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 13
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lnts/ⷜ;->Ͼ(I)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Lnts/ⷜ;->Ͼ(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public Ͼ(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1
    :cond_1
    iput p1, p0, Lnts/ⷜ;->ᎊ:I

    .line 2
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lnts/ⷜ;->ዲ:Ljava/util/Vector;

    .line 4
    iget v0, p0, Lnts/ⷜ;->ᎊ:I

    const-string v1, ""

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    return-void

    .line 12
    :cond_2
    sget-object p1, Lnts/ၽ;->ᙕ:Ljava/lang/String;

    iput-object p1, p0, Lnts/ⷜ;->Ὺ:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lnts/ⷜ;->ᡲ:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lnts/ⷜ;->ዲ:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lnts/ⷜ;->ዲ:Ljava/util/Vector;

    sget-object v0, Lnts/ၽ;->Ͼ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lnts/ⷜ;->ዲ:Ljava/util/Vector;

    sget-object v0, Lnts/ၽ;->ᙕ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lnts/ⷜ;->ᡲ:Ljava/lang/String;

    iput-object v0, p0, Lnts/ⷜ;->Ὺ:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lnts/ⷜ;->ዲ:Ljava/util/Vector;

    sget-object v0, Lnts/ၽ;->Ͼ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public ᇭ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⷜ;->ᡲ:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public ᛃ([B)Ljava/lang/String;
    .locals 3

    .line 4
    iget-object v0, p0, Lnts/ⷜ;->ᡲ:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnts/ⷜ;->ᡲ:Ljava/lang/String;

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Lnts/ၽ;->ㆃ([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1}, Lnts/ၽ;->て([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ᛃ(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lnts/ⷜ;->ᡲ:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lnts/ⷜ;->Ὺ:Ljava/lang/String;

    return-void
.end method

.method public Ⲳ(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ⷜ;->Ὺ:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnts/ⷜ;->Ὺ:Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lnts/ၽ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method
