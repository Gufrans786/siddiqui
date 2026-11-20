.class public final Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;
.super Lcom/rnmapbox/rnmbx/events/AbstractEvent;
.source "MapSteadyEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B-\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;",
        "Lcom/rnmapbox/rnmbx/events/AbstractEvent;",
        "view",
        "Landroid/view/View;",
        "reason",
        "",
        "idleDurationMs",
        "",
        "lastGestureType",
        "<init>",
        "(Landroid/view/View;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V",
        "Ljava/lang/Double;",
        "key",
        "getKey",
        "()Ljava/lang/String;",
        "payload",
        "Lcom/facebook/react/bridge/WritableMap;",
        "getPayload",
        "()Lcom/facebook/react/bridge/WritableMap;",
        "canCoalesce",
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
.field public static final Companion:Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;


# instance fields
.field private final idleDurationMs:Ljava/lang/Double;

.field private final lastGestureType:Ljava/lang/String;

.field private final reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;->Companion:Lcom/rnmapbox/rnmbx/events/MapSteadyEvent$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v0, "mapSteady"

    invoke-direct {p0, p1, v0}, Lcom/rnmapbox/rnmbx/events/AbstractEvent;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;->reason:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;->idleDurationMs:Ljava/lang/Double;

    .line 16
    iput-object p4, p0, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;->lastGestureType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 19
    const-string/jumbo v0, "topOnMapSteady"

    return-object v0
.end method

.method public getPayload()Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 22
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "createMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const-string v1, "reason"

    iget-object v2, p0, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;->reason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;->idleDurationMs:Ljava/lang/Double;

    const-string v2, "idleDurationMs"

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/events/MapSteadyEvent;->lastGestureType:Ljava/lang/String;

    const-string v2, "lastGestureType"

    if-eqz v1, :cond_1

    .line 30
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 34
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-string/jumbo v3, "timestamp"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method
