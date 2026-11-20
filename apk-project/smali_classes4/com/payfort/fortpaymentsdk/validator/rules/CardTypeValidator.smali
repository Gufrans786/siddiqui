.class public final Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;
.super Ljava/lang/Object;
.source "CardTypeValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "cardNumber",
        "",
        "defaultPaymentOption",
        "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;",
        "serverCardBrand",
        "(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V",
        "getCardNumber",
        "()Ljava/lang/String;",
        "setCardNumber",
        "(Ljava/lang/String;)V",
        "validate",
        "Lkotlin/Pair;",
        "",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortError;",
        "fortpayment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private final defaultPaymentOption:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

.field private final serverCardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->cardNumber:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->defaultPaymentOption:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    .line 10
    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->serverCardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    return-void
.end method


# virtual methods
.method public final getCardNumber()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final setCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method public validate()Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/payfort/fortpaymentsdk/domain/model/FortError;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->cardNumber:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {v2, v0}, Lcom/payfort/fortpaymentsdk/utils/Utils;->normalize$fortpayment_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->cardNumber:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->Companion:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->cardNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;->fromCardNumber(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->cardNumber:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_2

    .line 18
    new-instance v0, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_NUMBER:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->cardNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->UNKNOWN:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-ne v0, v2, :cond_3

    .line 21
    new-instance v0, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->CARD_UNSUPPORTED:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 23
    :cond_3
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->serverCardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->defaultPaymentOption:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getIssuerName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->serverCardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    invoke-virtual {v4}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getIssuerName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 24
    new-instance v0, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_PAYMENT_OPTION:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 26
    :cond_4
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->defaultPaymentOption:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getIssuerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getIssuerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardTypeValidator;->defaultPaymentOption:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->MADA:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-eq v0, v2, :cond_5

    .line 27
    new-instance v0, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_PAYMENT_OPTION:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 28
    :cond_5
    new-instance v0, Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
