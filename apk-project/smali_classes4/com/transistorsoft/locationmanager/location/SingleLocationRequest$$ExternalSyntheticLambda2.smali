.class public final synthetic Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

.field public final synthetic f$1:Lcom/transistorsoft/locationmanager/location/SingleLocationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda2;->f$0:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda2;->f$1:Lcom/transistorsoft/locationmanager/location/SingleLocationResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda2;->f$0:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$$ExternalSyntheticLambda2;->f$1:Lcom/transistorsoft/locationmanager/location/SingleLocationResult;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->$r8$lambda$wZMredC4V-9tNL3REvihMtzQq8s(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V

    return-void
.end method
