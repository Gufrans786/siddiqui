.class public Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;
.super Ljava/lang/Object;
.source "OppThreeDSTransaction.java"


# instance fields
.field private final a:Lcom/nsoftware/ipworks3ds/sdk/Transaction;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/nsoftware/ipworks3ds/sdk/Transaction;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->a:Lcom/nsoftware/ipworks3ds/sdk/Transaction;

    .line 3
    iput p2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->b:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->a:Lcom/nsoftware/ipworks3ds/sdk/Transaction;

    invoke-interface {v0}, Lcom/nsoftware/ipworks3ds/sdk/Transaction;->close()V

    return-void
.end method

.method public doChallenge(Landroid/app/Activity;Ljava/lang/String;Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;

    invoke-direct {v0}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;->setThreeDSServerAuthResponse(Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/oppwa/mobile/connect/threeds/a;

    invoke-direct {p2, p3}, Lcom/oppwa/mobile/connect/threeds/a;-><init>(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;)V

    .line 4
    iget-object p3, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->a:Lcom/nsoftware/ipworks3ds/sdk/Transaction;

    iget v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->b:I

    invoke-interface {p3, p1, v0, p2, v1}, Lcom/nsoftware/ipworks3ds/sdk/Transaction;->doChallenge(Landroid/app/Activity;Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;I)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const-string p2, "Activity is null"

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAuthRequestParams()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->a:Lcom/nsoftware/ipworks3ds/sdk/Transaction;

    invoke-interface {v0}, Lcom/nsoftware/ipworks3ds/sdk/Transaction;->getAuthenticationRequestParameters()Lcom/nsoftware/ipworks3ds/sdk/AuthenticationRequestParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/nsoftware/ipworks3ds/sdk/AuthenticationRequestParameters;->getAuthRequest()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgressView(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;->a:Lcom/nsoftware/ipworks3ds/sdk/Transaction;

    invoke-interface {v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/Transaction;->getProgressView(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    return-object p1
.end method
