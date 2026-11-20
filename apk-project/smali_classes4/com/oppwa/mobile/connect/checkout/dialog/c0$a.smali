.class Lcom/oppwa/mobile/connect/checkout/dialog/c0$a;
.super Ljava/lang/Object;
.source "PaymentTokenAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Landroid/view/ViewGroup;I)Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;

.field final synthetic b:Lcom/oppwa/mobile/connect/checkout/dialog/c0;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/c0;Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$a;->b:Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$a;->b:Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Lcom/oppwa/mobile/connect/checkout/dialog/c0;Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$a;->b:Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
