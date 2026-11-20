.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$c;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$c;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;)Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
