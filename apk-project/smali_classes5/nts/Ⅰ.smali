.class public Lnts/Ⅰ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᾨ:Ljava/util/regex/Pattern;

.field public ㆃ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnts/Ⅰ;->ᾨ:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lnts/Ⅰ;->ㆃ:I

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x20

    .line 19
    iput v0, p0, Lnts/Ⅰ;->ㆃ:I

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    .line 21
    iput v0, p0, Lnts/Ⅰ;->ㆃ:I

    :cond_1
    :goto_0
    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_2

    .line 24
    iget p2, p0, Lnts/Ⅰ;->ㆃ:I

    or-int/2addr p2, v1

    iput p2, p0, Lnts/Ⅰ;->ㆃ:I

    .line 26
    :cond_2
    iget p2, p0, Lnts/Ⅰ;->ㆃ:I

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnts/Ⅰ;->ᾨ:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public ㆃ(Ljava/lang/String;)Lnts/ὥ;
    .locals 2

    .line 1
    new-instance v0, Lnts/ὥ;

    iget-object v1, p0, Lnts/Ⅰ;->ᾨ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnts/ὥ;-><init>(Ljava/lang/String;Ljava/util/regex/Matcher;)V

    return-object v0
.end method
