.class public final synthetic Lcom/mapbox/common/location/GoogleDeviceLocationProvider$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/mapbox/common/location/PermissionStatus;

.field public final synthetic f$1:Lcom/mapbox/common/location/GoogleDeviceLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/mapbox/common/location/PermissionStatus;Lcom/mapbox/common/location/GoogleDeviceLocationProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mapbox/common/location/GoogleDeviceLocationProvider$$ExternalSyntheticLambda5;->f$0:Lcom/mapbox/common/location/PermissionStatus;

    iput-object p2, p0, Lcom/mapbox/common/location/GoogleDeviceLocationProvider$$ExternalSyntheticLambda5;->f$1:Lcom/mapbox/common/location/GoogleDeviceLocationProvider;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mapbox/common/location/GoogleDeviceLocationProvider$$ExternalSyntheticLambda5;->f$0:Lcom/mapbox/common/location/PermissionStatus;

    iget-object v1, p0, Lcom/mapbox/common/location/GoogleDeviceLocationProvider$$ExternalSyntheticLambda5;->f$1:Lcom/mapbox/common/location/GoogleDeviceLocationProvider;

    invoke-static {v0, v1, p1}, Lcom/mapbox/common/location/GoogleDeviceLocationProvider;->$r8$lambda$-NPzQ_QKLFakPJSyUdZU6WkAWSY(Lcom/mapbox/common/location/PermissionStatus;Lcom/mapbox/common/location/GoogleDeviceLocationProvider;Ljava/lang/Exception;)V

    return-void
.end method
