.class public Lnts/ᛎ;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public ㆃ:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, p1, p2}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 5

    .line 5
    instance-of v0, p1, Lnts/ᛎ;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    check-cast v0, Lnts/ᛎ;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x6a

    const-string v2, "Xbd`f\u007feBjwsCycfriupp95; \u000b\u0002\u0004\u0012\u001bU\u0011\t\u0008\u0016\nE^"

    const/16 v3, 0x17

    const/16 v4, 0xe

    .line 9
    invoke-static {v2, v3, v4, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lnts/ᛎ;->ᾨ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_0
    invoke-direct {p0, p1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iput p2, p0, Lnts/ᛎ;->ㆃ:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lnts/ᛎ;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lnts/ᛎ;

    .line 3
    iget v0, v0, Lnts/ᛎ;->ㆃ:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x2bc

    .line 4
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    return-void
.end method

.method public static ᾨ(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1a

    const-string v2, "Xbd`f\u007feBjwsCycfriupp95; \u000b\u0002\u0004\u0012\u001bU\u0011\t\u0008\u0016\nE^"

    const/4 v3, 0x0

    const/16 v4, 0x17

    .line 2
    invoke-static {v2, v3, v4, v1}, Lnts/ᾨ;->ㆃ(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Ljava/lang/Throwable;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lnts/ᛎ;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lnts/ᛎ;

    .line 3
    iget p0, p0, Lnts/ᛎ;->ㆃ:I

    return p0

    :cond_0
    const/16 p0, 0x2bc

    return p0
.end method
