.class Lcom/transistorsoft/locationmanager/location/TSLocationManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onSingleLocationResult(Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

.field final synthetic b:Lcom/transistorsoft/locationmanager/location/TSLocation;

.field final synthetic c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$d;->c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$d;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$d;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$d;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$d;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->onSuccess(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    return-void
.end method
