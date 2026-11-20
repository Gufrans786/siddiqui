.class public Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FingerprintAuthDialogFragment.java"


# static fields
.field static l:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_TITLE"


# instance fields
.field private a:Lcom/oppwa/mobile/connect/checkout/dialog/q;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/app/KeyguardManager;

.field private f:Landroid/hardware/fingerprint/FingerprintManager;

.field private g:Landroid/os/CancellationSignal;

.field private final h:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private final i:Ljava/lang/Runnable;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public static synthetic $r8$lambda$4VbN4iRaqpVsre3sbR8wC2tp8wM(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KRhfeGy5WY7K8E6e1Gchy0EqpS8(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$iddcLI8MB6bGoqn8AddI42DlhI4(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vtfp8naX7IKUlorVa807uXEQn7A(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 16
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$a;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$a;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->h:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 49
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$b;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$b;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->i:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/q;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/q;->b()V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/q;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/q;->a()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b:Landroid/widget/ImageView;

    sget v1, Lcom/oppwa/mobile/connect/R$drawable;->opp_ic_fingerprint_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$color;->checkout_helper_text_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->k:Z

    return p0
.end method

.method private synthetic b()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/q;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/q;->c()V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->e:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->j:Ljava/lang/String;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_auth_confirm_payment:I

    .line 5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c()V

    return-void
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b:Landroid/widget/ImageView;

    sget v1, Lcom/oppwa/mobile/connect/R$drawable;->opp_ic_fingerprint_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$color;->checkout_helper_text_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b:Landroid/widget/ImageView;

    sget v1, Lcom/oppwa/mobile/connect/R$drawable;->opp_ic_fingerprint_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_fingerprint_not_recognized:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oppwa/mobile/connect/R$color;->checkout_helper_text_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->d()V

    return-void
.end method

.method static synthetic d(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b:Landroid/widget/ImageView;

    sget v1, Lcom/oppwa/mobile/connect/R$drawable;->opp_ic_fingerprint_success:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_fingerprint_success:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oppwa/mobile/connect/R$color;->success_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic e(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x1030239

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->f:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->g:Landroid/os/CancellationSignal;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->f:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->g:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->h:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->k:Z

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->g:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->g:Landroid/os/CancellationSignal;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setRetainInstance(Z)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 5
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->e()V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->j:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 10
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->e:Landroid/app/KeyguardManager;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 12
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->f:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_dialog_fingerprint_auth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->g()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->f()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p2, Lcom/oppwa/mobile/connect/R$id;->fingerprint_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b:Landroid/widget/ImageView;

    .line 4
    sget p2, Lcom/oppwa/mobile/connect/R$id;->fingerprint_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c:Landroid/widget/TextView;

    .line 6
    sget p2, Lcom/oppwa/mobile/connect/R$id;->enter_pin_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->d:Landroid/widget/Button;

    .line 8
    sget p2, Lcom/oppwa/mobile/connect/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 9
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lcom/oppwa/mobile/connect/checkout/dialog/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/q;

    return-void
.end method
