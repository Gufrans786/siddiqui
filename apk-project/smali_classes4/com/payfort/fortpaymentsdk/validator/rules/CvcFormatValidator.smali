.class public final Lcom/payfort/fortpaymentsdk/validator/rules/CvcFormatValidator;
.super Ljava/lang/Object;
.source "CvcFormatValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/CvcFormatValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "cvcValue",
        "",
        "(Ljava/lang/String;)V",
        "getCvcValue",
        "()Ljava/lang/String;",
        "setCvcValue",
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
.field private cvcValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcFormatValidator;->cvcValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCvcValue()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcFormatValidator;->cvcValue:Ljava/lang/String;

    return-object v0
.end method

.method public final setCvcValue(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcFormatValidator;->cvcValue:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcFormatValidator;->cvcValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/CvcFormatValidator;->cvcValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;->isWholePositiveNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CVC_FORMAT:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
