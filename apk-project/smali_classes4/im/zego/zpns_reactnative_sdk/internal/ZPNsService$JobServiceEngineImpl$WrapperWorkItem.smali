.class final Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;
.super Ljava/lang/Object;
.source "ZPNsService.java"

# interfaces
.implements Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WrapperWorkItem"
.end annotation


# instance fields
.field final mJobWork:Landroid/app/job/JobWorkItem;

.field final synthetic this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;


# direct methods
.method constructor <init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 4

    .line 233
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;

    iget-object v0, v0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;

    iget-object v1, v1, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 236
    :try_start_1
    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;

    iget-object v1, v1, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    iget-object v2, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 248
    :try_start_2
    const-string v2, "JobServiceEngineImpl"

    const-string v3, "IllegalArgumentException: Failed to run mParams.completeWork(mJobWork)!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 246
    const-string v2, "JobServiceEngineImpl"

    const-string v3, "SecurityException: Failed to run mParams.completeWork(mJobWork)!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 228
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
