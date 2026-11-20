.class Lcom/transistorsoft/locationmanager/http/HttpService$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/http/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/http/HttpService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$d;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    const-string p2, "noConnectivity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$d;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {p2, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Z)V

    return-void
.end method
