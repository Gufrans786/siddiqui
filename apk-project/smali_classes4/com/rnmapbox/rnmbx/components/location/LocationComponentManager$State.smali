.class public final Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;
.super Ljava/lang/Object;
.source "LocationComponentManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u00082\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u007f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u0012\u000e\u0010\n\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u0012\u000e\u0010\u000b\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u0012\u000e\u0010\u000c\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019J\u0011\u00107\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tH\u00c6\u0003J\u0011\u00108\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tH\u00c6\u0003J\u0011\u00109\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tH\u00c6\u0003J\u0011\u0010:\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000eH\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0011H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\u0094\u0001\u0010>\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t2\u0010\u0008\u0002\u0010\n\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t2\u0010\u0008\u0002\u0010\u000b\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010?J\u0013\u0010@\u001a\u00020\u00032\u0008\u0010A\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010B\u001a\u00020\u0006H\u00d6\u0001J\t\u0010C\u001a\u00020DH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\n\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001c\"\u0004\u0008 \u0010\u001eR\"\u0010\u000b\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010\u001eR\"\u0010\u000c\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0016\"\u0004\u0008(\u0010)R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0016\"\u0004\u0008/\u0010)R\u0011\u00100\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0016R\u0011\u00102\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u0016\u00a8\u0006E"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;",
        "",
        "showUserLocation",
        "",
        "followUserLocation",
        "tintColor",
        "",
        "bearingImage",
        "Lcom/mapbox/maps/ImageHolder;",
        "Lcom/rnmapbox/rnmbx/v11compat/image/ImageHolder;",
        "topImage",
        "shadowImage",
        "puckBearingSource",
        "Lcom/mapbox/maps/plugin/PuckBearing;",
        "Lcom/rnmapbox/rnmbx/v11compat/location/PuckBearing;",
        "pulsing",
        "scale",
        "",
        "nativeUserLocation",
        "<init>",
        "(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZ)V",
        "getShowUserLocation",
        "()Z",
        "getFollowUserLocation",
        "getTintColor",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getBearingImage",
        "()Lcom/mapbox/maps/ImageHolder;",
        "setBearingImage",
        "(Lcom/mapbox/maps/ImageHolder;)V",
        "getTopImage",
        "setTopImage",
        "getShadowImage",
        "setShadowImage",
        "getPuckBearingSource",
        "()Lcom/mapbox/maps/plugin/PuckBearing;",
        "setPuckBearingSource",
        "(Lcom/mapbox/maps/plugin/PuckBearing;)V",
        "getPulsing",
        "setPulsing",
        "(Z)V",
        "getScale",
        "()D",
        "setScale",
        "(D)V",
        "getNativeUserLocation",
        "setNativeUserLocation",
        "enabled",
        "getEnabled",
        "hidden",
        "getHidden",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "copy",
        "(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZ)Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "rnmapbox_maps_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bearingImage:Lcom/mapbox/maps/ImageHolder;

.field private final followUserLocation:Z

.field private nativeUserLocation:Z

.field private puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

.field private pulsing:Z

.field private scale:D

.field private shadowImage:Lcom/mapbox/maps/ImageHolder;

.field private final showUserLocation:Z

.field private final tintColor:Ljava/lang/Integer;

.field private topImage:Lcom/mapbox/maps/ImageHolder;


# direct methods
.method public constructor <init>(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    .line 51
    iput-boolean p2, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    .line 52
    iput-object p3, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->tintColor:Ljava/lang/Integer;

    .line 53
    iput-object p4, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->bearingImage:Lcom/mapbox/maps/ImageHolder;

    .line 54
    iput-object p5, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->topImage:Lcom/mapbox/maps/ImageHolder;

    .line 55
    iput-object p6, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->shadowImage:Lcom/mapbox/maps/ImageHolder;

    .line 56
    iput-object p7, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

    .line 57
    iput-boolean p8, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->pulsing:Z

    .line 58
    iput-wide p9, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->scale:D

    .line 59
    iput-boolean p11, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->nativeUserLocation:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p12

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v10, v1

    goto :goto_0

    :cond_0
    move/from16 v10, p8

    :goto_0
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v11, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p9

    :goto_1
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v13, v0

    goto :goto_2

    :cond_2
    move/from16 v13, p11

    :goto_2
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 49
    invoke-direct/range {v2 .. v13}, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;-><init>(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZILjava/lang/Object;)Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget-boolean p2, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget-object p3, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->tintColor:Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget-object p4, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->bearingImage:Lcom/mapbox/maps/ImageHolder;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-object p5, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->topImage:Lcom/mapbox/maps/ImageHolder;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-object p6, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->shadowImage:Lcom/mapbox/maps/ImageHolder;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-object p7, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-boolean p8, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->pulsing:Z

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    iget-wide p9, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->scale:D

    :cond_8
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_9

    iget-boolean p11, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->nativeUserLocation:Z

    :cond_9
    move p13, p11

    move-wide p11, p9

    move-object p9, p7

    move p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p13}, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->copy(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZ)Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    return v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->nativeUserLocation:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    return v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->tintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Lcom/mapbox/maps/ImageHolder;
    .locals 1

    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->bearingImage:Lcom/mapbox/maps/ImageHolder;

    return-object v0
.end method

.method public final component5()Lcom/mapbox/maps/ImageHolder;
    .locals 1

    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->topImage:Lcom/mapbox/maps/ImageHolder;

    return-object v0
.end method

.method public final component6()Lcom/mapbox/maps/ImageHolder;
    .locals 1

    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->shadowImage:Lcom/mapbox/maps/ImageHolder;

    return-object v0
.end method

.method public final component7()Lcom/mapbox/maps/plugin/PuckBearing;
    .locals 1

    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->pulsing:Z

    return v0
.end method

.method public final component9()D
    .locals 2

    iget-wide v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->scale:D

    return-wide v0
.end method

.method public final copy(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZ)Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;
    .locals 12

    new-instance v0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;-><init>(ZZLjava/lang/Integer;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/plugin/PuckBearing;ZDZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;

    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    iget-boolean v3, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    iget-boolean v3, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->tintColor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->tintColor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->bearingImage:Lcom/mapbox/maps/ImageHolder;

    iget-object v3, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->bearingImage:Lcom/mapbox/maps/ImageHolder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->topImage:Lcom/mapbox/maps/ImageHolder;

    iget-object v3, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->topImage:Lcom/mapbox/maps/ImageHolder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->shadowImage:Lcom/mapbox/maps/ImageHolder;

    iget-object v3, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->shadowImage:Lcom/mapbox/maps/ImageHolder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

    iget-object v3, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->pulsing:Z

    iget-boolean v3, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->pulsing:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->scale:D

    iget-wide v5, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->scale:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->nativeUserLocation:Z

    iget-boolean p1, p1, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->nativeUserLocation:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getBearingImage()Lcom/mapbox/maps/ImageHolder;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->bearingImage:Lcom/mapbox/maps/ImageHolder;

    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getFollowUserLocation()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    return v0
.end method

.method public final getHidden()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNativeUserLocation()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->nativeUserLocation:Z

    return v0
.end method

.method public final getPuckBearingSource()Lcom/mapbox/maps/plugin/PuckBearing;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

    return-object v0
.end method

.method public final getPulsing()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->pulsing:Z

    return v0
.end method

.method public final getScale()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->scale:D

    return-wide v0
.end method

.method public final getShadowImage()Lcom/mapbox/maps/ImageHolder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->shadowImage:Lcom/mapbox/maps/ImageHolder;

    return-object v0
.end method

.method public final getShowUserLocation()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    return v0
.end method

.method public final getTintColor()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->tintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTopImage()Lcom/mapbox/maps/ImageHolder;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->topImage:Lcom/mapbox/maps/ImageHolder;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->tintColor:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->bearingImage:Lcom/mapbox/maps/ImageHolder;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/mapbox/maps/ImageHolder;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->topImage:Lcom/mapbox/maps/ImageHolder;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/mapbox/maps/ImageHolder;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->shadowImage:Lcom/mapbox/maps/ImageHolder;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/mapbox/maps/ImageHolder;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/mapbox/maps/plugin/PuckBearing;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->pulsing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->scale:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->nativeUserLocation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setBearingImage(Lcom/mapbox/maps/ImageHolder;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->bearingImage:Lcom/mapbox/maps/ImageHolder;

    return-void
.end method

.method public final setNativeUserLocation(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->nativeUserLocation:Z

    return-void
.end method

.method public final setPuckBearingSource(Lcom/mapbox/maps/plugin/PuckBearing;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

    return-void
.end method

.method public final setPulsing(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->pulsing:Z

    return-void
.end method

.method public final setScale(D)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->scale:D

    return-void
.end method

.method public final setShadowImage(Lcom/mapbox/maps/ImageHolder;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->shadowImage:Lcom/mapbox/maps/ImageHolder;

    return-void
.end method

.method public final setTopImage(Lcom/mapbox/maps/ImageHolder;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->topImage:Lcom/mapbox/maps/ImageHolder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->showUserLocation:Z

    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->followUserLocation:Z

    iget-object v2, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->tintColor:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->bearingImage:Lcom/mapbox/maps/ImageHolder;

    iget-object v4, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->topImage:Lcom/mapbox/maps/ImageHolder;

    iget-object v5, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->shadowImage:Lcom/mapbox/maps/ImageHolder;

    iget-object v6, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->puckBearingSource:Lcom/mapbox/maps/plugin/PuckBearing;

    iget-boolean v7, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->pulsing:Z

    iget-wide v8, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->scale:D

    iget-boolean v10, p0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager$State;->nativeUserLocation:Z

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "State(showUserLocation="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", followUserLocation="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bearingImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shadowImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", puckBearingSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pulsing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeUserLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
