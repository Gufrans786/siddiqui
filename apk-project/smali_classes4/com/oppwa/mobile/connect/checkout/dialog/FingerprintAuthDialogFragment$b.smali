.class Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$b;
.super Ljava/lang/Object;
.source "FingerprintAuthDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->d(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$drawable;->ic_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->e(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_fingerprint_touch_sensor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;->e(Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment$b;->a:Lcom/oppwa/mobile/connect/checkout/dialog/FingerprintAuthDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oppwa/mobile/connect/R$color;->checkout_text_color_hint:I

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
