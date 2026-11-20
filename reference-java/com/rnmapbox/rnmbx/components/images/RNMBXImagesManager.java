package com.rnmapbox.rnmbx.components.images;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXImagesManagerInterface;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventKeysKt;
import com.rnmapbox.rnmbx.utils.ImageEntry;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.ResourceUtils;
import com.rnmapbox.rnmbx.utils.extensions.ReadableMapKt;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 /2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001/B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016J'\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0018H\u0017J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0018H\u0017J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u0010\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u0018J\u0018\u0010\"\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0018H\u0017J\u0016\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010%H\u0016J \u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u00022\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0018\u0010,\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u00022\u0006\u0010-\u001a\u00020)H\u0016J\u0010\u0010.\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/RNMBXImagesManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;", "Lcom/facebook/react/viewmanagers/RNMBXImagesManagerInterface;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "createViewInstance", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/uimanager/ThemedReactContext;", "imageInfo", "Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "name", "map", "Lcom/facebook/react/bridge/ReadableMap;", "secondScale", "", "(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Double;)Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "setImages", "", "images", "Lcom/facebook/react/bridge/Dynamic;", "setHasOnImageMissing", "value", "convertDrawableToBitmap", "Landroid/graphics/drawable/BitmapDrawable;", "sourceDrawable", "Landroid/graphics/drawable/Drawable;", "toNativeImage", "Lcom/rnmapbox/rnmbx/components/images/NativeImage;", "dynamic", "setNativeImages", "arr", "customEvents", "", "addView", "parent", "childView", "Landroid/view/View;", "childPosition", "", "removeView", "view", "removeAllViews", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXImagesManager extends AbstractEventEmitter<RNMBXImages> implements RNMBXImagesManagerInterface<RNMBXImages> {

    public static final Companion INSTANCE = new Companion(null);
    public static final String REACT_CLASS = "RNMBXImages";
    private final ReactApplicationContext mContext;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReadableType.values().length];
            try {
                iArr[ReadableType.String.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadableType.Map.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RNMBXImagesManager(ReactApplicationContext mContext) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNMBXImages createViewInstance(ThemedReactContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new RNMBXImages(context, this);
    }

    public static ImageInfo imageInfo$default(RNMBXImagesManager rNMBXImagesManager, String str, ReadableMap readableMap, Double d, int i, Object obj) {
        if ((i & 4) != 0) {
            d = null;
        }
        return rNMBXImagesManager.imageInfo(str, readableMap, d);
    }

    public final ImageInfo imageInfo(String name, ReadableMap map, Double secondScale) {
        Double d;
        Double dValueOf;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(map, "map");
        List<ImageStretches> listEmptyList = CollectionsKt.emptyList();
        List<ImageStretches> listEmptyList2 = CollectionsKt.emptyList();
        boolean z = map.hasKey("sdf") ? map.getBoolean("sdf") : false;
        if (map.hasKey("stretchX") && (listEmptyList = INSTANCE.convertStretch(map.getDynamic("stretchX"))) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        List<ImageStretches> list = listEmptyList;
        if (map.hasKey("stretchY")) {
            List<ImageStretches> listConvertStretch = INSTANCE.convertStretch(map.getDynamic("stretchY"));
            if (listConvertStretch == null) {
                listConvertStretch = CollectionsKt.emptyList();
            }
            listEmptyList2 = listConvertStretch;
        }
        List<ImageStretches> list2 = listEmptyList2;
        ImageContent imageContentConvertContent = map.hasKey("content") ? INSTANCE.convertContent(map.getDynamic("content")) : null;
        if (map.hasKey("scale")) {
            if (map.getType("scale") != ReadableType.Number) {
                Logger.INSTANCE.e(REACT_CLASS, "scale should be a number found: null in " + map);
            }
            secondScale = Double.valueOf(map.getDouble("scale") * (secondScale != null ? secondScale.doubleValue() : 1.0d));
        } else {
            if (secondScale == null) {
                d = null;
            }
            if (map.hasKey("width")) {
                dValueOf = Double.valueOf(map.getDouble("width"));
            } else {
                dValueOf = null;
            }
            return new ImageInfo(name, d, z, list, list2, imageContentConvertContent, dValueOf, map.hasKey("height") ? Double.valueOf(map.getDouble("height")) : null);
        }
        d = secondScale;
        if (map.hasKey("width")) {
            dValueOf = Double.valueOf(map.getDouble("width"));
        } else {
            dValueOf = null;
        }
        return new ImageInfo(name, d, z, list, list2, imageContentConvertContent, dValueOf, map.hasKey("height") ? Double.valueOf(map.getDouble("height")) : null);
    }

    @Override
    @ReactProp(name = "images")
    public void setImages(RNMBXImages images, Dynamic map) {
        Intrinsics.checkNotNullParameter(images, "images");
        Intrinsics.checkNotNullParameter(map, "map");
        ReadableMap readableMapAsMap = map.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e("RNMBXImagesManager", "images map is null");
            return;
        }
        final ArrayList arrayList = new ArrayList();
        ReadableMapKt.forEach(readableMapAsMap, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return RNMBXImagesManager.setImages$lambda$0(arrayList, this, (String) obj, obj2);
            }
        });
        images.setImages(arrayList);
    }

    public static final Unit setImages$lambda$0(List list, RNMBXImagesManager rNMBXImagesManager, String imageName, Object imageInfo) {
        Intrinsics.checkNotNullParameter(imageName, "imageName");
        Intrinsics.checkNotNullParameter(imageInfo, "imageInfo");
        if (imageInfo instanceof ReadableMap) {
            ReadableMap readableMap = (ReadableMap) imageInfo;
            String string = readableMap.getString(ModelSourceWrapper.URL);
            if (string != null) {
                list.add(new AbstractMap.SimpleEntry(imageName, new ImageEntry(string, imageInfo$default(rNMBXImagesManager, imageName, readableMap, null, 4, null))));
            } else {
                ReadableMap map = readableMap.getMap("resolvedImage");
                String string2 = map != null ? map.getString(ModelSourceWrapper.URL) : null;
                if (string2 != null) {
                    list.add(new AbstractMap.SimpleEntry(imageName, new ImageEntry(string2, rNMBXImagesManager.imageInfo(imageName, readableMap, ReadableMapKt.getIfDouble(map, "scale")))));
                } else {
                    String string3 = readableMap.getString(ImagesContract.URL);
                    if (string3 != null) {
                        list.add(new AbstractMap.SimpleEntry(imageName, new ImageEntry(string3, imageInfo$default(rNMBXImagesManager, imageName, readableMap, null, 4, null))));
                    } else {
                        Logger.INSTANCE.e("RNMBXImagesManager", "Unexpected value for key: " + imageName + " in images property, no uri/url found!");
                    }
                }
            }
        } else if (imageInfo instanceof String) {
            list.add(new AbstractMap.SimpleEntry(imageName, new ImageEntry((String) imageInfo, new ImageInfo(imageName, null, false, null, null, null, null, null, 254, null))));
        } else {
            Logger.INSTANCE.e("RNMBXImagesManager", "Unexpected value for key: " + imageName + " in images property, only string/object is supported");
        }
        return Unit.INSTANCE;
    }

    @Override
    @ReactProp(name = "hasOnImageMissing")
    public void setHasOnImageMissing(RNMBXImages images, Dynamic value) {
        Intrinsics.checkNotNullParameter(images, "images");
        Intrinsics.checkNotNullParameter(value, "value");
        images.setHasOnImageMissing(value.asBoolean());
    }

    private final BitmapDrawable convertDrawableToBitmap(Drawable sourceDrawable) {
        if (sourceDrawable == null) {
            return null;
        }
        if (sourceDrawable instanceof BitmapDrawable) {
            return (BitmapDrawable) sourceDrawable;
        }
        Drawable.ConstantState constantState = sourceDrawable.getConstantState();
        if (constantState == null) {
            return null;
        }
        Drawable drawableMutate = constantState.newDrawable().mutate();
        Intrinsics.checkNotNullExpressionValue(drawableMutate, "mutate(...)");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawableMutate.getIntrinsicWidth(), drawableMutate.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawableMutate.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawableMutate.draw(canvas);
        return new BitmapDrawable(this.mContext.getResources(), bitmapCreateBitmap);
    }

    public final NativeImage toNativeImage(Dynamic dynamic) {
        Intrinsics.checkNotNullParameter(dynamic, "dynamic");
        int i = WhenMappings.$EnumSwitchMapping$0[dynamic.getType().ordinal()];
        if (i == 1) {
            String strAsString = dynamic.asString();
            if (strAsString == null) {
                Logger.INSTANCE.e(REACT_CLASS, "nativeImages string element is null");
                return null;
            }
            BitmapDrawable bitmapDrawableConvertDrawableToBitmap = convertDrawableToBitmap(ResourceUtils.getDrawableByName(this.mContext, strAsString));
            if (bitmapDrawableConvertDrawableToBitmap != null) {
                return new NativeImage(new ImageInfo(strAsString, null, false, null, null, null, null, null, 254, null), bitmapDrawableConvertDrawableToBitmap);
            }
            Logger.INSTANCE.e(REACT_CLASS, "cound not get native drawable with name: " + strAsString);
            return null;
        }
        if (i == 2) {
            ReadableMap readableMapAsMap = dynamic.asMap();
            if (readableMapAsMap == null) {
                Logger.INSTANCE.e(REACT_CLASS, "nativeImages map element is null");
                return null;
            }
            String string = readableMapAsMap.getString("name");
            BitmapDrawable bitmapDrawableConvertDrawableToBitmap2 = convertDrawableToBitmap(ResourceUtils.getDrawableByName(this.mContext, string));
            if (bitmapDrawableConvertDrawableToBitmap2 != null && string != null) {
                return new NativeImage(imageInfo$default(this, string, readableMapAsMap, null, 4, null), bitmapDrawableConvertDrawableToBitmap2);
            }
            Logger.INSTANCE.e(REACT_CLASS, "cound not get native drawable with name: " + string);
            return null;
        }
        Logger.INSTANCE.e(REACT_CLASS, "nativeImages element should be a string or a object, but was: " + dynamic);
        return null;
    }

    @Override
    @ReactProp(name = "nativeImages")
    public void setNativeImages(RNMBXImages images, Dynamic arr) {
        Intrinsics.checkNotNullParameter(images, "images");
        Intrinsics.checkNotNullParameter(arr, "arr");
        ReadableArray readableArrayAsArray = arr.asArray();
        if (readableArrayAsArray == null) {
            Logger.INSTANCE.e("RNMBXImagesManager", "nativeImages array is null");
            return;
        }
        ArrayList arrayList = new ArrayList();
        int size = readableArrayAsArray.size();
        for (int i = 0; i < size; i++) {
            NativeImage nativeImage = toNativeImage(readableArrayAsArray.getDynamic(i));
            if (nativeImage != null) {
                arrayList.add(nativeImage);
            }
        }
        images.setNativeImages(arrayList);
    }

    @Override
    public Map<String, String> customEvents() {
        return EventKeysKt.eventMapOf(TuplesKt.to(EventKeys.IMAGES_MISSING, "onImageMissing"));
    }

    @Override
    public void addView(RNMBXImages parent, View childView, int childPosition) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(childView, "childView");
        if (!(childView instanceof RNMBXImage)) {
            Logger.INSTANCE.e(REACT_CLASS, "child view should be RNMBXImage");
        } else {
            parent.getMImageViews().add(childPosition, childView);
            ((RNMBXImage) childView).setNativeImageUpdater(parent);
        }
    }

    @Override
    public void removeView(RNMBXImages parent, View view) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(view, "view");
        TypeIntrinsics.asMutableCollection(parent.getMImageViews()).remove(view);
    }

    @Override
    public void removeAllViews(RNMBXImages parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        parent.getMImageViews().clear();
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/RNMBXImagesManager$Companion;", "", "<init>", "()V", "REACT_CLASS", "", "convertStretch", "", "Lcom/mapbox/maps/ImageStretches;", "stretch", "Lcom/facebook/react/bridge/Dynamic;", "convertContent", "Lcom/mapbox/maps/ImageContent;", "content", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<ImageStretches> convertStretch(Dynamic stretch) {
            Intrinsics.checkNotNullParameter(stretch, "stretch");
            if (stretch.getType() != ReadableType.Array) {
                Logger.INSTANCE.e(RNMBXImagesManager.REACT_CLASS, "stretch should be an array, got " + stretch);
                return null;
            }
            ReadableArray readableArrayAsArray = stretch.asArray();
            if (readableArrayAsArray == null) {
                Logger.INSTANCE.e(RNMBXImagesManager.REACT_CLASS, "stretch array is null");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = readableArrayAsArray.size();
            for (int i = 0; i < size; i++) {
                if (readableArrayAsArray.getType(i) != ReadableType.Array) {
                    Logger.INSTANCE.e(RNMBXImagesManager.REACT_CLASS, "each element of strech should be an array but was: " + readableArrayAsArray.getDynamic(i));
                } else {
                    ReadableArray array = readableArrayAsArray.getArray(i);
                    if (array != null) {
                        if (array.size() != 2 || array.getType(0) != ReadableType.Number || array.getType(1) != ReadableType.Number) {
                            Logger.INSTANCE.e(RNMBXImagesManager.REACT_CLASS, "each element of stretch should be pair of 2 integers but was " + array);
                        }
                        arrayList.add(new ImageStretches((float) array.getDouble(0), (float) array.getDouble(1)));
                    } else {
                        Logger.INSTANCE.e(RNMBXImagesManager.REACT_CLASS, "each element of stretch should be an array but was null");
                    }
                }
            }
            return arrayList;
        }

        public final ImageContent convertContent(Dynamic content) {
            Intrinsics.checkNotNullParameter(content, "content");
            if (content.getType() != ReadableType.Array) {
                Logger.INSTANCE.e(RNMBXImagesManager.REACT_CLASS, "content should be an array, got " + content);
                return null;
            }
            ReadableArray readableArrayAsArray = content.asArray();
            if (readableArrayAsArray == null) {
                Logger.INSTANCE.e(RNMBXImagesManager.REACT_CLASS, "content array is null");
                return null;
            }
            if (readableArrayAsArray.size() != 4) {
                Logger.INSTANCE.e(RNMBXImagesManager.REACT_CLASS, "content should be an array of 4 numbers, got " + content);
                return null;
            }
            Double[] dArr = new Double[5];
            dArr[0] = Double.valueOf(0.0d);
            dArr[1] = Double.valueOf(0.0d);
            dArr[2] = Double.valueOf(0.0d);
            dArr[3] = Double.valueOf(0.0d);
            dArr[4] = Double.valueOf(0.0d);
            int size = readableArrayAsArray.size();
            for (int i = 0; i < size; i++) {
                if (readableArrayAsArray.getType(i) != ReadableType.Number) {
                    Logger.INSTANCE.e(RNMBXImagesManager.REACT_CLASS, "each element of content should be an number but was : " + readableArrayAsArray);
                    return null;
                }
                dArr[i] = Double.valueOf(readableArrayAsArray.getDouble(i));
            }
            return new ImageContent((float) dArr[0].doubleValue(), (float) dArr[1].doubleValue(), (float) dArr[2].doubleValue(), (float) dArr[3].doubleValue());
        }
    }
}
