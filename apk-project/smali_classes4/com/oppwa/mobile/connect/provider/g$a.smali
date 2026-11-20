.class Lcom/oppwa/mobile/connect/provider/g$a;
.super Ljava/lang/Object;
.source "ThreeDSManager.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/provider/g;->a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)Lcom/oppwa/mobile/connect/threeds/ChallengeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

.field final synthetic b:Lcom/oppwa/mobile/connect/provider/g;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/provider/g;Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/g$a;->b:Lcom/oppwa/mobile/connect/provider/g;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/g$a;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g$a;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    .line 2
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2ChallengeCanceledError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method public onComplete(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$CompletionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/g$a;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method public onFailure(Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g$a;->b:Lcom/oppwa/mobile/connect/provider/g;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/provider/g;->a(Lcom/oppwa/mobile/connect/provider/g;)V

    .line 3
    invoke-interface {p1}, Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;->getErrorDetails()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-interface {p1}, Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g$a;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    .line 8
    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method
