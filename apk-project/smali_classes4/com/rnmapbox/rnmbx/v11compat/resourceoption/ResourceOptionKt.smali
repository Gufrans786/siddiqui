.class public final Lcom/rnmapbox/rnmbx/v11compat/resourceoption/ResourceOptionKt;
.super Ljava/lang/Object;
.source "ResourceOption.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u0010\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "setMapboxAccessToken",
        "",
        "context",
        "Landroid/content/Context;",
        "accessToken",
        "",
        "getMapboxAccessToken",
        "rnmapbox_maps_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getMapboxAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-static {}, Lcom/mapbox/common/MapboxOptions;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setMapboxAccessToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8
    invoke-static {p1}, Lcom/mapbox/common/MapboxOptions;->setAccessToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
