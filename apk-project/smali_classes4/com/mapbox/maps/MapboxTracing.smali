.class public final Lcom/mapbox/maps/MapboxTracing;
.super Ljava/lang/Object;
.source "MapboxTracing.kt"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Please use com.mapbox.common.MapboxTracing instead."
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "MapboxTracing"
        imports = {
            "com.mapbox.common.MapboxTracing"
        }
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/mapbox/maps/MapboxTracing;",
        "",
        "()V",
        "impl",
        "Lcom/mapbox/common/MapboxTracing;",
        "disableAll",
        "",
        "enableAll",
        "enableCore",
        "enablePlatform",
        "maps-sdk_release"
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
.field public static final INSTANCE:Lcom/mapbox/maps/MapboxTracing;

.field private static final impl:Lcom/mapbox/common/MapboxTracing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mapbox/maps/MapboxTracing;

    invoke-direct {v0}, Lcom/mapbox/maps/MapboxTracing;-><init>()V

    sput-object v0, Lcom/mapbox/maps/MapboxTracing;->INSTANCE:Lcom/mapbox/maps/MapboxTracing;

    .line 13
    sget-object v0, Lcom/mapbox/common/MapboxTracing;->INSTANCE:Lcom/mapbox/common/MapboxTracing;

    sput-object v0, Lcom/mapbox/maps/MapboxTracing;->impl:Lcom/mapbox/common/MapboxTracing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disableAll()V
    .locals 1

    .line 49
    sget-object v0, Lcom/mapbox/maps/MapboxTracing;->impl:Lcom/mapbox/common/MapboxTracing;

    invoke-virtual {v0}, Lcom/mapbox/common/MapboxTracing;->disableAll()V

    return-void
.end method

.method public final enableAll()V
    .locals 1

    .line 22
    sget-object v0, Lcom/mapbox/maps/MapboxTracing;->impl:Lcom/mapbox/common/MapboxTracing;

    invoke-virtual {v0}, Lcom/mapbox/common/MapboxTracing;->enableAll()V

    return-void
.end method

.method public final enableCore()V
    .locals 1

    .line 40
    sget-object v0, Lcom/mapbox/maps/MapboxTracing;->impl:Lcom/mapbox/common/MapboxTracing;

    invoke-virtual {v0}, Lcom/mapbox/common/MapboxTracing;->enableCore()V

    return-void
.end method

.method public final enablePlatform()V
    .locals 1

    .line 31
    sget-object v0, Lcom/mapbox/maps/MapboxTracing;->impl:Lcom/mapbox/common/MapboxTracing;

    invoke-virtual {v0}, Lcom/mapbox/common/MapboxTracing;->enablePlatform()V

    return-void
.end method
