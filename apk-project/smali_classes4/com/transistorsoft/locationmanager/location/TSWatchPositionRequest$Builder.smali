.class public Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;
.super Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder<",
        "Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->h:I

    const-wide/16 v0, 0x3e8

    .line 3
    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->i:J

    .line 4
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->e:I

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->i:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;
    .locals 1

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;-><init>(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;)V

    return-object v0
.end method

.method public setInterval(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$Builder;->i:J

    return-object p0
.end method
