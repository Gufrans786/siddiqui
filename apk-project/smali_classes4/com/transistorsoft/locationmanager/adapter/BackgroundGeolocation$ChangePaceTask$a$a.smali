.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;->onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void
.end method
