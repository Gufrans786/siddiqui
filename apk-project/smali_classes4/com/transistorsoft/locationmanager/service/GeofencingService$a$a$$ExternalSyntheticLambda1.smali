.class public final synthetic Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;

.field public final synthetic f$1:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a$$ExternalSyntheticLambda1;->f$0:Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a$$ExternalSyntheticLambda1;->f$1:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a$$ExternalSyntheticLambda1;->f$0:Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a$$ExternalSyntheticLambda1;->f$1:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;->$r8$lambda$iQSvDDbYXzYJ8ibu8Ntq3LsiHsU(Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;Landroid/location/Location;)V

    return-void
.end method
