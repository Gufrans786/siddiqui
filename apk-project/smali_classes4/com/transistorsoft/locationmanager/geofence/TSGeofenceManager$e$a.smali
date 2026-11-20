.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

.field final synthetic b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$a;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroyed an invalid geofence with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->a()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method
