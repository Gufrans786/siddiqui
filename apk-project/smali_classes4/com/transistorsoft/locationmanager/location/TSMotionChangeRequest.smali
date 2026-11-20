.class public Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;
.super Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;-><init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;-><init>(Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;)V

    return-void
.end method


# virtual methods
.method a(Landroid/location/Location;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a(Landroid/location/Location;)V

    .line 3
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    move-result-wide v0

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->f:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    const-wide/16 v2, 0x7530

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->finish()V

    :cond_0
    return-void
.end method
