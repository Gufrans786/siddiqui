.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;)Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofencesCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofencesCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
