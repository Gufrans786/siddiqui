.class public final Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;
.super Ljava/lang/Object;
.source "MonthRangeValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\t\u001a\u00020\n2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0016R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "expiryMonth",
        "",
        "(Ljava/lang/Integer;)V",
        "getExpiryMonth",
        "()Ljava/lang/Integer;",
        "setExpiryMonth",
        "Ljava/lang/Integer;",
        "isValidMonth",
        "",
        "(Ljava/lang/Integer;)Z",
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
.field private expiryMonth:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;->expiryMonth:Ljava/lang/Integer;

    return-void
.end method

.method private final isValidMonth(Ljava/lang/Integer;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final getExpiryMonth()Ljava/lang/Integer;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;->expiryMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setExpiryMonth(Ljava/lang/Integer;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;->expiryMonth:Ljava/lang/Integer;

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

    .line 16
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;->expiryMonth:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;->isValidMonth(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_EXPIRY_MONTH:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
