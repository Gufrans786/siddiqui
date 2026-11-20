.class Lcom/transistorsoft/locationmanager/rpc/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/rpc/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/rpc/a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/rpc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/rpc/a$e;->a:Lcom/transistorsoft/locationmanager/rpc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a$e;->a:Lcom/transistorsoft/locationmanager/rpc/a;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Lcom/transistorsoft/locationmanager/rpc/a;)Lcom/transistorsoft/locationmanager/rpc/a$l;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/rpc/a$m;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/transistorsoft/locationmanager/rpc/a$m;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/rpc/a$l;->a(Lcom/transistorsoft/locationmanager/rpc/a$m;)V

    return-void
.end method

.method public onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/rpc/a$e;->a:Lcom/transistorsoft/locationmanager/rpc/a;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Lcom/transistorsoft/locationmanager/rpc/a;)Lcom/transistorsoft/locationmanager/rpc/a$l;

    move-result-object p1

    invoke-interface {p1}, Lcom/transistorsoft/locationmanager/rpc/a$l;->onSuccess()V

    return-void
.end method
