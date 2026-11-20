package com.rnmapbox.rnmbx.components.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import androidx.core.content.res.ResourcesCompat;
import androidx.exifinterface.media.ExifInterface;
import app.notifee.core.event.LogEvent;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.mapbox.maps.Image;
import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.rnmapbox.rnmbx.R;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.events.ImageMissingEvent;
import com.rnmapbox.rnmbx.utils.BitmapUtils;
import com.rnmapbox.rnmbx.utils.DownloadMapImageTask;
import com.rnmapbox.rnmbx.utils.ImageEntry;
import com.rnmapbox.rnmbx.v11compat.image.ImageKt;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010&\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\u0018\u0000 M2\u00020\u00012\u00020\u0002:\u0001MB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ \u0010 \u001a\u00020!2\u0018\u0010\"\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00190$0#J\u0014\u0010%\u001a\u00020!2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001b0#J\u000e\u0010'\u001a\u00020!2\u0006\u0010(\u001a\u00020\u001dJ\u0018\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010.\u001a\u00020!2\u0006\u0010*\u001a\u00020+H\u0002J\b\u0010/\u001a\u00020\u001dH\u0002J\b\u00100\u001a\u00020\u001dH\u0002J\u0016\u00101\u001a\u00020\u001d2\u0006\u00102\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\u001fJ$\u00104\u001a\u00020!2\u0014\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0019\u0018\u0001052\u0006\u00103\u001a\u00020\u001fJ\"\u00106\u001a\u00020!2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u001b052\u0006\u00103\u001a\u00020\u001fJ\u0016\u00107\u001a\u00020!2\u0006\u00102\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\u001fJ\u001a\u00108\u001a\u00020\u001d2\b\u00109\u001a\u0004\u0018\u00010\u000b2\u0006\u00103\u001a\u00020\u001fH\u0002J\u0010\u0010:\u001a\u00020!2\u0006\u0010*\u001a\u00020+H\u0016J\u001e\u0010;\u001a\u00020!2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u001b0#2\u0006\u00103\u001a\u00020\u001fH\u0002J\u0012\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010?\u001a\u00020@H\u0002J,\u0010A\u001a\u00020!2\u001a\u0010<\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00190$\u0018\u00010#2\u0006\u00103\u001a\u00020\u001fH\u0002JN\u0010B\u001a\u00020!2\u0006\u00109\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\u001d2\f\u0010F\u001a\b\u0012\u0004\u0012\u00020G0#2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020G0#2\b\u0010I\u001a\u0004\u0018\u00010J2\u0006\u0010K\u001a\u00020LH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u001b0\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006N"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "Lcom/rnmapbox/rnmbx/components/images/NativeImageUpdater;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/components/images/RNMBXImagesManager;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/images/RNMBXImagesManager;)V", "mCurrentImages", "", "", "getMCurrentImages", "()Ljava/util/Set;", "setMCurrentImages", "(Ljava/util/Set;)V", "mImageViews", "", "Lcom/rnmapbox/rnmbx/components/images/RNMBXImage;", "getMImageViews", "()Ljava/util/List;", "setMImageViews", "(Ljava/util/List;)V", "mImages", "", "Lcom/rnmapbox/rnmbx/utils/ImageEntry;", "mNativeImages", "Lcom/rnmapbox/rnmbx/components/images/NativeImage;", "mSendMissingImageEvents", "", "mMap", "Lcom/mapbox/maps/MapboxMap;", "setImages", "", "images", "", "", "setNativeImages", "nativeImages", "setHasOnImageMissing", "value", "removeFromMap", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "removeImages", "hasImages", "hasNativeImages", "addMissingImageToStyle", "id", "map", "addImagesToStyle", "", "addNativeImagesToStyle", "sendImageMissingEvent", "hasImage", "imageId", "addToMap", "addNativeImages", "imageEntries", "placeholderImageFor", "Lcom/mapbox/maps/Image;", LogEvent.LEVEL_INFO, "Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "addRemoteImages", "updateImage", "bitmap", "Landroid/graphics/Bitmap;", "sdf", "stretchX", "Lcom/mapbox/maps/ImageStretches;", "stretchY", "content", "Lcom/mapbox/maps/ImageContent;", "scale", "", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXImages extends AbstractMapFeature implements NativeImageUpdater {

    public static final Companion INSTANCE = new Companion(null);
    private static Bitmap mImagePlaceholder;
    private Set<String> mCurrentImages;
    private List<RNMBXImage> mImageViews;
    private Map<String, ImageEntry> mImages;
    private final RNMBXImagesManager mManager;
    private MapboxMap mMap;
    private Map<String, NativeImage> mNativeImages;
    private boolean mSendMissingImageEvents;

    public RNMBXImages(Context context, RNMBXImagesManager mManager) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mManager = mManager;
        this.mImageViews = new ArrayList();
        this.mNativeImages = new LinkedHashMap();
        this.mCurrentImages = new HashSet();
        this.mImages = new HashMap();
        this.mNativeImages = new HashMap();
        if (mImagePlaceholder == null) {
            mImagePlaceholder = BitmapUtils.INSTANCE.getBitmapFromDrawable(ResourcesCompat.getDrawable(context.getResources(), R.drawable.empty_drawable, null));
        }
    }

    public final Set<String> getMCurrentImages() {
        return this.mCurrentImages;
    }

    public final void setMCurrentImages(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.mCurrentImages = set;
    }

    public final List<RNMBXImage> getMImageViews() {
        return this.mImageViews;
    }

    public final void setMImageViews(List<RNMBXImage> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.mImageViews = list;
    }

    public final void setImages(List<? extends Map.Entry<String, ImageEntry>> images) {
        Intrinsics.checkNotNullParameter(images, "images");
        HashMap map = new HashMap();
        Iterator<? extends Map.Entry<String, ImageEntry>> it = images.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ImageEntry> next = it.next();
            String key = next.getKey();
            ImageEntry value = next.getValue();
            Map<String, ImageEntry> map2 = this.mImages;
            ImageEntry imageEntryPut = map2 != null ? map2.put(key, value) : null;
            if (imageEntryPut == null || !Intrinsics.areEqual(value.getUri(), imageEntryPut.getUri())) {
                map.put(key, value);
            }
        }
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap != null) {
            if ((mapboxMap != null ? mapboxMap.getStyleDeprecated() : null) != null) {
                MapboxMap mapboxMap2 = this.mMap;
                Intrinsics.checkNotNull(mapboxMap2);
                addImagesToStyle(map, mapboxMap2);
            }
        }
    }

    public final void setNativeImages(List<NativeImage> nativeImages) {
        Intrinsics.checkNotNullParameter(nativeImages, "nativeImages");
        HashMap map = new HashMap();
        for (NativeImage nativeImage : nativeImages) {
            String name = nativeImage.getInfo().getName();
            if (this.mNativeImages.put(name, nativeImage) == null) {
                map.put(name, nativeImage);
            }
        }
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null || mapboxMap.getStyleDeprecated() == null) {
            return;
        }
        addNativeImagesToStyle(map, mapboxMap);
    }

    public final void setHasOnImageMissing(boolean value) {
        this.mSendMissingImageEvents = value;
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        removeImages(mapView);
        this.mMap = null;
        if (reason == RemovalReason.ON_DESTROY) {
            this.mNativeImages = new LinkedHashMap();
            this.mImages = new HashMap();
            this.mCurrentImages = new HashSet();
        }
        return super.removeFromMap(mapView, reason);
    }

    private final void removeImages(RNMBXMapView mapView) {
        mapView.getStyle(new Style.OnStyleLoaded() {
            @Override
            public void onStyleLoaded(Style style) {
                Intrinsics.checkNotNullParameter(style, "style");
                if (RNMBXImages.this.hasImages()) {
                    Map map = RNMBXImages.this.mImages;
                    Intrinsics.checkNotNull(map);
                    Iterator it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        style.removeStyleImage((String) ((Map.Entry) it.next()).getKey());
                    }
                }
                if (RNMBXImages.this.hasNativeImages()) {
                    Map map2 = RNMBXImages.this.mNativeImages;
                    Intrinsics.checkNotNull(map2);
                    Iterator it2 = map2.entrySet().iterator();
                    while (it2.hasNext()) {
                        String str = (String) ((Map.Entry) it2.next()).getKey();
                        Intrinsics.checkNotNull(str);
                        style.removeStyleImage(str);
                    }
                }
            }
        });
    }

    public final boolean hasImages() {
        Map<String, ImageEntry> map = this.mImages;
        if (map == null) {
            return false;
        }
        Intrinsics.checkNotNull(map);
        return map.size() > 0;
    }

    public final boolean hasNativeImages() {
        Map<String, NativeImage> map = this.mNativeImages;
        if (map == null) {
            return false;
        }
        Intrinsics.checkNotNull(map);
        return map.size() > 0;
    }

    public final boolean addMissingImageToStyle(String id, MapboxMap map) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(map, "map");
        NativeImage nativeImage = this.mNativeImages.get(id);
        if (nativeImage != null) {
            addNativeImages(CollectionsKt.listOf(nativeImage), map);
            return true;
        }
        Map<String, ImageEntry> map2 = this.mImages;
        if (map2 == null) {
            return false;
        }
        Intrinsics.checkNotNull(map2);
        ImageEntry imageEntry = map2.get(id);
        if (imageEntry == null) {
            return false;
        }
        addRemoteImages(INSTANCE.entry(id, imageEntry), map);
        return true;
    }

    public final void addImagesToStyle(Map<String, ImageEntry> images, MapboxMap map) {
        Intrinsics.checkNotNullParameter(map, "map");
        if (images != null) {
            addRemoteImages(new ArrayList(images.entrySet()), map);
        }
    }

    public final void addNativeImagesToStyle(Map<String, NativeImage> images, MapboxMap map) {
        Intrinsics.checkNotNullParameter(images, "images");
        Intrinsics.checkNotNullParameter(map, "map");
        addNativeImages(CollectionsKt.toList(images.values()), map);
    }

    public final void sendImageMissingEvent(String id, MapboxMap map) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(map, "map");
        if (this.mSendMissingImageEvents) {
            RNMBXImagesManager rNMBXImagesManager = this.mManager;
            ImageMissingEvent imageMissingEventMakeImageMissingEvent = ImageMissingEvent.makeImageMissingEvent(this, id);
            Intrinsics.checkNotNullExpressionValue(imageMissingEventMakeImageMissingEvent, "makeImageMissingEvent(...)");
            rNMBXImagesManager.handleEvent(imageMissingEventMakeImageMissingEvent);
        }
    }

    private final boolean hasImage(String imageId, MapboxMap map) {
        Style styleDeprecated = map.getStyleDeprecated();
        if (styleDeprecated != null) {
            return (imageId != null ? styleDeprecated.getStyleImage(imageId) : null) != null;
        }
        return false;
    }

    @Override
    public void addToMap(final RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        Iterator<T> it = this.mImageViews.iterator();
        while (it.hasNext()) {
            ((RNMBXImage) it.next()).addToMap(mapView);
        }
        mapView.getStyle(new Style.OnStyleLoaded() {
            @Override
            public void onStyleLoaded(Style style) {
                Intrinsics.checkNotNullParameter(style, "style");
                MapboxMap mapboxMap = mapView.getMapboxMap();
                this.mMap = mapboxMap;
                RNMBXImages rNMBXImages = this;
                rNMBXImages.addNativeImagesToStyle(rNMBXImages.mNativeImages, mapboxMap);
                RNMBXImages rNMBXImages2 = this;
                rNMBXImages2.addImagesToStyle(rNMBXImages2.mImages, mapboxMap);
                Iterator<T> it2 = this.getMImageViews().iterator();
                while (it2.hasNext()) {
                    ((RNMBXImage) it2.next()).refresh();
                }
            }
        });
    }

    private final void addNativeImages(List<NativeImage> imageEntries, MapboxMap map) {
        Style styleDeprecated = map.getStyleDeprecated();
        if (styleDeprecated == null) {
            return;
        }
        for (NativeImage nativeImage : imageEntries) {
            String name = nativeImage.getInfo().getName();
            if (!hasImage(name, map)) {
                nativeImage.getDrawable();
                RNMBXMapView mMapView = getMMapView();
                Intrinsics.checkNotNull(mMapView);
                mMapView.getImageManager().resolve(name, nativeImage.getDrawable());
                RNMBXImagesKt.addBitmapImage(styleDeprecated, nativeImage);
                this.mCurrentImages.add(name);
            }
        }
    }

    private final Image placeholderImageFor(ImageInfo info) {
        Float fValueOf;
        Image mapboxImage;
        if (info.getWidth() != null && info.getHeight() != null) {
            return ImageKt.emptyImage((int) (info.getWidth().doubleValue() * info.getScaleOr(1.0d)), (int) (info.getWidth().doubleValue() * info.getScaleOr(1.0d)));
        }
        if (!info.getStretchX().isEmpty() || !info.getStretchY().isEmpty() || info.getContent() != null) {
            Iterator<T> it = info.getStretchY().iterator();
            Float fValueOf2 = null;
            if (it.hasNext()) {
                ImageStretches imageStretches = (ImageStretches) it.next();
                float fMax = Float.max(imageStretches.getFirst(), imageStretches.getSecond());
                while (it.hasNext()) {
                    ImageStretches imageStretches2 = (ImageStretches) it.next();
                    fMax = Math.max(fMax, Float.max(imageStretches2.getFirst(), imageStretches2.getSecond()));
                }
                fValueOf = Float.valueOf(fMax);
            } else {
                fValueOf = null;
            }
            float fFloatValue = fValueOf != null ? fValueOf.floatValue() : 0.0f;
            Iterator<T> it2 = info.getStretchX().iterator();
            if (it2.hasNext()) {
                ImageStretches imageStretches3 = (ImageStretches) it2.next();
                float fMax2 = Float.max(imageStretches3.getFirst(), imageStretches3.getSecond());
                while (it2.hasNext()) {
                    ImageStretches imageStretches4 = (ImageStretches) it2.next();
                    fMax2 = Math.max(fMax2, Float.max(imageStretches4.getFirst(), imageStretches4.getSecond()));
                }
                fValueOf2 = Float.valueOf(fMax2);
            }
            float fFloatValue2 = fValueOf2 != null ? fValueOf2.floatValue() : 0.0f;
            if (info.getContent() != null) {
                fFloatValue2 = Float.max(Float.max(info.getContent().getLeft(), info.getContent().getRight()), fFloatValue2);
                fFloatValue = Float.max(Float.max(info.getContent().getTop(), info.getContent().getBottom()), fFloatValue);
            }
            return ImageKt.emptyImage(((int) Math.ceil(fFloatValue2)) + 1, ((int) Math.ceil(fFloatValue)) + 1);
        }
        Bitmap bitmap = mImagePlaceholder;
        return (bitmap == null || (mapboxImage = ImageKt.toMapboxImage(bitmap)) == null) ? ImageKt.emptyImage(16, 16) : mapboxImage;
    }

    private final void addRemoteImages(List<? extends Map.Entry<String, ImageEntry>> imageEntries, MapboxMap map) {
        Style styleDeprecated = map.getStyleDeprecated();
        if (styleDeprecated == null || imageEntries == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        (displayMetrics != null ? Float.valueOf(displayMetrics.density) : Integer.valueOf(SyslogConstants.LOG_LOCAL4)).doubleValue();
        for (Map.Entry<String, ImageEntry> entry : imageEntries) {
            if (!hasImage(entry.getKey(), map)) {
                ImageInfo info = entry.getValue().getInfo();
                Image imagePlaceholderImageFor = placeholderImageFor(info);
                if (imagePlaceholderImageFor != null) {
                    ImageKt.addStyleImage$default(styleDeprecated, entry.getKey(), imagePlaceholderImageFor, info, 0.0d, 8, null);
                }
                this.mCurrentImages.add(entry.getKey());
            }
            arrayList.add(entry);
        }
        if (arrayList.size() > 0) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            RNMBXMapView mMapView = getMMapView();
            Intrinsics.checkNotNull(mMapView);
            new DownloadMapImageTask(context, map, mMapView.getImageManager(), null, 8, null).execute((Map.Entry[]) arrayList.toArray(new Map.Entry[0]));
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010&\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J9\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\n0\b0\u0007\"\u0004\b\u0000\u0010\t\"\u0004\b\u0001\u0010\n2\u0006\u0010\u000b\u001a\u0002H\t2\u0006\u0010\f\u001a\u0002H\n¢\u0006\u0002\u0010\rR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/RNMBXImages$Companion;", "", "<init>", "()V", "mImagePlaceholder", "Landroid/graphics/Bitmap;", "entry", "", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, JWKParameterNames.OCT_KEY_VALUE, "v", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <K, V> List<Map.Entry<K, V>> entry(K k, V v) {
            return CollectionsKt.listOf(new AbstractMap.SimpleEntry(k, v));
        }
    }

    @Override
    public void updateImage(String imageId, Bitmap bitmap, boolean sdf, List<ImageStretches> stretchX, List<ImageStretches> stretchY, ImageContent content, double scale) {
        Style styleDeprecated;
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(stretchX, "stretchX");
        Intrinsics.checkNotNullParameter(stretchY, "stretchY");
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null || (styleDeprecated = mapboxMap.getStyleDeprecated()) == null) {
            return;
        }
        RNMBXImagesKt.addBitmapImage(styleDeprecated, imageId, bitmap, sdf, stretchX, stretchY, content, scale);
    }
}
