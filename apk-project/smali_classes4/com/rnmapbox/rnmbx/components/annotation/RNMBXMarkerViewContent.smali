.class public final Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "RNMBXMarkerViewContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH\u0014J\u0008\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "inAdd",
        "",
        "getInAdd",
        "()Z",
        "setInAdd",
        "(Z)V",
        "onAttachedToWindow",
        "",
        "configureParentClipping",
        "onMeasure",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "rnmapbox_maps_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private inAdd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 12
    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContentKt;->access$allowRenderingOutside(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private final configureParentClipping()V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 22
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContentKt;->access$allowRenderingOutside(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getInAdd()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;->inAdd:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onAttachedToWindow()V

    .line 17
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;->configureParentClipping()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;->inAdd:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    if-nez p2, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 40
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->onMeasure(II)V

    return-void

    .line 42
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->onMeasure(II)V

    return-void
.end method

.method public final setInAdd(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewContent;->inAdd:Z

    return-void
.end method
