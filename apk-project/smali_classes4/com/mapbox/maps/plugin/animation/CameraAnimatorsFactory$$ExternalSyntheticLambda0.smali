.class public final synthetic Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final synthetic f$0:Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;

.field public final synthetic f$1:D

.field public final synthetic f$10:D

.field public final synthetic f$2:Lcom/mapbox/maps/MercatorCoordinate;

.field public final synthetic f$3:Lcom/mapbox/maps/MercatorCoordinate;

.field public final synthetic f$4:D

.field public final synthetic f$5:Z

.field public final synthetic f$6:D

.field public final synthetic f$7:D

.field public final synthetic f$8:D

.field public final synthetic f$9:D


# direct methods
.method public synthetic constructor <init>(Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;DLcom/mapbox/maps/MercatorCoordinate;Lcom/mapbox/maps/MercatorCoordinate;DZDDDDD)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$0:Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;

    iput-wide p2, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$1:D

    iput-object p4, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$2:Lcom/mapbox/maps/MercatorCoordinate;

    iput-object p5, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$3:Lcom/mapbox/maps/MercatorCoordinate;

    iput-wide p6, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$4:D

    iput-boolean p8, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$5:Z

    iput-wide p9, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$6:D

    iput-wide p11, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$7:D

    iput-wide p13, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$8:D

    move-wide p1, p15

    iput-wide p1, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$9:D

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$10:D

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$0:Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;

    iget-wide v2, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$1:D

    iget-object v4, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$2:Lcom/mapbox/maps/MercatorCoordinate;

    iget-object v5, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$3:Lcom/mapbox/maps/MercatorCoordinate;

    iget-wide v6, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$4:D

    iget-boolean v8, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$5:Z

    iget-wide v9, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$6:D

    iget-wide v11, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$7:D

    iget-wide v13, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$8:D

    move-object v15, v1

    move-wide/from16 v16, v2

    iget-wide v1, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$9:D

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory$$ExternalSyntheticLambda0;->f$10:D

    move-object/from16 v20, p2

    check-cast v20, Lcom/mapbox/geojson/Point;

    move-object/from16 v21, p3

    check-cast v21, Lcom/mapbox/geojson/Point;

    move-wide/from16 v22, v18

    move/from16 v19, p1

    move-wide/from16 v24, v1

    move-object v1, v15

    move-wide/from16 v2, v16

    move-wide/from16 v15, v22

    move-wide/from16 v17, v24

    invoke-static/range {v1 .. v21}, Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;->$r8$lambda$XtehicQh3dIHxGPY5rcCPOlsGSI(Lcom/mapbox/maps/plugin/animation/CameraAnimatorsFactory;DLcom/mapbox/maps/MercatorCoordinate;Lcom/mapbox/maps/MercatorCoordinate;DZDDDDDFLcom/mapbox/geojson/Point;Lcom/mapbox/geojson/Point;)Lcom/mapbox/geojson/Point;

    move-result-object v1

    return-object v1
.end method
