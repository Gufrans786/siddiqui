.class public final Lcom/payfort/fortpaymentsdk/handlers/PayHandler;
.super Ljava/lang/Object;
.source "PayHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 A2\u00020\u0001:\u0001AB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J\u0010\u00106\u001a\u0002022\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u00107\u001a\u00020\u001bH\u0002J\u0008\u00108\u001a\u000202H\u0002J\u0006\u00109\u001a\u000202J\u0008\u0010:\u001a\u000202H\u0002J\u0012\u0010;\u001a\u0002022\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J \u0010<\u001a\u0002022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0008\u0010\"\u001a\u0004\u0018\u00010#J(\u0010<\u001a\u0002022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0006\u0010=\u001a\u00020>2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0017J(\u0010<\u001a\u0002022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0006\u0010=\u001a\u00020>2\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0008\u0010?\u001a\u000202H\u0002J\u0008\u0010@\u001a\u000202H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u001bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001eR\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u00020%X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0016\u0010*\u001a\n \u000b*\u0004\u0018\u00010+0+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u001c\"\u0004\u00080\u0010\u001e\u00a8\u0006B"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/handlers/PayHandler;",
        "",
        "appCompatButton",
        "Landroidx/appcompat/widget/AppCompatButton;",
        "(Landroidx/appcompat/widget/AppCompatButton;)V",
        "broadcastReceiver",
        "Landroid/content/BroadcastReceiver;",
        "cardNumberView",
        "Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;",
        "context",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "cvvView",
        "Lcom/payfort/fortpaymentsdk/views/CardCvvView;",
        "environment",
        "",
        "getEnvironment",
        "()Ljava/lang/String;",
        "setEnvironment",
        "(Ljava/lang/String;)V",
        "expiryView",
        "Lcom/payfort/fortpaymentsdk/views/CardExpiryView;",
        "fortInternalPayCallback",
        "Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;",
        "holderNameView",
        "Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;",
        "isRememberMe",
        "",
        "()Z",
        "setRememberMe",
        "(Z)V",
        "isValidatedBefore",
        "isValidatedBefore$fortpayment_release",
        "setValidatedBefore$fortpayment_release",
        "payFortCallback",
        "Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;",
        "request",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "getRequest$fortpayment_release",
        "()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "setRequest$fortpayment_release",
        "(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V",
        "resources",
        "Landroid/content/res/Resources;",
        "viewModel",
        "Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;",
        "withoutForm",
        "getWithoutForm",
        "setWithoutForm",
        "handleResponse",
        "",
        "sdkResponse",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "handleSuccessResponse",
        "initViewModel",
        "isValid",
        "normalPay",
        "pay",
        "payWithoutFields",
        "removeInternalReceiver",
        "setUpPayButton",
        "payComponents",
        "Lcom/payfort/fortpaymentsdk/views/model/PayComponents;",
        "startInternalReceiverToGetResult",
        "startValidationFields",
        "Companion",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final THREEDS_INTENT_FILTER:Ljava/lang/String;


# instance fields
.field private final appCompatButton:Landroidx/appcompat/widget/AppCompatButton;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

.field private final context:Landroid/content/Context;

.field private cvvView:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

.field public environment:Ljava/lang/String;

.field private expiryView:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

.field private fortInternalPayCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

.field private holderNameView:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

.field private isRememberMe:Z

.field private isValidatedBefore:Z

.field private payFortCallback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

.field public request:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

.field private final resources:Landroid/content/res/Resources;

.field private viewModel:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

.field private withoutForm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->Companion:Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;

    .line 56
    const-string v0, "com.payfort.fortpaymentsdk.webview.threeds"

    sput-object v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->THREEDS_INTENT_FILTER:Ljava/lang/String;

    .line 57
    const-string v0, "PayHandler"

    sput-object v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/AppCompatButton;)V
    .locals 1

    const-string v0, "appCompatButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->appCompatButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 61
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->resources:Landroid/content/res/Resources;

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->isRememberMe:Z

    return-void
.end method

.method public static final synthetic access$getFortInternalPayCallback$p(Lcom/payfort/fortpaymentsdk/handlers/PayHandler;)Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->fortInternalPayCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

    return-object p0
.end method

.method public static final synthetic access$getPayFortCallback$p(Lcom/payfort/fortpaymentsdk/handlers/PayHandler;)Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->payFortCallback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

    return-object p0
.end method

.method public static final synthetic access$getTHREEDS_INTENT_FILTER$cp()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->THREEDS_INTENT_FILTER:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$handleResponse(Lcom/payfort/fortpaymentsdk/handlers/PayHandler;Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->handleResponse(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void
.end method

.method public static final synthetic access$handleSuccessResponse(Lcom/payfort/fortpaymentsdk/handlers/PayHandler;Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->handleSuccessResponse(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void
.end method

.method public static final synthetic access$removeInternalReceiver(Lcom/payfort/fortpaymentsdk/handlers/PayHandler;Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->removeInternalReceiver(Landroid/content/Context;)V

    return-void
.end method

.method private final handleResponse(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->fortInternalPayCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;->onSuccess(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->isSuccess()Z

    move-result v0

    const-string v1, "sdkResponse.responseMap"

    const-string v2, "request.requestMap"

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->payFortCallback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, p1}, Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;->onSuccess(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->payFortCallback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, p1}, Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;->onFailure(Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private final handleSuccessResponse(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 4

    .line 248
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getChecker3DsURL()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->startInternalReceiverToGetResult()V

    .line 250
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sdk_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 251
    :cond_1
    sget-object v1, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->Companion:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$Companion;

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getChecker3DsURL()Ljava/lang/String;

    move-result-object p1

    const-string v3, "sdkResponse.checker3DsURL"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->handleResponse(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void
.end method

.method private final initViewModel(Ljava/lang/String;)V
    .locals 3

    .line 155
    new-instance v0, Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;

    sget-object v1, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    invoke-virtual {v1, p1}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideFortRepository(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;)V

    .line 156
    new-instance v1, Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;

    sget-object v2, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    invoke-virtual {v2, p1}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideFortRepository(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;)V

    .line 157
    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

    invoke-direct {p1, v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;-><init>(Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;)V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->viewModel:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

    return-void
.end method

.method private final isValid()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cvvView:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "cvvView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    if-nez v0, :cond_1

    const-string v0, "cardNumberView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->expiryView:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    if-nez v0, :cond_2

    const-string v0, "expiryView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final normalPay()V
    .locals 17

    move-object/from16 v0, p0

    .line 213
    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->startValidationFields()V

    .line 214
    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    sget-object v2, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    .line 216
    iget-object v3, v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v4, v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "cardNumberView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    .line 218
    :cond_0
    iget-object v6, v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cvvView:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    if-nez v6, :cond_1

    const-string v6, "cvvView"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    .line 219
    :cond_1
    iget-object v7, v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->holderNameView:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    if-nez v7, :cond_2

    const-string v7, "holderNameView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    .line 220
    :cond_2
    iget-object v8, v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->expiryView:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    if-nez v8, :cond_3

    const-string v8, "expiryView"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, v8

    .line 221
    :goto_0
    iget-boolean v8, v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->isRememberMe:Z

    .line 222
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v9

    move-object/from16 v16, v7

    move-object v7, v5

    move-object v5, v6

    move-object/from16 v6, v16

    .line 215
    invoke-virtual/range {v2 .. v9}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequestFromComponents(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;Lcom/payfort/fortpaymentsdk/views/CardCvvView;Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;Lcom/payfort/fortpaymentsdk/views/CardExpiryView;ZLcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object v13

    .line 224
    iget-object v10, v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->viewModel:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

    if-eqz v10, :cond_4

    iget-object v11, v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v12

    iget-boolean v14, v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->isValidatedBefore:Z

    new-instance v1, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$normalPay$1;

    invoke-direct {v1, v0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$normalPay$1;-><init>(Lcom/payfort/fortpaymentsdk/handlers/PayHandler;)V

    move-object v15, v1

    check-cast v15, Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

    invoke-virtual/range {v10 .. v15}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;ZLcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V

    :cond_4
    return-void
.end method

.method private final payWithoutFields()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->viewModel:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    new-instance v3, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$payWithoutFields$1;

    invoke-direct {v3, p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$payWithoutFields$1;-><init>(Lcom/payfort/fortpaymentsdk/handlers/PayHandler;)V

    check-cast v3, Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V

    :cond_0
    return-void
.end method

.method private final removeInternalReceiver(Landroid/content/Context;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private final startInternalReceiverToGetResult()V
    .locals 4

    .line 292
    new-instance v0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$startInternalReceiverToGetResult$1;

    invoke-direct {v0, p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$startInternalReceiverToGetResult$1;-><init>(Lcom/payfort/fortpaymentsdk/handlers/PayHandler;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->THREEDS_INTENT_FILTER:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->THREEDS_INTENT_FILTER:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private final startValidationFields()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "cardNumberView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->validateCardNumber$fortpayment_release()V

    .line 273
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cvvView:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    if-nez v0, :cond_1

    const-string v0, "cvvView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->validateCvc$fortpayment_release()V

    .line 274
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->expiryView:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    if-nez v0, :cond_2

    const-string v0, "expiryView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->validateExpiryDate$fortpayment_release()V

    return-void
.end method


# virtual methods
.method public final getEnvironment()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->environment:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "environment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->request:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "request"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWithoutForm()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->withoutForm:Z

    return v0
.end method

.method public final isRememberMe()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->isRememberMe:Z

    return v0
.end method

.method public final isValidatedBefore$fortpayment_release()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->isValidatedBefore:Z

    return v0
.end method

.method public final pay()V
    .locals 7

    .line 166
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->appCompatButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatButton;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/CommonServiceUtil;->displayConnectionAlert(Landroid/view/View;Landroid/content/Context;)Lcom/google/android/material/snackbar/Snackbar;

    return-void

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->withoutForm:Z

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->viewModel:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->isFormWithoutFields(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->payWithoutFields()V

    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->payFortCallback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/payfort/fortpaymentsdk/R$string;->pf_technical_problem_missing_token_name_or_card_security:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v4

    .line 177
    invoke-static {v3, v4}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getTechnicalProblemResponse(Ljava/lang/String;Ljava/util/Map;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "getTechnicalProblemRespo\u2026t.requestMap).responseMap"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-interface {v0, v1, v3}, Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;->onFailure(Ljava/util/Map;Ljava/util/Map;)V

    .line 180
    :cond_2
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/WorkerHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/WorkerHandler;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->getRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    sget-object v3, Lcom/payfort/fortpaymentsdk/domain/model/ErrorEnum;->INTERNAL:Lcom/payfort/fortpaymentsdk/domain/model/ErrorEnum;

    new-instance v4, Ljava/lang/Exception;

    iget-object v5, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/payfort/fortpaymentsdk/R$string;->pf_technical_problem_missing_token_name_or_card_security:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/payfort/fortpaymentsdk/handlers/WorkerHandler;->createWorkerRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/domain/model/ErrorEnum;Ljava/lang/Throwable;)V

    return-void

    .line 184
    :cond_3
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->normalPay()V

    return-void
.end method

.method public final setEnvironment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->environment:Ljava/lang/String;

    return-void
.end method

.method public final setRememberMe(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->isRememberMe:Z

    return-void
.end method

.method public final setRequest$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->request:Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    return-void
.end method

.method public final setUpPayButton(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V
    .locals 1

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->initViewModel(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setEnvironment(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setRequest$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    .line 93
    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->payFortCallback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->withoutForm:Z

    return-void
.end method

.method public final setUpPayButton(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/views/model/PayComponents;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V
    .locals 4

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payComponents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setEnvironment(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;->getCardNumberView$fortpayment_release()Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    .line 136
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;->getCvvView$fortpayment_release()Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cvvView:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    .line 137
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;->getCardExpiryView$fortpayment_release()Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->expiryView:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    .line 138
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;->getHolderNameView$fortpayment_release()Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    move-result-object p3

    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->holderNameView:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    .line 139
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->initViewModel(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getPaymentOptionValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 142
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    const-string v1, "cardNumberView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    sget-object v3, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->Companion:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;

    invoke-virtual {v3, p3}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;->fromCodeOrNull(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->setUp$fortpayment_release(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V

    .line 143
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cvvView:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    if-nez p1, :cond_1

    const-string p1, "cvvView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    iget-object p3, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    if-nez p3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p3

    :goto_0
    invoke-virtual {p1, v2}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setCardNumberView$fortpayment_release(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)V

    .line 144
    invoke-virtual {p0, p2}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setRequest$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    .line 145
    iput-object p4, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->fortInternalPayCallback:Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;

    return-void
.end method

.method public final setUpPayButton(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/views/model/PayComponents;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V
    .locals 4

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payComponents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setEnvironment(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;->getCardNumberView$fortpayment_release()Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    .line 110
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;->getCvvView$fortpayment_release()Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cvvView:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    .line 111
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;->getCardExpiryView$fortpayment_release()Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->expiryView:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    .line 112
    invoke-virtual {p3}, Lcom/payfort/fortpaymentsdk/views/model/PayComponents;->getHolderNameView$fortpayment_release()Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    move-result-object p3

    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->holderNameView:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    .line 113
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->initViewModel(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getPaymentOptionValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 116
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    const-string v1, "cardNumberView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    sget-object v3, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->Companion:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;

    invoke-virtual {v3, p3}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;->fromCodeOrNull(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->setUp$fortpayment_release(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V

    .line 117
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cvvView:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    if-nez p1, :cond_1

    const-string p1, "cvvView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    iget-object p3, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->cardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    if-nez p3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p3

    :goto_0
    invoke-virtual {p1, v2}, Lcom/payfort/fortpaymentsdk/views/CardCvvView;->setCardNumberView$fortpayment_release(Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setRequest$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    .line 119
    iput-object p4, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->payFortCallback:Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;

    return-void
.end method

.method public final setValidatedBefore$fortpayment_release(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->isValidatedBefore:Z

    return-void
.end method

.method public final setWithoutForm(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->withoutForm:Z

    return-void
.end method
