.class Lcom/oppwa/mobile/connect/checkout/dialog/a0;
.super Ljava/lang/Object;
.source "PaymentMethods.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/checkout/dialog/a0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Lcom/oppwa/mobile/connect/payment/token/Token;


# direct methods
.method public static synthetic $r8$lambda$rnPsjIKnbLsbyDGB2dH3Si1Olrk(Ljava/util/LinkedList;Lcom/oppwa/mobile/connect/payment/token/Token;Lcom/oppwa/mobile/connect/payment/token/Token;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a(Ljava/util/LinkedList;Lcom/oppwa/mobile/connect/payment/token/Token;Lcom/oppwa/mobile/connect/payment/token/Token;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/a0$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    .line 9
    sget-object v0, Lcom/oppwa/mobile/connect/payment/token/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oppwa/mobile/connect/payment/token/Token;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/checkout/dialog/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Set;[Lcom/oppwa/mobile/connect/payment/token/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/oppwa/mobile/connect/payment/token/Token;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    .line 6
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    return-void
.end method

.method private static synthetic a(Ljava/util/LinkedList;Lcom/oppwa/mobile/connect/payment/token/Token;Lcom/oppwa/mobile/connect/payment/token/Token;)I
    .locals 1

    .line 52
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 58
    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 59
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 61
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private a()V
    .locals 2

    .line 100
    sget-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isPlayServicesWalletAvailable:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    const-string v1, "GOOGLEPAY"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    const-string v1, "APPLEPAY"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    const-string v1, "CARD"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/util/Set;[Lcom/oppwa/mobile/connect/payment/token/Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/oppwa/mobile/connect/payment/token/Token;",
            ")V"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 51
    new-instance p1, Lcom/oppwa/mobile/connect/checkout/dialog/a0$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0$$ExternalSyntheticLambda0;-><init>(Ljava/util/LinkedList;)V

    invoke-static {p2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method private b(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;Z)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getSecurityPolicyModeForTokens()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    move-result-object p1

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;->DEVICE_AUTH_REQUIRED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    :cond_0
    return-void
.end method

.method private c(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Lcom/oppwa/mobile/connect/payment/BrandsValidation;->isCardBrand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a(Lcom/google/android/gms/tasks/Task;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    const-string v0, "GOOGLEPAY"

    .line 90
    :try_start_0
    const-class v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 94
    sget-object v1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-ne p2, v1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 97
    :cond_1
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2
.end method

.method a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;Z)V
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a()V

    .line 64
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;Z)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getSecurityPolicyModeForBrand(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    move-result-object v1

    .line 74
    sget-object v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;->DEVICE_AUTH_REQUIRED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_1

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)V
    .locals 3

    .line 77
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BrandsValidation;->getBrandInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppwa/mobile/connect/payment/BrandInfo;

    .line 86
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BrandInfo;->isCustomUiRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p1, v2}, Lcom/oppwa/mobile/connect/payment/BrandsValidation;->isCardBrand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-static {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/payment/CheckoutInfo;Z)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->isBrandsActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getBrands()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getBrands()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->isShopBrandsOverridden()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 45
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    if-eqz p1, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    .line 48
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-direct {p0, p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a(Ljava/util/Set;[Lcom/oppwa/mobile/connect/payment/token/Token;)V

    :cond_2
    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    const-string v1, "KLARNA_PAYMENTS_PAYNOW"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "KLARNA_PAYMENTS_SLICEIT"

    const-string v3, "KLARNA_PAYMENTS_PAYLATER"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    .line 15
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    .line 16
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 22
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v4, "The shopperResult URL is required for Klarna Payments proper configuration."

    invoke-direct {p2, v0, v4}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_4

    .line 29
    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->TEST:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-eq p1, v0, :cond_3

    .line 32
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 35
    :cond_3
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    :cond_4
    return-void
.end method

.method a(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    const-string v1, "KLARNA_INVOICE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "KLARNA_INSTALLMENTS"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    sget-object p1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->TEST:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-eq p2, p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 13
    :cond_2
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v1, "Klarna country is not supported."

    invoke-direct {p2, v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    :cond_3
    return-void
.end method

.method b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    return-object v0
.end method

.method b(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->c(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method c()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method d()[Lcom/oppwa/mobile/connect/payment/token/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    .line 7
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    .line 8
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->d()[Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->a:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->c()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
