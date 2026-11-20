.class Lcom/oppwa/mobile/connect/checkout/dialog/d;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# direct methods
.method public static synthetic $r8$lambda$oeaGig-U5VgykdKHJHjreOLFlOM(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/d;->a(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 2

    .line 20
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method private static synthetic a(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 16
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 19
    sget v0, Lcom/oppwa/mobile/connect/R$anim;->opp_hide_view:I

    invoke-static {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/d;->a(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/d$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/d$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static b(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$anim;->opp_show_view:I

    invoke-static {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/d;->a(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
