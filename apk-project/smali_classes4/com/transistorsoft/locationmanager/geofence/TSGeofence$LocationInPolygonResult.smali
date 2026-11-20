.class public Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationInPolygonResult"
.end annotation


# instance fields
.field public final centerIsInPolygon:Z

.field public final confidence:F


# direct methods
.method constructor <init>(FZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;->confidence:F

    .line 3
    iput-boolean p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;->centerIsInPolygon:Z

    return-void
.end method
