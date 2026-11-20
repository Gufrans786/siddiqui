.class public interface abstract Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;
.super Ljava/lang/Object;
.source "IPaymentFormListener.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public onCardHolderValidate(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
    .locals 0

    .line 1
    sget-object p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->DEFAULT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    return-object p1
.end method
