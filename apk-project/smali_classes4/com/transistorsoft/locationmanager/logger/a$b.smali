.class Lcom/transistorsoft/locationmanager/logger/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/logger/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/transistorsoft/locationmanager/logger/a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/logger/a;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/a$b;->b:Lcom/transistorsoft/locationmanager/logger/a;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/a$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/logger/a$b;->b:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/logger/a;->a(Lcom/transistorsoft/locationmanager/logger/a;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transistorsoft/locationmanager/logger/a$b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/a$b;->b:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/a;->a(Lcom/transistorsoft/locationmanager/logger/a;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->stopBackgroundTask(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/logger/a$b;->b:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/a;->b(Lcom/transistorsoft/locationmanager/logger/a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/logger/a$b;->b:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/logger/a;->a(Lcom/transistorsoft/locationmanager/logger/a;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transistorsoft/locationmanager/logger/a$b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/a$b;->b:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/a;->a(Lcom/transistorsoft/locationmanager/logger/a;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->stopBackgroundTask(Landroid/content/Context;I)V

    return-void
.end method
