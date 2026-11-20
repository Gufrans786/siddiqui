.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    move-result-object v0

    const-string v1, "LICENSE_VALIDATION_FAILURE"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
