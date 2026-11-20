.class public Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "CustomCheckoutViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "CustomCheckout"


# instance fields
.field public final COMMAND_CREATE:I

.field private propHeight:I

.field private propWidth:I

.field reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->COMMAND_CREATE:I

    .line 32
    iput-object p1, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method public createFragment(Landroid/widget/FrameLayout;I)V
    .locals 2

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {p0, p1}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->setupLayout(Landroid/view/View;)V

    .line 96
    new-instance p1, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;

    invoke-direct {p1}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 98
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 100
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/widget/FrameLayout;
    .locals 1

    .line 45
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "create"

    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "CustomCheckout"

    return-object v0
.end method

.method public manuallyLayoutChildren(Landroid/view/View;)V
    .locals 4

    .line 120
    iget v0, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->propWidth:I

    .line 121
    iget v1, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->propHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 124
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 125
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 123
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x0

    .line 127
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 22
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->receiveCommand(Landroid/widget/FrameLayout;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Landroid/widget/FrameLayout;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const/4 v0, 0x0

    .line 67
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p3

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->createFragment(Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method public setStyle(Landroid/widget/FrameLayout;ILjava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        customType = "Style"
        names = {
            "width",
            "height"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->propWidth:I

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 85
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;->propHeight:I

    :cond_1
    return-void
.end method

.method public setupLayout(Landroid/view/View;)V
    .locals 2

    .line 105
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager$1;

    invoke-direct {v1, p0, p1}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager$1;-><init>(Lcom/rnamazonpaymentservicesdk/CustomCheckoutViewManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
