.class Lcom/transistorsoft/locationmanager/logger/TSLog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/logger/TSLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;

.field private final b:Lcom/transistorsoft/locationmanager/data/SQLQuery;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$b;->b:Lcom/transistorsoft/locationmanager/data/SQLQuery;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$b;->b:Lcom/transistorsoft/locationmanager/data/SQLQuery;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->getLog(Lcom/transistorsoft/locationmanager/data/SQLQuery;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;

    invoke-interface {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;->onSuccess(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;

    const-string v1, "Failed to fetch logs"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
