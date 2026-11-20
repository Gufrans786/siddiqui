.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;

    iput p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;)Lcom/transistorsoft/locationmanager/adapter/callback/TSGetCountCallback;

    move-result-object v0

    iget v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSGetCountCallback;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
