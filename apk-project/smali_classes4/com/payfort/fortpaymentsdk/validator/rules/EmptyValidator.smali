.class public final Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;
.super Ljava/lang/Object;
.source "EmptyValidator.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000eH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "string",
        "",
        "fortError",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortError;",
        "(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortError;)V",
        "getFortError",
        "()Lcom/payfort/fortpaymentsdk/domain/model/FortError;",
        "getString",
        "()Ljava/lang/String;",
        "setString",
        "(Ljava/lang/String;)V",
        "validate",
        "Lkotlin/Pair;",
        "",
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
.field private final fortError:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortError;)V
    .locals 1

    const-string v0, "fortError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;->string:Ljava/lang/String;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;->fortError:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    return-void
.end method


# virtual methods
.method public final getFortError()Lcom/payfort/fortpaymentsdk/domain/model/FortError;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;->fortError:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;->string:Ljava/lang/String;

    return-object v0
.end method

.method public final setString(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;->string:Ljava/lang/String;

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

    .line 8
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;->string:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/validator/rules/EmptyValidator;->fortError:Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
