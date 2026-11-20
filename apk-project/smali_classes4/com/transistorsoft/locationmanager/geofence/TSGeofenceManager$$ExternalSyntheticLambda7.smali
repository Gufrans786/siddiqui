.class public final synthetic Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda7;->f$0:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda7;->f$0:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->$r8$lambda$YpIj2fh29XgXm_KBiOSuIIUu3Ns(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V

    return-void
.end method
