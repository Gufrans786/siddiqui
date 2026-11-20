package com.rnmapbox.rnmbx.components.styles.sources;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.extension.style.sources.generated.RasterArraySource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0006\n\u0002\b\u0003\u0018\u0000 \u00192\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\u0019B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u000fH\u0016J\u0019\u0010\u0014\u001a\u00020\f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\u0002\u0010\u0018R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u001a"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXRasterArraySource;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;", "Lcom/mapbox/maps/extension/style/sources/generated/RasterArraySource;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mTileSize", "", "Ljava/lang/Integer;", "makeSource", "setTileSize", "", "tileSize", "hasPressListener", "", "onPress", "feature", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource$OnPressEvent;", "hasNoDataSoRefersToExisting", "setSourceBounds", "value", "", "", "([Ljava/lang/Double;)V", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXRasterArraySource extends RNMBXTileSource<RasterArraySource> {
    public static final int DEFAULT_TILE_SIZE = 512;
    private Integer mTileSize;

    @Override
    public boolean hasPressListener() {
        return false;
    }

    @Override
    public void onPress(RNMBXSource.OnPressEvent feature) {
    }

    public RNMBXRasterArraySource(Context context) {
        super(context);
    }

    @Override
    public RasterArraySource makeSource() {
        int iIntValue;
        String id = getID();
        Intrinsics.checkNotNull(id);
        String url = getURL();
        Integer num = this.mTileSize;
        if (num == null) {
            iIntValue = 512;
        } else {
            Intrinsics.checkNotNull(num);
            iIntValue = num.intValue();
        }
        if (url != null) {
            return new RasterArraySource.Builder(id).url(url).tileSize(iIntValue).build();
        }
        return new RasterArraySource.Builder(id).tileSet(buildTileset()).tileSize(iIntValue).build();
    }

    public final void setTileSize(int tileSize) {
        this.mTileSize = Integer.valueOf(tileSize);
    }

    @Override
    public boolean hasNoDataSoRefersToExisting() {
        return getURL() == null;
    }

    public final void setSourceBounds(Double[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        setBounds(value);
    }
}
