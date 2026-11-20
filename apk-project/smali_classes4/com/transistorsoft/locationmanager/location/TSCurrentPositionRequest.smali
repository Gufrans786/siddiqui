.class public Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;
.super Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;
    }
.end annotation


# instance fields
.field private final u:Ljava/lang/Long;


# direct methods
.method protected constructor <init>(Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;-><init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)V

    .line 2
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->a(Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;->u:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method a(Landroid/location/Location;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a(Landroid/location/Location;)V

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;->u:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 5
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;->u:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->f:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->finish()V

    .line 8
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x2

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    return-void
.end method

.method public getMaximumAge()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;->u:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
