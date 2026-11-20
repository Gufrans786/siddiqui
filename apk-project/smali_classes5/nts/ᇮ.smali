.class public Lnts/ᇮ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Z

.field public ᇭ:Ljava/lang/String;

.field public ᰛ:Ljava/lang/String;

.field public ᾨ:Ljava/lang/String;

.field public ㆃ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lnts/ᇮ;->Ͼ:Z

    .line 10
    iput-object p1, p0, Lnts/ᇮ;->ㆃ:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    return-void
.end method

.method public static ㆃ(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnts/ᇮ;

    .line 19
    iget-object v2, v1, Lnts/ᇮ;->ㆃ:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    iget-object p0, v1, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static ㆃ([CIIZZ)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_1

    .line 1
    :goto_0
    array-length p3, p0

    if-ge p1, p3, :cond_0

    aget-char p3, p0, p1

    invoke-static {p3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le p2, p1, :cond_1

    add-int/lit8 p3, p2, -0x1

    .line 4
    aget-char p3, p0, p3

    invoke-static {p3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p3

    if-eqz p3, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_3

    const/16 p3, 0x22

    if-ge p1, p2, :cond_2

    .line 9
    aget-char p4, p0, p1

    if-ne p4, p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-ge p1, p2, :cond_3

    add-int/lit8 p4, p2, -0x1

    .line 12
    aget-char p4, p0, p4

    if-ne p4, p3, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 16
    :cond_3
    new-instance p3, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {p3, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnts/ᇮ;->ㆃ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnts/ᇮ;->ᾨ:Ljava/lang/String;

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lnts/ㆃ;->ㆃ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
