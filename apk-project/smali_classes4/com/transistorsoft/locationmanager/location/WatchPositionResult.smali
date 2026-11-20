.class public Lcom/transistorsoft/locationmanager/location/WatchPositionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/location/Location;

.field private final b:I


# direct methods
.method public constructor <init>(ILandroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;->b:I

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;->a:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;->a:Landroid/location/Location;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;->b:I

    return v0
.end method
