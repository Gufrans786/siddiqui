.class public Lnts/Ḩ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/ᐜ;


# instance fields
.field public Ͼ:Z

.field public ᇭ:Lnts/ڊ;

.field public ᰛ:Ljava/util/Hashtable;

.field public ᾨ:Lnts/ㆍ;

.field public ㆃ:Lnts/ฝ;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lnts/ฝ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnts/Ḩ;->ㆃ:Lnts/ฝ;

    .line 3
    iput-object v0, p0, Lnts/Ḩ;->ᾨ:Lnts/ㆍ;

    .line 4
    iput-object v0, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    .line 5
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lnts/Ḩ;->ᰛ:Ljava/util/Hashtable;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lnts/Ḩ;->Ͼ:Z

    .line 9
    iput-object p3, p0, Lnts/Ḩ;->ㆃ:Lnts/ฝ;

    .line 10
    instance-of p3, p1, Lnts/ㆍ;

    if-eqz p3, :cond_0

    .line 11
    check-cast p1, Lnts/ㆍ;

    iput-object p1, p0, Lnts/Ḩ;->ᾨ:Lnts/ㆍ;

    .line 13
    :cond_0
    new-instance p1, Lnts/ڊ;

    .line 14
    invoke-direct {p1, p0, v0, p2}, Lnts/ڊ;-><init>(Ljava/lang/Object;Ljava/net/Socket;Ljava/lang/Object;)V

    .line 15
    iput-object p1, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    return-void
.end method


# virtual methods
.method public fireSSLServerAuthentication([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 0

    return-void
.end method

.method public fireSSLStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ᾨ(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ㆃ()V
    .locals 0

    return-void
.end method

.method public ㆃ(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ㆃ(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final ㆃ(Z)V
    .locals 2

    .line 29
    iget-object v0, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lnts/ڊ;->Ͼ(I)V

    .line 30
    iget-object v0, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    invoke-virtual {v0, p1}, Lnts/ڊ;->て(Z)V

    .line 31
    iget-object p1, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    iget-object v0, p0, Lnts/Ḩ;->ㆃ:Lnts/ฝ;

    .line 32
    iget v0, v0, Lnts/ⴳ;->ᯋ:I

    .line 33
    invoke-virtual {p1, v0}, Lnts/ڊ;->Ͼ(I)V

    return-void
.end method

.method public ㆃ([BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {p2}, Lnts/ၽ;->ᇭ(I)[B

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lnts/ၽ;->ᇭ([B[B)[B

    move-result-object p1

    add-int/lit8 p2, p2, 0x4

    .line 5
    iget-object v0, p0, Lnts/Ḩ;->ㆃ:Lnts/ฝ;

    .line 6
    iget-object v1, v0, Lnts/ᶢ;->ጊ:Ljava/lang/String;

    .line 7
    iget v0, v0, Lnts/ᶢ;->ᬋ:I

    .line 8
    iget-object v2, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnts/ڊ;->ᇭ(I)V

    .line 10
    iget-object v2, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    invoke-virtual {v2}, Lnts/ڊ;->Ṳ()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    .line 12
    iget-object v2, v2, Lnts/ڊ;->Ꮆ:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    .line 14
    iget v2, v2, Lnts/ڊ;->ߛ:I

    if-eq v2, v0, :cond_3

    .line 15
    :cond_1
    invoke-virtual {p0, v3}, Lnts/Ḩ;->ㆃ(Z)V

    .line 16
    iget-object v2, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    invoke-virtual {v2, v1}, Lnts/ڊ;->ᡲ(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    invoke-virtual {v1, v0}, Lnts/ڊ;->ᛃ(I)V

    .line 18
    invoke-virtual {p0, v4}, Lnts/Ḩ;->ㆃ(Z)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v2, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    iget-object v5, p0, Lnts/Ḩ;->ㆃ:Lnts/ฝ;

    invoke-virtual {v5}, Lnts/ᶢ;->ᚹ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnts/ڊ;->ዲ(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    iget-object v5, p0, Lnts/Ḩ;->ㆃ:Lnts/ฝ;

    invoke-virtual {v5}, Lnts/ᶢ;->せ()I

    move-result v5

    invoke-virtual {v2, v5}, Lnts/ڊ;->ᡲ(I)V

    .line 23
    iget-object v2, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    invoke-virtual {v2, v1}, Lnts/ڊ;->ᡲ(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    invoke-virtual {v1, v0}, Lnts/ڊ;->ᛃ(I)V

    .line 25
    invoke-virtual {p0, v4}, Lnts/Ḩ;->ㆃ(Z)V

    .line 28
    :cond_3
    :goto_0
    iget-object v0, p0, Lnts/Ḩ;->ᇭ:Lnts/ڊ;

    invoke-virtual {v0, p1, v3, p2}, Lnts/ڊ;->ㆃ([BII)V

    :cond_4
    :goto_1
    return-void
.end method
