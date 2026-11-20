.class Lcom/oppwa/mobile/connect/threeds/a;
.super Ljava/lang/Object;
.source "ChallengeCallbackAdapter.java"

# interfaces
.implements Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/threeds/a$b;,
        Lcom/oppwa/mobile/connect/threeds/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/a;->a:Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/a;->a:Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;

    invoke-interface {v0}, Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;->onCancel()V

    return-void
.end method

.method public completed(Lcom/nsoftware/ipworks3ds/sdk/event/CompletionEvent;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/a$a;

    .line 2
    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/CompletionEvent;->getSDKTransactionID()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/CompletionEvent;->getTransactionStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->fromString(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/oppwa/mobile/connect/threeds/a$a;-><init>(Ljava/lang/String;Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;)V

    .line 4
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/a;->a:Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;

    invoke-interface {p1, v0}, Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;->onComplete(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$CompletionEvent;)V

    return-void
.end method

.method public protocolError(Lcom/nsoftware/ipworks3ds/sdk/event/ProtocolErrorEvent;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/ProtocolErrorEvent;->getErrorMessage()Lcom/nsoftware/ipworks3ds/sdk/event/ErrorMessage;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/a$b;

    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/ErrorMessage;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/ErrorMessage;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/ErrorMessage;->getErrorDetails()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/oppwa/mobile/connect/threeds/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/a;->a:Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;

    invoke-interface {p1, v0}, Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;->onFailure(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;)V

    return-void
.end method

.method public runtimeError(Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/a$b;

    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-interface {p1}, Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/oppwa/mobile/connect/threeds/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/a;->a:Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;

    invoke-interface {p1, v0}, Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;->onFailure(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;)V

    return-void
.end method

.method public timedout()V
    .locals 4

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/a$b;

    const-string v1, "Transaction closed due to internal timeout expiration"

    const/4 v2, 0x0

    const-string v3, "000"

    invoke-direct {v0, v3, v1, v2}, Lcom/oppwa/mobile/connect/threeds/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/a;->a:Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;

    invoke-interface {v1, v0}, Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;->onFailure(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;)V

    return-void
.end method
