.class public final Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;
.super Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;
.source "CreditCardResponseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u0008\u0010\u000e\u001a\u00020\nH\u0016J\u0012\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;",
        "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;",
        "()V",
        "binding",
        "Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;",
        "getBinding$fortpayment_release",
        "()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;",
        "setBinding$fortpayment_release",
        "(Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;)V",
        "fillViews",
        "",
        "finish",
        "getSdkResponse",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity$Companion;

.field public static final TIME_REQUEST:J = 0x1388L


# instance fields
.field public binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;


# direct methods
.method public static synthetic $r8$lambda$zmYsnPSs-HEmvKskUVj_Xa9m0n8(Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->fillViews$lambda$1(Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->Companion:Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;-><init>()V

    return-void
.end method

.method private final fillViews()V
    .locals 6

    .line 35
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getSdkResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->isSuccess()Z

    move-result v1

    const-string v2, "response_message"

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseContainerRL:Landroid/widget/RelativeLayout;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/payfort/fortpaymentsdk/R$color;->pf_green:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 38
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseStatusIconIV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/payfort/fortpaymentsdk/R$string;->icon_ok_circled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseStatusHintTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/payfort/fortpaymentsdk/R$string;->pf_resp_page_great:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseInfo1TV:Landroid/widget/TextView;

    sget-object v3, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "fort_id"

    invoke-virtual {v3, v4, v5}, Lcom/payfort/fortpaymentsdk/utils/Utils;->getParamValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseInfo2TV:Landroid/widget/TextView;

    sget-object v3, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/payfort/fortpaymentsdk/utils/Utils;->getParamValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseContainerRL:Landroid/widget/RelativeLayout;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/payfort/fortpaymentsdk/R$color;->pf_red:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 44
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseStatusIconIV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/payfort/fortpaymentsdk/R$string;->icon_cancel_circled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseStatusHintTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/payfort/fortpaymentsdk/R$string;->pf_resp_page_failed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    sget-object v1, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "response_code"

    invoke-virtual {v1, v3, v4}, Lcom/payfort/fortpaymentsdk/utils/Utils;->getParamValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response_code : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseInfo1TV:Landroid/widget/TextView;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    sget-object v1, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getResponseMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/payfort/fortpaymentsdk/utils/Utils;->getParamValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response_message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseInfo2TV:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final fillViews$lambda$1(Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->finish()V

    return-void
.end method

.method private final getSdkResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sdkResp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 67
    invoke-super {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->finish()V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "responseEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getSdkResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "sdkResp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public final getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->onBackPressed()V

    .line 63
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->setBinding$fortpayment_release(Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;)V

    .line 27
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->setContentView(Landroid/view/View;)V

    .line 28
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fontello.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->getBinding$fortpayment_release()Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseStatusIconIV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->fillViews()V

    return-void
.end method

.method public final setBinding$fortpayment_release(Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/response/CreditCardResponseActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    return-void
.end method
