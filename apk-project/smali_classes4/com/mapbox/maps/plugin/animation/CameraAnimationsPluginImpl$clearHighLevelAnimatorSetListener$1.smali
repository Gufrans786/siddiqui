.class public final Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$clearHighLevelAnimatorSetListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraAnimationsPluginImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$clearHighLevelAnimatorSetListener$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "plugin-animation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;


# direct methods
.method constructor <init>(Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$clearHighLevelAnimatorSetListener$1;->this$0:Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;

    .line 919
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$clearHighLevelAnimatorSetListener$1;->this$0:Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;

    invoke-static {v0}, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;->access$getHighLevelAnimatorSet$p(Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;)Lcom/mapbox/maps/plugin/animation/HighLevelAnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mapbox/maps/plugin/animation/HighLevelAnimatorSet;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne v0, p1, :cond_1

    .line 923
    iget-object p1, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl$clearHighLevelAnimatorSetListener$1;->this$0:Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;

    invoke-static {p1, v1}, Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;->access$setHighLevelAnimatorSet$p(Lcom/mapbox/maps/plugin/animation/CameraAnimationsPluginImpl;Lcom/mapbox/maps/plugin/animation/HighLevelAnimatorSet;)V

    :cond_1
    return-void
.end method
