.class public final Lcom/mapbox/common/module/cronet/CronetTimeout;
.super Ljava/lang/Object;
.source "CronetTimeout.kt"

# interfaces
.implements Lcom/mapbox/common/Task;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/common/module/cronet/CronetTimeout$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000cJ\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0006\u0010\u0012\u001a\u00020\u000cR\u000e\u0010\u0006\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/mapbox/common/module/cronet/CronetTimeout;",
        "Lcom/mapbox/common/Task;",
        "sequencedScheduler",
        "Lcom/mapbox/common/Scheduler;",
        "timeoutSeconds",
        "",
        "action",
        "(Lcom/mapbox/common/Scheduler;JLcom/mapbox/common/Task;)V",
        "deadline",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "timeout",
        "cancel",
        "",
        "resetDeadline",
        "run",
        "scheduleCallback",
        "options",
        "Lcom/mapbox/common/TaskOptions;",
        "start",
        "Companion",
        "common_release"
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
.field private static final Companion:Lcom/mapbox/common/module/cronet/CronetTimeout$Companion;

.field private static final DEFAULT_TIMEOUT_TASK_OPTIONS:Lcom/mapbox/common/TaskOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final action:Lcom/mapbox/common/Task;

.field private deadline:Ljava/util/concurrent/atomic/AtomicLong;

.field private final sequencedScheduler:Lcom/mapbox/common/Scheduler;

.field private final timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/mapbox/common/module/cronet/CronetTimeout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mapbox/common/module/cronet/CronetTimeout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mapbox/common/module/cronet/CronetTimeout;->Companion:Lcom/mapbox/common/module/cronet/CronetTimeout$Companion;

    .line 75
    new-instance v0, Lcom/mapbox/common/TaskOptions;

    const-wide/32 v1, 0xea60

    sget-object v3, Lcom/mapbox/common/TaskPriority;->DEFAULT:Lcom/mapbox/common/TaskPriority;

    invoke-direct {v0, v1, v2, v3}, Lcom/mapbox/common/TaskOptions;-><init>(JLcom/mapbox/common/TaskPriority;)V

    sput-object v0, Lcom/mapbox/common/module/cronet/CronetTimeout;->DEFAULT_TIMEOUT_TASK_OPTIONS:Lcom/mapbox/common/TaskOptions;

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/common/Scheduler;JLcom/mapbox/common/Task;)V
    .locals 2

    const-string v0, "sequencedScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->sequencedScheduler:Lcom/mapbox/common/Scheduler;

    .line 22
    iput-object p4, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->action:Lcom/mapbox/common/Task;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->deadline:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    .line 25
    iput-wide p2, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->timeout:J

    return-void
.end method

.method private final scheduleCallback(Lcom/mapbox/common/TaskOptions;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->sequencedScheduler:Lcom/mapbox/common/Scheduler;

    move-object v1, p0

    check-cast v1, Lcom/mapbox/common/Task;

    invoke-interface {v0, v1, p1}, Lcom/mapbox/common/Scheduler;->schedule(Lcom/mapbox/common/Task;Lcom/mapbox/common/TaskOptions;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->deadline:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final resetDeadline()V
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->deadline:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/mapbox/common/module/cronet/CronetTimeoutKt;->access$nowMilliseconds()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->timeout:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->deadline:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/mapbox/common/module/cronet/CronetTimeoutKt;->access$nowMilliseconds()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 61
    iget-object v0, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->action:Lcom/mapbox/common/Task;

    invoke-interface {v0}, Lcom/mapbox/common/Task;->run()V

    return-void

    .line 63
    :cond_1
    new-instance v4, Lcom/mapbox/common/TaskOptions;

    sub-long/2addr v0, v2

    sget-object v2, Lcom/mapbox/common/TaskPriority;->DEFAULT:Lcom/mapbox/common/TaskPriority;

    invoke-direct {v4, v0, v1, v2}, Lcom/mapbox/common/TaskOptions;-><init>(JLcom/mapbox/common/TaskPriority;)V

    invoke-direct {p0, v4}, Lcom/mapbox/common/module/cronet/CronetTimeout;->scheduleCallback(Lcom/mapbox/common/TaskOptions;)V

    return-void
.end method

.method public final start()V
    .locals 5

    .line 28
    invoke-virtual {p0}, Lcom/mapbox/common/module/cronet/CronetTimeout;->resetDeadline()V

    .line 30
    iget-wide v0, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->timeout:J

    sget-object v2, Lcom/mapbox/common/module/cronet/CronetTimeout;->DEFAULT_TIMEOUT_TASK_OPTIONS:Lcom/mapbox/common/TaskOptions;

    invoke-virtual {v2}, Lcom/mapbox/common/TaskOptions;->getDelay()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v2, Lcom/mapbox/common/TaskOptions;

    iget-wide v0, p0, Lcom/mapbox/common/module/cronet/CronetTimeout;->timeout:J

    sget-object v3, Lcom/mapbox/common/TaskPriority;->DEFAULT:Lcom/mapbox/common/TaskPriority;

    invoke-direct {v2, v0, v1, v3}, Lcom/mapbox/common/TaskOptions;-><init>(JLcom/mapbox/common/TaskPriority;)V

    .line 36
    :goto_0
    invoke-direct {p0, v2}, Lcom/mapbox/common/module/cronet/CronetTimeout;->scheduleCallback(Lcom/mapbox/common/TaskOptions;)V

    return-void
.end method
