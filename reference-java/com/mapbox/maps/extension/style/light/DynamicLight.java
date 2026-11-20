package com.mapbox.maps.extension.style.light;

import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.light.generated.AmbientLight;
import com.mapbox.maps.extension.style.light.generated.DirectionalLight;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/extension/style/light/DynamicLight;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;", "ambientLight", "Lcom/mapbox/maps/extension/style/light/generated/AmbientLight;", "directionalLight", "Lcom/mapbox/maps/extension/style/light/generated/DirectionalLight;", "(Lcom/mapbox/maps/extension/style/light/generated/AmbientLight;Lcom/mapbox/maps/extension/style/light/generated/DirectionalLight;)V", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DynamicLight implements StyleContract.StyleLightExtension {
    private final AmbientLight ambientLight;
    private final DirectionalLight directionalLight;

    public DynamicLight(AmbientLight ambientLight, DirectionalLight directionalLight) {
        Intrinsics.checkNotNullParameter(ambientLight, "ambientLight");
        Intrinsics.checkNotNullParameter(directionalLight, "directionalLight");
        this.ambientLight = ambientLight;
        this.directionalLight = directionalLight;
    }

    @Override
    public void bindTo(MapboxStyleManager delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        LightUtils.setLight(delegate, this.ambientLight, this.directionalLight);
    }
}
