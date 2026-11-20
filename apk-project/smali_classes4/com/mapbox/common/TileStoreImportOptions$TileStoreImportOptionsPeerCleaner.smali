.class Lcom/mapbox/common/TileStoreImportOptions$TileStoreImportOptionsPeerCleaner;
.super Ljava/lang/Object;
.source "TileStoreImportOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/common/TileStoreImportOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileStoreImportOptionsPeerCleaner"
.end annotation


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lcom/mapbox/common/TileStoreImportOptions$TileStoreImportOptionsPeerCleaner;->peer:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/mapbox/common/TileStoreImportOptions$TileStoreImportOptionsPeerCleaner;->peer:J

    invoke-static {v0, v1}, Lcom/mapbox/common/TileStoreImportOptions;->cleanNativePeer(J)V

    return-void
.end method
