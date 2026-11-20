.class Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$a;->a:Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$a;->a:Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;J)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$a;->a:Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;J)V

    return-void
.end method
