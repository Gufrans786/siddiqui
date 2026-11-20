.class Lcom/oppwa/mobile/connect/checkout/dialog/d0;
.super Ljava/lang/Object;
.source "SecurityHelper.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/KeyguardManager;

.field private final b:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

.field private c:Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->a:Landroid/app/KeyguardManager;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->b:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    return-void
.end method

.method private a(Landroidx/appcompat/app/AppCompatActivity;Lcom/oppwa/mobile/connect/checkout/dialog/q;)V
    .locals 2

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->newInstance(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    move-result-object v1

    .line 41
    invoke-virtual {v1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->setListener(Lcom/oppwa/mobile/connect/checkout/dialog/q;)V

    .line 42
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;)Z
    .locals 1

    .line 43
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;->DEVICE_AUTH_REQUIRED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 47
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;->DEVICE_AUTH_REQUIRED_IF_AVAILABLE:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    if-ne p1, v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->d()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->c:Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;->a(Z)V

    return-void
.end method

.method a(Landroidx/appcompat/app/AppCompatActivity;Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->c:Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;

    .line 15
    const-string p2, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 18
    const-string p2, "fingerprint"

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 23
    invoke-direct {p0, p1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/oppwa/mobile/connect/checkout/dialog/q;)V

    return-void

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->a:Landroid/app/KeyguardManager;

    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_auth_confirm_payment:I

    .line 31
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p2, v1, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x2bc

    .line 37
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->b:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getSecurityPolicyModeForTokens()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->b:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {p2, p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getSecurityPolicyModeForBrand(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;

    move-result-object p1

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSecurityPolicyMode;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->c:Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->c:Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/d0$a;->a(Z)V

    return-void
.end method

.method d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/d0;->a:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method
