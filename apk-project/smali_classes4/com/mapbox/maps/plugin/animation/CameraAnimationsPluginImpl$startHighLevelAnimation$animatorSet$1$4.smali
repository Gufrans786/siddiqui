.class final Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$startHighLevelAnimation$animatorSet$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "CameraAnimationsPluginImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;->startHighLevelAnimation([Lcom/mapbox/maps/plugin/animation/animator/CameraAnimator;Lcom/mapbox/maps/plugin/animation/MapAnimationOptions;Landroid/animation/Animator$AnimatorListener;)Lcom/mapbox/common/Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $animatorListener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic $this_apply:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$startHighLevelAnimation$animatorSet$1$4;->$this_apply:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$startHighLevelAnimation$animatorSet$1$4;->this$0:Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;

    iput-object p3, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$startHighLevelAnimation$animatorSet$1$4;->$animatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 958
    invoke-virtual {p0}, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$startHighLevelAnimation$animatorSet$1$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$startHighLevelAnimation$animatorSet$1$4;->$this_apply:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$startHighLevelAnimation$animatorSet$1$4;->this$0:Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;

    invoke-static {v1}, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;->access$getClearHighLevelAnimatorSetListener$p(Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;)Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$clearHighLevelAnimatorSetListener$1;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 960
    iget-object v0, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$startHighLevelAnimation$animatorSet$1$4;->$animatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$startHighLevelAnimation$animatorSet$1$4;->$this_apply:Landroid/animation/AnimatorSet;

    .line 961
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method
