.class Lcom/oppwa/mobile/connect/checkout/dialog/g;
.super Ljava/lang/Object;
.source "BinLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/g$a;
    }
.end annotation


# static fields
.field private static e:Lcom/oppwa/mobile/connect/checkout/dialog/g;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oppwa/mobile/connect/checkout/dialog/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$hjf_jtEjhlPEUDL6eJRuUv5LaR8(Lcom/oppwa/mobile/connect/checkout/dialog/g;Lcom/oppwa/mobile/connect/provider/model/BinInfo;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/g;->a(Lcom/oppwa/mobile/connect/provider/model/BinInfo;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->a:Ljava/util/Set;

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/provider/model/BinInfo;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->b:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->getBrands()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/oppwa/mobile/connect/payment/BrandsValidation;->filterOutUnconfiguredBrands([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/g;->b()Lcom/oppwa/mobile/connect/checkout/dialog/g;

    move-result-object p2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->d:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/g;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/g;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/g;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static declared-synchronized b()Lcom/oppwa/mobile/connect/checkout/dialog/g;
    .locals 2

    const-class v0, Lcom/oppwa/mobile/connect/checkout/dialog/g;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/g;->e:Lcom/oppwa/mobile/connect/checkout/dialog/g;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/g;

    invoke-direct {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/g;-><init>()V

    sput-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/g;->e:Lcom/oppwa/mobile/connect/checkout/dialog/g;

    .line 4
    :cond_0
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/g;->e:Lcom/oppwa/mobile/connect/checkout/dialog/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppwa/mobile/connect/checkout/dialog/g$a;

    .line 8
    invoke-interface {v1, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/g$a;->onBrandsLoaded(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method a()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->b:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    .line 19
    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->d:Ljava/lang/String;

    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/checkout/dialog/g$a;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/BrandsValidation;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->b:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    .line 2
    iput-object p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->d:Ljava/lang/String;

    .line 3
    new-instance p4, Lcom/oppwa/mobile/connect/checkout/dialog/g$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/g$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/g;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->requestBinInfo(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/listener/BinInfoListener;)V

    return-void
.end method

.method a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method b(Lcom/oppwa/mobile/connect/checkout/dialog/g$a;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
