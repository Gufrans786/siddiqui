.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->setOdometer(Ljava/lang/Float;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

.field final synthetic b:Ljava/lang/Float;

.field final synthetic c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

.field final synthetic d:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/location/TSLocationManager;Ljava/lang/Float;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;->d:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;->b:Ljava/lang/Float;

    iput-object p4, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;->b:Ljava/lang/Float;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->setOdometer(Ljava/lang/Float;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method
