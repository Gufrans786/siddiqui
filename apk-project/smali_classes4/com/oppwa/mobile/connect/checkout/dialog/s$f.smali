.class Lcom/oppwa/mobile/connect/checkout/dialog/s$f;
.super Ljava/lang/Object;
.source "InputValidatorFactory.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(Lcom/oppwa/mobile/connect/checkout/dialog/o;Lcom/oppwa/mobile/connect/checkout/dialog/s$n;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/s$n;

.field final synthetic b:Lcom/oppwa/mobile/connect/checkout/dialog/o;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/s$n;Lcom/oppwa/mobile/connect/checkout/dialog/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;->a:Lcom/oppwa/mobile/connect/checkout/dialog/s$n;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;->b:Lcom/oppwa/mobile/connect/checkout/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;->a:Lcom/oppwa/mobile/connect/checkout/dialog/s$n;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;->b()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;->b:Lcom/oppwa/mobile/connect/checkout/dialog/o;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/o;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;->b:Lcom/oppwa/mobile/connect/checkout/dialog/o;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isExpiryMonthValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-static {v0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isExpiryYearValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isCardExpired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;->a:Lcom/oppwa/mobile/connect/checkout/dialog/s$n;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;->a()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1

    .line 18
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;->a:Lcom/oppwa/mobile/connect/checkout/dialog/s$n;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;->b()I

    move-result p1

    return p1

    .line 19
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$f;->a:Lcom/oppwa/mobile/connect/checkout/dialog/s$n;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;->b()I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
    .locals 0

    .line 20
    sget-object p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->DEFAULT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    return-object p1
.end method
