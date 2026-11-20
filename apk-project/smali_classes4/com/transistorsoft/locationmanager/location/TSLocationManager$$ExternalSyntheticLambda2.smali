.class public final synthetic Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

.field public final synthetic f$1:Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda2;->f$0:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda2;->f$1:Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda2;->f$0:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda2;->f$1:Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, v1, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->$r8$lambda$AxY-baJIk4rJgYK1PpesjhSKydk(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;Landroid/location/Location;)V

    return-void
.end method
