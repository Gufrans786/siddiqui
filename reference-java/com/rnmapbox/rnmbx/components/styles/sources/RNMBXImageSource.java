package com.rnmapbox.rnmbx.components.styles.sources;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.views.imagehelper.ResourceDrawableIdHelper;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.maps.extension.style.sources.generated.ImageSource;
import com.rnmapbox.rnmbx.utils.LatLngQuad;
import java.net.URL;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00192\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\u0019B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\b\u0010\u0018\u001a\u0004\u0018\u00010\fR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXImageSource;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;", "Lcom/mapbox/maps/extension/style/sources/generated/ImageSource;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mURL", "Ljava/net/URL;", "mResourceId", "", "mCoordQuad", "Lcom/rnmapbox/rnmbx/utils/LatLngQuad;", "hasNoDataSoRefersToExisting", "", "makeSource", "onPress", "", "feature", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource$OnPressEvent;", "setURL", ImagesContract.URL, "", "setCoordinates", "coordQuad", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXImageSource extends RNMBXSource<ImageSource> {
    public static final String LOG_TAG = "RNMBXImageSource";
    private LatLngQuad mCoordQuad;
    private int mResourceId;
    private URL mURL;

    @Override
    public void onPress(RNMBXSource.OnPressEvent feature) {
    }

    public RNMBXImageSource(Context context) {
        super(context);
    }

    @Override
    public boolean hasNoDataSoRefersToExisting() {
        return this.mURL == null;
    }

    @Override
    public ImageSource makeSource() {
        if (this.mURL == null) {
            throw new RuntimeException("ImageSource without URL not supported in v10, resourceId is not supported");
        }
        String id = getID();
        if (id == null) {
            throw new RuntimeException("ImageSource without ID not supported in v10");
        }
        ImageSource.Builder builder = new ImageSource.Builder(id);
        LatLngQuad latLngQuad = this.mCoordQuad;
        Intrinsics.checkNotNull(latLngQuad);
        List<List<Double>> coordinates = latLngQuad.getCoordinates();
        Intrinsics.checkNotNullExpressionValue(coordinates, "getCoordinates(...)");
        return builder.coordinates(coordinates).url(String.valueOf(this.mURL)).build();
    }

    public final void setURL(String url) {
        try {
            if (Uri.parse(url).getScheme() == null) {
                ResourceDrawableIdHelper.INSTANCE.DEPRECATED$getInstance();
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                this.mResourceId = ResourceDrawableIdHelper.getResourceDrawableId(context, url);
                if (this.mSource != 0) {
                    throw new RuntimeException("ImageSource Resource id not supported in v10");
                }
                return;
            }
            this.mURL = new URL(url);
            if (this.mSource != 0) {
                T t = this.mSource;
                Intrinsics.checkNotNull(t);
                ((ImageSource) t).url(String.valueOf(this.mURL));
            }
        } catch (Exception e) {
            Log.w("RNMBXImageSource", e.getLocalizedMessage());
        }
    }

    public final void setCoordinates(LatLngQuad coordQuad) {
        this.mCoordQuad = coordQuad;
        try {
            if (this.mSource != 0) {
                T t = this.mSource;
                Intrinsics.checkNotNull(t);
                LatLngQuad latLngQuad = this.mCoordQuad;
                Intrinsics.checkNotNull(latLngQuad);
                List<List<Double>> coordinates = latLngQuad.getCoordinates();
                Intrinsics.checkNotNullExpressionValue(coordinates, "getCoordinates(...)");
                ((ImageSource) t).coordinates(coordinates);
            }
        } catch (Exception e) {
            Log.w("RNMBXImageSource", e.getLocalizedMessage());
        }
    }
}
