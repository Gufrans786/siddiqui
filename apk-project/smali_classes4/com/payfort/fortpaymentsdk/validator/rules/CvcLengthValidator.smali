.class public final Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;
.super Ljava/lang/Object;
.source "CvcLengthValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u0002J\u0016\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "cvcValue",
        "",
        "cardBrand",
        "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;",
        "(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V",
        "getCardBrand",
        "()Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;",
        "setCardBrand",
        "(Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V",
        "getCvcValue",
        "()Ljava/lang/String;",
        "setCvcValue",
        "(Ljava/lang/String;)V",
        "isValidCVCLength",
        "",
        "validLength",
        "",
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
.field private cardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

.field private cvcValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cvcValue:Ljava/lang/String;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    return-void
.end method

.method private final isValidCVCLength(Ljava/lang/String;I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic isValidCVCLength$default(Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;Ljava/lang/String;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x3

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->isValidCVCLength(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getCardBrand()Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    return-object v0
.end method

.method public final getCvcValue()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cvcValue:Ljava/lang/String;

    return-object v0
.end method

.method public final setCardBrand(Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    return-void
.end method

.method public final setCvcValue(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cvcValue:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    const/4 v1, 0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 13
    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->AMEX:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cvcValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getDefaultCvcLength()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->isValidCVCLength(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lkotlin/Pair;

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CVC_LENGTH_AMEX:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cardBrand:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-object v4, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->AMEX:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->cvcValue:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {p0, v0, v3, v4, v2}, Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;->isValidCVCLength$default(Lcom/payfort/fortpaymentsdk/validator/rules/CvcLengthValidator;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lkotlin/Pair;

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CVC_LENGTH_OTHERS:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
