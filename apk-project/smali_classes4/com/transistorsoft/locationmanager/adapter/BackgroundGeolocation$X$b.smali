.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$b;
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
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$b;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X$b;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;)Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;

    move-result-object v0

    const-string v1, "Insert location failed"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
