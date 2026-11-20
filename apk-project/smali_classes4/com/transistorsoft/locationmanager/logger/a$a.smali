.class Lcom/transistorsoft/locationmanager/logger/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/logger/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/logger/a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/logger/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/a$a;->a:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 0

    return-void
.end method

.method public onStart(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/a$a;->a:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/logger/a;->a(Lcom/transistorsoft/locationmanager/logger/a;I)I

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/a$a;->a:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
