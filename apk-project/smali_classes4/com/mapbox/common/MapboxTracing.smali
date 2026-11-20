.class public final Lcom/mapbox/common/MapboxTracing;
.super Ljava/lang/Object;
.source "MapboxTracing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u000bR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068\u0006@BX\u0087\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mapbox/common/MapboxTracing;",
        "",
        "()V",
        "MAPBOX_TRACE_ID",
        "",
        "<set-?>",
        "",
        "platformTracingEnabled",
        "getPlatformTracingEnabled",
        "()Z",
        "disableAll",
        "",
        "enableAll",
        "enableCore",
        "enablePlatform",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mapbox/common/MapboxTracing;

.field public static final MAPBOX_TRACE_ID:Ljava/lang/String; = "mbx"

.field private static platformTracingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mapbox/common/MapboxTracing;

    invoke-direct {v0}, Lcom/mapbox/common/MapboxTracing;-><init>()V

    sput-object v0, Lcom/mapbox/common/MapboxTracing;->INSTANCE:Lcom/mapbox/common/MapboxTracing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disableAll()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/mapbox/common/MapboxTracing;->platformTracingEnabled:Z

    .line 54
    sget-object v0, Lcom/mapbox/common/TracingBackendType;->NOOP:Lcom/mapbox/common/TracingBackendType;

    invoke-static {v0}, Lcom/mapbox/common/Tracing;->setTracingBackendType(Lcom/mapbox/common/TracingBackendType;)V

    return-void
.end method

.method public final enableAll()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lcom/mapbox/common/MapboxTracing;->platformTracingEnabled:Z

    .line 26
    sget-object v0, Lcom/mapbox/common/TracingBackendType;->PLATFORM:Lcom/mapbox/common/TracingBackendType;

    invoke-static {v0}, Lcom/mapbox/common/Tracing;->setTracingBackendType(Lcom/mapbox/common/TracingBackendType;)V

    return-void
.end method

.method public final enableCore()V
    .locals 1

    .line 44
    sget-object v0, Lcom/mapbox/common/TracingBackendType;->PLATFORM:Lcom/mapbox/common/TracingBackendType;

    invoke-static {v0}, Lcom/mapbox/common/Tracing;->setTracingBackendType(Lcom/mapbox/common/TracingBackendType;)V

    return-void
.end method

.method public final enablePlatform()V
    .locals 1

    const/4 v0, 0x1

    .line 35
    sput-boolean v0, Lcom/mapbox/common/MapboxTracing;->platformTracingEnabled:Z

    return-void
.end method

.method public final getPlatformTracingEnabled()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/mapbox/common/MapboxTracing;->platformTracingEnabled:Z

    return v0
.end method
