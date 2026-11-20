.class Lcom/oppwa/mobile/connect/checkout/dialog/z;
.super Ljava/lang/Object;
.source "PaymentInfoFragmentFactory.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.z"

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a(Ljava/lang/String;Z)Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    new-instance p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardPaymentInfoFragment;-><init>()V

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/z;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    sget-object p1, Lcom/oppwa/mobile/connect/checkout/dialog/z;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/z;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/z$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/z$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/z;->b:Ljava/util/HashMap;

    .line 32
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/z;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .line 9
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/z;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/i;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
