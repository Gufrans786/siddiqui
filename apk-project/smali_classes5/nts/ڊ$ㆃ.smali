.class public Lnts/ڊ$ㆃ;
.super Lnts/ᶧ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ڊ;-><init>(Ljava/lang/Object;Ljava/net/Socket;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Ꮽ:Lnts/ڊ;


# direct methods
.method public constructor <init>(Lnts/ڊ;Lnts/ڊ;Ljava/net/Socket;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ڊ$ㆃ;->Ꮽ:Lnts/ڊ;

    invoke-direct {p0, p2, p3, p4}, Lnts/ᶧ;-><init>(Lnts/ڊ;Ljava/net/Socket;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ᇭ(Lnts/ᛎ;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ڊ$ㆃ;->Ꮽ:Lnts/ڊ;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lnts/ⴳ;->ᛃ()V

    const/4 p1, 0x0

    .line 8
    iput p1, v0, Lnts/ڊ;->ᖫ:I

    .line 11
    iget v1, v0, Lnts/ڊ;->ᐘ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 12
    iget-object v1, v0, Lnts/ዧ;->ᇭ:Lnts/ᛎ;

    if-nez v1, :cond_1

    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x1f

    const/16 v3, 0x1d

    const/16 v4, 0xffd

    invoke-static {v4, v2, v3}, Lnts/ݶ;->ᯚ(III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d00

    invoke-direct {v1, v3, v2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lnts/ڊ;->ᾨ(Lnts/ᛎ;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 14
    iget-object v1, v0, Lnts/ዧ;->ᇭ:Lnts/ᛎ;

    invoke-virtual {v0, v1}, Lnts/ڊ;->ᇭ(Lnts/ᛎ;)V

    .line 17
    :cond_3
    :goto_0
    iget-object v0, v0, Lnts/ڊ;->ᖝ:Lnts/ᢻ;

    if-eqz v0, :cond_4

    .line 18
    iput-boolean p1, v0, Lnts/ᢻ;->ᰛ:Z

    :cond_4
    return-void
.end method

.method public ዲ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ڊ$ㆃ;->Ꮽ:Lnts/ڊ;

    invoke-virtual {v0}, Lnts/ڊ;->せ()V

    return-void
.end method

.method public ᾨ(Lnts/ᛎ;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lnts/ڊ$ㆃ;->Ꮽ:Lnts/ڊ;

    iget-object v1, v0, Lnts/ڊ;->ᒃ:Lnts/ᶧ;

    .line 2
    iget-object v1, v1, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    .line 3
    invoke-virtual {v0}, Lnts/ڊ;->ⱪ()V

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ڊ$ㆃ;->Ꮽ:Lnts/ڊ;

    invoke-virtual {v0, p1}, Lnts/ڊ;->ᰛ(Lnts/ᛎ;)V

    return-void
.end method

.method public て()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ڊ$ㆃ;->Ꮽ:Lnts/ڊ;

    .line 2
    iget v1, v0, Lnts/ڊ;->ᐘ:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4
    :goto_0
    iget v2, v0, Lnts/ڊ;->れ:I

    if-ne v2, v4, :cond_1

    .line 5
    iget v1, v0, Lnts/ڊ;->ᖫ:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v1

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v0}, Lnts/ڊ;->ᇢ()V

    :cond_3
    return-void
.end method

.method public ㆃ(I[B)V
    .locals 1

    .line 5
    iget-object v0, p0, Lnts/ڊ$ㆃ;->Ꮽ:Lnts/ڊ;

    invoke-virtual {v0, p1, p2}, Lnts/ڊ;->ㆃ(I[B)V

    return-void
.end method

.method public ㆃ(Lnts/ᛎ;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lnts/ڊ$ㆃ;->Ꮽ:Lnts/ڊ;

    .line 3
    iget v1, v0, Lnts/ڊ;->ᐘ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lnts/ዧ;->ㆃ(Lnts/ᛎ;)V

    :cond_0
    return-void
.end method

.method public ㆃ([BZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ڊ$ㆃ;->Ꮽ:Lnts/ڊ;

    invoke-virtual {v0, p1, p2}, Lnts/ڊ;->ᾨ([BZ)V

    return-void
.end method
