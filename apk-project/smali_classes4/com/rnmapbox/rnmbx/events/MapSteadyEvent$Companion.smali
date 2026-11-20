.class public final Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;
.super Ljava/lang/Object;
.source "MapSteadyEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;",
        "",
        "<init>",
        "()V",
        "make",
        "Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;",
        "view",
        "Landroid/view/View;",
        "reason",
        "",
        "idleDurationMs",
        "",
        "lastGestureType",
        "(Landroid/view/View;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final make(Landroid/view/View;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    return-object v0
.end method
