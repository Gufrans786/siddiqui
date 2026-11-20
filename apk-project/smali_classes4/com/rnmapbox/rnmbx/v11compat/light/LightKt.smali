.class public final Lcom/rnmapbox/rnmbx/v11compat/light/LightKt;
.super Ljava/lang/Object;
.source "Light.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001\u001a\n\u0010\u0006\u001a\u00060\u0001j\u0002`\u0007*\n\u0010\u0000\"\u00020\u00012\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "Light",
        "Lcom/mapbox/maps/extension/style/light/generated/FlatLight;",
        "setLight",
        "",
        "Lcom/mapbox/maps/Style;",
        "light",
        "createLight",
        "Lcom/rnmapbox/rnmbx/v11compat/light/Light;",
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
.method public static synthetic $r8$lambda$GjL9IK-V0b7xnQa0iyCS6Dk__Ws(Lcom/mapbox/maps/extension/style/light/generated/FlatLightDslReceiver;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/v11compat/light/LightKt;->createLight$lambda$0(Lcom/mapbox/maps/extension/style/light/generated/FlatLightDslReceiver;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final createLight()Lcom/mapbox/maps/extension/style/light/generated/FlatLight;
    .locals 3

    .line 14
    new-instance v0, Lcom/rnmapbox/rnmbx/v11compat/light/LightKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/rnmapbox/rnmbx/v11compat/light/LightKt$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lcom/mapbox/maps/extension/style/light/generated/FlatLightKt;->flatLight$default(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/mapbox/maps/extension/style/light/generated/FlatLight;

    move-result-object v0

    return-object v0
.end method

.method private static final createLight$lambda$0(Lcom/mapbox/maps/extension/style/light/generated/FlatLightDslReceiver;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$flatLight"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final setLight(Lcom/mapbox/maps/Style;Lcom/mapbox/maps/extension/style/light/generated/FlatLight;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "light"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast p0, Lcom/mapbox/maps/MapboxStyleManager;

    invoke-static {p0, p1}, Lcom/mapbox/maps/extension/style/light/LightUtils;->setLight(Lcom/mapbox/maps/MapboxStyleManager;Lcom/mapbox/maps/extension/style/light/generated/FlatLight;)V

    return-void
.end method
