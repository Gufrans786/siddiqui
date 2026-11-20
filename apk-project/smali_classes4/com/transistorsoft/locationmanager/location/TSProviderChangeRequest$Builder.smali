.class public Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;
.super Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder<",
        "Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->h:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableProviderChangeRecord()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->c:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;
    .locals 1

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;-><init>(Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;)V

    return-object v0
.end method
