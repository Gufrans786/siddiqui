.class public interface abstract Lcom/oppwa/mobile/connect/provider/ITransactionListener;
.super Ljava/lang/Object;
.source "ITransactionListener.java"


# virtual methods
.method public binRequestFailed()V
    .locals 0

    return-void
.end method

.method public binRequestSucceeded([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public brandsValidationRequestFailed(Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 0

    return-void
.end method

.method public brandsValidationRequestSucceeded(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)V
    .locals 0

    return-void
.end method

.method public imagesRequestFailed()V
    .locals 0

    return-void
.end method

.method public imagesRequestSucceeded(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V
    .locals 0

    return-void
.end method

.method public paymentConfigRequestFailed(Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 0

    return-void
.end method

.method public paymentConfigRequestSucceeded(Lcom/oppwa/mobile/connect/payment/CheckoutInfo;)V
    .locals 0

    return-void
.end method

.method public abstract transactionCompleted(Lcom/oppwa/mobile/connect/provider/Transaction;)V
.end method

.method public abstract transactionFailed(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
.end method
