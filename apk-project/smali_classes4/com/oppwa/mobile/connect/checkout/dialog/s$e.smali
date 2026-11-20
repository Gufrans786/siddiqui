.class Lcom/oppwa/mobile/connect/checkout/dialog/s$e;
.super Ljava/lang/Object;
.source "InputValidatorFactory.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(Lcom/oppwa/mobile/connect/checkout/dialog/x;Lcom/oppwa/mobile/connect/checkout/dialog/s$m;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/x;

.field final synthetic b:Lcom/oppwa/mobile/connect/checkout/dialog/s$m;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/x;Lcom/oppwa/mobile/connect/checkout/dialog/s$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;->a:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;->b:Lcom/oppwa/mobile/connect/checkout/dialog/s$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;->b:Lcom/oppwa/mobile/connect/checkout/dialog/s$m;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->c()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isNumberValid(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;->b:Lcom/oppwa/mobile/connect/checkout/dialog/s$m;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->b()Ljava/util/regex/Pattern;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;->b:Lcom/oppwa/mobile/connect/checkout/dialog/s$m;

    .line 17
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->b()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;->b:Lcom/oppwa/mobile/connect/checkout/dialog/s$m;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;->a:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/x;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->removeSubstring(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/StringBuilder;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/s$e;->b:Lcom/oppwa/mobile/connect/checkout/dialog/s$m;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;->a()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->wipeString(Ljava/lang/StringBuilder;)V

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
    .locals 0

    .line 18
    sget-object p1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->DEFAULT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    return-object p1
.end method
