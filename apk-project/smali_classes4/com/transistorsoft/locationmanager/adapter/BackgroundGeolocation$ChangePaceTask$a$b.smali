.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;->onError(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$b;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$b;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$b;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$b;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
