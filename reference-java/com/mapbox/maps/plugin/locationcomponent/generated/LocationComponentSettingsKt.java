package com.mapbox.maps.plugin.locationcomponent.generated;

import com.mapbox.maps.plugin.LocationPuck;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b¨\u0006\t"}, d2 = {"LocationComponentSettings", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "locationPuck", "Lcom/mapbox/maps/plugin/LocationPuck;", "initializer", "Lkotlin/Function1;", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class LocationComponentSettingsKt {
    public static final LocationComponentSettings LocationComponentSettings(LocationPuck locationPuck, Function1 initializer) {
        Intrinsics.checkNotNullParameter(locationPuck, "locationPuck");
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        LocationComponentSettings.Builder builder = new LocationComponentSettings.Builder(locationPuck);
        initializer.invoke(builder);
        return builder.build();
    }
}
