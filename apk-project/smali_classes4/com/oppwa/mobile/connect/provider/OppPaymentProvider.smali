.class public Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;
.super Lcom/oppwa/mobile/connect/provider/f;
.source "OppPaymentProvider.java"


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/payment/CheckoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/oppwa/mobile/connect/provider/c;

.field private f:Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;

.field private g:Lcom/oppwa/mobile/connect/exception/PaymentError;

.field private h:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static synthetic $r8$lambda$7eMA5HX1AmD1JnjmLgETyPyF_JE(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8vRwsIpcVhn4hWduNMAtIdtFwGo(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C8HkIG1QIbo6Z1PMBHfxoMmR-Bg(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CTt-xnZVRZH9vO0IN9x4MfiXpIE(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZKu7Wc6Vl428d5g5D1iRTLCBSDg(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/listener/BinInfoListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/listener/BinInfoListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gHYbspqCNFqdb0Wh9D-pyBjdhgQ(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a([Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kLMhKHBqoQgyFWdKGlE0A84hDe4(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tsA9eH9RVp1SD8RbfvUvXTGK_L0(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IdealBanksListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IdealBanksListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->DEFAULT:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    invoke-direct {p0, p1, p2, v0}, Lcom/oppwa/mobile/connect/provider/f;-><init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d:Ljava/util/Map;

    .line 3
    new-instance p1, Lcom/oppwa/mobile/connect/provider/c;

    invoke-direct {p1}, Lcom/oppwa/mobile/connect/provider/c;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/f;-><init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d:Ljava/util/Map;

    .line 6
    new-instance p1, Lcom/oppwa/mobile/connect/provider/c;

    invoke-direct {p1}, Lcom/oppwa/mobile/connect/provider/c;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    return-void
.end method

.method private a()Landroid/app/Activity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->f:Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;

    if-eqz v0, :cond_1

    .line 335
    invoke-interface {v0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;->onThreeDSChallengeRequired()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->f:Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;

    invoke-interface {v0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;->onThreeDSChallengeRequired()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    const-string v1, "ThreeDSWorkflowListener.onActivityRequired() returns null."

    invoke-static {v1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0

    .line 342
    :cond_1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    const-string v1, "ThreeDSWorkflowListener is not set."

    invoke-static {v1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getThreeDS2Flow()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic a(Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 2

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 82
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1, p2, p3}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/provider/Transaction;

    move-result-object p2

    const/4 v0, 0x0

    .line 84
    invoke-interface {p1, p2, v0}, Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;->onResult(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 88
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;->getError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;->onResult(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 172
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->b(Lcom/oppwa/mobile/connect/provider/Transaction;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->f:Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;

    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v2}, Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;->onThreeDSConfigRequired()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 178
    :goto_0
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {p0, v3, v0, v2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Lcom/oppwa/mobile/connect/provider/g;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/provider/g;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v2

    const-string/jumbo v3, "threeDSecure.mobileFlow"

    const-string v4, "app"

    invoke-virtual {v2, v3, v4}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    iget-object v5, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 193
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v8, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-object v10, p1

    move-object v9, p2

    .line 194
    invoke-virtual/range {v5 .. v10}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/provider/Transaction;

    .line 202
    invoke-virtual {v10}, Lcom/oppwa/mobile/connect/provider/Transaction;->getThreeDS2Info()Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 205
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->getProtocolVersion()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 206
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->getProtocolVersion()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 207
    :cond_1
    const-string p2, "2.1.0"

    .line 209
    :goto_1
    invoke-virtual {v1, v0, p2}, Lcom/oppwa/mobile/connect/provider/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    .line 211
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->isAuthParamsRequired()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 212
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/provider/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v10, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->b(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v10}, Lcom/oppwa/mobile/connect/provider/Transaction;->getThreeDS2Info()Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_4

    .line 217
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->isChallengeRequired()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 218
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->getAuthResponse()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 223
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->getAuthResponse()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Lcom/oppwa/mobile/connect/provider/g;Ljava/lang/String;)V

    goto :goto_2

    .line 224
    :cond_3
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    const-string p2, "3-D Secure 2 authentication response is not valid."

    invoke-static {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderInternalError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/provider/g;->a()V

    return-void

    .line 236
    :cond_5
    :try_start_1
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    const-string p2, "OppThreeDSService is not initialized."

    invoke-static {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
    :try_end_1
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_6

    .line 278
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/provider/g;->a()V

    .line 284
    :cond_6
    throw p1

    :catch_0
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_7

    .line 285
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/provider/g;->a()V

    .line 289
    :cond_7
    throw p1
.end method

.method private synthetic a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 9

    const-string v1, "TS_log: OppwaMobile\'s payment provider was set null"

    .line 111
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/e;->a()Lcom/oppwa/mobile/connect/provider/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/provider/e;->a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)V

    const/4 v2, 0x0

    .line 113
    iput-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->g:Lcom/oppwa/mobile/connect/exception/PaymentError;

    .line 116
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d(Lcom/oppwa/mobile/connect/provider/Transaction;)Z

    move-result v0
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 117
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->c(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v8, p1

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object p2, v0

    move-object v8, p1

    goto :goto_3

    .line 119
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 120
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v6, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;
    :try_end_2
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, p1

    move-object v7, p2

    .line 121
    :try_start_3
    invoke-virtual/range {v3 .. v8}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/provider/Transaction;
    :try_end_3
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 132
    :goto_0
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/e;->a()Lcom/oppwa/mobile/connect/provider/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oppwa/mobile/connect/provider/e;->a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)V

    .line 133
    invoke-static {v1}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    .line 135
    iput-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->h:Ljava/util/concurrent/CountDownLatch;

    .line 137
    invoke-virtual {v8}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->mask()V

    .line 138
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, p1

    :goto_1
    move-object p2, v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v8, p1

    :goto_2
    move-object p2, v0

    .line 139
    :goto_3
    :try_start_4
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;->getError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->g:Lcom/oppwa/mobile/connect/exception/PaymentError;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 141
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/e;->a()Lcom/oppwa/mobile/connect/provider/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oppwa/mobile/connect/provider/e;->a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)V

    .line 142
    invoke-static {v1}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    .line 144
    iput-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->h:Ljava/util/concurrent/CountDownLatch;

    .line 146
    invoke-virtual {v8}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->mask()V

    .line 147
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    .line 150
    :goto_4
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->g:Lcom/oppwa/mobile/connect/exception/PaymentError;

    if-eqz p1, :cond_1

    .line 151
    invoke-interface {p3, v8, p1}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->transactionFailed(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    goto :goto_5

    .line 153
    :cond_1
    invoke-interface {p3, v8}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->transactionCompleted(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    :goto_5
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 154
    :goto_6
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/e;->a()Lcom/oppwa/mobile/connect/provider/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oppwa/mobile/connect/provider/e;->a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)V

    .line 155
    invoke-static {v1}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    .line 157
    iput-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->h:Ljava/util/concurrent/CountDownLatch;

    .line 159
    invoke-virtual {v8}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->mask()V

    .line 160
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    .line 161
    throw p2
.end method

.method private synthetic a(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 5

    const/4 v0, 0x0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 90
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v4, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 91
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    move-result-object v1
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 100
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;->getError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    move-object v0, p1

    .line 102
    :goto_1
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {p2, v0}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->paymentConfigRequestFailed(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    goto :goto_2

    .line 108
    :cond_0
    invoke-interface {p2, v1}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->paymentConfigRequestSucceeded(Lcom/oppwa/mobile/connect/payment/CheckoutInfo;)V

    :goto_2
    return-void

    .line 109
    :goto_3
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->sendLogs()V

    .line 110
    throw p1
.end method

.method private synthetic a(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IdealBanksListener;)V
    .locals 4

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 66
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 67
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/oppwa/mobile/connect/provider/c;->b(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p2, p1}, Lcom/oppwa/mobile/connect/provider/IdealBanksListener;->idealBanksRequestSucceeded(Ljava/util/Map;)V

    return-void

    .line 78
    :cond_0
    invoke-interface {p2}, Lcom/oppwa/mobile/connect/provider/IdealBanksListener;->idealBanksRequestFailed()V

    return-void

    .line 79
    :catch_0
    invoke-interface {p2}, Lcom/oppwa/mobile/connect/provider/IdealBanksListener;->idealBanksRequestFailed()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 6

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 31
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-object v4, p1

    move-object v5, p2

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/model/BinInfo;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/model/BinInfo;->getBrands()[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    invoke-interface {p3, p1}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->binRequestSucceeded([Ljava/lang/String;)V

    return-void

    .line 48
    :catch_0
    invoke-interface {p3}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->binRequestFailed()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/listener/BinInfoListener;)V
    .locals 9

    const/4 v1, 0x0

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 50
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v5, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-object v6, p1

    move-object v7, p2

    .line 51
    invoke-virtual/range {v2 .. v7}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/model/BinInfo;

    move-result-object p1
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 59
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;->getError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    .line 64
    :goto_0
    invoke-interface {p3, v1, p1}, Lcom/oppwa/mobile/connect/provider/listener/BinInfoListener;->onResult(Lcom/oppwa/mobile/connect/provider/model/BinInfo;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-object v4, p1

    move-object v5, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;[Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    move-result-object p1
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-interface {p3, p1}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->brandsValidationRequestSucceeded(Lcom/oppwa/mobile/connect/payment/BrandsValidation;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 17
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;->getError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->brandsValidationRequestFailed(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 321
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    :try_start_1
    new-instance v1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getUnexpectedExceptionError(Ljava/lang/Exception;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 329
    throw v0
.end method

.method private synthetic a([Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 4

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 19
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 20
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;[Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/ImagesRequest;

    move-result-object p1
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-interface {p2, p1}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->imagesRequestSucceeded(Lcom/oppwa/mobile/connect/payment/ImagesRequest;)V

    return-void

    .line 29
    :catch_0
    invoke-interface {p2}, Lcom/oppwa/mobile/connect/provider/ITransactionListener;->imagesRequestFailed()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getThreeDS2Brands()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getThreeDS2Brands()[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 167
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private b(Lcom/oppwa/mobile/connect/provider/Transaction;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p1

    .line 29
    instance-of v0, p1, Lcom/oppwa/mobile/connect/payment/googlepay/GooglePayPaymentParams;

    if-eqz v0, :cond_1

    .line 30
    check-cast p1, Lcom/oppwa/mobile/connect/payment/googlepay/GooglePayPaymentParams;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/googlepay/GooglePayPaymentParams;->getCardBrand()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "Google Pay card brand is empty."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getPaymentBrand()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 6
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p2, p1}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/provider/Transaction;

    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    const-string p2, "3-D Secure 2 authentication params are not valid."

    invoke-static {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderInternalError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a()Landroid/app/Activity;

    move-result-object v0

    .line 11
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/oppwa/mobile/connect/provider/AsyncPaymentActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    const-string v2, "redirect_url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const-string/jumbo p1, "threeds_method_redirect_url"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string p1, "checkout_id"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->isBrowserParamsRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->DISABLED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->f:Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;

    if-nez v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->APP:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    if-ne v0, v1, :cond_2

    .line 28
    sget-boolean v0, Lcom/oppwa/mobile/connect/utils/LibraryHelper;->isThreeDS2Available:Z

    if-eqz v0, :cond_1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_1
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 39
    const-string p2, "The ipworks3ds library is required for 3-D Secure 2 card transaction with APP flow."

    invoke-static {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderInternalError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 51
    :cond_2
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->WEB:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    if-ne v0, v1, :cond_3

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 53
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 54
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v5, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-object v7, p1

    move-object v6, p2

    .line 55
    invoke-virtual/range {v2 .. v7}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/provider/Transaction;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(Lcom/oppwa/mobile/connect/provider/Transaction;)Z
    .locals 1

    .line 6
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p1

    .line 8
    instance-of v0, p1, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/oppwa/mobile/connect/payment/googlepay/GooglePayPaymentParams;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private d(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CheckoutInfo;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    move-result-object p1
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    .line 33
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->e:Lcom/oppwa/mobile/connect/provider/c;

    .line 34
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-object v5, p1

    move-object v4, p2

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/provider/Transaction;

    .line 43
    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/provider/Transaction;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/provider/Transaction;->getThreeDS2MethodRedirectUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Lcom/oppwa/mobile/connect/provider/TransactionType;->SYNC:Lcom/oppwa/mobile/connect/provider/TransactionType;

    invoke-virtual {v5, p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->a(Lcom/oppwa/mobile/connect/provider/TransactionType;)V

    .line 47
    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/provider/Transaction;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/provider/Transaction;->getThreeDS2MethodRedirectUrl()Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, p1, p2, v0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d(Lcom/oppwa/mobile/connect/provider/Transaction;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->c(Lcom/oppwa/mobile/connect/provider/Transaction;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->b(Lcom/oppwa/mobile/connect/provider/Transaction;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->c(Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    move-result-object v2

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 24
    sget-object v3, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->APP:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_1

    return v4

    .line 29
    :cond_1
    sget-object v3, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->WEB:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    if-ne v2, v3, :cond_3

    if-nez p1, :cond_2

    .line 30
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v4

    :cond_3
    return v1
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)Lcom/oppwa/mobile/connect/provider/g;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/oppwa/mobile/connect/provider/g;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/provider/g;-><init>()V

    .line 312
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 314
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v3

    .line 315
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v2, p1

    move-object v5, p3

    .line 316
    invoke-virtual/range {v0 .. v5}, Lcom/oppwa/mobile/connect/provider/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/util/List;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V

    return-object v0
.end method

.method a(Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->g:Lcom/oppwa/mobile/connect/exception/PaymentError;

    .line 319
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->h:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a()Landroid/app/Activity;

    move-result-object v0

    .line 303
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p1

    .line 304
    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/provider/h;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/payment/PaymentParams;)V

    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/provider/g;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->h:Ljava/util/concurrent/CountDownLatch;

    .line 294
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a()Landroid/app/Activity;

    move-result-object v0

    .line 295
    invoke-virtual {p1, p0, v0, p2}, Lcom/oppwa/mobile/connect/provider/g;->a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Landroid/app/Activity;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->h:Ljava/util/concurrent/CountDownLatch;

    .line 307
    invoke-direct {p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/provider/f;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProviderDomain()Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/provider/f;->getProviderDomain()Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/provider/f;->getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    return-object v0
.end method

.method public registerTransaction(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    const-string v0, "/registration"

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->sendTransaction(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    return-void
.end method

.method public requestBinInfo(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/listener/BinInfoListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda3;-><init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/listener/BinInfoListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public requestBrandsValidation(Ljava/lang/String;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda2;-><init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public requestCheckoutInfo(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public requestIdealBanks(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IdealBanksListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda4;-><init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IdealBanksListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public requestImages([Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda6;-><init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;[Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public requestPaymentBrandsForBin(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda7;-><init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendThreeDS2AuthParams(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;-><init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendTransaction(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/utils/Logger;->checkOutdatedFiles(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V

    .line 2
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Logger;->setCurrentCheckoutId(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public bridge synthetic setProviderDomain(Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/provider/f;->setProviderDomain(Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V

    return-void
.end method

.method public bridge synthetic setProviderMode(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/provider/f;->setProviderMode(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    return-void
.end method

.method public setThreeDSWorkflowListener(Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->f:Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;

    return-void
.end method

.method public submitTransaction(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    const-string v0, "/payment"

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->sendTransaction(Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    return-void
.end method
