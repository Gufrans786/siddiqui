.class Lcom/transistorsoft/locationmanager/http/HttpService$g;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/http/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/http/HttpService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$g;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$g;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$g;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Z)V

    return-void
.end method
