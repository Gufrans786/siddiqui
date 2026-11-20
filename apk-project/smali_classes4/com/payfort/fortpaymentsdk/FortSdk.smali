.class public final Lcom/payfort/fortpaymentsdk/FortSdk;
.super Ljava/lang/Object;
.source "FortSdk.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/FortSdk$Companion;,
        Lcom/payfort/fortpaymentsdk/FortSdk$ENVIRONMENT;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000  2\u00020\u0001:\u0002 !B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0002J8\u0010\t\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J:\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0013H\u0007JD\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001b\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0013J2\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0013J(\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/FortSdk;",
        "",
        "()V",
        "initializeSharedValues",
        "",
        "context",
        "Landroid/content/Context;",
        "fortRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "onActivityResult",
        "",
        "requestParams",
        "",
        "",
        "resultCode",
        "",
        "data",
        "Landroid/content/Intent;",
        "tnxProcessedCallback",
        "Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;",
        "registerCallback",
        "Landroid/app/Activity;",
        "environment",
        "requestCode",
        "callbackManager",
        "Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;",
        "callback",
        "showLoading",
        "startStcPayment",
        "validate",
        "fortCallback",
        "Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;",
        "Companion",
        "ENVIRONMENT",
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


# static fields
.field public static final Companion:Lcom/payfort/fortpaymentsdk/FortSdk$Companion;

.field private static volatile instance:Lcom/payfort/fortpaymentsdk/FortSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/FortSdk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/FortSdk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/FortSdk;->Companion:Lcom/payfort/fortpaymentsdk/FortSdk$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/FortSdk;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/payfort/fortpaymentsdk/FortSdk;
    .locals 1

    .line 22
    sget-object v0, Lcom/payfort/fortpaymentsdk/FortSdk;->instance:Lcom/payfort/fortpaymentsdk/FortSdk;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/payfort/fortpaymentsdk/FortSdk;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/payfort/fortpaymentsdk/FortSdk;->instance:Lcom/payfort/fortpaymentsdk/FortSdk;

    return-void
.end method

.method public static final declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/payfort/fortpaymentsdk/FortSdk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/payfort/fortpaymentsdk/FortSdk;->Companion:Lcom/payfort/fortpaymentsdk/FortSdk$Companion;

    invoke-virtual {v1, p0}, Lcom/payfort/fortpaymentsdk/FortSdk$Companion;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final getInstance()Lcom/payfort/fortpaymentsdk/FortSdk;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/payfort/fortpaymentsdk/FortSdk;->Companion:Lcom/payfort/fortpaymentsdk/FortSdk$Companion;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/FortSdk$Companion;->getInstance()Lcom/payfort/fortpaymentsdk/FortSdk;

    move-result-object v0

    return-object v0
.end method

.method private final initializeSharedValues(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getLanguage(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getLanguage(fortRequest.requestMap)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortSdkCache;->setREQUEST_LANGUAGE(Ljava/lang/String;)V

    .line 195
    :cond_0
    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/LocalizationService;->getDefaultLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getDefaultLocale(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/domain/model/FortSdkCache;->setDEFAULT_SYSTEM_LANGUAGE(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/util/Map;ILandroid/content/Intent;Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;I",
            "Landroid/content/Intent;",
            "Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;",
            ")Z"
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p3, :cond_5

    .line 166
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sdkResp"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 182
    :cond_1
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    if-eqz p3, :cond_2

    .line 183
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->isSuccess()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_4

    .line 184
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p4, p1, p3}, Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;->onSuccess(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 186
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p4, p1, p3}, Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;->onFailure(Ljava/util/Map;Ljava/util/Map;)V

    :cond_4
    :goto_1
    return p2

    .line 170
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getLanguage(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "ar"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 171
    const-string/jumbo p3, "\u062a\u0645 \u0627\u0644\u063a\u0627\u0621 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0645\u0646 \u0627\u0644\u0645\u0634\u062a\u0631\u064a"

    goto :goto_3

    .line 173
    :cond_6
    const-string p3, "Transaction canceled by payer"

    :goto_3
    if-eqz p4, :cond_7

    .line 177
    invoke-static {p3, p1}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getCanceledByUserResponse(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 175
    invoke-interface {p4, p1, p3}, Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;->onCancel(Ljava/util/Map;Ljava/util/Map;)V

    :cond_7
    return p2
.end method

.method public final registerCallback(Landroid/app/Activity;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;ILcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callbackManager"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v1, p5, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;

    if-eqz v1, :cond_0

    .line 76
    check-cast p5, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;

    .line 78
    new-instance v1, Lcom/payfort/fortpaymentsdk/FortSdk$registerCallback$1;

    invoke-direct {v1, p4, p0, p2, p6}, Lcom/payfort/fortpaymentsdk/FortSdk$registerCallback$1;-><init>(ILcom/payfort/fortpaymentsdk/FortSdk;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;)V

    check-cast v1, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;

    .line 76
    invoke-virtual {p5, p4, v1}, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;->registerCallback(ILcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;)V

    .line 92
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p5

    invoke-static {p5}, Lcom/payfort/fortpaymentsdk/security/DataSecurityService;->cleanMerhcantRequestMap(Ljava/util/Map;)V

    .line 96
    move-object p5, p1

    check-cast p5, Landroid/content/Context;

    invoke-direct {p0, p5, p2}, Lcom/payfort/fortpaymentsdk/FortSdk;->initializeSharedValues(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    .line 97
    new-instance p6, Landroid/content/Intent;

    const-class v1, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    invoke-direct {p6, p5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string p5, "merchantReq"

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p6, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo p2, "showLoading"

    const/4 p3, 0x1

    invoke-virtual {p6, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1, p6, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 72
    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    .line 71
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final registerCallback(Landroid/app/Activity;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;ILcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;ZLcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    instance-of v0, p5, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;

    if-eqz v0, :cond_0

    .line 125
    check-cast p5, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;

    .line 127
    new-instance v0, Lcom/payfort/fortpaymentsdk/FortSdk$registerCallback$2;

    invoke-direct {v0, p4, p0, p2, p7}, Lcom/payfort/fortpaymentsdk/FortSdk$registerCallback$2;-><init>(ILcom/payfort/fortpaymentsdk/FortSdk;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;)V

    check-cast v0, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;

    .line 125
    invoke-virtual {p5, p4, v0}, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;->registerCallback(ILcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;)V

    .line 141
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p5

    invoke-static {p5}, Lcom/payfort/fortpaymentsdk/security/DataSecurityService;->cleanMerhcantRequestMap(Ljava/util/Map;)V

    .line 143
    move-object p5, p1

    check-cast p5, Landroid/content/Context;

    invoke-direct {p0, p5, p2}, Lcom/payfort/fortpaymentsdk/FortSdk;->initializeSharedValues(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    .line 144
    new-instance p7, Landroid/content/Intent;

    const-class v0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;

    invoke-direct {p7, p5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const-string p5, "merchantReq"

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p7, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    const-string p2, "environment"

    invoke-virtual {p7, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string/jumbo p2, "showLoading"

    invoke-virtual {p7, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    invoke-virtual {p1, p7, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 121
    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    .line 120
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final startStcPayment(Landroid/app/Activity;Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/FortCallBackManager;Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    instance-of v0, p4, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;

    if-eqz v0, :cond_3

    .line 230
    check-cast p4, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;

    .line 232
    new-instance v0, Lcom/payfort/fortpaymentsdk/FortSdk$startStcPayment$1;

    invoke-direct {v0, p0, p3, p5}, Lcom/payfort/fortpaymentsdk/FortSdk$startStcPayment$1;-><init>(Lcom/payfort/fortpaymentsdk/FortSdk;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;)V

    check-cast v0, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;

    const v1, 0x8ab75d

    .line 230
    invoke-virtual {p4, v1, v0}, Lcom/payfort/fortpaymentsdk/callbacks/FortCallback;->registerCallback(ILcom/payfort/fortpaymentsdk/callbacks/FortCallback$Callback;)V

    .line 244
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p4

    const-string v0, "amount"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 245
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p4

    const-string v0, "currency"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p4

    invoke-static {p4}, Lcom/payfort/fortpaymentsdk/security/DataSecurityService;->cleanMerhcantRequestMap(Ljava/util/Map;)V

    .line 254
    move-object p4, p1

    check-cast p4, Landroid/content/Context;

    invoke-direct {p0, p4, p3}, Lcom/payfort/fortpaymentsdk/FortSdk;->initializeSharedValues(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    .line 255
    sget-object p4, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->Companion:Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$Companion;

    invoke-virtual {p4, p1, p2, p3}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$Companion;->start(Landroid/app/Activity;Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    .line 246
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p1

    .line 247
    const-string p2, "Missing Amount Or Currency"

    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getTechnicalProblemResponse(Ljava/lang/String;Ljava/util/Map;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object p2

    .line 246
    invoke-interface {p5, p1, p2}, Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;->onFailure(Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    return-void

    .line 225
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    .line 226
    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    .line 225
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final validate(Landroid/content/Context;Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-static {p2}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideValidateViewModel(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;

    move-result-object p2

    .line 213
    invoke-virtual {p2, p1, p3, p4}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V

    return-void
.end method
