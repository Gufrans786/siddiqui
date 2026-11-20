.class public final Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;
.super Ljava/lang/Object;
.source "CardYearValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0002\u0010\u000fJ\u0016\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "calendar",
        "Ljava/util/Calendar;",
        "expiryYear",
        "",
        "(Ljava/util/Calendar;Ljava/lang/Integer;)V",
        "getCalendar",
        "()Ljava/util/Calendar;",
        "getExpiryYear",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "isValidYear",
        "",
        "now",
        "(Ljava/util/Calendar;Ljava/lang/Integer;)Z",
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
.field private final calendar:Ljava/util/Calendar;

.field private final expiryYear:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;->calendar:Ljava/util/Calendar;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;->expiryYear:Ljava/lang/Integer;

    return-void
.end method

.method private final isValidYear(Ljava/util/Calendar;Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 19
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;->hasYearPassed(ILjava/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getExpiryYear()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;->expiryYear:Ljava/lang/Integer;

    return-object v0
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
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;->calendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;->expiryYear:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/payfort/fortpaymentsdk/validator/rules/CardYearValidator;->isValidYear(Ljava/util/Calendar;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_EXPIRY_YEAR:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
