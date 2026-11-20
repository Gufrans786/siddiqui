.class public final synthetic Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda3;->f$0:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda3;->f$0:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->$r8$lambda$LwmFD1xppa3SXkEjTHzWKxi5X7Q(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method
