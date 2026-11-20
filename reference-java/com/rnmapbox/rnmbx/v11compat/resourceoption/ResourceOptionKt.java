package com.rnmapbox.rnmbx.v11compat.resourceoption;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.common.MapboxOptions;
import com.transistorsoft.locationmanager.config.TSAuthorization;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\u0010\u0010\u0006\u001a\u00020\u00052\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¨\u0006\u0007"}, d2 = {"setMapboxAccessToken", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", TSAuthorization.FIELD_ACCESS_TOKEN, "", "getMapboxAccessToken", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ResourceOptionKt {
    public static final void setMapboxAccessToken(Context context, String str) {
        if (str != null) {
            MapboxOptions.setAccessToken(str);
        }
    }

    public static final String getMapboxAccessToken(Context context) {
        return MapboxOptions.getAccessToken();
    }
}
