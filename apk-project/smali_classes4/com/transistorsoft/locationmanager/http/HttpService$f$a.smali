.class Lcom/transistorsoft/locationmanager/http/HttpService$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/http/HttpService$f;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

.field final synthetic b:Lcom/transistorsoft/locationmanager/http/HttpService$f;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService$f;Lcom/transistorsoft/locationmanager/config/TSAuthorization;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$f;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a;->a:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 0

    return-void
.end method

.method public onStart(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a;->a:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f$a;->b:Lcom/transistorsoft/locationmanager/http/HttpService$f;

    iget-object v1, v1, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/http/HttpService$f$a$a;

    invoke-direct {v2, p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService$f$a$a;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService$f$a;I)V

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->refreshAuthorizationToken(Landroid/content/Context;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V

    return-void
.end method
