.class public Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;,
        Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnStateChangeCallback;
    }
.end annotation


# static fields
.field private static i:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$xxUmkyU800jglAR3z5Wzmp04NTQ(Z)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->b(Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->b:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->c:Landroid/os/Handler;

    .line 14
    new-instance v0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->onHeadlessChange(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->d:Ljava/lang/Runnable;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;

    .line 17
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;->onChange(Z)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Z)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->b:Ljava/util/List;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnStateChangeCallback;

    .line 7
    invoke-interface {v2, p1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnStateChangeCallback;->onChange(Z)V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static declared-synchronized b()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->i:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    invoke-direct {v1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;-><init>()V

    sput-object v1, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->i:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    .line 3
    :cond_0
    sget-object v1, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->i:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a()V

    return-void
.end method

.method private static synthetic b(Z)V
    .locals 3

    if-eqz p0, :cond_0

    .line 4
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u262f\ufe0f  HeadlessMode? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->i:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->b()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->i:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    .line 4
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->i:Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    return-object v0
.end method


# virtual methods
.method public isBackground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isHeadless()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\u262f\ufe0f  onCreate"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$a;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$a;-><init>(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;)V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->d:Ljava/lang/Runnable;

    .line 10
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\u262f\ufe0f  onDestroy"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onHeadlessChange(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;->onChange(Z)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a:Ljava/util/List;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\u262f\ufe0f  onPause"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a(Z)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\u262f\ufe0f  onResume"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a(Z)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\u262f\ufe0f  onStart"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a()V

    return-void
.end method

.method public onStateChange(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnStateChangeCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\u262f\ufe0f  onStop"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public setHeadless(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u262f\ufe0f  HeadlessMode? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->a()V

    :cond_1
    return-void
.end method
