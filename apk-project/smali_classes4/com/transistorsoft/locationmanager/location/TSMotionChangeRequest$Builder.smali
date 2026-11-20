.class public Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;
.super Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder<",
        "Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->h:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getPersistMode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 7
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->c:Z

    goto :goto_1

    .line 9
    :cond_2
    iput-boolean v2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->c:Z

    :goto_1
    const/16 p1, 0x1e

    .line 11
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->b:I

    const/4 p1, 0x3

    .line 12
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->d:I

    const/16 p1, 0x32

    .line 13
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->e:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;
    .locals 2

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;-><init>(Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$a;)V

    return-object v0
.end method
