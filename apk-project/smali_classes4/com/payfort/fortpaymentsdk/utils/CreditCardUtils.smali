.class public final Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;
.super Ljava/lang/Object;
.source "CreditCardUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007\u00a2\u0006\u0002\u0010\u0011J5\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u0013J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\u0007J(\u0010\u0016\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;",
        "",
        "()V",
        "getPossibleCardType",
        "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;",
        "cardNumber",
        "",
        "isValidCardCvc",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortError;",
        "cvc",
        "cardBrand",
        "isValidCardExpiryDate",
        "calendar",
        "Ljava/util/Calendar;",
        "expiryMonth",
        "",
        "expiryYear",
        "(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;",
        "expiry",
        "(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;",
        "isValidCardHolderName",
        "holderName",
        "isValidCardNumber",
        "defaultPaymentOption",
        "serverCardBrand",
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


# static fields
.field public static final INSTANCE:Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;-><init>()V

    sput-object v0, Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/CreditCardUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPossibleCardType(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 79
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->Companion:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;

    invoke-virtual {v0, p0}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;->fromCardNumber(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object p0

    return-object p0
.end method

.method public static final isValidCardCvc(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 29
    new-instance v0, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;-><init>()V

    .line 30
    sget-object v1, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->EMPTY_CARD_CVC:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-virtual {v0, p0, v1}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addEmptyRule(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortError;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0, p1}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addCvcLengthRule(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addCvcFormatRule(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->build()Lcom/payfort/fortpaymentsdk/validator/CardValidator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator;->execute()Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object p0

    return-object p0
.end method

.method public static final isValidCardExpiryDate(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "calendar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 38
    sget-object p0, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_EXPIRY_FORMAT:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    return-object p0

    :cond_0
    if-gez v0, :cond_1

    .line 41
    sget-object p0, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->EMPTY_CARD_DATE:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    return-object p0

    .line 43
    :cond_1
    new-instance v0, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;-><init>()V

    .line 44
    invoke-virtual {v0, p0, p1, p2}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addCardExpiryDateRule(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->build()Lcom/payfort/fortpaymentsdk/validator/CardValidator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator;->execute()Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object p0

    return-object p0
.end method

.method public static final isValidCardExpiryDate(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "calendar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 54
    sget-object p0, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_EXPIRY_FORMAT:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    return-object p0

    .line 57
    :cond_2
    :goto_0
    new-instance p3, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    invoke-direct {p3}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;-><init>()V

    .line 58
    invoke-virtual {p3, p0, p1, p2}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addCardExpiryDateRule(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->build()Lcom/payfort/fortpaymentsdk/validator/CardValidator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator;->execute()Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object p0

    return-object p0

    .line 51
    :cond_3
    :goto_1
    sget-object p0, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->EMPTY_CARD_DATE:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    return-object p0
.end method

.method public static final isValidCardHolderName(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 65
    new-instance v0, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addHolderNameRule(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->build()Lcom/payfort/fortpaymentsdk/validator/CardValidator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator;->execute()Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object p0

    return-object p0
.end method

.method public static final isValidCardNumber(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)Lcom/payfort/fortpaymentsdk/domain/model/FortError;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 14
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "*"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v4

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;-><init>()V

    .line 18
    sget-object v1, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->EMPTY_CARD_NUMBER:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-virtual {v0, p0, v1}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addEmptyRule(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortError;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p0, p1, p2}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addCardTypeRule(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addCardNumberLengthRule(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->addLuhnNumberRule(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->build()Lcom/payfort/fortpaymentsdk/validator/CardValidator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/validator/CardValidator;->execute()Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    move-result-object p0

    return-object p0
.end method
