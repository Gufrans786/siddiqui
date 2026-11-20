.class public Lcom/oppwa/mobile/connect/provider/AsyncPaymentActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AsyncPaymentActivity.java"


# static fields
.field public static final EXTRA_CHECKOUT_ID:Ljava/lang/String; = "checkout_id"

.field public static final EXTRA_PAYMENT_ERROR:Ljava/lang/String; = "payment_error"

.field public static final EXTRA_REDIRECT_URL:Ljava/lang/String; = "redirect_url"

.field public static final EXTRA_THREEDS_METHOD_REDIRECT_URL:Ljava/lang/String; = "threeds_method_redirect_url"

.field public static final REQUEST_KEY_ASYNC_RESULT:Ljava/lang/String; = "async_result"


# direct methods
.method public static synthetic $r8$lambda$_dfAqB2QJsBld1kWGSThSQGj4k0(Lcom/oppwa/mobile/connect/provider/AsyncPaymentActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/provider/AsyncPaymentActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$layout;->async_payment_activity:I

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/provider/AsyncPaymentActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/provider/AsyncPaymentActivity$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/provider/AsyncPaymentActivity;)V

    const-string v2, "async_result"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/e;->a()Lcom/oppwa/mobile/connect/provider/e;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/e;->b()Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    const-string v0, "payment_error"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/exception/PaymentError;

    .line 16
    invoke-virtual {p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->a(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "redirect_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string/jumbo p1, "threeds_method_redirect_url"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget p2, Lcom/oppwa/mobile/connect/R$id;->content_view:I

    .line 8
    const-class v1, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;

    invoke-virtual {p1, p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_0
    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 10
    const-string v0, "redirect_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    const-string/jumbo v1, "threeds_method_redirect_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/oppwa/mobile/connect/provider/AsyncPaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/AsyncPaymentActivity;->a()V

    return-void
.end method
