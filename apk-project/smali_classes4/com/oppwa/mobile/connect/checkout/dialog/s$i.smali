.class Lcom/oppwa/mobile/connect/checkout/dialog/s$i;
.super Ljava/lang/Object;
.source "InputValidatorFactory.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/s;->g()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 6
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_error_mobile_phone_number_invalid:I

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isMobilePhoneNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    sget p1, Lcom/oppwa/mobile/connect/R$string;->checkout_error_mobile_phone_number_invalid:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
    .locals 0

    .line 5
    sget-object p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->DEFAULT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    return-object p1
.end method
