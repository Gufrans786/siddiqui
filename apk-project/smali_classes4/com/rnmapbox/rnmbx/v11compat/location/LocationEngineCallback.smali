.class public interface abstract Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;
.super Ljava/lang/Object;
.source "Location.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0014\u0010\u0006\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0008j\u0002`\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;",
        "",
        "onSuccess",
        "",
        "locationEngineResult",
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;",
        "onFailure",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
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


# virtual methods
.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;)V
.end method
