.class Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$b;->a:Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->ACTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$b;->a:Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$b;->a:Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->b(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->stopBackgroundTask(Landroid/content/Context;I)V

    return-void
.end method
