.class public Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;
.super Ljava/lang/Object;
.source "OppThreeDSService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;,
        Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;
    }
.end annotation


# static fields
.field private static i:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;

.field private e:Z

.field private f:Lcom/oppwa/mobile/connect/threeds/h;

.field private g:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

.field private h:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;


# direct methods
.method public static synthetic $r8$lambda$ESBRMuM5_1F8IKPYojzAyMvqD_Y(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xkrKxsKyJimT6XQ0c2t4RSNdOBQ(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e:Z

    .line 3
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/h;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/threeds/h;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->f:Lcom/oppwa/mobile/connect/threeds/h;

    .line 13
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->g:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

    .line 14
    new-instance p1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;

    invoke-direct {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->build()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->h:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e:Z

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Ljava/util/concurrent/CountDownLatch;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 19
    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->f:Lcom/oppwa/mobile/connect/threeds/h;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/oppwa/mobile/connect/threeds/h;->a(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;

    const-string v0, "DS certificate not found"

    invoke-direct {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const-string v0, "Invalid payment brand"

    invoke-direct {p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->f:Lcom/oppwa/mobile/connect/threeds/h;

    return-object p0
.end method

.method static synthetic d(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    return-object p0
.end method

.method static synthetic e(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->d:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;

    return-object p0
.end method

.method static synthetic f(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->h:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    return-object p0
.end method

.method static synthetic g(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->g:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;
    .locals 3

    const-class v0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->i:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    sget-object v2, Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;->INSTANCE:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

    invoke-direct {v1, v2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;-><init>(Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;)V

    sput-object v1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->i:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    .line 5
    :cond_0
    sget-object v1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->i:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;
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


# virtual methods
.method public cleanUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/threeds/e;->a(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->g:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;->cleanup(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a:Landroid/content/Context;

    .line 6
    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    .line 7
    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->c:Ljava/util/List;

    .line 8
    new-instance v1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;

    invoke-direct {v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig$Builder;->build()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->h:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    .line 9
    new-instance v1, Lcom/oppwa/mobile/connect/threeds/h;

    invoke-direct {v1}, Lcom/oppwa/mobile/connect/threeds/h;-><init>()V

    iput-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->f:Lcom/oppwa/mobile/connect/threeds/h;

    .line 10
    iput-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->d:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e:Z

    return-void
.end method

.method public createFutureTransaction(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/SchemeConfig;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->g:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

    .line 8
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/SchemeConfig;->getDsRefId()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;->createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/nsoftware/ipworks3ds/sdk/Transaction;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->h:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getSdkMaxTimeout()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSTransaction;-><init>(Lcom/nsoftware/ipworks3ds/sdk/Transaction;I)V

    return-object p2

    .line 15
    :cond_0
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;

    const-string p2, "OppThreeDSService is not initialized."

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConfig()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->h:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    return-object v0
.end method

.method public getInitCallback()Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->d:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;

    return-object v0
.end method

.method public getNsoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->g:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

    invoke-interface {v0}, Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentBrands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->c:Ljava/util/List;

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nsoftware/ipworks3ds/sdk/Warning;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->g:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

    invoke-interface {v0}, Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;->getWarnings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    .line 7
    iput-object p3, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->c:Ljava/util/List;

    .line 9
    new-instance p1, Lcom/oppwa/mobile/connect/threeds/TaskRunner;

    invoke-direct {p1}, Lcom/oppwa/mobile/connect/threeds/TaskRunner;-><init>()V

    new-instance p2, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;-><init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$a;)V

    invoke-virtual {p1, p2}, Lcom/oppwa/mobile/connect/threeds/TaskRunner;->executeAsync(Lcom/oppwa/mobile/connect/threeds/BaseTask;)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const-string p2, "Payment brands list is empty"

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    const-string p2, "Transaction mode is null"

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e:Z

    return v0
.end method

.method public setConfig(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->h:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    return-void
.end method

.method public setCustomSchemeConfig(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/threeds/SchemeConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->f:Lcom/oppwa/mobile/connect/threeds/h;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/threeds/h;->a(Ljava/util/Map;)V

    return-void
.end method

.method public setInitCallback(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->d:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;

    return-void
.end method
