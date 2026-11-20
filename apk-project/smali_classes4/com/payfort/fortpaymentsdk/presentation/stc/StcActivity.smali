.class public final Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;
.super Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;
.source "StcActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStcActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StcActivity.kt\ncom/payfort/fortpaymentsdk/presentation/stc/StcActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,89:1\n75#2,13:90\n*S KotlinDebug\n*F\n+ 1 StcActivity.kt\ncom/payfort/fortpaymentsdk/presentation/stc/StcActivity\n*L\n30#1:90,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;",
        "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;",
        "()V",
        "navController",
        "Landroidx/navigation/NavController;",
        "viewModel",
        "Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;",
        "getViewModel",
        "()Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "observeValues",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSupportNavigateUp",
        "",
        "setupNavigation",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$Companion;

.field public static final STC_REQUEST_CODE:I = 0x8ab75d


# instance fields
.field private navController:Landroidx/navigation/NavController;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->Companion:Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 17
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;-><init>()V

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 94
    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 98
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 100
    new-instance v4, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 102
    new-instance v5, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 98
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    .line 30
    iput-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;)Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->getViewModel()Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final getViewModel()Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;

    return-object v0
.end method

.method private final observeValues()V
    .locals 3

    .line 41
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$observeValues$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity$observeValues$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenStarted(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setupNavigation()V
    .locals 5

    .line 68
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->nav_host_fragment_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 69
    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->navController:Landroidx/navigation/NavController;

    .line 70
    const-string v1, "navController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v0

    .line 71
    sget v3, Lcom/payfort/fortpaymentsdk/R$navigation;->stc_navigation:I

    invoke-virtual {v0, v3}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v3

    .line 73
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->getViewModel()Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;->isMerchantRequestContainsTokenName(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    sget v3, Lcom/payfort/fortpaymentsdk/R$id;->repeatStcFragment:I

    invoke-virtual {v0, v3}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    goto :goto_0

    .line 76
    :cond_1
    sget v3, Lcom/payfort/fortpaymentsdk/R$id;->stcGenerateOtpFragment:I

    invoke-virtual {v0, v3}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/navigation/NavGraph;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 79
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->navController:Landroidx/navigation/NavController;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    move-object v4, p0

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v3, v4}, Landroidx/navigation/NavController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 80
    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->navController:Landroidx/navigation/NavController;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :cond_5
    invoke-virtual {v3, v0, v2}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/payfort/fortpaymentsdk/R$layout;->stc_pay_activity:I

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->setupNavigation()V

    .line 36
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->observeValues()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcActivity;->navController:Landroidx/navigation/NavController;

    if-nez v0, :cond_0

    const-string v0, "navController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->onSupportNavigateUp()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
