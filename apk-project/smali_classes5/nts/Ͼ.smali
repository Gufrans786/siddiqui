.class public Lnts/Ͼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;


# instance fields
.field public ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;


# direct methods
.method public constructor <init>(Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/Ͼ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/Ͼ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;->cancelled()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    return-void
.end method

.method public completed(Lcom/nsoftware/ipworks3ds/sdk/event/CompletionEvent;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/Ͼ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;->completed(Lcom/nsoftware/ipworks3ds/sdk/event/CompletionEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    return-void
.end method

.method public protocolError(Lcom/nsoftware/ipworks3ds/sdk/event/ProtocolErrorEvent;)V
    .locals 5

    .line 1
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    const/16 v3, 0x18

    const/16 v4, 0x8

    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᎊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/ProtocolErrorEvent;->getErrorMessage()Lcom/nsoftware/ipworks3ds/sdk/event/ErrorMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lnts/Ͼ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;->protocolError(Lcom/nsoftware/ipworks3ds/sdk/event/ProtocolErrorEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    return-void
.end method

.method public runtimeError(Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;)V
    .locals 5

    .line 1
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    const/16 v3, 0x1c

    const/16 v4, 0x17

    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᎊ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lnts/Ͼ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;->runtimeError(Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    return-void
.end method

.method public timedout()V
    .locals 4

    .line 1
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    const/16 v1, 0x8

    const/16 v2, 0x49

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᎊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lnts/Ͼ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;->timedout()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnts/ᄎ;->ㆃ(Ljava/lang/String;)V

    return-void
.end method
