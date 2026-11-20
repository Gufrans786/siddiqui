.class public final Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;
.super Ljava/lang/Object;
.source "GesturesSettings.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0018\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001<B\u0091\u0001\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0017J\t\u0010-\u001a\u00020.H\u00d6\u0001J\u0013\u0010/\u001a\u00020\u00032\u0008\u00100\u001a\u0004\u0018\u000101H\u0096\u0002J\u0008\u00102\u001a\u00020.H\u0016J\u0006\u00103\u001a\u000204J\u0008\u00105\u001a\u000206H\u0016J\u0019\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020.H\u00d6\u0001R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019R\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019R\u0011\u0010\u0016\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0019R\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0019R\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0019R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0019R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,\u00a8\u0006="
    }
    d2 = {
        "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;",
        "Landroid/os/Parcelable;",
        "rotateEnabled",
        "",
        "pinchToZoomEnabled",
        "scrollEnabled",
        "simultaneousRotateAndPinchToZoomEnabled",
        "pitchEnabled",
        "scrollMode",
        "Lcom/mapbox/maps/plugin/ScrollMode;",
        "doubleTapToZoomInEnabled",
        "doubleTouchToZoomOutEnabled",
        "quickZoomEnabled",
        "focalPoint",
        "Lcom/mapbox/maps/ScreenCoordinate;",
        "pinchToZoomDecelerationEnabled",
        "rotateDecelerationEnabled",
        "scrollDecelerationEnabled",
        "increaseRotateThresholdWhenPinchingToZoom",
        "increasePinchToZoomThresholdWhenRotating",
        "zoomAnimationAmount",
        "",
        "pinchScrollEnabled",
        "(ZZZZZLcom/mapbox/maps/plugin/ScrollMode;ZZZLcom/mapbox/maps/ScreenCoordinate;ZZZZZFZ)V",
        "getDoubleTapToZoomInEnabled",
        "()Z",
        "getDoubleTouchToZoomOutEnabled",
        "getFocalPoint",
        "()Lcom/mapbox/maps/ScreenCoordinate;",
        "getIncreasePinchToZoomThresholdWhenRotating",
        "getIncreaseRotateThresholdWhenPinchingToZoom",
        "getPinchScrollEnabled",
        "getPinchToZoomDecelerationEnabled",
        "getPinchToZoomEnabled",
        "getPitchEnabled",
        "getQuickZoomEnabled",
        "getRotateDecelerationEnabled",
        "getRotateEnabled",
        "getScrollDecelerationEnabled",
        "getScrollEnabled",
        "getScrollMode",
        "()Lcom/mapbox/maps/plugin/ScrollMode;",
        "getSimultaneousRotateAndPinchToZoomEnabled",
        "getZoomAnimationAmount",
        "()F",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toBuilder",
        "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Builder",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final doubleTapToZoomInEnabled:Z

.field private final doubleTouchToZoomOutEnabled:Z

.field private final focalPoint:Lcom/mapbox/maps/ScreenCoordinate;

.field private final increasePinchToZoomThresholdWhenRotating:Z

.field private final increaseRotateThresholdWhenPinchingToZoom:Z

.field private final pinchScrollEnabled:Z

.field private final pinchToZoomDecelerationEnabled:Z

.field private final pinchToZoomEnabled:Z

.field private final pitchEnabled:Z

.field private final quickZoomEnabled:Z

.field private final rotateDecelerationEnabled:Z

.field private final rotateEnabled:Z

.field private final scrollDecelerationEnabled:Z

.field private final scrollEnabled:Z

.field private final scrollMode:Lcom/mapbox/maps/plugin/ScrollMode;

.field private final simultaneousRotateAndPinchToZoomEnabled:Z

.field private final zoomAnimationAmount:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Creator;

    invoke-direct {v0}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ZZZZZLcom/mapbox/maps/plugin/ScrollMode;ZZZLcom/mapbox/maps/ScreenCoordinate;ZZZZZFZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateEnabled:Z

    .line 29
    iput-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomEnabled:Z

    .line 33
    iput-boolean p3, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollEnabled:Z

    .line 37
    iput-boolean p4, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->simultaneousRotateAndPinchToZoomEnabled:Z

    .line 41
    iput-boolean p5, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pitchEnabled:Z

    .line 46
    iput-object p6, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollMode:Lcom/mapbox/maps/plugin/ScrollMode;

    .line 51
    iput-boolean p7, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTapToZoomInEnabled:Z

    .line 56
    iput-boolean p8, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTouchToZoomOutEnabled:Z

    .line 60
    iput-boolean p9, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->quickZoomEnabled:Z

    .line 65
    iput-object p10, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->focalPoint:Lcom/mapbox/maps/ScreenCoordinate;

    .line 70
    iput-boolean p11, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomDecelerationEnabled:Z

    .line 75
    iput-boolean p12, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateDecelerationEnabled:Z

    .line 80
    iput-boolean p13, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollDecelerationEnabled:Z

    .line 84
    iput-boolean p14, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increaseRotateThresholdWhenPinchingToZoom:Z

    .line 88
    iput-boolean p15, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increasePinchToZoomThresholdWhenRotating:Z

    move/from16 p1, p16

    .line 93
    iput p1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->zoomAnimationAmount:F

    move/from16 p1, p17

    .line 97
    iput-boolean p1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchScrollEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZLcom/mapbox/maps/plugin/ScrollMode;ZZZLcom/mapbox/maps/ScreenCoordinate;ZZZZZFZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;-><init>(ZZZZZLcom/mapbox/maps/plugin/ScrollMode;ZZZLcom/mapbox/maps/ScreenCoordinate;ZZZZZFZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 122
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.mapbox.maps.plugin.gestures.generated.GesturesSettings"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;

    .line 123
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateEnabled:Z

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomEnabled:Z

    if-ne v1, v3, :cond_3

    .line 124
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollEnabled:Z

    if-ne v1, v3, :cond_3

    .line 125
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->simultaneousRotateAndPinchToZoomEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->simultaneousRotateAndPinchToZoomEnabled:Z

    if-ne v1, v3, :cond_3

    .line 126
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pitchEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pitchEnabled:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollMode:Lcom/mapbox/maps/plugin/ScrollMode;

    iget-object v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollMode:Lcom/mapbox/maps/plugin/ScrollMode;

    if-ne v1, v3, :cond_3

    .line 127
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTapToZoomInEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTapToZoomInEnabled:Z

    if-ne v1, v3, :cond_3

    .line 128
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTouchToZoomOutEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTouchToZoomOutEnabled:Z

    if-ne v1, v3, :cond_3

    .line 129
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->quickZoomEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->quickZoomEnabled:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->focalPoint:Lcom/mapbox/maps/ScreenCoordinate;

    iget-object v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->focalPoint:Lcom/mapbox/maps/ScreenCoordinate;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomDecelerationEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomDecelerationEnabled:Z

    if-ne v1, v3, :cond_3

    .line 131
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateDecelerationEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateDecelerationEnabled:Z

    if-ne v1, v3, :cond_3

    .line 132
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollDecelerationEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollDecelerationEnabled:Z

    if-ne v1, v3, :cond_3

    .line 133
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increaseRotateThresholdWhenPinchingToZoom:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increaseRotateThresholdWhenPinchingToZoom:Z

    if-ne v1, v3, :cond_3

    .line 134
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increasePinchToZoomThresholdWhenRotating:Z

    iget-boolean v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increasePinchToZoomThresholdWhenRotating:Z

    if-ne v1, v3, :cond_3

    .line 135
    iget v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->zoomAnimationAmount:F

    iget v3, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->zoomAnimationAmount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    .line 136
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchScrollEnabled:Z

    iget-boolean p1, p1, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchScrollEnabled:Z

    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final getDoubleTapToZoomInEnabled()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTapToZoomInEnabled:Z

    return v0
.end method

.method public final getDoubleTouchToZoomOutEnabled()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTouchToZoomOutEnabled:Z

    return v0
.end method

.method public final getFocalPoint()Lcom/mapbox/maps/ScreenCoordinate;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->focalPoint:Lcom/mapbox/maps/ScreenCoordinate;

    return-object v0
.end method

.method public final getIncreasePinchToZoomThresholdWhenRotating()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increasePinchToZoomThresholdWhenRotating:Z

    return v0
.end method

.method public final getIncreaseRotateThresholdWhenPinchingToZoom()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increaseRotateThresholdWhenPinchingToZoom:Z

    return v0
.end method

.method public final getPinchScrollEnabled()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchScrollEnabled:Z

    return v0
.end method

.method public final getPinchToZoomDecelerationEnabled()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomDecelerationEnabled:Z

    return v0
.end method

.method public final getPinchToZoomEnabled()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomEnabled:Z

    return v0
.end method

.method public final getPitchEnabled()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pitchEnabled:Z

    return v0
.end method

.method public final getQuickZoomEnabled()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->quickZoomEnabled:Z

    return v0
.end method

.method public final getRotateDecelerationEnabled()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateDecelerationEnabled:Z

    return v0
.end method

.method public final getRotateEnabled()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateEnabled:Z

    return v0
.end method

.method public final getScrollDecelerationEnabled()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollDecelerationEnabled:Z

    return v0
.end method

.method public final getScrollEnabled()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollEnabled:Z

    return v0
.end method

.method public final getScrollMode()Lcom/mapbox/maps/plugin/ScrollMode;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollMode:Lcom/mapbox/maps/plugin/ScrollMode;

    return-object v0
.end method

.method public final getSimultaneousRotateAndPinchToZoomEnabled()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->simultaneousRotateAndPinchToZoomEnabled:Z

    return v0
.end method

.method public final getZoomAnimationAmount()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->zoomAnimationAmount:F

    return v0
.end method

.method public hashCode()I
    .locals 19

    move-object/from16 v0, p0

    .line 142
    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 143
    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->simultaneousRotateAndPinchToZoomEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pitchEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollMode:Lcom/mapbox/maps/plugin/ScrollMode;

    .line 144
    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTapToZoomInEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTouchToZoomOutEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->quickZoomEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->focalPoint:Lcom/mapbox/maps/ScreenCoordinate;

    .line 145
    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomDecelerationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateDecelerationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollDecelerationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 146
    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increaseRotateThresholdWhenPinchingToZoom:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increasePinchToZoomThresholdWhenRotating:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 147
    iget v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->zoomAnimationAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    iget-boolean v1, v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchScrollEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    .line 142
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final toBuilder()Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;
    .locals 2

    .line 152
    new-instance v0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setRotateEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 153
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setPinchToZoomEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setScrollEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 154
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->simultaneousRotateAndPinchToZoomEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setSimultaneousRotateAndPinchToZoomEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 155
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pitchEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setPitchEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollMode:Lcom/mapbox/maps/plugin/ScrollMode;

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setScrollMode(Lcom/mapbox/maps/plugin/ScrollMode;)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 156
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTapToZoomInEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setDoubleTapToZoomInEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTouchToZoomOutEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setDoubleTouchToZoomOutEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 158
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->quickZoomEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setQuickZoomEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->focalPoint:Lcom/mapbox/maps/ScreenCoordinate;

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setFocalPoint(Lcom/mapbox/maps/ScreenCoordinate;)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 159
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomDecelerationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setPinchToZoomDecelerationEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 160
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateDecelerationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setRotateDecelerationEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 161
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollDecelerationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setScrollDecelerationEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 162
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increaseRotateThresholdWhenPinchingToZoom:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setIncreaseRotateThresholdWhenPinchingToZoom(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 163
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increasePinchToZoomThresholdWhenRotating:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setIncreasePinchToZoomThresholdWhenRotating(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    .line 164
    iget v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->zoomAnimationAmount:F

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setZoomAnimationAmount(F)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchScrollEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;->setPinchScrollEnabled(Z)Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GesturesSettings(rotateEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n      pinchToZoomEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    const-string v2, ", scrollEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    const-string v2, ",\n      simultaneousRotateAndPinchToZoomEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->simultaneousRotateAndPinchToZoomEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    const-string v2, ",\n      pitchEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pitchEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    const-string v2, ", scrollMode="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollMode:Lcom/mapbox/maps/plugin/ScrollMode;

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    const-string v2, ",\n      doubleTapToZoomInEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTapToZoomInEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    const-string v2, ",\n      doubleTouchToZoomOutEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTouchToZoomOutEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    const-string v2, ", quickZoomEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->quickZoomEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    const-string v2, ",\n      focalPoint="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->focalPoint:Lcom/mapbox/maps/ScreenCoordinate;

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    const-string v2, ", pinchToZoomDecelerationEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomDecelerationEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    const-string v2, ",\n      rotateDecelerationEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v1, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateDecelerationEnabled:Z

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    const-string v2, ",\n      scrollDecelerationEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollDecelerationEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    const-string v2, ",\n      increaseRotateThresholdWhenPinchingToZoom="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increaseRotateThresholdWhenPinchingToZoom:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    const-string v2, ",\n      increasePinchToZoomThresholdWhenRotating="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increasePinchToZoomThresholdWhenRotating:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    const-string v2, ",\n      zoomAnimationAmount="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    iget v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->zoomAnimationAmount:F

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    const-string v2, ",\n      pinchScrollEnabled="

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    iget-boolean v2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchScrollEnabled:Z

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->simultaneousRotateAndPinchToZoomEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pitchEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollMode:Lcom/mapbox/maps/plugin/ScrollMode;

    invoke-virtual {p2}, Lcom/mapbox/maps/plugin/ScrollMode;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTapToZoomInEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->doubleTouchToZoomOutEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->quickZoomEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->focalPoint:Lcom/mapbox/maps/ScreenCoordinate;

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchToZoomDecelerationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->rotateDecelerationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->scrollDecelerationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increaseRotateThresholdWhenPinchingToZoom:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->increasePinchToZoomThresholdWhenRotating:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->zoomAnimationAmount:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Lcom/mapbox/maps/plugin/gestures/generated/GesturesSettings;->pinchScrollEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
