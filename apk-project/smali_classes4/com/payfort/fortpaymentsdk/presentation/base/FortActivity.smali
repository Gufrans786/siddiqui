.class public abstract Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FortActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008 \u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0010\u00a2\u0006\u0002\u0008\u0010J\r\u0010\u0011\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008\u0013J\u0015\u0010\u0014\u001a\n \u0016*\u0004\u0018\u00010\u00150\u0015H\u0000\u00a2\u0006\u0002\u0008\u0017J\u0012\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "localizationService",
        "Lcom/payfort/fortpaymentsdk/utils/LocalizationService;",
        "getLocalizationService",
        "()Lcom/payfort/fortpaymentsdk/utils/LocalizationService;",
        "setLocalizationService",
        "(Lcom/payfort/fortpaymentsdk/utils/LocalizationService;)V",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "failedMessage",
        "sdkResponse",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "failedMessage$fortpayment_release",
        "getEnvironment",
        "",
        "getEnvironment$fortpayment_release",
        "getMerchantRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "kotlin.jvm.PlatformType",
        "getMerchantRequest$fortpayment_release",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field protected localizationService:Lcom/payfort/fortpaymentsdk/utils/LocalizationService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 22
    new-instance v0, Lcom/payfort/fortpaymentsdk/utils/LocalizationServicePerDevice;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/utils/LocalizationServicePerDevice;-><init>()V

    check-cast v0, Lcom/payfort/fortpaymentsdk/utils/LocalizationService;

    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->setLocalizationService(Lcom/payfort/fortpaymentsdk/utils/LocalizationService;)V

    .line 23
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->getLocalizationService()Lcom/payfort/fortpaymentsdk/utils/LocalizationService;

    move-result-object v0

    invoke-static {}, Lcom/payfort/fortpaymentsdk/domain/model/FortSdkCache;->getREQUEST_LANGUAGE()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/payfort/fortpaymentsdk/domain/model/FortSdkCache;->getDEFAULT_SYSTEM_LANGUAGE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/payfort/fortpaymentsdk/utils/LocalizationService;->updateByLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public failedMessage$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 2

    const-string v0, "sdkResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    const-string v1, "sdkResp"

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->setResult(ILandroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->finish()V

    return-void
.end method

.method public final getEnvironment$fortpayment_release()Ljava/lang/String;
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/CommonServiceUtil;->getEnvironment(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEnvironment(intent)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getLocalizationService()Lcom/payfort/fortpaymentsdk/utils/LocalizationService;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->localizationService:Lcom/payfort/fortpaymentsdk/utils/LocalizationService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "localizationService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/CommonServiceUtil;->getMerchantRequestObjFromIntent(Landroid/content/Intent;)Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance p1, Lcom/payfort/fortpaymentsdk/utils/LocalizationServicePerDevice;

    invoke-direct {p1}, Lcom/payfort/fortpaymentsdk/utils/LocalizationServicePerDevice;-><init>()V

    check-cast p1, Lcom/payfort/fortpaymentsdk/utils/LocalizationService;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->setLocalizationService(Lcom/payfort/fortpaymentsdk/utils/LocalizationService;)V

    return-void
.end method

.method protected final setLocalizationService(Lcom/payfort/fortpaymentsdk/utils/LocalizationService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->localizationService:Lcom/payfort/fortpaymentsdk/utils/LocalizationService;

    return-void
.end method
