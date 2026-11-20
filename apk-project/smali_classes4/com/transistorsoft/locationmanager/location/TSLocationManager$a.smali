.class Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentPosition(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

.field final synthetic b:Lcom/transistorsoft/locationmanager/location/TSLocationManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;->b:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->g()V

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;-><init>(ILandroid/location/Location;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;->b:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onSingleLocationResult(Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V

    .line 4
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$a;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->g()V

    :cond_0
    return-void
.end method
