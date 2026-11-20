.class public final Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;
.super Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;
.source "RNMBXCameraGestureObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNMBXCameraGestureObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNMBXCameraGestureObserver.kt\ncom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,297:1\n1#2:298\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 K2\u00020\u0001:\u0001KB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010,\u001a\u00020\u000fH\u0002J\u0008\u0010-\u001a\u00020\u000fH\u0002J\u0010\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020!H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020!H\u0002J\u0018\u00105\u001a\u00020$2\u0006\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u00020$H\u0002J\u0008\u00108\u001a\u000203H\u0002J\u0008\u00109\u001a\u000203H\u0002J\u0008\u0010:\u001a\u000203H\u0002J\u0008\u0010;\u001a\u000203H\u0002J\u0014\u0010<\u001a\u0002032\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010!H\u0002J\u0008\u0010>\u001a\u000203H\u0002J\u0010\u0010?\u001a\u0002032\u0006\u0010@\u001a\u00020\u000fH\u0002J\u0008\u0010A\u001a\u000203H\u0002J\u0010\u0010B\u001a\u0002032\u0006\u0010C\u001a\u00020DH\u0016J\u0018\u0010E\u001a\u00020\t2\u0006\u0010C\u001a\u00020D2\u0006\u0010F\u001a\u00020GH\u0016J\u0008\u0010H\u001a\u000203H\u0002J\u0010\u0010I\u001a\u0002032\u0006\u00101\u001a\u00020!H\u0002J\u0010\u0010J\u001a\u0002032\u0006\u00101\u001a\u00020!H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\u001a\u0010\u0018\u001a\u00020\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000b\"\u0004\u0008\u001a\u0010\rR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0016\u0010*\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0011R\u0014\u0010.\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u000b\u00a8\u0006L"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;",
        "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;",
        "mContext",
        "Landroid/content/Context;",
        "mManager",
        "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;",
        "<init>",
        "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;)V",
        "hasOnMapSteady",
        "",
        "getHasOnMapSteady",
        "()Z",
        "setHasOnMapSteady",
        "(Z)V",
        "quietPeriodMs",
        "",
        "getQuietPeriodMs",
        "()Ljava/lang/Double;",
        "setQuietPeriodMs",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "maxIntervalMs",
        "getMaxIntervalMs",
        "setMaxIntervalMs",
        "requiresStyleLoad",
        "getRequiresStyleLoad",
        "setRequiresStyleLoad",
        "handler",
        "Landroid/os/Handler;",
        "activeAnimations",
        "",
        "isGestureActive",
        "lastGestureType",
        "",
        "lastTransitionEndedAtMs",
        "quietRunnable",
        "Ljava/lang/Runnable;",
        "timeoutRunnable",
        "emittedForCurrentActivity",
        "quietMs",
        "getQuietMs",
        "()D",
        "maxMs",
        "getMaxMs",
        "nowMs",
        "timestamp",
        "canEmitSteady",
        "getCanEmitSteady",
        "normalizeGestureType",
        "type",
        "debugLog",
        "",
        "message",
        "scheduleTimer",
        "delay",
        "task",
        "cancelQuietTimer",
        "cancelTimeoutTimer",
        "scheduleQuietCheck",
        "scheduleTimeout",
        "markActivity",
        "gestureType",
        "maybeEmitSteady",
        "emitSteady",
        "idleDurationMs",
        "emitTimeout",
        "addToMap",
        "mapView",
        "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;",
        "removeFromMap",
        "reason",
        "Lcom/rnmapbox/rnmbx/components/RemovalReason;",
        "handleAnimatorEnd",
        "handleGestureBegin",
        "handleGestureEnd",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$Companion;

.field public static final LOG_TAG:Ljava/lang/String; = "RNMBXCameraGestureObserver"


# instance fields
.field private activeAnimations:I

.field private emittedForCurrentActivity:Z

.field private final handler:Landroid/os/Handler;

.field private hasOnMapSteady:Z

.field private isGestureActive:Z

.field private lastGestureType:Ljava/lang/String;

.field private lastTransitionEndedAtMs:Ljava/lang/Double;

.field private final mContext:Landroid/content/Context;

.field private final mManager:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;

.field private maxIntervalMs:Ljava/lang/Double;

.field private quietPeriodMs:Ljava/lang/Double;

.field private quietRunnable:Ljava/lang/Runnable;

.field private requiresStyleLoad:Z

.field private timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$1fiplxYpblzbxNFWGJrzKY5nuJE(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->addToMap$lambda$6$lambda$5(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$57jn_IBwbXdjfG_aXX15x9bE8RI(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->addToMap$lambda$6$lambda$4(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KMGVQEiIekMSsxioXFp1g1G3CsY(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->scheduleQuietCheck$lambda$2(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XRl_OxXo2RLN-ju25IZoAN4cWuE(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/mapbox/maps/MapboxMap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->addToMap$lambda$6(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/mapbox/maps/MapboxMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d9zw03uXz5CkFjPMi_eDr9L-018(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->scheduleTimeout$lambda$3(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->Companion:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->mManager:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$debugLog(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getActiveAnimations$p(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->activeAnimations:I

    return p0
.end method

.method public static final synthetic access$handleAnimatorEnd(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->handleAnimatorEnd()V

    return-void
.end method

.method public static final synthetic access$handleGestureBegin(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->handleGestureBegin(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleGestureEnd(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->handleGestureEnd(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setActiveAnimations$p(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->activeAnimations:I

    return-void
.end method

.method public static final synthetic access$setLastTransitionEndedAtMs$p(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Ljava/lang/Double;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastTransitionEndedAtMs:Ljava/lang/Double;

    return-void
.end method

.method private static final addToMap$lambda$6(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/mapbox/maps/MapboxMap;)V
    .locals 1

    const-string v0, "mapboxMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda2;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/maps/MapboxMap;->cameraAnimationsPlugin(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 198
    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda3;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/maps/MapboxMap;->gesturesPlugin(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 253
    const-string p1, "addToMap and subscribed to gestures"

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private static final addToMap$lambda$6$lambda$4(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$cameraAnimationsPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$1$1;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    check-cast v0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsLifecycleListener;

    invoke-interface {p1, v0}, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;->addCameraAnimationsLifecycleListener(Lcom/mapbox/maps/plugin/animation/CameraAnimationsLifecycleListener;)V

    .line 195
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final addToMap$lambda$6$lambda$5(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$gesturesPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$2$1;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$2$1;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    check-cast v0, Lcom/mapbox/maps/plugin/gestures/OnMoveListener;

    invoke-interface {p1, v0}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnMoveListener(Lcom/mapbox/maps/plugin/gestures/OnMoveListener;)V

    .line 213
    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$2$2;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$2$2;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    check-cast v0, Lcom/mapbox/maps/plugin/gestures/OnScaleListener;

    invoke-interface {p1, v0}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnScaleListener(Lcom/mapbox/maps/plugin/gestures/OnScaleListener;)V

    .line 226
    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$2$3;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$2$3;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    check-cast v0, Lcom/mapbox/maps/plugin/gestures/OnRotateListener;

    invoke-interface {p1, v0}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnRotateListener(Lcom/mapbox/maps/plugin/gestures/OnRotateListener;)V

    .line 239
    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$2$4;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$addToMap$1$2$4;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    check-cast v0, Lcom/mapbox/maps/plugin/gestures/OnShoveListener;

    invoke-interface {p1, v0}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnShoveListener(Lcom/mapbox/maps/plugin/gestures/OnShoveListener;)V

    .line 251
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final cancelQuietTimer()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->quietRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->quietRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final cancelTimeoutTimer()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->timeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final debugLog(Ljava/lang/String;)V
    .locals 4

    .line 64
    iget v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->activeAnimations:I

    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->isGestureActive:Z

    iget-object v2, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastTransitionEndedAtMs:Ljava/lang/Double;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "; activeAnimations="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " isGestureActive="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " lastTransitionEnd="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    const-string v0, "RNMBXCameraGestureObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final emitSteady(D)V
    .locals 5

    .line 125
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->emittedForCurrentActivity:Z

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->cancelQuietTimer()V

    .line 127
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->cancelTimeoutTimer()V

    .line 128
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMIT steady idleDurationMs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastGestureType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->mManager:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;

    .line 131
    sget-object v2, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;->Companion:Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    const-string/jumbo v4, "steady"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1, v0}, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;->make(Landroid/view/View;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;

    move-result-object p1

    check-cast p1, Lcom/rnmapbox/rnmbx/events/IEvent;

    .line 130
    invoke-virtual {v1, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->handleEvent(Lcom/rnmapbox/rnmbx/events/IEvent;)V

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->emittedForCurrentActivity:Z

    return-void
.end method

.method private final emitTimeout()V
    .locals 6

    .line 138
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->cancelQuietTimer()V

    .line 139
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMIT timeout lastGestureType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->mManager:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;

    .line 141
    sget-object v1, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;->Companion:Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    const-string/jumbo v5, "timeout"

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;->make(Landroid/view/View;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;

    move-result-object v1

    check-cast v1, Lcom/rnmapbox/rnmbx/events/IEvent;

    .line 140
    invoke-virtual {v0, v1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->handleEvent(Lcom/rnmapbox/rnmbx/events/IEvent;)V

    .line 143
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->scheduleTimeout()V

    return-void
.end method

.method private final getCanEmitSteady()Z
    .locals 1

    .line 49
    iget v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->activeAnimations:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->isGestureActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastTransitionEndedAtMs:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getMaxMs()Ljava/lang/Double;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->maxIntervalMs:Ljava/lang/Double;

    return-object v0
.end method

.method private final getQuietMs()D
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->quietPeriodMs:Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    return-wide v0
.end method

.method private final handleAnimatorEnd()V
    .locals 2

    .line 265
    iget v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->activeAnimations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->activeAnimations:I

    if-gez v0, :cond_0

    .line 267
    const-string v0, "RNMBXCameraGestureObserver"

    const-string v1, "WARNING: activeAnimations went negative, resetting to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->activeAnimations:I

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->nowMs()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastTransitionEndedAtMs:Ljava/lang/Double;

    .line 271
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->scheduleQuietCheck()V

    .line 272
    const-string v0, "camera animator ended"

    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private final handleGestureBegin(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->isGestureActive:Z

    .line 277
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->normalizeGestureType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastTransitionEndedAtMs:Ljava/lang/Double;

    .line 279
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->markActivity(Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gesture didBegin type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private final handleGestureEnd(Ljava/lang/String;)V
    .locals 3

    .line 284
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->normalizeGestureType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 287
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->isGestureActive:Z

    .line 288
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->nowMs()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastTransitionEndedAtMs:Ljava/lang/Double;

    .line 289
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->markActivity(Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->isGestureActive:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gesture didEnd type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -> isGestureActive="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private final markActivity(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastGestureType:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->emittedForCurrentActivity:Z

    .line 112
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->scheduleQuietCheck()V

    .line 113
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->scheduleTimeout()V

    return-void
.end method

.method static synthetic markActivity$default(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->markActivity(Ljava/lang/String;)V

    return-void
.end method

.method private final maybeEmitSteady()V
    .locals 4

    .line 117
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->getCanEmitSteady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->lastTransitionEndedAtMs:Ljava/lang/Double;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 119
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->nowMs()D

    move-result-wide v2

    sub-double/2addr v2, v0

    .line 120
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->getQuietMs()D

    move-result-wide v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->emitSteady(D)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final normalizeGestureType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "shove"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    const-string p1, "pitch"

    return-object p1

    .line 52
    :sswitch_1
    const-string v0, "scale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    const-string p1, "pinch"

    return-object p1

    .line 52
    :sswitch_2
    const-string v0, "move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    const-string p1, "pan"

    return-object p1

    .line 52
    :sswitch_3
    const-string v0, "rotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :goto_0
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x372522a5 -> :sswitch_3
        0x333bd1 -> :sswitch_2
        0x683094a -> :sswitch_1
        0x68584e9 -> :sswitch_0
    .end sparse-switch
.end method

.method private final nowMs()D
    .locals 2

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method private final scheduleQuietCheck()V
    .locals 5

    .line 87
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->getQuietMs()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->cancelQuietTimer()V

    .line 90
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->maybeEmitSteady()V

    return-void

    :cond_0
    double-to-int v2, v0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "scheduleQuietCheck in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    .line 94
    new-instance v2, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda1;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    .line 98
    invoke-direct {p0, v0, v1, v2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->scheduleTimer(DLjava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->quietRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final scheduleQuietCheck$lambda$2(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V
    .locals 1

    .line 95
    const-string v0, "quiet timer fired"

    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->maybeEmitSteady()V

    return-void
.end method

.method private final scheduleTimeout()V
    .locals 3

    .line 102
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->getMaxMs()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 103
    new-instance v2, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda0;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    .line 106
    invoke-direct {p0, v0, v1, v2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->scheduleTimer(DLjava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->timeoutRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private static final scheduleTimeout$lambda$3(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->emitTimeout()V

    return-void
.end method

.method private final scheduleTimer(DLjava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->handler:Landroid/os/Handler;

    double-to-long p1, p1

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p3
.end method

.method private final timestamp()D
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->nowMs()D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addToMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 1

    const-string v0, "mapView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-super {p0, p1}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;->addToMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    .line 149
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->hasOnMapSteady:Z

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver$$ExternalSyntheticLambda4;-><init>(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;)V

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapAsync(Lcom/rnmapbox/rnmbx/components/mapview/OnMapReadyCallback;)V

    return-void
.end method

.method public final getHasOnMapSteady()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->hasOnMapSteady:Z

    return v0
.end method

.method public final getMaxIntervalMs()Ljava/lang/Double;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->maxIntervalMs:Ljava/lang/Double;

    return-object v0
.end method

.method public final getQuietPeriodMs()Ljava/lang/Double;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->quietPeriodMs:Ljava/lang/Double;

    return-object v0
.end method

.method public getRequiresStyleLoad()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->requiresStyleLoad:Z

    return v0
.end method

.method public removeFromMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/rnmapbox/rnmbx/components/RemovalReason;)Z
    .locals 1

    const-string v0, "mapView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    const-string v0, "removeFromMap and unsubscribed from gestures"

    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->debugLog(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->cancelQuietTimer()V

    .line 260
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->cancelTimeoutTimer()V

    .line 261
    invoke-super {p0, p1, p2}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;->removeFromMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/rnmapbox/rnmbx/components/RemovalReason;)Z

    move-result p1

    return p1
.end method

.method public final setHasOnMapSteady(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->hasOnMapSteady:Z

    return-void
.end method

.method public final setMaxIntervalMs(Ljava/lang/Double;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->maxIntervalMs:Ljava/lang/Double;

    return-void
.end method

.method public final setQuietPeriodMs(Ljava/lang/Double;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->quietPeriodMs:Ljava/lang/Double;

    return-void
.end method

.method public setRequiresStyleLoad(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->requiresStyleLoad:Z

    return-void
.end method
