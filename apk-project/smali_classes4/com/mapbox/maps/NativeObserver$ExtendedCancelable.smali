.class Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;
.super Ljava/lang/Object;
.source "NativeObserver.kt"

# interfaces
.implements Lcom/mapbox/common/Cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/maps/NativeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedCancelable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0092\u0004\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0010\u0008\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0012\u0008\u0002\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u00060\u0000R\u00020\u00080\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0012\u001a\u00020\u0005H\u0016J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0018\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u00060\u0000R\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0002\u001a\u00020\u0001X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;",
        "Lcom/mapbox/common/Cancelable;",
        "originalCancelable",
        "onCancel",
        "Lkotlin/Function0;",
        "",
        "cancelableSet",
        "",
        "Lcom/mapbox/maps/NativeObserver;",
        "listener",
        "",
        "(Lcom/mapbox/maps/NativeObserver;Lcom/mapbox/common/Cancelable;Lkotlin/jvm/functions/Function0;Ljava/util/Set;Ljava/lang/Object;)V",
        "getListener",
        "()Ljava/lang/Object;",
        "getOnCancel",
        "()Lkotlin/jvm/functions/Function0;",
        "getOriginalCancelable",
        "()Lcom/mapbox/common/Cancelable;",
        "cancel",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "maps-sdk_release"
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
.field private final cancelableSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Ljava/lang/Object;

.field private final onCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final originalCancelable:Lcom/mapbox/common/Cancelable;

.field final synthetic this$0:Lcom/mapbox/maps/NativeObserver;


# direct methods
.method public constructor <init>(Lcom/mapbox/maps/NativeObserver;Lcom/mapbox/common/Cancelable;Lkotlin/jvm/functions/Function0;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/common/Cancelable;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "originalCancelable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelableSet"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->this$0:Lcom/mapbox/maps/NativeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->originalCancelable:Lcom/mapbox/common/Cancelable;

    .line 29
    iput-object p3, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->onCancel:Lkotlin/jvm/functions/Function0;

    .line 30
    iput-object p4, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->cancelableSet:Ljava/util/Set;

    .line 31
    iput-object p5, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->listener:Ljava/lang/Object;

    .line 35
    invoke-interface {p4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mapbox/maps/NativeObserver;Lcom/mapbox/common/Cancelable;Lkotlin/jvm/functions/Function0;Ljava/util/Set;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 30
    invoke-static {p1}, Lcom/mapbox/maps/NativeObserver;->access$getCancelableSet$p(Lcom/mapbox/maps/NativeObserver;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    move-object p6, v0

    goto :goto_0

    :cond_2
    move-object p6, p5

    :goto_0
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 27
    invoke-direct/range {p1 .. p6}, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;-><init>(Lcom/mapbox/maps/NativeObserver;Lcom/mapbox/common/Cancelable;Lkotlin/jvm/functions/Function0;Ljava/util/Set;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->cancelableSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->getOriginalCancelable()Lcom/mapbox/common/Cancelable;

    move-result-object v0

    invoke-interface {v0}, Lcom/mapbox/common/Cancelable;->cancel()V

    .line 41
    iget-object v0, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->onCancel:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 46
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

    .line 48
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.mapbox.maps.NativeObserver.ExtendedCancelable"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;

    .line 50
    invoke-virtual {p0}, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->getOriginalCancelable()Lcom/mapbox/common/Cancelable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->getOriginalCancelable()Lcom/mapbox/common/Cancelable;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->cancelableSet:Ljava/util/Set;

    iget-object v3, p1, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->cancelableSet:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 52
    :cond_4
    iget-object v1, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->onCancel:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->onCancel:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->listener:Ljava/lang/Object;

    iget-object p1, p1, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->listener:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getListener()Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->listener:Ljava/lang/Object;

    return-object v0
.end method

.method public final getOnCancel()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->onCancel:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getOriginalCancelable()Lcom/mapbox/common/Cancelable;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->originalCancelable:Lcom/mapbox/common/Cancelable;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->getOriginalCancelable()Lcom/mapbox/common/Cancelable;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->cancelableSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->onCancel:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;->listener:Ljava/lang/Object;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
