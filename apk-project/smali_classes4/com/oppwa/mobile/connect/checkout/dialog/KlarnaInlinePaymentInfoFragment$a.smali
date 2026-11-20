.class Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;
.super Ljava/lang/Object;
.source "KlarnaInlinePaymentInfoFragment.java"

# interfaces
.implements Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorized(Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;ZLjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->d(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "{{authorization_token}}"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->e(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Authorization error."

    invoke-static {p1, p2, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onErrorOccurred(Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentsSDKError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->e(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentsSDKError;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1, v0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinalized(Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitialized(Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;->load(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoadPaymentReview(Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;Z)V
    .locals 0

    return-void
.end method

.method public onLoaded(Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->b(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->c(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReauthorized(Lcom/klarna/mobile/sdk/api/payments/KlarnaPaymentView;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method
