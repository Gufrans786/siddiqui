.class Lcom/oppwa/mobile/connect/checkout/dialog/j;
.super Ljava/lang/Object;
.source "CheckoutFragmentManager.java"


# static fields
.field private static final g:I


# instance fields
.field private final a:Landroidx/fragment/app/FragmentActivity;

.field private final b:Landroidx/fragment/app/FragmentManager;

.field private final c:Landroid/view/View;

.field private final d:I

.field private final e:I

.field private f:Z


# direct methods
.method public static synthetic $r8$lambda$VnhuvfcSVIhgbJi_vfRYdxAZ_hk(Lcom/oppwa/mobile/connect/checkout/dialog/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->i()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZBD31iYkznZ6vdh0d72sk7ruCnc(Lcom/oppwa/mobile/connect/checkout/dialog/j;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdIq855RzeeCWv8JsT2R8mOFEko(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic $r8$lambda$kD02cWm1e2yFBcd4m7GAQE48ph0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->container:I

    sput v0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->g:I

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->f:Z

    .line 5
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a:Landroidx/fragment/app/FragmentActivity;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 8
    sget v0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->g:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->c:Landroid/view/View;

    .line 9
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->e()I

    move-result p1

    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->d:I

    .line 10
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->c()I

    move-result p1

    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->e:I

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 31
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 33
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 34
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->c:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 20
    sget v1, Lcom/oppwa/mobile/connect/checkout/dialog/j;->g:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 21
    sget v1, Lcom/oppwa/mobile/connect/R$anim;->opp_fragment_in:I

    sget v2, Lcom/oppwa/mobile/connect/R$anim;->opp_fragment_out:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 24
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->d:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->e:I

    .line 11
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(II)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    const-class v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    const-class v0, Lcom/oppwa/mobile/connect/checkout/dialog/ProcessingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(II)Landroid/animation/ValueAnimator;
    .locals 2

    .line 2
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/j$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/j;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x1f4

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a:Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a:Landroidx/fragment/app/FragmentActivity;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(II)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/j$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/j$$ExternalSyntheticLambda3;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/j$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j$$ExternalSyntheticLambda2;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/j;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(II)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b(II)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/j$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method a(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    instance-of v2, p1, Lcom/oppwa/mobile/connect/checkout/dialog/ProcessingFragment;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 7
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->f:Z

    return-void
.end method

.method b()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b:Landroidx/fragment/app/FragmentManager;

    sget v1, Lcom/oppwa/mobile/connect/checkout/dialog/j;->g:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method c()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->d:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method d()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->d:I

    int-to-double v0, v0

    const-wide v2, 0x4041800000000000L    # 35.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b:Landroidx/fragment/app/FragmentManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(Ljava/lang/String;I)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->b()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/j;->f:Z

    return v0
.end method
