.class Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$a;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintAuthDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->b(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->c(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)V

    return-void
.end method
