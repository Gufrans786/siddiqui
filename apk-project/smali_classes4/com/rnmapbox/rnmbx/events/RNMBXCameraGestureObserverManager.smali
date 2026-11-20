.class public final Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;
.super Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;
.source "RNMBXCameraGestureObserverManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNMBXCameraGestureObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager$Companion;,
        Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter<",
        "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerInterface<",
        "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u001aB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u001c\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J\u001c\u0010\u0014\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J\u001c\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0014J\u0014\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0019H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;",
        "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;",
        "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;",
        "Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerInterface;",
        "mContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "delegate",
        "Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerDelegate;",
        "getName",
        "",
        "createViewInstance",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "setQuietPeriodMs",
        "",
        "view",
        "value",
        "Lcom/facebook/react/bridge/Dynamic;",
        "setMaxIntervalMs",
        "setHasOnMapSteady",
        "getDelegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "customEvents",
        "",
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
.field public static final Companion:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "RNMBXCameraGestureObserver"


# instance fields
.field private final delegate:Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerDelegate<",
            "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;",
            "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->Companion:Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 17
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 22
    new-instance p1, Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerDelegate;

    move-object v0, p0

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    invoke-direct {p1, v0}, Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->delegate:Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1, p0}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;-><init>(Landroid/content/Context;Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;)V

    return-object v0
.end method

.method public customEvents()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    const-string/jumbo v0, "topOnMapSteady"

    const-string v1, "onMapSteady"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->delegate:Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerDelegate;

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "RNMBXCameraGestureObserver"

    return-object v0
.end method

.method public bridge synthetic setHasOnMapSteady(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    invoke-virtual {p0, p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->setHasOnMapSteady(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setHasOnMapSteady(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hasOnMapSteady"
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 53
    invoke-static {p2}, Lcom/rnmapbox/rnmbx/rncompat/dynamic/DynamicKt;->getType(Lcom/facebook/react/bridge/Dynamic;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "Boolean"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 54
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->setHasOnMapSteady(Z)V

    :cond_1
    return-void

    .line 56
    :cond_2
    const-string p1, "RNMBXCameraGestureObserver"

    if-nez p2, :cond_3

    .line 57
    sget-object p2, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    const-string v0, "Expected Boolean value for hasOnMapSteady"

    invoke-virtual {p2, p1, v0}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_3
    sget-object v1, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    invoke-static {p2}, Lcom/rnmapbox/rnmbx/rncompat/dynamic/DynamicKt;->getType(Lcom/facebook/react/bridge/Dynamic;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Expected Boolean value for hasOnMapSteady, got "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMaxIntervalMs(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    invoke-virtual {p0, p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->setMaxIntervalMs(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setMaxIntervalMs(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "maxIntervalMs"
    .end annotation

    if-eqz p2, :cond_2

    .line 43
    invoke-static {p2}, Lcom/rnmapbox/rnmbx/rncompat/dynamic/DynamicKt;->getType(Lcom/facebook/react/bridge/Dynamic;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    .line 46
    sget-object p1, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    const-string p2, "RNMBXCameraGestureObserver"

    const-string v0, "Expected Number or null for maxIntervalMs"

    invoke-virtual {p1, p2, v0}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->setMaxIntervalMs(Ljava/lang/Double;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 44
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->setMaxIntervalMs(Ljava/lang/Double;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic setQuietPeriodMs(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;

    invoke-virtual {p0, p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;->setQuietPeriodMs(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setQuietPeriodMs(Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "quietPeriodMs"
    .end annotation

    if-eqz p2, :cond_2

    .line 32
    invoke-static {p2}, Lcom/rnmapbox/rnmbx/rncompat/dynamic/DynamicKt;->getType(Lcom/facebook/react/bridge/Dynamic;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    .line 35
    sget-object p1, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    const-string p2, "RNMBXCameraGestureObserver"

    const-string v0, "Expected Number or null for quietPeriodMs"

    invoke-virtual {p1, p2, v0}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->setQuietPeriodMs(Ljava/lang/Double;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 33
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;->setQuietPeriodMs(Ljava/lang/Double;)V

    :cond_2
    return-void
.end method
