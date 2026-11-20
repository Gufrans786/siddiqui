.class public abstract Landroidx/work/RxWorker;
.super Landroidx/work/ListenableWorker;
.source "RxWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/RxWorker$SingleFutureAdapter;
    }
.end annotation


# static fields
.field static final INSTANT_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private mSingleFutureObserverAdapter:Landroidx/work/RxWorker$SingleFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/RxWorker$SingleFutureAdapter<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Landroidx/work/impl/utils/SynchronousExecutor;

    invoke-direct {v0}, Landroidx/work/impl/utils/SynchronousExecutor;-><init>()V

    sput-object v0, Landroidx/work/RxWorker;->INSTANT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private convert(Landroidx/work/RxWorker$SingleFutureAdapter;Lio/reactivex/Single;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/work/RxWorker$SingleFutureAdapter<",
            "TT;>;",
            "Lio/reactivex/Single<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Landroidx/work/RxWorker;->getBackgroundScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 215
    invoke-virtual {p2, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p2

    .line 217
    invoke-virtual {p0}, Landroidx/work/RxWorker;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p2

    .line 218
    invoke-virtual {p2, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 219
    iget-object p1, p1, Landroidx/work/RxWorker$SingleFutureAdapter;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p1
.end method


# virtual methods
.method public abstract createWork()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end method

.method protected getBackgroundScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroidx/work/RxWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundInfo()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Landroidx/work/ForegroundInfo;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expedited WorkRequests require a RxWorker to provide an implementation for `getForegroundInfo()`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ForegroundInfo;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Landroidx/work/RxWorker$SingleFutureAdapter;

    invoke-direct {v0}, Landroidx/work/RxWorker$SingleFutureAdapter;-><init>()V

    invoke-virtual {p0}, Landroidx/work/RxWorker;->getForegroundInfo()Lio/reactivex/Single;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/work/RxWorker;->convert(Landroidx/work/RxWorker$SingleFutureAdapter;Lio/reactivex/Single;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public onStopped()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    .line 148
    iget-object v0, p0, Landroidx/work/RxWorker;->mSingleFutureObserverAdapter:Landroidx/work/RxWorker$SingleFutureAdapter;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroidx/work/RxWorker$SingleFutureAdapter;->dispose()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Landroidx/work/RxWorker;->mSingleFutureObserverAdapter:Landroidx/work/RxWorker$SingleFutureAdapter;

    :cond_0
    return-void
.end method

.method public final setCompletableProgress(Landroidx/work/Data;)Lio/reactivex/Completable;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Landroidx/work/RxWorker;->setProgressAsync(Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final setForeground(Landroidx/work/ForegroundInfo;)Lio/reactivex/Completable;
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Landroidx/work/RxWorker;->setForegroundAsync(Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final setProgress(Landroidx/work/Data;)Lio/reactivex/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Data;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Landroidx/work/RxWorker;->setProgressAsync(Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Landroidx/work/RxWorker$SingleFutureAdapter;

    invoke-direct {v0}, Landroidx/work/RxWorker$SingleFutureAdapter;-><init>()V

    iput-object v0, p0, Landroidx/work/RxWorker;->mSingleFutureObserverAdapter:Landroidx/work/RxWorker$SingleFutureAdapter;

    .line 73
    invoke-virtual {p0}, Landroidx/work/RxWorker;->createWork()Lio/reactivex/Single;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/work/RxWorker;->convert(Landroidx/work/RxWorker$SingleFutureAdapter;Lio/reactivex/Single;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
