.class Lcom/oppwa/mobile/connect/checkout/dialog/s$g;
.super Ljava/lang/Object;
.source "InputValidatorFactory.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(I)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 7
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_error_security_code_invalid:I

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$g;->a:I

    if-eq p1, v0, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    .line 3
    sget p1, Lcom/oppwa/mobile/connect/R$string;->checkout_error_security_code_invalid_amex:I

    return p1

    .line 5
    :cond_0
    sget p1, Lcom/oppwa/mobile/connect/R$string;->checkout_error_security_code_invalid:I

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
    .locals 0

    .line 6
    sget-object p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->DEFAULT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    return-object p1
.end method
