.class public interface abstract Lcom/oppwa/mobile/connect/provider/IPaymentProvider;
.super Ljava/lang/Object;
.source "IPaymentProvider.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public getProviderDomain()Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->DEFAULT:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    return-object v0
.end method

.method public abstract getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
.end method

.method public abstract registerTransaction(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method

.method public requestBinInfo(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/listener/BinInfoListener;)V
    .locals 0

    return-void
.end method

.method public abstract requestBrandsValidation(Ljava/lang/String;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method

.method public abstract requestCheckoutInfo(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method

.method public abstract requestIdealBanks(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IdealBanksListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method

.method public abstract requestImages([Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method

.method public abstract requestPaymentBrandsForBin(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method

.method public abstract sendThreeDS2AuthParams(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method

.method public abstract sendTransaction(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method

.method public setProviderDomain(Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V
    .locals 0

    return-void
.end method

.method public abstract setProviderMode(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
.end method

.method public abstract submitTransaction(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation
.end method
