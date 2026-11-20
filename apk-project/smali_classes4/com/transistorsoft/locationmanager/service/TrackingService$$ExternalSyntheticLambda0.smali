.class public final synthetic Lcom/transistorsoft/locationmanager/service/TrackingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

.field public final synthetic f$1:Lcom/google/android/gms/location/LocationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/location/LocationResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/location/LocationResult;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->$r8$lambda$yBI3JF77rzCAQ_CPRGsYDzdglis(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method
