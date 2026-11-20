.class public Lcom/transistorsoft/locationmanager/location/SingleLocationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroid/location/Location;


# direct methods
.method public constructor <init>(ILandroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->a:I

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->b:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->a:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;->b:Landroid/location/Location;

    return-object v0
.end method
