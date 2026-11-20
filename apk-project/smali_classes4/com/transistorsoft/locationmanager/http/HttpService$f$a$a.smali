.class Lcom/transistorsoft/locationmanager/http/HttpService$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/http/HttpService$f$a;->onStart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/transistorsoft/locationmanager/http/HttpService$f$a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService$f$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$f$a;

    iput p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$f$a;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$f;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V

    .line 2
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$f$a;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/http/HttpService$f$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$f;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush(Z)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$f$a;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$f;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a$a;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->stopBackgroundTask(Landroid/content/Context;I)V

    return-void
.end method
