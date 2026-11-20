.class public final Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt;
.super Ljava/lang/Object;
.source "OrnamentSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0005\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0006\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "getAttributionSettings",
        "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;",
        "toGenericOrnamentSettings",
        "Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;",
        "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;",
        "Lcom/mapbox/maps/plugin/compass/generated/CompassSettings$Builder;",
        "Lcom/mapbox/maps/plugin/logo/generated/LogoSettings$Builder;",
        "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;",
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
.method public static final getAttributionSettings()Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;
    .locals 1

    .line 10
    new-instance v0, Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;->build()Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;

    move-result-object v0

    return-object v0
.end method

.method public static final toGenericOrnamentSettings(Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;)Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt$toGenericOrnamentSettings$4;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt$toGenericOrnamentSettings$4;-><init>(Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;)V

    check-cast v0, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;

    return-object v0
.end method

.method public static final toGenericOrnamentSettings(Lcom/mapbox/maps/plugin/compass/generated/CompassSettings$Builder;)Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt$toGenericOrnamentSettings$2;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt$toGenericOrnamentSettings$2;-><init>(Lcom/mapbox/maps/plugin/compass/generated/CompassSettings$Builder;)V

    check-cast v0, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;

    return-object v0
.end method

.method public static final toGenericOrnamentSettings(Lcom/mapbox/maps/plugin/logo/generated/LogoSettings$Builder;)Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt$toGenericOrnamentSettings$3;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt$toGenericOrnamentSettings$3;-><init>(Lcom/mapbox/maps/plugin/logo/generated/LogoSettings$Builder;)V

    check-cast v0, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;

    return-object v0
.end method

.method public static final toGenericOrnamentSettings(Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;)Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt$toGenericOrnamentSettings$1;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt$toGenericOrnamentSettings$1;-><init>(Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;)V

    check-cast v0, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;

    return-object v0
.end method
