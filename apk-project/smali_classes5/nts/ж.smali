.class public abstract Lnts/ж;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ㆃ:Lnts/ж;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnts/ከ;

    invoke-direct {v0}, Lnts/ከ;-><init>()V

    sput-object v0, Lnts/ж;->ㆃ:Lnts/ж;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ᾨ()Z
    .locals 1

    .line 1
    sget-object v0, Lnts/ж;->ㆃ:Lnts/ж;

    instance-of v0, v0, Lnts/ሾ;

    return v0
.end method

.method public static ㆃ(I)Lnts/ж;
    .locals 1

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    .line 18
    new-instance p0, Lnts/ሾ;

    invoke-direct {p0}, Lnts/ሾ;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne v0, p0, :cond_1

    .line 20
    new-instance p0, Lnts/љ;

    invoke-direct {p0}, Lnts/љ;-><init>()V

    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lnts/ከ;

    invoke-direct {p0}, Lnts/ከ;-><init>()V

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/Object;)V
    .locals 5

    .line 1
    instance-of v0, p0, Lnts/ж;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lnts/ж;

    sput-object p0, Lnts/ж;->ㆃ:Lnts/ж;

    return-void

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4
    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnts/ከ;->ᙕ:Ljava/lang/String;

    invoke-static {p0, v0}, Lnts/ၽ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    :try_start_0
    new-instance v0, Lnts/ݟ;

    invoke-direct {v0, p0}, Lnts/ݟ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnts/ж;->ㆃ:Lnts/ж;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 16
    new-instance v0, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    const/16 v3, 0x26

    const/16 v4, 0x428

    invoke-static {v4, v2, v3}, Lnts/ッ;->ᵑ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lnts/ᛎ;->ᾨ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xca

    invoke-direct {v0, p0, v2, v1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    :goto_0
    new-instance p0, Lnts/ከ;

    invoke-direct {p0}, Lnts/ከ;-><init>()V

    sput-object p0, Lnts/ж;->ㆃ:Lnts/ж;

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract Ͼ(Ljava/lang/String;)Lnts/ኝ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public abstract ౠ(Ljava/lang/String;)Lnts/ዃ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public abstract ᇭ(Ljava/lang/String;)Lnts/ᙱ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public abstract ᰛ(Ljava/lang/String;)Lnts/Ⴧ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public abstract ᾨ(Ljava/lang/String;)Lnts/ዃ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method

.method public abstract ㆃ()Ljava/lang/String;
.end method

.method public abstract ㆃ(Ljava/lang/String;)Lnts/バ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ẩ;
        }
    .end annotation
.end method
