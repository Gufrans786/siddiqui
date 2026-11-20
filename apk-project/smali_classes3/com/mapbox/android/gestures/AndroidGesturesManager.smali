.class public Lcom/mapbox/android/gestures/AndroidGesturesManager;
.super Ljava/lang/Object;
.source "AndroidGesturesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/gestures/AndroidGesturesManager$GestureType;
    }
.end annotation


# static fields
.field public static final GESTURE_TYPE_DOUBLE_TAP:I = 0xa

.field public static final GESTURE_TYPE_DOUBLE_TAP_EVENT:I = 0xb

.field public static final GESTURE_TYPE_DOWN:I = 0x9

.field public static final GESTURE_TYPE_FLING:I = 0x7

.field public static final GESTURE_TYPE_LONG_PRESS:I = 0x6

.field public static final GESTURE_TYPE_MOVE:I = 0xd

.field public static final GESTURE_TYPE_MULTI_FINGER_TAP:I = 0x4

.field public static final GESTURE_TYPE_QUICK_SCALE:I = 0xf

.field public static final GESTURE_TYPE_ROTATE:I = 0x2

.field public static final GESTURE_TYPE_SCALE:I = 0x1

.field public static final GESTURE_TYPE_SCROLL:I = 0x0

.field public static final GESTURE_TYPE_SHOVE:I = 0x3

.field public static final GESTURE_TYPE_SHOW_PRESS:I = 0x8

.field public static final GESTURE_TYPE_SIDEWAYS_SHOVE:I = 0xe

.field public static final GESTURE_TYPE_SINGLE_TAP_CONFIRMED:I = 0xc

.field public static final GESTURE_TYPE_SINGLE_TAP_UP:I = 0x5


# instance fields
.field private final detectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/android/gestures/BaseGesture;",
            ">;"
        }
    .end annotation
.end field

.field private final moveGestureDetector:Lcom/mapbox/android/gestures/MoveGestureDetector;

.field private final multiFingerTapGestureDetector:Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;

.field private final mutuallyExclusiveGestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rotateGestureDetector:Lcom/mapbox/android/gestures/RotateGestureDetector;

.field private final shoveGestureDetector:Lcom/mapbox/android/gestures/ShoveGestureDetector;

.field private final sidewaysShoveGestureDetector:Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;

.field private final standardGestureDetector:Lcom/mapbox/android/gestures/StandardGestureDetector;

.field private final standardScaleGestureDetector:Lcom/mapbox/android/gestures/StandardScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;Z)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->mutuallyExclusiveGestures:Ljava/util/List;

    .line 122
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    new-instance p2, Lcom/mapbox/android/gestures/RotateGestureDetector;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/gestures/RotateGestureDetector;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->rotateGestureDetector:Lcom/mapbox/android/gestures/RotateGestureDetector;

    .line 125
    new-instance v0, Lcom/mapbox/android/gestures/StandardScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Lcom/mapbox/android/gestures/StandardScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->standardScaleGestureDetector:Lcom/mapbox/android/gestures/StandardScaleGestureDetector;

    .line 126
    new-instance v1, Lcom/mapbox/android/gestures/ShoveGestureDetector;

    invoke-direct {v1, p1, p0}, Lcom/mapbox/android/gestures/ShoveGestureDetector;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object v1, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->shoveGestureDetector:Lcom/mapbox/android/gestures/ShoveGestureDetector;

    .line 127
    new-instance v2, Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;

    invoke-direct {v2, p1, p0}, Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object v2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->sidewaysShoveGestureDetector:Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;

    .line 128
    new-instance v3, Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;

    invoke-direct {v3, p1, p0}, Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object v3, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->multiFingerTapGestureDetector:Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;

    .line 129
    new-instance v4, Lcom/mapbox/android/gestures/MoveGestureDetector;

    invoke-direct {v4, p1, p0}, Lcom/mapbox/android/gestures/MoveGestureDetector;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object v4, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->moveGestureDetector:Lcom/mapbox/android/gestures/MoveGestureDetector;

    .line 130
    new-instance v5, Lcom/mapbox/android/gestures/StandardGestureDetector;

    invoke-direct {v5, p1, p0}, Lcom/mapbox/android/gestures/StandardGestureDetector;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object v5, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->standardGestureDetector:Lcom/mapbox/android/gestures/StandardGestureDetector;

    .line 132
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v6, 0x7

    new-array v6, v6, [Lcom/mapbox/android/gestures/BaseGesture;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 p2, 0x1

    aput-object v0, v6, p2

    const/4 p2, 0x2

    aput-object v1, v6, p2

    const/4 p2, 0x3

    aput-object v2, v6, p2

    const/4 p2, 0x4

    aput-object v3, v6, p2

    const/4 p2, 0x5

    aput-object v4, v6, p2

    const/4 p2, 0x6

    aput-object v5, v6, p2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->detectors:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->initDefaultThresholds()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/mapbox/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 105
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method private initDefaultThresholds()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->detectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/android/gestures/BaseGesture;

    .line 149
    instance-of v2, v1, Lcom/mapbox/android/gestures/MultiFingerGesture;

    if-eqz v2, :cond_1

    .line 153
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/MultiFingerGesture;

    sget v3, Lcom/mapbox/android/gestures/R$dimen;->mapbox_internalMinSpan24:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/MultiFingerGesture;->setSpanThresholdResource(I)V

    .line 157
    :cond_1
    instance-of v2, v1, Lcom/mapbox/android/gestures/StandardScaleGestureDetector;

    if-eqz v2, :cond_2

    .line 158
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/StandardScaleGestureDetector;

    sget v3, Lcom/mapbox/android/gestures/R$dimen;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/StandardScaleGestureDetector;->setSpanSinceStartThresholdResource(I)V

    .line 162
    :cond_2
    instance-of v2, v1, Lcom/mapbox/android/gestures/ShoveGestureDetector;

    const/high16 v3, 0x41a00000    # 20.0f

    if-eqz v2, :cond_3

    .line 163
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/ShoveGestureDetector;

    sget v4, Lcom/mapbox/android/gestures/R$dimen;->mapbox_defaultShovePixelThreshold:I

    invoke-virtual {v2, v4}, Lcom/mapbox/android/gestures/ShoveGestureDetector;->setPixelDeltaThresholdResource(I)V

    .line 164
    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/ShoveGestureDetector;->setMaxShoveAngle(F)V

    .line 167
    :cond_3
    instance-of v2, v1, Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;

    if-eqz v2, :cond_4

    .line 168
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;

    sget v4, Lcom/mapbox/android/gestures/R$dimen;->mapbox_defaultShovePixelThreshold:I

    invoke-virtual {v2, v4}, Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;->setPixelDeltaThresholdResource(I)V

    .line 170
    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;->setMaxShoveAngle(F)V

    .line 173
    :cond_4
    instance-of v2, v1, Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;

    if-eqz v2, :cond_5

    .line 174
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;

    sget v3, Lcom/mapbox/android/gestures/R$dimen;->mapbox_defaultMultiTapMovementThreshold:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;->setMultiFingerTapMovementThresholdResource(I)V

    const-wide/16 v3, 0x96

    .line 177
    invoke-virtual {v2, v3, v4}, Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;->setMultiFingerTapTimeThreshold(J)V

    .line 181
    :cond_5
    instance-of v2, v1, Lcom/mapbox/android/gestures/RotateGestureDetector;

    if-eqz v2, :cond_0

    .line 182
    check-cast v1, Lcom/mapbox/android/gestures/RotateGestureDetector;

    const v2, 0x4174cccd    # 15.3f

    invoke-virtual {v1, v2}, Lcom/mapbox/android/gestures/RotateGestureDetector;->setAngleThreshold(F)V

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public getDetectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/android/gestures/BaseGesture;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->detectors:Ljava/util/List;

    return-object v0
.end method

.method public getMoveGestureDetector()Lcom/mapbox/android/gestures/MoveGestureDetector;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->moveGestureDetector:Lcom/mapbox/android/gestures/MoveGestureDetector;

    return-object v0
.end method

.method public getMultiFingerTapGestureDetector()Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->multiFingerTapGestureDetector:Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;

    return-object v0
.end method

.method public getMutuallyExclusiveGestures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->mutuallyExclusiveGestures:Ljava/util/List;

    return-object v0
.end method

.method public getRotateGestureDetector()Lcom/mapbox/android/gestures/RotateGestureDetector;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->rotateGestureDetector:Lcom/mapbox/android/gestures/RotateGestureDetector;

    return-object v0
.end method

.method public getShoveGestureDetector()Lcom/mapbox/android/gestures/ShoveGestureDetector;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->shoveGestureDetector:Lcom/mapbox/android/gestures/ShoveGestureDetector;

    return-object v0
.end method

.method public getSidewaysShoveGestureDetector()Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->sidewaysShoveGestureDetector:Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;

    return-object v0
.end method

.method public getStandardGestureDetector()Lcom/mapbox/android/gestures/StandardGestureDetector;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->standardGestureDetector:Lcom/mapbox/android/gestures/StandardGestureDetector;

    return-object v0
.end method

.method public getStandardScaleGestureDetector()Lcom/mapbox/android/gestures/StandardScaleGestureDetector;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->standardScaleGestureDetector:Lcom/mapbox/android/gestures/StandardScaleGestureDetector;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->detectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/android/gestures/BaseGesture;

    .line 196
    invoke-virtual {v2, p1}, Lcom/mapbox/android/gestures/BaseGesture;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public removeMoveGestureListener()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->moveGestureDetector:Lcom/mapbox/android/gestures/MoveGestureDetector;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/MoveGestureDetector;->removeListener()V

    return-void
.end method

.method public removeMultiFingerTapGestureListener()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->multiFingerTapGestureDetector:Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;->removeListener()V

    return-void
.end method

.method public removeRotateGestureListener()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->rotateGestureDetector:Lcom/mapbox/android/gestures/RotateGestureDetector;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/RotateGestureDetector;->removeListener()V

    return-void
.end method

.method public removeShoveGestureListener()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->shoveGestureDetector:Lcom/mapbox/android/gestures/ShoveGestureDetector;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/ShoveGestureDetector;->removeListener()V

    return-void
.end method

.method public removeSidewaysShoveGestureListener()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->sidewaysShoveGestureDetector:Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;->removeListener()V

    return-void
.end method

.method public removeStandardGestureListener()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->standardGestureDetector:Lcom/mapbox/android/gestures/StandardGestureDetector;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/StandardGestureDetector;->removeListener()V

    return-void
.end method

.method public removeStandardScaleGestureListener()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->standardScaleGestureDetector:Lcom/mapbox/android/gestures/StandardScaleGestureDetector;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/StandardScaleGestureDetector;->removeListener()V

    return-void
.end method

.method public setMoveGestureListener(Lcom/mapbox/android/gestures/MoveGestureDetector$OnMoveGestureListener;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->moveGestureDetector:Lcom/mapbox/android/gestures/MoveGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/MoveGestureDetector;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setMultiFingerTapGestureListener(Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector$OnMultiFingerTapGestureListener;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->multiFingerTapGestureDetector:Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/MultiFingerTapGestureDetector;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setMutuallyExclusiveGestures(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->mutuallyExclusiveGestures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->mutuallyExclusiveGestures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final varargs setMutuallyExclusiveGestures([Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 411
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->setMutuallyExclusiveGestures(Ljava/util/List;)V

    return-void
.end method

.method public setRotateGestureListener(Lcom/mapbox/android/gestures/RotateGestureDetector$OnRotateGestureListener;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->rotateGestureDetector:Lcom/mapbox/android/gestures/RotateGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/RotateGestureDetector;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setShoveGestureListener(Lcom/mapbox/android/gestures/ShoveGestureDetector$OnShoveGestureListener;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->shoveGestureDetector:Lcom/mapbox/android/gestures/ShoveGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/ShoveGestureDetector;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setSidewaysShoveGestureListener(Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector$OnSidewaysShoveGestureListener;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->sidewaysShoveGestureDetector:Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/SidewaysShoveGestureDetector;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setStandardGestureListener(Lcom/mapbox/android/gestures/StandardGestureDetector$StandardOnGestureListener;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->standardGestureDetector:Lcom/mapbox/android/gestures/StandardGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/StandardGestureDetector;->setListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setStandardScaleGestureListener(Lcom/mapbox/android/gestures/StandardScaleGestureDetector$StandardOnScaleGestureListener;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->standardScaleGestureDetector:Lcom/mapbox/android/gestures/StandardScaleGestureDetector;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/StandardScaleGestureDetector;->setListener(Ljava/lang/Object;)V

    return-void
.end method
