.class Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager$1;
.super Ljava/lang/Object;
.source "CustomCheckoutViewManager.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->setupLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager$1;->this$0:Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;

    iput-object p2, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager$1;->this$0:Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;

    iget-object p2, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->manuallyLayoutChildren(Landroid/view/View;)V

    .line 109
    iget-object p1, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 110
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
