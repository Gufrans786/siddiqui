.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;

.field private final c:Ljava/lang/String;

.field final synthetic d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->exists(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;->onResult(Z)V

    return-void
.end method
