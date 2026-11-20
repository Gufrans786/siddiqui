.class public Lcom/transistorsoft/locationmanager/logger/TSLog$DestroyLogTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/logger/TSLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DestroyLogTask"
.end annotation


# instance fields
.field private final a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$DestroyLogTask;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSLog;->getDatabaseAppender()Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->destroyLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$DestroyLogTask;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSLog$DestroyLogTask;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    const-string v1, "Failed to destroy log"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
