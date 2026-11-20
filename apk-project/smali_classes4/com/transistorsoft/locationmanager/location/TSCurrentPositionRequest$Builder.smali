.class public Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;
.super Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder<",
        "Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;",
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

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->h:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->i:J

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->i:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;
    .locals 1

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;-><init>(Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;)V

    return-object v0
.end method

.method public setMaximumAge(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->i:J

    return-object p0
.end method
