package com.rnmapbox.rnmbx.components.styles.sources;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.extension.style.sources.Source;
import com.mapbox.maps.extension.style.sources.TileSet;
import com.mapbox.maps.extension.style.sources.generated.Scheme;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 1*\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u00011B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010/\u001a\u000200R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\rR\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR$\u0010!\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\"X\u0086\u000e¢\u0006\u0010\n\u0002\u0010(\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010)\u001a\u00020*X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00062"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/mapbox/maps/extension/style/sources/Source;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "uRL", "", "getURL", "()Ljava/lang/String;", "setURL", "(Ljava/lang/String;)V", "tileUrlTemplates", "", "getTileUrlTemplates", "()Ljava/util/Collection;", "setTileUrlTemplates", "(Ljava/util/Collection;)V", "attribution", "getAttribution", "setAttribution", "minZoomLevel", "", "getMinZoomLevel", "()Ljava/lang/Integer;", "setMinZoomLevel", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "maxZoomLevel", "getMaxZoomLevel", "setMaxZoomLevel", "bounds", "", "", "getBounds", "()[Ljava/lang/Double;", "setBounds", "([Ljava/lang/Double;)V", "[Ljava/lang/Double;", "tMS", "", "getTMS", "()Z", "setTMS", "(Z)V", "buildTileset", "Lcom/mapbox/maps/extension/style/sources/TileSet;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class RNMBXTileSource<T extends Source> extends RNMBXSource<T> {
    public static final String TILE_SPEC_VERSION = "2.1.0";
    private String attribution;
    private Double[] bounds;
    private Integer maxZoomLevel;
    private Integer minZoomLevel;
    private boolean tMS;
    private Collection<String> tileUrlTemplates;
    private String uRL;

    public RNMBXTileSource(Context context) {
        super(context);
        this.tileUrlTemplates = new ArrayList();
    }

    public final String getURL() {
        return this.uRL;
    }

    public final void setURL(String str) {
        this.uRL = str;
    }

    public final Collection<String> getTileUrlTemplates() {
        return this.tileUrlTemplates;
    }

    public final void setTileUrlTemplates(Collection<String> collection) {
        Intrinsics.checkNotNullParameter(collection, "<set-?>");
        this.tileUrlTemplates = collection;
    }

    public final String getAttribution() {
        return this.attribution;
    }

    public final void setAttribution(String str) {
        this.attribution = str;
    }

    public final Integer getMinZoomLevel() {
        return this.minZoomLevel;
    }

    public final void setMinZoomLevel(Integer num) {
        this.minZoomLevel = num;
    }

    public final Integer getMaxZoomLevel() {
        return this.maxZoomLevel;
    }

    public final void setMaxZoomLevel(Integer num) {
        this.maxZoomLevel = num;
    }

    public final Double[] getBounds() {
        return this.bounds;
    }

    public final void setBounds(Double[] dArr) {
        this.bounds = dArr;
    }

    public final boolean getTMS() {
        return this.tMS;
    }

    public final void setTMS(boolean z) {
        this.tMS = z;
    }

    public final TileSet buildTileset() {
        String[] strArr = (String[]) ((String[]) this.tileUrlTemplates.toArray(new String[0])).clone();
        List listAsList = Arrays.asList(Arrays.copyOf(strArr, strArr.length));
        Intrinsics.checkNotNullExpressionValue(listAsList, "asList(...)");
        TileSet.Builder builder = new TileSet.Builder(TILE_SPEC_VERSION, listAsList);
        Integer num = this.minZoomLevel;
        if (num != null) {
            Intrinsics.checkNotNull(num);
            builder.minZoom(num.intValue());
        }
        Integer num2 = this.maxZoomLevel;
        if (num2 != null) {
            Intrinsics.checkNotNull(num2);
            builder.maxZoom(num2.intValue());
        }
        if (this.tMS) {
            builder.scheme(Scheme.TMS);
        }
        String str = this.attribution;
        if (str != null) {
            builder.attribution(str);
        }
        Double[] dArr = this.bounds;
        if (dArr != null) {
            builder.bounds(ArraysKt.toList(dArr));
        }
        return builder.build();
    }
}
