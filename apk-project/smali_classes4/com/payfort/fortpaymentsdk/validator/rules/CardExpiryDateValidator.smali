.class public final Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;
.super Ljava/lang/Object;
.source "CardExpiryDateValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0014H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "calendar",
        "Ljava/util/Calendar;",
        "expiryMonth",
        "",
        "expiryYear",
        "(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "getCalendar",
        "()Ljava/util/Calendar;",
        "setCalendar",
        "(Ljava/util/Calendar;)V",
        "getExpiryMonth",
        "()Ljava/lang/Integer;",
        "setExpiryMonth",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getExpiryYear",
        "setExpiryYear",
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
.field private calendar:Ljava/util/Calendar;

.field private expiryMonth:Ljava/lang/Integer;

.field private expiryYear:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->calendar:Ljava/util/Calendar;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryMonth:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryYear:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getExpiryMonth()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getExpiryYear()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setCalendar(Ljava/util/Calendar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method public final setExpiryMonth(Ljava/lang/Integer;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryMonth:Ljava/lang/Integer;

    return-void
.end method

.method public final setExpiryYear(Ljava/lang/Integer;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryYear:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryMonth:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-lez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryYear:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 14
    new-instance v0, Lkotlin/Pair;

    .line 15
    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_EXPIRY_FORMAT:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    .line 14
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryMonth:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryYear:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;

    .line 20
    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryMonth:Ljava/lang/Integer;

    .line 19
    invoke-direct {v0, v2}, Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;-><init>(Ljava/lang/Integer;)V

    .line 21
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/validator/rules/MonthRangeValidator;->validate()Lkotlin/Pair;

    move-result-object v0

    .line 22
    new-instance v2, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;

    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->calendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryYear:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4}, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;-><init>(Ljava/util/Calendar;Ljava/lang/Integer;)V

    invoke-virtual {v2}, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;->validate()Lkotlin/Pair;

    move-result-object v2

    .line 24
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 25
    :cond_2
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    .line 26
    :cond_3
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryYear:Ljava/lang/Integer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->expiryMonth:Ljava/lang/Integer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardExpiryDateValidator;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v3, v4}, Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;->hasMonthPassed(IILjava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lkotlin/Pair;

    .line 27
    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_EXPIRY_DATE:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    .line 26
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :cond_4
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
