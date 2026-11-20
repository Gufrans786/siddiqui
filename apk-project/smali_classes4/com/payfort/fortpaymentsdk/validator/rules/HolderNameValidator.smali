.class public final Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;
.super Ljava/lang/Object;
.source "HolderNameValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0002J\u0016\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "holderName",
        "",
        "(Ljava/lang/String;)V",
        "EXPRESSION_HOLDER_NAME",
        "getHolderName",
        "()Ljava/lang/String;",
        "setHolderName",
        "isValidName",
        "",
        "txt",
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
.field private final EXPRESSION_HOLDER_NAME:Ljava/lang/String;

.field private holderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;->holderName:Ljava/lang/String;

    .line 9
    const-string p1, "^[a-zA-Z \']{0,50}"

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;->EXPRESSION_HOLDER_NAME:Ljava/lang/String;

    return-void
.end method

.method private final isValidName(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 17
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;->EXPRESSION_HOLDER_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final getHolderName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;->holderName:Ljava/lang/String;

    return-object v0
.end method

.method public final setHolderName(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;->holderName:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;->holderName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/payfort/fortpaymentsdk/validator/rules/HolderNameValidator;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/payfort/fortpaymentsdk/domain/model/FortError;->INVALID_CARD_HOLDER_NAME:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

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
