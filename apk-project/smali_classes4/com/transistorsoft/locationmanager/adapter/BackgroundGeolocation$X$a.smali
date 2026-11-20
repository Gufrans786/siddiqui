.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;)Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
