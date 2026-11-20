package com.mapbox.maps.loader;

import android.content.Context;
import androidx.startup.Initializer;
import com.mapbox.common.MapboxSDKCommonInitializerImpl;
import com.mapbox.common.core.module.CommonSingletonModuleProvider;
import com.mapbox.maps.MapboxConstants;
import com.mapbox.maps.assets.AssetManagerProvider;
import java.util.ArrayList;
import java.util.List;

public class MapboxMapsInitializerImpl implements Initializer<MapboxMaps> {
    @Override
    public MapboxMaps create(Context context) {
        CommonSingletonModuleProvider.INSTANCE.getLoaderInstance().load(MapboxConstants.MAP_SHARED_LIBRARY_NAME);
        new AssetManagerProvider().initialize(context.getAssets());
        return MapboxMaps.INSTANCE;
    }

    @Override
    public List<Class<? extends Initializer<?>>> dependencies() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(MapboxSDKCommonInitializerImpl.class);
        return arrayList;
    }
}
