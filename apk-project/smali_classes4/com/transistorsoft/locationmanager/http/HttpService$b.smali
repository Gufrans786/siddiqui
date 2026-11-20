.class Lcom/transistorsoft/locationmanager/http/HttpService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/http/HttpService;->flush(Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

.field final synthetic b:Lcom/transistorsoft/locationmanager/http/HttpService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$b;->b:Lcom/transistorsoft/locationmanager/http/HttpService;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    const-string v1, "HTTP_SERVICE_BUSY"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
