.class Lcom/oppwa/mobile/connect/checkout/dialog/s$k;
.super Ljava/lang/Object;
.source "InputValidatorFactory.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_error_national_identifier_invalid:I

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$k;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/payment/ikanooi/IkanoOiPaymentParams;->isNationalIdentifierValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$k;->a()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
    .locals 0

    .line 3
    sget-object p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->DEFAULT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    return-object p1
.end method
