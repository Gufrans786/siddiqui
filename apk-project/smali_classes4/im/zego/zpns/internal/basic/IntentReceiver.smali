.class public abstract Lim/zego/zpns/internal/basic/IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntentReceiver.java"


# static fields
.field private static sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lim/zego/zpns/internal/basic/IntentReceiver;->sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 15
    sget-object v0, Lim/zego/zpns/internal/basic/IntentReceiver;->sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/HandlerThread;
    .locals 1

    .line 15
    sget-object v0, Lim/zego/zpns/internal/basic/IntentReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method protected abstract onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 25
    sget-object v0, Lim/zego/zpns/internal/basic/IntentReceiver;->sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntentReceiver"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/zego/zpns/internal/basic/IntentReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    .line 27
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lim/zego/zpns/internal/basic/IntentReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lim/zego/zpns/internal/basic/IntentReceiver;->sHandler:Landroid/os/Handler;

    .line 31
    :cond_0
    sget-object v0, Lim/zego/zpns/internal/basic/IntentReceiver;->sHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zpns/internal/basic/IntentReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lim/zego/zpns/internal/basic/IntentReceiver$1;-><init>(Lim/zego/zpns/internal/basic/IntentReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
