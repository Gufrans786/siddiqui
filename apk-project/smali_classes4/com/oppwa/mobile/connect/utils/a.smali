.class final enum Lcom/oppwa/mobile/connect/utils/a;
.super Ljava/lang/Enum;
.source "LibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/utils/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/oppwa/mobile/connect/utils/a;

.field public static final enum d:Lcom/oppwa/mobile/connect/utils/a;

.field public static final enum e:Lcom/oppwa/mobile/connect/utils/a;

.field public static final enum f:Lcom/oppwa/mobile/connect/utils/a;

.field public static final enum g:Lcom/oppwa/mobile/connect/utils/a;

.field public static final enum h:Lcom/oppwa/mobile/connect/utils/a;

.field public static final enum i:Lcom/oppwa/mobile/connect/utils/a;

.field private static final synthetic j:[Lcom/oppwa/mobile/connect/utils/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/utils/a;

    const-string v1, "Alipay"

    const-string v2, "com.alipay.sdk.app.PayTask"

    const-string v3, "ALIPAY"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/oppwa/mobile/connect/utils/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oppwa/mobile/connect/utils/a;->c:Lcom/oppwa/mobile/connect/utils/a;

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/utils/a;

    const-string v2, "CardIO"

    const-string v3, "io.card.payment.CardIOActivity"

    const-string v4, "CARD_IO"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/oppwa/mobile/connect/utils/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/oppwa/mobile/connect/utils/a;->d:Lcom/oppwa/mobile/connect/utils/a;

    .line 3
    new-instance v2, Lcom/oppwa/mobile/connect/utils/a;

    const-string v3, "Google Play Services"

    const-string v4, "com.google.android.gms.security.ProviderInstaller"

    const-string v5, "GOOGLE_PLAY_SERVICES_BASE"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/oppwa/mobile/connect/utils/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/oppwa/mobile/connect/utils/a;->e:Lcom/oppwa/mobile/connect/utils/a;

    .line 4
    new-instance v3, Lcom/oppwa/mobile/connect/utils/a;

    const-string v4, "Google Play Wallet"

    const-string v5, "com.google.android.gms.wallet.PaymentsClient"

    const-string v6, "GOOGLE_PLAY_SERVICES_WALLET"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/oppwa/mobile/connect/utils/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/oppwa/mobile/connect/utils/a;->f:Lcom/oppwa/mobile/connect/utils/a;

    .line 5
    new-instance v4, Lcom/oppwa/mobile/connect/utils/a;

    const-string v5, "FraudForce"

    const-string v6, "com.iovation.mobile.android.FraudForceManager"

    const-string v7, "IOVATION"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/oppwa/mobile/connect/utils/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/oppwa/mobile/connect/utils/a;->g:Lcom/oppwa/mobile/connect/utils/a;

    .line 6
    new-instance v5, Lcom/oppwa/mobile/connect/utils/a;

    const-string v6, "Klarna"

    const-string v7, "com.klarna.mobile.sdk.api.payments.KlarnaPaymentView"

    const-string v8, "KLARNA"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/oppwa/mobile/connect/utils/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/oppwa/mobile/connect/utils/a;->h:Lcom/oppwa/mobile/connect/utils/a;

    .line 7
    new-instance v6, Lcom/oppwa/mobile/connect/utils/a;

    const-string v7, "ThreeDS2 IPWorks"

    const-string v8, "com.nsoftware.ipworks3ds.sdk.ThreeDS2Service"

    const-string v9, "THREEDS_IPWORKS"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/oppwa/mobile/connect/utils/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/oppwa/mobile/connect/utils/a;->i:Lcom/oppwa/mobile/connect/utils/a;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lcom/oppwa/mobile/connect/utils/a;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/utils/a;->j:[Lcom/oppwa/mobile/connect/utils/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/oppwa/mobile/connect/utils/a;->b:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/oppwa/mobile/connect/utils/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/a;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/utils/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/utils/a;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/utils/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/a;->j:[Lcom/oppwa/mobile/connect/utils/a;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/utils/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/utils/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/utils/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/utils/a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
