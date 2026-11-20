.class public Lnts/ὥ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ᇭ:Z

.field public ᾨ:I

.field public ㆃ:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Matcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lnts/ὥ;->ᾨ:I

    .line 15
    iput-boolean p1, p0, Lnts/ὥ;->ᇭ:Z

    .line 21
    iput-object p2, p0, Lnts/ὥ;->ㆃ:Ljava/util/regex/Matcher;

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 32
    :cond_0
    iput p1, p0, Lnts/ὥ;->ᾨ:I

    .line 35
    invoke-virtual {p0}, Lnts/ὥ;->ㆃ()Z

    move-result p1

    iput-boolean p1, p0, Lnts/ὥ;->ᇭ:Z

    return-void
.end method


# virtual methods
.method public ㆃ(I)Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lnts/ὥ;->ㆃ:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ㆃ()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ὥ;->ㆃ:Ljava/util/regex/Matcher;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lnts/ὥ;->ㆃ:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    .line 6
    iget-object v1, p0, Lnts/ὥ;->ㆃ:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Lnts/ὥ;->ᾨ:I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
