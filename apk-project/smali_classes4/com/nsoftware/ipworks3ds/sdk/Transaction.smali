.class public interface abstract Lcom/nsoftware/ipworks3ds/sdk/Transaction;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract doChallenge(Landroid/app/Activity;Lcom/nsoftware/ipworks3ds/sdk/ChallengeParameters;Lcom/nsoftware/ipworks3ds/sdk/ChallengeStatusReceiver;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation
.end method

.method public abstract getAuthenticationRequestParameters()Lcom/nsoftware/ipworks3ds/sdk/AuthenticationRequestParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation
.end method

.method public abstract getProgressView(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation
.end method
