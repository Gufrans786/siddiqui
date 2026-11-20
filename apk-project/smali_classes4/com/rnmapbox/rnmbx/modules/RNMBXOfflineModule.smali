.class public final Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNMBXOfflineModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNMBXOfflineModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNMBXOfflineModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNMBXOfflineModule.kt\ncom/rnmapbox/rnmbx/modules/RNMBXOfflineModule\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,679:1\n1563#2:680\n1634#2,3:681\n1563#2:689\n1634#2,3:690\n1869#2,2:697\n1869#2,2:699\n1#3:684\n126#4:685\n153#4,3:686\n37#5:693\n36#5,3:694\n*S KotlinDebug\n*F\n+ 1 RNMBXOfflineModule.kt\ncom/rnmapbox/rnmbx/modules/RNMBXOfflineModule\n*L\n150#1:680\n150#1:681,3\n391#1:689\n391#1:690,3\n545#1:697,2\n539#1:699,2\n383#1:685\n383#1:686,3\n407#1:693\n407#1:694,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 d2\u00020\u0001:\u0001dB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u001c\u001a\u00020\u0008H\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0008H\u0007J\u0017\u0010 \u001a\u00020\u001e2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0007\u00a2\u0006\u0002\u0010#J\u0018\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0007J\u0018\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020(H\u0007J\u0018\u0010+\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020(H\u0007J\u0018\u0010,\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020(H\u0007J\u0010\u0010-\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\"H\u0007J\u0018\u0010/\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020(H\u0007J\u0010\u00100\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(H\u0007J\u001b\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u001e022\u0006\u00103\u001a\u00020\t\u00a2\u0006\u0004\u00084\u00105J\u001e\u00106\u001a\u00020\u001e2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u000209082\u0006\u0010\'\u001a\u00020(H\u0002J\"\u0010:\u001a\u00020&2\u0006\u0010;\u001a\u0002092\u0006\u0010<\u001a\u00020=2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0002J\u0010\u0010@\u001a\u00020A2\u0006\u0010;\u001a\u000209H\u0002J\u0010\u0010B\u001a\u00020C2\u0006\u00103\u001a\u00020\tH\u0002J,\u0010B\u001a\u00020C2\u0006\u0010*\u001a\u00020\u00082\u0008\u0010D\u001a\u0004\u0018\u00010A2\u0006\u0010E\u001a\u00020F2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0002J \u0010G\u001a\u00020\u001e2\u0006\u0010D\u001a\u00020A2\u0006\u0010>\u001a\u00020?2\u0006\u0010E\u001a\u00020FH\u0002J\u0018\u0010H\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010I\u001a\u00020JH\u0002J\u0010\u0010K\u001a\u00020=2\u0006\u0010L\u001a\u00020MH\u0002J\u0010\u0010N\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(H\u0007J\u0008\u0010O\u001a\u00020\u001eH\u0007J\u0010\u0010P\u001a\u00020\u001e2\u0006\u0010Q\u001a\u00020\u0010H\u0007J\u0014\u0010R\u001a\u0004\u0018\u00010S2\u0008\u0010>\u001a\u0004\u0018\u00010\u0008H\u0002J\u0010\u0010T\u001a\u00020\u001e2\u0006\u0010U\u001a\u00020VH\u0002J \u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020\u00082\u0006\u0010^\u001a\u00020\u00082\u0006\u0010_\u001a\u00020\u0008H\u0002J \u0010`\u001a\u00020\\2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010D\u001a\u00020A2\u0006\u0010E\u001a\u00020FH\u0002J\u0012\u0010a\u001a\u0004\u0018\u00010?2\u0006\u0010b\u001a\u00020cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t`\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010W\u001a\u00020X8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010Z\u00a8\u0006e"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "mReactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "tileRegionPacks",
        "Ljava/util/HashMap;",
        "",
        "Lcom/rnmapbox/rnmbx/modules/TileRegionPack;",
        "Lkotlin/collections/HashMap;",
        "getTileRegionPacks",
        "()Ljava/util/HashMap;",
        "setTileRegionPacks",
        "(Ljava/util/HashMap;)V",
        "mProgressEventThrottle",
        "",
        "tileStore",
        "Lcom/mapbox/common/TileStore;",
        "getTileStore",
        "()Lcom/mapbox/common/TileStore;",
        "tileStore$delegate",
        "Lkotlin/Lazy;",
        "offlineManager",
        "Lcom/mapbox/maps/OfflineManager;",
        "getOfflineManager",
        "()Lcom/mapbox/maps/OfflineManager;",
        "offlineManager$delegate",
        "getName",
        "addListener",
        "",
        "eventName",
        "removeListeners",
        "count",
        "",
        "(Ljava/lang/Integer;)V",
        "createPack",
        "options",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "getPackStatus",
        "name",
        "resumePackDownload",
        "pausePackDownload",
        "setTileCountLimit",
        "tileCountLimit",
        "deletePack",
        "getPacks",
        "startLoading",
        "Lkotlin/Result;",
        "pack",
        "startLoading-IoAF18A",
        "(Lcom/rnmapbox/rnmbx/modules/TileRegionPack;)Ljava/lang/Object;",
        "convertRegionsToJSON",
        "tileRegions",
        "",
        "Lcom/mapbox/common/TileRegion;",
        "convertRegionToJSON",
        "region",
        "geometry",
        "Lcom/mapbox/geojson/Geometry;",
        "metadata",
        "Lorg/json/JSONObject;",
        "toProgress",
        "Lcom/mapbox/common/TileRegionLoadProgress;",
        "_makeRegionStatusPayload",
        "Lcom/facebook/react/bridge/WritableMap;",
        "progress",
        "state",
        "Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;",
        "offlinePackProgressDidChange",
        "offlinePackDidReceiveError",
        "error",
        "Lcom/mapbox/common/TileRegionError;",
        "convertPointPairToBounds",
        "boundsFC",
        "Lcom/mapbox/geojson/FeatureCollection;",
        "resetDatabase",
        "migrateOfflineCache",
        "setProgressEventThrottle",
        "eventThrottle",
        "getMetadataBytes",
        "",
        "sendEvent",
        "event",
        "Lcom/rnmapbox/rnmbx/events/IEvent;",
        "eventEmitter",
        "Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;",
        "getEventEmitter",
        "()Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;",
        "makeErrorEvent",
        "Lcom/rnmapbox/rnmbx/events/OfflineEvent;",
        "regionName",
        "errorType",
        "message",
        "makeProgressEvent",
        "toJSONObjectSupportingLegacyMetadata",
        "value",
        "Lcom/mapbox/bindgen/Value;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$Companion;

.field public static final LOG_TAG:Ljava/lang/String; = "RNMBXOfflineModule"

.field public static final OFFLINE_ERROR:Ljava/lang/String; = "MapboxOfflineRegionError"

.field public static final OFFLINE_PROGRESS:Ljava/lang/String; = "MapboxOfflineRegionProgress"

.field public static final REACT_CLASS:Ljava/lang/String; = "RNMBXOfflineModule"


# instance fields
.field private mProgressEventThrottle:D

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final offlineManager$delegate:Lkotlin/Lazy;

.field private tileRegionPacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/rnmapbox/rnmbx/modules/TileRegionPack;",
            ">;"
        }
    .end annotation
.end field

.field private final tileStore$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$0SRQQq-ulpasH-SJ-9LX3sC3hZc(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->offlineManager_delegate$lambda$2$lambda$1(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6U7VPdYSxXyhEj1_3KNlZylpDIk(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/json/JSONObject;Ljava/lang/String;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->startLoading_IoAF18A$lambda$16(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/json/JSONObject;Ljava/lang/String;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8iPLdcrQcSPruMs2Acba4KEWbHE(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Lcom/mapbox/common/TileStore;
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileStore_delegate$lambda$0(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Lcom/mapbox/common/TileStore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JEWyYVBlq2v7KNLrR_Nk6q-QnKk(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lcom/mapbox/common/TileRegion;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getPackStatus$lambda$10$lambda$8$lambda$7(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lcom/mapbox/common/TileRegion;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MZqbQ7uNnXEQtBYKrf9V1P_bBoI(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->resetDatabase$lambda$29(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TqfCx8q4_srPFn6yitjeDPKZpLg(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->setTileCountLimit$lambda$12(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WQ71I7-O7ZlKZga_3-CF67P-yDw(Ljava/util/Map;Lcom/mapbox/common/TileRegion;Ljava/util/concurrent/CountDownLatch;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->convertRegionsToJSON$lambda$17(Ljava/util/Map;Lcom/mapbox/common/TileRegion;Ljava/util/concurrent/CountDownLatch;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTLzYIymTVOWmYWLTk36XguqJ5w(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lorg/json/JSONObject;Lcom/mapbox/common/TileRegionLoadProgress;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->startLoading_IoAF18A$lambda$13(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lorg/json/JSONObject;Lcom/mapbox/common/TileRegionLoadProgress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jWplOzths8SEnX0_CAHFp1CPxLI(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Lcom/mapbox/maps/OfflineManager;
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->offlineManager_delegate$lambda$2(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Lcom/mapbox/maps/OfflineManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jneZsDaqCSI00vqkNqe5SvqL0oc(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->resetDatabase$lambda$29$lambda$27$lambda$26(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sO1AE3W_e90xWdRqqpJtk3Voyxg(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getPackStatus$lambda$10(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$twmANsGBqSnikzRzn-xjZ4tOTus(Ljava/util/Map;Lcom/mapbox/common/TileRegion;Ljava/util/concurrent/CountDownLatch;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->convertRegionsToJSON$lambda$18(Ljava/util/Map;Lcom/mapbox/common/TileRegion;Ljava/util/concurrent/CountDownLatch;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->Companion:Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    const-string v0, "mReactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 102
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 106
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    const-wide v0, 0x4072c00000000000L    # 300.0

    .line 107
    iput-wide v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->mProgressEventThrottle:D

    .line 110
    new-instance p1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda4;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileStore$delegate:Lkotlin/Lazy;

    .line 116
    new-instance p1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda5;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->offlineManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final _makeRegionStatusPayload(Lcom/rnmapbox/rnmbx/modules/TileRegionPack;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 463
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getProgress()Lcom/mapbox/common/TileRegionLoadProgress;

    move-result-object v1

    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getState()Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    move-result-object v2

    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getMetadata()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->_makeRegionStatusPayload(Ljava/lang/String;Lcom/mapbox/common/TileRegionLoadProgress;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method private final _makeRegionStatusPayload(Ljava/lang/String;Lcom/mapbox/common/TileRegionLoadProgress;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;
    .locals 9

    .line 467
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "createMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    const-string v0, "percentage"

    const/4 v1, 0x2

    const-string v2, "name"

    const/4 v3, 0x1

    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz p2, :cond_1

    const/16 v7, 0x9

    .line 470
    new-array v7, v7, [Lkotlin/Pair;

    invoke-static {p2}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleKt;->hasCompleted(Lcom/mapbox/common/TileRegionLoadProgress;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object p3, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->COMPLETE:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    :cond_0
    invoke-virtual {p3}, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->getRawValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, v7, v5

    .line 471
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v7, v3

    .line 472
    invoke-static {p2}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleKt;->toPercentage(Lcom/mapbox/common/TileRegionLoadProgress;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v7, v1

    .line 473
    invoke-virtual {p2}, Lcom/mapbox/common/TileRegionLoadProgress;->getCompletedResourceCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "completedResourceCount"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v7, v6

    .line 474
    invoke-virtual {p2}, Lcom/mapbox/common/TileRegionLoadProgress;->getCompletedResourceSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "completedResourceSize"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x4

    aput-object p1, v7, p3

    .line 475
    invoke-virtual {p2}, Lcom/mapbox/common/TileRegionLoadProgress;->getErroredResourceCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "erroredResourceCount"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x5

    aput-object p1, v7, p3

    .line 476
    invoke-virtual {p2}, Lcom/mapbox/common/TileRegionLoadProgress;->getLoadedResourceSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "loadedResourceSize"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x6

    aput-object p1, v7, p3

    .line 477
    invoke-virtual {p2}, Lcom/mapbox/common/TileRegionLoadProgress;->getLoadedResourceCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "loadedResourceCount"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x7

    aput-object p1, v7, p3

    .line 478
    invoke-virtual {p2}, Lcom/mapbox/common/TileRegionLoadProgress;->getRequiredResourceCount()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "requiredResourceCount"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 p2, 0x8

    aput-object p1, v7, p2

    .line 469
    invoke-static {v7}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    goto :goto_0

    .line 482
    :cond_1
    new-array p2, v6, [Lkotlin/Pair;

    invoke-virtual {p3}, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->getRawValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p2, v5

    .line 483
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p2, v3

    const/4 p1, 0x0

    .line 484
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p2, v1

    .line 481
    invoke-static {p2}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    :goto_0
    if-eqz p4, :cond_2

    .line 488
    const-string p2, "metadata"

    invoke-static {p4}, Lcom/rnmapbox/rnmbx/utils/extensions/JSONObjectKt;->toReadableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_2
    return-object p1
.end method

.method public static final synthetic access$convertRegionsToJSON(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/util/List;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->convertRegionsToJSON(Ljava/util/List;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method private final convertPointPairToBounds(Lcom/mapbox/geojson/FeatureCollection;)Lcom/mapbox/geojson/Geometry;
    .locals 9

    .line 511
    invoke-static {p1}, Lcom/rnmapbox/rnmbx/utils/extensions/FeatureCollectionKt;->toGeometryCollection(Lcom/mapbox/geojson/FeatureCollection;)Lcom/mapbox/geojson/GeometryCollection;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Lcom/mapbox/geojson/GeometryCollection;->geometries()Ljava/util/List;

    move-result-object v0

    const-string v1, "geometries(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 514
    check-cast p1, Lcom/mapbox/geojson/Geometry;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 516
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/geojson/Point;

    const/4 v4, 0x1

    .line 517
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/geojson/Point;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 526
    new-array p1, p1, [Lcom/mapbox/geojson/Point;

    aput-object v3, p1, v1

    .line 527
    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v1

    aput-object v1, p1, v4

    .line 528
    aput-object v0, p1, v2

    .line 529
    invoke-virtual {v3}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const/4 v0, 0x4

    .line 530
    aput-object v3, p1, v0

    .line 525
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 524
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 523
    invoke-static {p1}, Lcom/mapbox/geojson/Polygon;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/Polygon;

    move-result-object p1

    const-string v0, "fromLngLats(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mapbox/geojson/Geometry;

    return-object p1

    .line 519
    :cond_2
    :goto_0
    check-cast p1, Lcom/mapbox/geojson/Geometry;

    return-object p1
.end method

.method private final convertRegionToJSON(Lcom/mapbox/common/TileRegion;Lcom/mapbox/geojson/Geometry;Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 6

    .line 415
    invoke-static {p2}, Lcom/rnmapbox/rnmbx/utils/extensions/GeometryKt;->calculateBoundingBox(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/geojson/BoundingBox;

    move-result-object p2

    .line 418
    invoke-virtual {p2}, Lcom/mapbox/geojson/BoundingBox;->northeast()Lcom/mapbox/geojson/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 419
    invoke-virtual {p2}, Lcom/mapbox/geojson/BoundingBox;->northeast()Lcom/mapbox/geojson/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 420
    invoke-virtual {p2}, Lcom/mapbox/geojson/BoundingBox;->southwest()Lcom/mapbox/geojson/Point;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 421
    invoke-virtual {p2}, Lcom/mapbox/geojson/BoundingBox;->southwest()Lcom/mapbox/geojson/Point;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {v0, v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 417
    invoke-static {p2}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableArrayOf([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 423
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getCompletedResourceCount()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getRequiredResourceCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez p3, :cond_1

    .line 425
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 426
    :cond_1
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const/4 v3, 0x6

    .line 429
    new-array v3, v3, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getRequiredResourceCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "requiredResourceCount"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v2

    .line 430
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getCompletedResourceCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "completedResourceCount"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v1

    .line 431
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getCompletedResourceSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "completedResourceSize"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    if-eqz v0, :cond_2

    .line 432
    sget-object v0, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->COMPLETE:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->UNKNOWN:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    :goto_1
    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->getRawValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v3, v1

    .line 433
    const-string v0, "metadata"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v0, 0x4

    aput-object p3, v3, v0

    .line 434
    const-string p3, "bounds"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, v3, p3

    .line 428
    invoke-static {v3}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 437
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getRequiredResourceCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    const-string v0, "percentage"

    if-lez p3, :cond_3

    .line 438
    invoke-static {p1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleKt;->toPercentage(Lcom/mapbox/common/TileRegion;)D

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 440
    :cond_3
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 443
    :goto_2
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getExpires()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 445
    const-string p3, "expires"

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_4
    check-cast p2, Lcom/facebook/react/bridge/ReadableMap;

    return-object p2
.end method

.method private final convertRegionsToJSON(Ljava/util/List;Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mapbox/common/TileRegion;",
            ">;",
            "Lcom/facebook/react/bridge/Promise;",
            ")V"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 354
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 355
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 356
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 359
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/common/TileRegion;

    .line 360
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mapbox/common/TileRegion;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda7;

    invoke-direct {v6, v1, v3, v0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map;Lcom/mapbox/common/TileRegion;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5, v6}, Lcom/mapbox/common/TileStore;->getTileRegionGeometry(Ljava/lang/String;Lcom/mapbox/common/TileRegionGeometryCallback;)V

    .line 365
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mapbox/common/TileRegion;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda8;

    invoke-direct {v6, v2, v3, v0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda8;-><init>(Ljava/util/Map;Lcom/mapbox/common/TileRegion;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5, v6}, Lcom/mapbox/common/TileStore;->getTileRegionMetadata(Ljava/lang/String;Lcom/mapbox/common/TileRegionMetadataCallback;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    sget-object p1, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    const-string v3, "RNMBXOfflineModule"

    const-string v4, "convertRegionsToJSON. failed to iterate regions"

    invoke-virtual {p1, v3, v4}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 377
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 684
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 377
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/bindgen/Expected;

    invoke-virtual {v0}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/common/TileRegionError;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 379
    const-string p1, "convertRegionsToJSON"

    invoke-virtual {v0}, Lcom/mapbox/common/TileRegionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 685
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 686
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 687
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 384
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mapbox/bindgen/Expected;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/common/TileRegion;

    .line 385
    invoke-virtual {v5}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/mapbox/geojson/Geometry;

    .line 386
    new-instance v6, Lkotlin/Pair;

    new-instance v7, Lkotlin/Triple;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mapbox/bindgen/Expected;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mapbox/bindgen/Value;

    goto :goto_3

    :cond_4
    move-object v8, v3

    :goto_3
    invoke-direct {v7, v5, v1, v8}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v4, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 687
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 688
    :cond_5
    check-cast p1, Ljava/util/List;

    .line 391
    check-cast p1, Ljava/lang/Iterable;

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 690
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 691
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Triple;

    .line 392
    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/geojson/Geometry;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/common/TileRegion;

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/bindgen/Value;

    if-eqz v1, :cond_6

    .line 393
    invoke-direct {p0, v1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->toJSONObjectSupportingLegacyMetadata(Lcom/mapbox/bindgen/Value;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v3

    .line 394
    :goto_5
    invoke-direct {p0, v4, v2, v1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->convertRegionToJSON(Lcom/mapbox/common/TileRegion;Lcom/mapbox/geojson/Geometry;Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 395
    iget-object v5, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/mapbox/common/TileRegion;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    if-nez v5, :cond_8

    new-instance v5, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    .line 396
    invoke-virtual {v4}, Lcom/mapbox/common/TileRegion;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getId(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    sget-object v7, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->UNKNOWN:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    .line 398
    invoke-direct {p0, v4}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->toProgress(Lcom/mapbox/common/TileRegion;)Lcom/mapbox/common/TileRegionLoadProgress;

    move-result-object v8

    if-nez v1, :cond_7

    .line 399
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 395
    :cond_7
    invoke-direct {v5, v6, v7, v8, v1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;-><init>(Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;Lcom/mapbox/common/TileRegionLoadProgress;Lorg/json/JSONObject;)V

    .line 402
    :cond_8
    invoke-static {v4}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleKt;->hasCompleted(Lcom/mapbox/common/TileRegion;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 403
    sget-object v1, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->COMPLETE:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    invoke-virtual {v5, v1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->setState(Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)V

    .line 405
    :cond_9
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v4}, Lcom/mapbox/common/TileRegion;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 692
    :cond_a
    check-cast v0, Ljava/util/List;

    .line 689
    check-cast v0, Ljava/util/Collection;

    const/4 p1, 0x0

    .line 696
    new-array p1, p1, [Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 407
    check-cast p1, [Lcom/facebook/react/bridge/ReadableMap;

    .line 391
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 390
    invoke-static {p1}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableArrayOf([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 389
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    .line 410
    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private static final convertRegionsToJSON$lambda$17(Ljava/util/Map;Lcom/mapbox/common/TileRegion;Ljava/util/concurrent/CountDownLatch;Lcom/mapbox/bindgen/Expected;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static final convertRegionsToJSON$lambda$18(Ljava/util/Map;Lcom/mapbox/common/TileRegion;Ljava/util/concurrent/CountDownLatch;Lcom/mapbox/bindgen/Expected;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final getEventEmitter()Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    const-string v1, "getJSModule(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    return-object v0
.end method

.method private final getMetadataBytes(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 592
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 596
    :cond_0
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "forName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "getBytes(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 598
    const-string v1, "RNMBXOfflineModule"

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private static final getPackStatus$lambda$10(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V
    .locals 2

    const-string v0, "expected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p3}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/common/TileRegion;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object p3

    new-instance v1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda11;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lcom/mapbox/common/TileRegion;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p3, p1, v1}, Lcom/mapbox/common/TileStore;->getTileRegionMetadata(Ljava/lang/String;Lcom/mapbox/common/TileRegionMetadataCallback;)V

    return-void

    .line 195
    :cond_0
    invoke-virtual {p3}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/mapbox/common/TileRegionError;

    invoke-virtual {p0}, Lcom/mapbox/common/TileRegionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RNMBXOfflineModule"

    invoke-interface {p2, p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final getPackStatus$lambda$10$lambda$8$lambda$7(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lcom/mapbox/common/TileRegion;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V
    .locals 8

    const-string v0, "expected"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p4}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/bindgen/Value;

    if-eqz v0, :cond_1

    .line 183
    new-instance v1, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    .line 185
    invoke-direct {p0, p2}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->toProgress(Lcom/mapbox/common/TileRegion;)Lcom/mapbox/common/TileRegionLoadProgress;

    move-result-object v4

    .line 186
    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->toJSONObjectSupportingLegacyMetadata(Lcom/mapbox/bindgen/Value;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    move-object v5, p2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    .line 183
    invoke-direct/range {v1 .. v7}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;-><init>(Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;Lcom/mapbox/common/TileRegionLoadProgress;Lorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 188
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-direct {p0, v1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->_makeRegionStatusPayload(Lcom/rnmapbox/rnmbx/modules/TileRegionPack;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 191
    :cond_1
    invoke-virtual {p4}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/mapbox/common/TileRegionError;

    invoke-virtual {p0}, Lcom/mapbox/common/TileRegionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RNMBXOfflineModule"

    invoke-interface {p3, p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final makeErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/rnmapbox/rnmbx/events/OfflineEvent;
    .locals 2

    .line 616
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    .line 617
    const-string v1, "message"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string p3, "name"

    invoke-interface {v0, p3, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance p1, Lcom/rnmapbox/rnmbx/events/OfflineEvent;

    const-string p3, "MapboxOfflineRegionError"

    invoke-direct {p1, p3, p2, v0}, Lcom/rnmapbox/rnmbx/events/OfflineEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-object p1
.end method

.method private final makeProgressEvent(Ljava/lang/String;Lcom/mapbox/common/TileRegionLoadProgress;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)Lcom/rnmapbox/rnmbx/events/OfflineEvent;
    .locals 2

    .line 623
    new-instance v0, Lcom/rnmapbox/rnmbx/events/OfflineEvent;

    const/4 v1, 0x0

    .line 626
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->_makeRegionStatusPayload(Ljava/lang/String;Lcom/mapbox/common/TileRegionLoadProgress;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 623
    const-string p2, "MapboxOfflineRegionProgress"

    const-string p3, "offlinestatus"

    invoke-direct {v0, p2, p3, p1}, Lcom/rnmapbox/rnmbx/events/OfflineEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-object v0
.end method

.method private static final offlineManager_delegate$lambda$2(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Lcom/mapbox/maps/OfflineManager;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda0;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)V

    invoke-static {v0, v1}, Lcom/rnmapbox/rnmbx/v11compat/offlinemanager/OfflineManagerKt;->getOfflineManager(Lcom/mapbox/common/TileStore;Lkotlin/jvm/functions/Function0;)Lcom/mapbox/maps/OfflineManager;

    move-result-object p0

    return-object p0
.end method

.method private static final offlineManager_delegate$lambda$2$lambda$1(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Ljava/lang/String;
    .locals 1

    .line 118
    sget-object v0, Lcom/rnmapbox/rnmbx/modules/RNMBXModule;->Companion:Lcom/rnmapbox/rnmbx/modules/RNMBXModule$Companion;

    iget-object p0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXModule$Companion;->getAccessToken(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final offlinePackDidReceiveError(Ljava/lang/String;Lcom/mapbox/common/TileRegionError;)V
    .locals 3

    .line 499
    new-instance v0, Lcom/rnmapbox/rnmbx/events/OfflineEvent;

    const/4 v1, 0x2

    .line 503
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "name"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 504
    const-string p1, "message"

    invoke-virtual {p2}, Lcom/mapbox/common/TileRegionError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 502
    invoke-static {v1}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 499
    const-string p2, "MapboxOfflineRegionError"

    const-string v1, "offlineerror"

    invoke-direct {v0, p2, v1, p1}, Lcom/rnmapbox/rnmbx/events/OfflineEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 507
    check-cast v0, Lcom/rnmapbox/rnmbx/events/IEvent;

    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->sendEvent(Lcom/rnmapbox/rnmbx/events/IEvent;)V

    return-void
.end method

.method private final offlinePackProgressDidChange(Lcom/mapbox/common/TileRegionLoadProgress;Lorg/json/JSONObject;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)V
    .locals 1

    .line 495
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1, p3}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->makeProgressEvent(Ljava/lang/String;Lcom/mapbox/common/TileRegionLoadProgress;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)Lcom/rnmapbox/rnmbx/events/OfflineEvent;

    move-result-object p1

    check-cast p1, Lcom/rnmapbox/rnmbx/events/IEvent;

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->sendEvent(Lcom/rnmapbox/rnmbx/events/IEvent;)V

    return-void
.end method

.method private static final resetDatabase$lambda$29(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V
    .locals 3

    const-string v0, "expected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 539
    check-cast v0, Ljava/lang/Iterable;

    .line 699
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/common/TileRegion;

    .line 540
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mapbox/common/TileRegion;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/common/TileStore;->removeTileRegion(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getOfflineManager()Lcom/mapbox/maps/OfflineManager;

    move-result-object p2

    new-instance v0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda6;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p2, v0}, Lcom/mapbox/maps/OfflineManager;->getAllStylePacks(Lcom/mapbox/maps/StylePacksCallback;)V

    const/4 p0, 0x0

    .line 555
    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 557
    :cond_1
    sget-object p0, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    invoke-virtual {p2}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetDatabase: error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNMBXOfflineModule"

    invoke-virtual {p0, v1, v0}, Lcom/rnmapbox/rnmbx/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance p0, Ljava/lang/Error;

    invoke-virtual {p2}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mapbox/common/TileRegionError;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mapbox/common/TileRegionError;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_2
    const-string p2, "n/a"

    :cond_3
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final resetDatabase$lambda$29$lambda$27$lambda$26(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lcom/facebook/react/bridge/Promise;Lcom/mapbox/bindgen/Expected;)V
    .locals 3

    const-string v0, "expected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 545
    check-cast v0, Ljava/lang/Iterable;

    .line 697
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/StylePack;

    .line 546
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getOfflineManager()Lcom/mapbox/maps/OfflineManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mapbox/maps/StylePack;->getStyleURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/OfflineManager;->removeStylePack(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 548
    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 550
    :cond_1
    sget-object p0, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    invoke-virtual {p2}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetDatabase: error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNMBXOfflineModule"

    invoke-virtual {p0, v1, v0}, Lcom/rnmapbox/rnmbx/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance p0, Ljava/lang/Error;

    invoke-virtual {p2}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mapbox/maps/StylePackError;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mapbox/maps/StylePackError;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_2
    const-string p2, "n/a"

    :cond_3
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final sendEvent(Lcom/rnmapbox/rnmbx/events/IEvent;)V
    .locals 2

    .line 604
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getEventEmitter()Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    move-result-object v0

    .line 605
    invoke-interface {p1}, Lcom/rnmapbox/rnmbx/events/IEvent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/rnmapbox/rnmbx/events/IEvent;->toJSON()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static final setTileCountLimit$lambda$12(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Ljava/lang/String;
    .locals 1

    .line 229
    sget-object v0, Lcom/rnmapbox/rnmbx/modules/RNMBXModule;->Companion:Lcom/rnmapbox/rnmbx/modules/RNMBXModule$Companion;

    iget-object p0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXModule$Companion;->getAccessToken(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final startLoading_IoAF18A$lambda$13(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lorg/json/JSONObject;Lcom/mapbox/common/TileRegionLoadProgress;)V
    .locals 1

    const-string v0, "progress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iput-object p4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 313
    iget-object p0, p1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    invoke-virtual {p0, p4}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->setProgress(Lcom/mapbox/common/TileRegionLoadProgress;)V

    .line 314
    iget-object p0, p1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    sget-object p2, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->ACTIVE:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    invoke-virtual {p0, p2}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->setState(Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)V

    .line 316
    sget-object p0, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->ACTIVE:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    invoke-direct {p1, p4, p3, p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->offlinePackProgressDidChange(Lcom/mapbox/common/TileRegionLoadProgress;Lorg/json/JSONObject;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)V

    return-void
.end method

.method private static final startLoading_IoAF18A$lambda$16(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/json/JSONObject;Ljava/lang/String;Lcom/mapbox/bindgen/Expected;)V
    .locals 1

    const-string v0, "expected"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p4}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/common/TileRegion;

    if-eqz v0, :cond_1

    .line 320
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/mapbox/common/TileRegionLoadProgress;

    if-eqz p1, :cond_0

    .line 325
    sget-object p4, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->COMPLETE:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    .line 322
    invoke-direct {p0, p1, p2, p4}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->offlinePackProgressDidChange(Lcom/mapbox/common/TileRegionLoadProgress;Lorg/json/JSONObject;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)V

    goto :goto_0

    .line 328
    :cond_0
    sget-object p1, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    .line 329
    const-string p2, "RNMBXOfflineModule"

    .line 330
    const-string/jumbo p4, "startLoading: tile region completed, but got no progress information"

    .line 328
    invoke-virtual {p1, p2, p4}, Lcom/rnmapbox/rnmbx/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    iget-object p0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    sget-object p1, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->COMPLETE:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    invoke-virtual {p0, p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->setState(Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)V

    return-void

    .line 335
    :cond_1
    invoke-virtual {p4}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/common/TileRegionError;

    if-nez p1, :cond_2

    new-instance p1, Lcom/mapbox/common/TileRegionError;

    .line 336
    sget-object p2, Lcom/mapbox/common/TileRegionErrorType;->OTHER:Lcom/mapbox/common/TileRegionErrorType;

    .line 337
    const-string p4, "RNMBXOfflineModule neither value nor error in expected"

    .line 335
    invoke-direct {p1, p2, p4}, Lcom/mapbox/common/TileRegionError;-><init>(Lcom/mapbox/common/TileRegionErrorType;Ljava/lang/String;)V

    .line 340
    :cond_2
    iget-object p2, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    sget-object p4, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->INACTIVE:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    invoke-virtual {p2, p4}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->setState(Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;)V

    .line 341
    invoke-direct {p0, p3, p1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->offlinePackDidReceiveError(Ljava/lang/String;Lcom/mapbox/common/TileRegionError;)V

    return-void
.end method

.method private static final tileStore_delegate$lambda$0(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)Lcom/mapbox/common/TileStore;
    .locals 2

    .line 111
    invoke-static {}, Lcom/mapbox/common/TileStore;->create()Lcom/mapbox/common/TileStore;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/rnmapbox/rnmbx/modules/RNMBXModule;->Companion:Lcom/rnmapbox/rnmbx/modules/RNMBXModule$Companion;

    iget-object p0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1, p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXModule$Companion;->getAccessToken(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/rnmapbox/rnmbx/v11compat/offlinemanager/OfflineManagerKt;->setAccessToken(Lcom/mapbox/common/TileStore;Ljava/lang/String;)V

    return-object v0
.end method

.method private final toJSONObjectSupportingLegacyMetadata(Lcom/mapbox/bindgen/Value;)Lorg/json/JSONObject;
    .locals 2

    .line 633
    :try_start_0
    invoke-static {p1}, Lcom/rnmapbox/rnmbx/utils/extensions/ValueKt;->toJSONObject(Lcom/mapbox/bindgen/Value;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 636
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/mapbox/bindgen/Value;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 638
    :catch_1
    throw v0
.end method

.method private final toProgress(Lcom/mapbox/common/TileRegion;)Lcom/mapbox/common/TileRegionLoadProgress;
    .locals 13

    .line 452
    new-instance v0, Lcom/mapbox/common/TileRegionLoadProgress;

    .line 453
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getCompletedResourceCount()J

    move-result-wide v1

    .line 454
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getCompletedResourceSize()J

    move-result-wide v3

    .line 456
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegion;->getRequiredResourceCount()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v5, 0x0

    .line 452
    invoke-direct/range {v0 .. v12}, Lcom/mapbox/common/TileRegionLoadProgress;-><init>(JJJJJJ)V

    return-object v0
.end method


# virtual methods
.method public final addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public final createPack(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 17
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "bounds"

    const-string v4, "createPack"

    const-string v5, "metadata"

    const-string v6, "options"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "promise"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :try_start_0
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {v6}, Lcom/mapbox/bindgen/Value;->valueOf(Ljava/lang/String;)Lcom/mapbox/bindgen/Value;

    move-result-object v7

    const-string/jumbo v8, "valueOf(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const-string v7, "name"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 146
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    invoke-static {v7}, Lcom/mapbox/geojson/FeatureCollection;->fromJson(Ljava/lang/String;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object v9

    .line 148
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v9}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->convertPointPairToBounds(Lcom/mapbox/geojson/FeatureCollection;)Lcom/mapbox/geojson/Geometry;

    move-result-object v12

    .line 150
    const-string/jumbo v9, "tilesets"

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_1

    check-cast v9, Ljava/lang/Iterable;

    .line 680
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 681
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 150
    const-string v13, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    .line 682
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 683
    :cond_0
    check-cast v10, Ljava/util/List;

    goto :goto_1

    .line 150
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    :goto_1
    move-object v9, v7

    move-object v11, v10

    .line 151
    new-instance v7, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    .line 153
    const-string/jumbo v10, "styleURL"

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    new-instance v13, Lcom/rnmapbox/rnmbx/modules/ZoomRange;

    .line 157
    const-string v15, "minZoom"

    invoke-interface {v0, v15}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v15

    int-to-byte v15, v15

    move-object/from16 v16, v7

    .line 158
    const-string v7, "maxZoom"

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    .line 156
    invoke-direct {v13, v15, v0}, Lcom/rnmapbox/rnmbx/modules/ZoomRange;-><init>(BB)V

    const/4 v15, 0x2

    move-object/from16 v7, v16

    const/16 v16, 0x0

    move-object v0, v9

    const/4 v9, 0x0

    .line 151
    invoke-direct/range {v7 .. v16}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;-><init>(Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;Ljava/lang/String;Ljava/util/List;Lcom/mapbox/geojson/Geometry;Lcom/rnmapbox/rnmbx/modules/ZoomRange;Lorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    iget-object v9, v1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v1, v7}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->startLoading-IoAF18A(Lcom/rnmapbox/rnmbx/modules/TileRegionPack;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v7, Lkotlin/Unit;

    const/4 v7, 0x2

    .line 164
    new-array v7, v7, [Lkotlin/Pair;

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v7, v3

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v7, v3

    invoke-static {v7}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    :goto_2
    invoke-static {v0, v2, v4}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleKt;->access$toPromise(Ljava/lang/Object;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 167
    invoke-interface {v2, v4, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final deletePack(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 239
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getState()Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    move-result-object v0

    sget-object v1, Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;->INVALID:Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;

    if-ne v0, v1, :cond_1

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " has already been deleted"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "deletePack"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$deletePack$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$deletePack$1;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    check-cast v1, Lcom/mapbox/common/TileRegionCallback;

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/common/TileStore;->removeTileRegion(Ljava/lang/String;Lcom/mapbox/common/TileRegionCallback;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    const-string v0, "RNMBXOfflineModule"

    return-object v0
.end method

.method public final getOfflineManager()Lcom/mapbox/maps/OfflineManager;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->offlineManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/OfflineManager;

    return-object v0
.end method

.method public final getPackStatus(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pack: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda1;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/common/TileStore;->getTileRegion(Ljava/lang/String;Lcom/mapbox/common/TileRegionCallback;)V

    return-void
.end method

.method public final getPacks(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$getPacks$1;

    invoke-direct {v1, p0, p1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$getPacks$1;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lcom/facebook/react/bridge/Promise;)V

    check-cast v1, Lcom/mapbox/common/TileRegionsCallback;

    invoke-virtual {v0, v1}, Lcom/mapbox/common/TileStore;->getAllTileRegions(Lcom/mapbox/common/TileRegionsCallback;)V

    return-void
.end method

.method public final getTileRegionPacks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/rnmapbox/rnmbx/modules/TileRegionPack;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTileStore()Lcom/mapbox/common/TileStore;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/common/TileStore;

    return-object v0
.end method

.method public final migrateOfflineCache()V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 566
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "RNMBXOfflineModule"

    if-lt v0, v1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.mapbox/map_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/mbgl-offline.db"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/map_data.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 573
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x1

    .line 575
    new-array v0, v0, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v0, v3

    invoke-static {v1, v4, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 576
    const-string/jumbo v0, "v10 cache directory created successfully"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "... file move unsuccessful"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 581
    :cond_0
    sget-object v0, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    const-string v1, "migrateOfflineCache only supported on api level 26 or later"

    invoke-virtual {v0, v2, v1}, Lcom/rnmapbox/rnmbx/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final pausePackDownload(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    .line 213
    const-string v1, "resumeRegionDownload"

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getCancelable()Lcom/mapbox/common/Cancelable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getCancelable()Lcom/mapbox/common/Cancelable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mapbox/common/Cancelable;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 216
    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->setCancelable(Lcom/mapbox/common/Cancelable;)V

    .line 217
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Offline pack: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " already cancelled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_2
    const-string p1, "Unknown offline region"

    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public final resetDatabase(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda2;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/common/TileStore;->getAllTileRegions(Lcom/mapbox/common/TileRegionsCallback;)V

    return-void
.end method

.method public final resumePackDownload(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    .line 203
    const-string v1, "resumePackDownload"

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0, v0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->startLoading-IoAF18A(Lcom/rnmapbox/rnmbx/modules/TileRegionPack;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lkotlin/Unit;

    const/4 p1, 0x0

    :cond_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2, v1}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleKt;->access$toPromise(Ljava/lang/Object;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown offline pack: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setProgressEventThrottle(D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 587
    iput-wide p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->mProgressEventThrottle:D

    return-void
.end method

.method public final setTileCountLimit(I)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 228
    new-instance v0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda3;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;)V

    invoke-static {v0}, Lcom/rnmapbox/rnmbx/v11compat/offlinemanager/OfflineManagerKt;->getOfflineRegionManager(Lkotlin/jvm/functions/Function0;)Lcom/mapbox/maps/OfflineRegionManager;

    move-result-object v0

    int-to-long v1, p1

    .line 231
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/maps/OfflineRegionManager;->setOfflineMapboxTileCountLimit(J)V

    return-void
.end method

.method public final setTileRegionPacks(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/rnmapbox/rnmbx/modules/TileRegionPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    return-void
.end method

.method public final startLoading-IoAF18A(Lcom/rnmapbox/rnmbx/modules/TileRegionPack;)Ljava/lang/Object;
    .locals 9

    const-string v0, "pack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    :try_start_0
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getName()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getBounds()Lcom/mapbox/geojson/Geometry;

    move-result-object v1

    if-nez v1, :cond_0

    .line 282
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "startLoading failed as there are no bounds in pack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 283
    :cond_0
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getZoomRange()Lcom/rnmapbox/rnmbx/modules/ZoomRange;

    move-result-object v2

    if-nez v2, :cond_1

    .line 284
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "startLoading failed as there is no zoomRange in pack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getStyleURI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 286
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "startLoading failed as there is no styleURI in pack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 287
    :cond_2
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_3

    .line 288
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "startLoading failed as there is no metadata in pack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 289
    :cond_3
    new-instance v4, Lcom/mapbox/maps/StylePackLoadOptions$Builder;

    invoke-direct {v4}, Lcom/mapbox/maps/StylePackLoadOptions$Builder;-><init>()V

    .line 290
    sget-object v5, Lcom/mapbox/maps/GlyphsRasterizationMode;->IDEOGRAPHS_RASTERIZED_LOCALLY:Lcom/mapbox/maps/GlyphsRasterizationMode;

    invoke-virtual {v4, v5}, Lcom/mapbox/maps/StylePackLoadOptions$Builder;->glyphsRasterizationMode(Lcom/mapbox/maps/GlyphsRasterizationMode;)Lcom/mapbox/maps/StylePackLoadOptions$Builder;

    move-result-object v4

    .line 291
    invoke-static {v8}, Lcom/rnmapbox/rnmbx/utils/extensions/JSONObjectKt;->toMapboxValue(Lorg/json/JSONObject;)Lcom/mapbox/bindgen/Value;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mapbox/maps/StylePackLoadOptions$Builder;->metadata(Lcom/mapbox/bindgen/Value;)Lcom/mapbox/maps/StylePackLoadOptions$Builder;

    move-result-object v4

    .line 292
    invoke-virtual {v4}, Lcom/mapbox/maps/StylePackLoadOptions$Builder;->build()Lcom/mapbox/maps/StylePackLoadOptions;

    move-result-object v6

    move-object v4, v2

    .line 294
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getOfflineManager()Lcom/mapbox/maps/OfflineManager;

    move-result-object v2

    move-object v5, v4

    .line 296
    invoke-virtual {v5}, Lcom/rnmapbox/rnmbx/modules/ZoomRange;->getMinZoom()B

    move-result v4

    .line 297
    invoke-virtual {v5}, Lcom/rnmapbox/rnmbx/modules/ZoomRange;->getMaxZoom()B

    move-result v5

    .line 298
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->getTilesets()Ljava/util/List;

    move-result-object v7

    .line 293
    invoke-static/range {v2 .. v7}, Lcom/rnmapbox/rnmbx/v11compat/offlinemanager/OfflineManagerKt;->getTilesetDescriptors(Lcom/mapbox/maps/OfflineManager;Ljava/lang/String;BBLcom/mapbox/maps/StylePackLoadOptions;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 300
    new-instance v2, Lcom/mapbox/common/TileRegionLoadOptions$Builder;

    invoke-direct {v2}, Lcom/mapbox/common/TileRegionLoadOptions$Builder;-><init>()V

    .line 301
    invoke-virtual {v2, v1}, Lcom/mapbox/common/TileRegionLoadOptions$Builder;->geometry(Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/common/TileRegionLoadOptions$Builder;

    move-result-object v1

    .line 302
    check-cast p1, Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/mapbox/common/TileRegionLoadOptions$Builder;->descriptors(Ljava/util/List;)Lcom/mapbox/common/TileRegionLoadOptions$Builder;

    move-result-object p1

    .line 303
    invoke-static {v8}, Lcom/rnmapbox/rnmbx/utils/extensions/JSONObjectKt;->toMapboxValue(Lorg/json/JSONObject;)Lcom/mapbox/bindgen/Value;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mapbox/common/TileRegionLoadOptions$Builder;->metadata(Lcom/mapbox/bindgen/Value;)Lcom/mapbox/common/TileRegionLoadOptions$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 304
    invoke-virtual {p1, v1}, Lcom/mapbox/common/TileRegionLoadOptions$Builder;->acceptExpired(Z)Lcom/mapbox/common/TileRegionLoadOptions$Builder;

    move-result-object p1

    .line 305
    sget-object v1, Lcom/mapbox/common/NetworkRestriction;->NONE:Lcom/mapbox/common/NetworkRestriction;

    invoke-virtual {p1, v1}, Lcom/mapbox/common/TileRegionLoadOptions$Builder;->networkRestriction(Lcom/mapbox/common/NetworkRestriction;)Lcom/mapbox/common/TileRegionLoadOptions$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p1, v1}, Lcom/mapbox/common/TileRegionLoadOptions$Builder;->averageBytesPerSecond(Ljava/lang/Integer;)Lcom/mapbox/common/TileRegionLoadOptions$Builder;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lcom/mapbox/common/TileRegionLoadOptions$Builder;->build()Lcom/mapbox/common/TileRegionLoadOptions;

    move-result-object p1

    .line 308
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 309
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->getTileStore()Lcom/mapbox/common/TileStore;

    move-result-object v2

    new-instance v3, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, p0, v0, v8}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v4, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v1, v8, v0}, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule$$ExternalSyntheticLambda10;-><init>(Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/mapbox/common/TileStore;->loadTileRegion(Ljava/lang/String;Lcom/mapbox/common/TileRegionLoadOptions;Lcom/mapbox/common/TileRegionLoadProgressCallback;Lcom/mapbox/common/TileRegionCallback;)Lcom/mapbox/common/Cancelable;

    move-result-object p1

    const-string v1, "loadTileRegion(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;->tileRegionPacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/modules/TileRegionPack;->setCancelable(Lcom/mapbox/common/Cancelable;)V

    .line 346
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 348
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
