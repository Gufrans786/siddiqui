.class public final Lcom/payfort/fortpaymentsdk/validator/CardValidator;
.super Ljava/lang/Object;
.source "CardValidator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardValidator.kt\ncom/payfort/fortpaymentsdk/validator/CardValidator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1855#2,2:117\n*S KotlinDebug\n*F\n+ 1 CardValidator.kt\ncom/payfort/fortpaymentsdk/validator/CardValidator\n*L\n26#1:117,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u0004\u0018\u00010\nR\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/validator/CardValidator;",
        "",
        "builder",
        "Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;",
        "(Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;)V",
        "listOfCreditCards",
        "Ljava/util/ArrayList;",
        "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
        "Lkotlin/collections/ArrayList;",
        "execute",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortError;",
        "CardValidatorBuilder",
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
.field private listOfCreditCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;->getListOfRules()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/validator/CardValidator;->listOfCreditCards:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/validator/CardValidator;-><init>(Lcom/payfort/fortpaymentsdk/validator/CardValidator$CardValidatorBuilder;)V

    return-void
.end method


# virtual methods
.method public final execute()Lcom/payfort/fortpaymentsdk/domain/model/FortError;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/validator/CardValidator;->listOfCreditCards:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;

    .line 27
    invoke-interface {v1}, Lcom/payfort/fortpaymentsdk/validator/CreditCardValidator;->validate()Lkotlin/Pair;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/FortError;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
