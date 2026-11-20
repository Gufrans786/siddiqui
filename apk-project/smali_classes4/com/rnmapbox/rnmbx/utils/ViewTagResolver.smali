.class public Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;
.super Ljava/lang/Object;
.source "ViewTagResolver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewTagResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewTagResolver.kt\ncom/rnmapbox/rnmbx/utils/ViewTagResolver\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n384#2,7:91\n1869#3,2:98\n1869#3,2:100\n*S KotlinDebug\n*F\n+ 1 ViewTagResolver.kt\ncom/rnmapbox/rnmbx/utils/ViewTagResolver\n*L\n35#1:91,7\n47#1:98,2\n49#1:100,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J4\u0010\u0014\u001a\u00020\u0015\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0017\u001a\u00020\n2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00150\u001bH\u0002J\u000e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\nJ\u000e\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\nJ4\u0010\"\u001a\u00020\u0015\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0017\u001a\u00020\n2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00150\u001bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000RF\u0010\u000c\u001a:\u0012\u0004\u0012\u00020\n\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e0\rj\u001c\u0012\u0004\u0012\u00020\n\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;",
        "",
        "context",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getContext",
        "()Lcom/facebook/react/bridge/ReactApplicationContext;",
        "createdViews",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "viewWaiters",
        "Ljava/util/HashMap;",
        "",
        "Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter;",
        "Landroid/view/View;",
        "Lkotlin/collections/HashMap;",
        "handler",
        "Landroid/os/Handler;",
        "addWaiter",
        "",
        "V",
        "viewTag",
        "reject",
        "Lcom/facebook/react/bridge/Promise;",
        "fn",
        "Lkotlin/Function1;",
        "tagAssigned",
        "viewRemoved",
        "manager",
        "Lcom/facebook/react/bridge/UIManager;",
        "getManager",
        "()Lcom/facebook/react/bridge/UIManager;",
        "withViewResolved",
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


# instance fields
.field private final context:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final createdViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final viewWaiters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter<",
            "Landroid/view/View;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9c-sKyUsMpv0AkV2yJ-3W5M1IbQ(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;ILkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->withViewResolved$lambda$5(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;ILkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QAQXgN-INdQinfne8lP3aPjt0Rc(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->tagAssigned$lambda$4(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHfdzK0VJw0o4-4CwihUjOprB7w(Lkotlin/jvm/functions/Function1;ILcom/facebook/react/bridge/Promise;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->addWaiter$lambda$0(Lkotlin/jvm/functions/Function1;ILcom/facebook/react/bridge/Promise;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 22
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->createdViews:Ljava/util/HashSet;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->viewWaiters:Ljava/util/HashMap;

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final addWaiter(ILcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/facebook/react/bridge/Promise;",
            "Lkotlin/jvm/functions/Function1<",
            "-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter;

    new-instance v1, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p1, p2}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;ILcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1, p2}, Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter;-><init>(Lkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;)V

    .line 35
    iget-object p2, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->viewWaiters:Ljava/util/HashMap;

    check-cast p2, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 91
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    .line 35
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    .line 94
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    check-cast p3, Ljava/util/List;

    .line 35
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final addWaiter$lambda$0(Lkotlin/jvm/functions/Function1;ILcom/facebook/react/bridge/Promise;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    if-eqz p3, :cond_0

    .line 29
    check-cast p3, Ljava/lang/Object;

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_0
    sget-object p0, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "view: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " but is null (timeout or resolve)"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "ViewTagResolver"

    invoke-virtual {p0, v2, p3}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 32
    new-instance p0, Ljava/lang/Throwable;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getManager()Lcom/facebook/react/bridge/UIManager;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final tagAssigned$lambda$4(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;ILjava/util/List;)V
    .locals 3

    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->getManager()Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    .line 47
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    .line 98
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter;

    .line 47
    invoke-virtual {v2}, Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter;->getFn()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    check-cast p2, Ljava/lang/Iterable;

    .line 100
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter;

    .line 49
    invoke-virtual {v1}, Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter;->getReject()Lcom/facebook/react/bridge/Promise;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->viewWaiters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic withViewResolved$default(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;ILcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->withViewResolved(ILcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: withViewResolved"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final withViewResolved$lambda$5(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;ILkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;)V
    .locals 3

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->getManager()Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    .line 74
    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 76
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 78
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->addWaiter(ILcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->createdViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-direct {p0, p1, p3, p2}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->addWaiter(ILcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 84
    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final getContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method public final tagAssigned(I)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->createdViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->viewWaiters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v2, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver$$ExternalSyntheticLambda2;-><init>(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final viewRemoved(I)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->viewWaiters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->createdViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final withViewResolved(ILcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/facebook/react/bridge/Promise;",
            "Lkotlin/jvm/functions/Function1<",
            "-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/rnmapbox/rnmbx/utils/ViewTagResolver$$ExternalSyntheticLambda1;-><init>(Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;ILkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method
