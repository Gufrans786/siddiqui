.class public final Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt;
.super Ljava/lang/Object;
.source "MapboxMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aL\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u001e\u0010\t\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0004\u0012\u00020\u00010\n\u001aN\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u001e\u0010\t\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0004\u0012\u00020\u00010\n\u001a\"\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015\u001a\"\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015\u001a\u0012\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\u0018\u001a\u001a\u0010\u0017\u001a\u00020\u0001*\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "setFeatureStateCompat",
        "",
        "Lcom/mapbox/maps/MapboxMap;",
        "sourceId",
        "",
        "sourceLayerId",
        "featureId",
        "state",
        "Lcom/mapbox/bindgen/Value;",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/mapbox/bindgen/Expected;",
        "Lcom/mapbox/bindgen/None;",
        "removeFeatureStateCompat",
        "stateKey",
        "flyToV11",
        "cameraOptions",
        "Lcom/mapbox/maps/CameraOptions;",
        "animationOptions",
        "Lcom/mapbox/maps/plugin/animation/MapAnimationOptions$Builder;",
        "animationListener",
        "Landroid/animation/Animator$AnimatorListener;",
        "easeToV11",
        "clearData",
        "Lcom/mapbox/maps/AsyncOperationResultCallback;",
        "Lcom/mapbox/maps/MapboxMap$Companion;",
        "context",
        "Landroid/content/Context;",
        "rnmapbox_maps_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$8-bMshoBxP9OzSEiGsdfORtAW7Q(Lkotlin/jvm/functions/Function1;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt;->setFeatureStateCompat$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jb9ph0W9-ch9ns0XeV6VxWRbuD4(Lkotlin/jvm/functions/Function1;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt;->removeFeatureStateCompat$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static final clearData(Lcom/mapbox/maps/MapboxMap$Companion;Landroid/content/Context;Lcom/mapbox/maps/AsyncOperationResultCallback;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/mapbox/maps/MapboxMap$Companion;->clearData(Lcom/mapbox/maps/AsyncOperationResultCallback;)V

    return-void
.end method

.method public static final clearData(Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/AsyncOperationResultCallback;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object p0, Lcom/mapbox/maps/MapboxMap;->Companion:Lcom/mapbox/maps/MapboxMap$Companion;

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/MapboxMap$Companion;->clearData(Lcom/mapbox/maps/AsyncOperationResultCallback;)V

    return-void
.end method

.method public static final easeToV11(Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/CameraOptions;Lcom/mapbox/maps/plugin/animation/MapAnimationOptions$Builder;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    check-cast p0, Lcom/mapbox/maps/plugin/delegates/MapPluginExtensionsDelegate;

    .line 58
    invoke-virtual {p2}, Lcom/mapbox/maps/plugin/animation/MapAnimationOptions$Builder;->build()Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;

    move-result-object p2

    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/mapbox/maps/plugin/animation/CameraAnimationsUtils;->easeTo(Lcom/mapbox/maps/plugin/delegates/MapPluginExtensionsDelegate;Lcom/mapbox/maps/CameraOptions;Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;Landroid/animation/Animator$AnimatorListener;)Lcom/mapbox/common/Cancelable;

    return-void
.end method

.method public static final flyToV11(Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/CameraOptions;Lcom/mapbox/maps/plugin/animation/MapAnimationOptions$Builder;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    check-cast p0, Lcom/mapbox/maps/plugin/delegates/MapPluginExtensionsDelegate;

    .line 46
    invoke-virtual {p2}, Lcom/mapbox/maps/plugin/animation/MapAnimationOptions$Builder;->build()Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;

    move-result-object p2

    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/mapbox/maps/plugin/animation/CameraAnimationsUtils;->flyTo(Lcom/mapbox/maps/plugin/delegates/MapPluginExtensionsDelegate;Lcom/mapbox/maps/CameraOptions;Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;Landroid/animation/Animator$AnimatorListener;)Lcom/mapbox/common/Cancelable;

    return-void
.end method

.method public static final removeFeatureStateCompat(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/maps/MapboxMap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/bindgen/Expected<",
            "Ljava/lang/String;",
            "Lcom/mapbox/bindgen/None;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p5

    .line 34
    new-instance p5, Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt$$ExternalSyntheticLambda1;

    invoke-direct {p5, v0}, Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual/range {p0 .. p5}, Lcom/mapbox/maps/MapboxMap;->removeFeatureState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/maps/FeatureStateOperationCallback;)Lcom/mapbox/common/Cancelable;

    return-void
.end method

.method private static final removeFeatureStateCompat$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/mapbox/bindgen/Expected;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/mapbox/bindgen/ExpectedFactory;->createNone()Lcom/mapbox/bindgen/Expected;

    move-result-object p1

    const-string v0, "createNone(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final setFeatureStateCompat(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/bindgen/Value;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/maps/MapboxMap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mapbox/bindgen/Value;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/bindgen/Expected<",
            "Ljava/lang/String;",
            "Lcom/mapbox/bindgen/None;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p5

    .line 22
    new-instance p5, Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt$$ExternalSyntheticLambda0;

    invoke-direct {p5, v0}, Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual/range {p0 .. p5}, Lcom/mapbox/maps/MapboxMap;->setFeatureState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/bindgen/Value;Lcom/mapbox/maps/FeatureStateOperationCallback;)Lcom/mapbox/common/Cancelable;

    return-void
.end method

.method private static final setFeatureStateCompat$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/mapbox/bindgen/Expected;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/mapbox/bindgen/ExpectedFactory;->createNone()Lcom/mapbox/bindgen/Expected;

    move-result-object p1

    const-string v0, "createNone(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
