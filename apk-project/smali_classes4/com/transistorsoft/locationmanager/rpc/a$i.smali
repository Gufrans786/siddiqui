.class Lcom/transistorsoft/locationmanager/rpc/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/rpc/a;->h()V
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
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/rpc/a$i;->a:Lcom/transistorsoft/locationmanager/rpc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/rpc/a$i;->a:Lcom/transistorsoft/locationmanager/rpc/a;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Lcom/transistorsoft/locationmanager/rpc/a;)Lcom/transistorsoft/locationmanager/rpc/a$l;

    move-result-object p1

    invoke-interface {p1}, Lcom/transistorsoft/locationmanager/rpc/a$l;->onSuccess()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a$i;->a:Lcom/transistorsoft/locationmanager/rpc/a;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Lcom/transistorsoft/locationmanager/rpc/a;)Lcom/transistorsoft/locationmanager/rpc/a$l;

    move-result-object v0

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/rpc/a$l;->onSuccess()V

    return-void
.end method
