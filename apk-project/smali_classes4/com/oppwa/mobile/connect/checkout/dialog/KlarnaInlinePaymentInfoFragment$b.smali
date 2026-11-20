.class Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;
.super Ljava/lang/Object;
.source "KlarnaInlinePaymentInfoFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;->c:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    iput-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;->a:Z

    iput p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;->c:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->f(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Landroid/widget/ScrollView;

    move-result-object p1

    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;->c:Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;->f(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;)Landroid/widget/ScrollView;

    move-result-object p1

    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment$b;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
