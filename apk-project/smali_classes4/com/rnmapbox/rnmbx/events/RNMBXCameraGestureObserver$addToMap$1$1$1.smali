.class public final Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;
.super Ljava/lang/Object;
.source "RNMBXCameraGestureObserver.kt"

# interfaces
.implements Lcom/mapbox/maps/plugin/animation/CameraAnimationsLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->addToMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\"\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\"\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J4\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1",
        "Lcom/mapbox/maps/plugin/animation/CameraAnimationsLifecycleListener;",
        "onAnimatorStarting",
        "",
        "type",
        "Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "owner",
        "",
        "onAnimatorEnding",
        "onAnimatorCancelling",
        "onAnimatorInterrupting",
        "runningAnimator",
        "runningAnimatorOwner",
        "newAnimator",
        "newAnimatorOwner",
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
.field final synthetic this$0:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;


# direct methods
.method constructor <init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;->this$0:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatorCancelling(Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;Landroid/animation/ValueAnimator;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "animator"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const-string p1, "Maps-Gestures"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;->this$0:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    invoke-static {p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->access$handleAnimatorEnd(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    return-void
.end method

.method public onAnimatorEnding(Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;Landroid/animation/ValueAnimator;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "animator"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    const-string p1, "Maps-Gestures"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;->this$0:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    invoke-static {p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->access$handleAnimatorEnd(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    return-void
.end method

.method public onAnimatorInterrupting(Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;Landroid/animation/ValueAnimator;Ljava/lang/String;Landroid/animation/ValueAnimator;Ljava/lang/String;)V
    .locals 0

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "runningAnimator"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newAnimator"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimatorStarting(Lcom/mapbox/maps/plugin/animation/CameraAnimatorType;Landroid/animation/ValueAnimator;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "animator"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const-string p1, "Maps-Gestures"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;->this$0:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    invoke-static {p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->access$getActiveAnimations$p(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)I

    move-result p1

    iget-object p2, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;->this$0:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    const/4 p3, 0x1

    add-int/2addr p1, p3

    invoke-static {p2, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->access$setActiveAnimations$p(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;I)V

    .line 162
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;->this$0:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->access$setLastTransitionEndedAtMs$p(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Ljava/lang/Double;)V

    .line 163
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;->this$0:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    invoke-static {p1, p2, p3, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->markActivity$default(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;->this$0:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    const-string p2, "camera animator started"

    invoke-static {p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->access$debugLog(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Ljava/lang/String;)V

    return-void
.end method
