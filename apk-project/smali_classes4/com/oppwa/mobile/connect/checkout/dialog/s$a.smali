.class Lcom/oppwa/mobile/connect/checkout/dialog/s$a;
.super Ljava/lang/Object;
.source "InputValidatorFactory.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(Lcom/oppwa/mobile/connect/checkout/dialog/x;Z)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/x;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/x;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    iput-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$a;->b:Z

    if-eqz v0, :cond_0

    .line 18
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_error_iban_account_number_invalid:I

    return v0

    .line 19
    :cond_0
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_error_iban_invalid:I

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/x;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->removeSubstring(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$a;->b:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isIbanValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isAccountNumberValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    sget p1, Lcom/oppwa/mobile/connect/R$string;->checkout_error_iban_account_number_invalid:I

    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$a;->b:Z

    if-nez v1, :cond_1

    .line 11
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isIbanValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    sget p1, Lcom/oppwa/mobile/connect/R$string;->checkout_error_iban_invalid:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->wipeString(Ljava/lang/StringBuilder;)V

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
    .locals 0

    .line 16
    sget-object p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->DEFAULT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    return-object p1
.end method
