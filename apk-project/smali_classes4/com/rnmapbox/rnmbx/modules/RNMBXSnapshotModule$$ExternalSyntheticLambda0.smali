.class public final synthetic Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Promise;

.field public final synthetic f$1:Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Promise;Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/react/bridge/Promise;

    iput-object p2, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule$$ExternalSyntheticLambda0;->f$1:Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule;

    iput-object p3, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule$$ExternalSyntheticLambda0;->f$3:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/react/bridge/Promise;

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule$$ExternalSyntheticLambda0;->f$1:Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule;

    iget-object v2, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule$$ExternalSyntheticLambda0;->f$3:Lcom/facebook/react/bridge/ReadableMap;

    move-object v4, p1

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule;->$r8$lambda$xRktFY5BQKYLK7Zqc5y_0FI1CCY(Lcom/facebook/react/bridge/Promise;Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
