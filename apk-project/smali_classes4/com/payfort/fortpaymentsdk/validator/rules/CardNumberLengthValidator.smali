.class public final Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;
.super Ljava/lang/Object;
.source "CardNumberLengthValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0016\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "cardNumber",
        "",
        "(Ljava/lang/String;)V",
        "getCardNumber",
        "()Ljava/lang/String;",
        "setCardNumber",
        "isValidCardLength",
        "",
        "cardBrand",
        "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;",
        "validate",
        "Lkotlin/Pair;",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method private final isValidCardLength(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 43
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getDefaultMaxLength()I

    move-result v1

    if-gt p1, v1, :cond_1

    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getDefaultMinLength()I

    move-result p2

    if-lt p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public final getCardNumber()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final setCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

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

    .line 13
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {v2, v0}, Lcom/payfort/fortpaymentsdk/utils/Utils;->normalize$fortpayment_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->Companion:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;->fromCardNumber(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x1

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

    if-ge v2, v3, :cond_2

    .line 17
    new-instance v0, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_NUMBER:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 19
    :cond_2
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getDefaultMinLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->AMEX:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-ne v0, v2, :cond_3

    .line 20
    new-instance v0, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_LENGTH_AMEX:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 22
    :cond_3
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->cardNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-direct {p0, v2, v0}, Lcom/payfort/fortpaymentsdk/validator/rules/CardNumberLengthValidator;->isValidCardLength(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 23
    new-instance v0, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_LENGTH:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 24
    :cond_4
    new-instance v0, Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
