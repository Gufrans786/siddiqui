.class public final Lcom/payfort/fortpaymentsdk/validator/rules/LuhnNumberValidator;
.super Ljava/lang/Object;
.source "LuhnNumberValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u0016\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/LuhnNumberValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "cardNumber",
        "",
        "(Ljava/lang/String;)V",
        "getCardNumber",
        "()Ljava/lang/String;",
        "setCardNumber",
        "isValidLuhnNumber",
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
.field private cardNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/LuhnNumberValidator;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method private final isValidLuhnNumber(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v0

    move v4, v2

    :goto_0
    const/4 v5, -0x1

    if-ge v5, v1, :cond_4

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 33
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    return v0

    .line 36
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    xor-int/lit8 v6, v4, 0x1

    if-nez v4, :cond_2

    mul-int/lit8 v5, v5, 0x2

    :cond_2
    const/16 v4, 0x9

    if-le v5, v4, :cond_3

    add-int/lit8 v5, v5, -0x9

    :cond_3
    add-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    move v4, v6

    goto :goto_0

    .line 46
    :cond_4
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_5

    return v2

    :cond_5
    return v0
.end method


# virtual methods
.method public final getCardNumber()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/LuhnNumberValidator;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final setCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/LuhnNumberValidator;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method public validate()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/payfort/fortpaymentsdk/domain/model/FortError;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/LuhnNumberValidator;->cardNumber:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {v2, v0}, Lcom/payfort/fortpaymentsdk/utils/Utils;->normalize$fortpayment_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/LuhnNumberValidator;->cardNumber:Ljava/lang/String;

    .line 13
    invoke-direct {p0, v0}, Lcom/payfort/fortpaymentsdk/validator/rules/LuhnNumberValidator;->isValidLuhnNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_NUMBER:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
